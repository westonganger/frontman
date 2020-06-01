# frozen_string_literal: false

require 'thor'
require 'sinatra/base'
require 'better_errors'
require 'listen'
require 'frontman/app'
require 'frontman/config'
require 'frontman/resource'

module Frontman
  class CLI < Thor
    desc 'serve', 'Serve your application'
    def serve
      Frontman::Config.set(:mode, 'serve')
      listen_to_dirs = Frontman::Config.get(:observe_dirs, fallback:
        [
          Frontman::Config.get(:layout_dir, fallback: 'views/layout'),
          Frontman::Config.get(:partials_dir, fallback: 'views/layout'),
          'source',
          'helpers'
        ])
      Frontman::App.instance.refresh_data_files = true

      listener = Listen.to(*listen_to_dirs) do |modified, added|
        (added + modified).each do |m|
          resource_path = m.sub("#{Dir.pwd}/", '')
          if resource_path.start_with?(*listen_to_dirs)
            r = Frontman::Resource.from_path(resource_path)
            r&.parse_resource(true)
          elsif resource_path.end_with?('Helper.rb')
            helper_name = File.basename(resource_path).gsub('.rb', '')
            Frontman::App.instance.register_helpers(
              [{ path: File.join(Dir.pwd, resource_path), name: helper_name }]
            )
          elsif resource_path.end_with?('.rb')
            load("./#{resource_path}")
          end
        end
      end

      listener.start

      FrontManServer.run! do
        print "== View your site at \"http://localhost:4568/\"\n"
      end
    end
  end
end

class FrontManServer < Sinatra::Base
  set :public_folder, '.tmp/dist'
  set :port, 4568
  set :server_settings,
      # Avoid having webrick displaying logs for every requests to the serve
      AccessLog: [],
      # Remove logger for WebRick, we have the one of sinatra already
      Logger: Rack::NullLogger.new(self)

  use BetterErrors::Middleware
  BetterErrors.application_root = Dir.pwd

  get '*' do |path|
    app = Frontman::App.instance
    if app.get_redirect(path)
      return redirect to (app.get_redirect(path)), 302
    end

    tree = app.sitemap_tree.from_url(path)
    if tree&.resource
      tree.resource.render
    else
      halt 404
    end
  end
end
