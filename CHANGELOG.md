# Changelog

We document all notable changes to the project in the file.

The format is based on [Keep a Changelog](http://keepachangelog.com/) and this project adheres to [semantic versioning](http://semver.org/).

# Release Notes
## [Unreleased](https://github.com/algolia/frontman/compare/0.0.4...master)

## [0.0.4](https://github.com/algolia/frontman/tree/0.0.3) - 2020-08-28

### Added
* Retry strategy to allow for multiple running Frontman processes ([`#24`](https://github.com/algolia/frontman/pull/24)) by [@westonganger](https://github.com/westonganger)
* Added `--force` flag to the `frontman init` command ([`#29`](https://github.com/algolia/frontman/pull/29)) by [@MikeRogers0](https://github.com/MikeRogers0)
* Improved data directory registration ([`#30`](https://github.com/algolia/frontman/pull/30)) by [@westonganger](https://github.com/westonganger)
* `import_config` method to easily load multiple configuration files ([`#34`](https://github.com/algolia/frontman/pull/34)) by [@westonganger](https://github.com/westonganger)

### Fixed
* Added `https://rubygems.org` as a source for our dependencies ([`#32`](https://github.com/algolia/frontman/pull/32)) by [@MikeRogers0](https://github.com/MikeRogers0)

## [0.0.3](https://github.com/algolia/frontman/tree/0.0.3) - 2020-08-28

### Added
* Documentation on the release process.
* Load possible `.env` files before application bootstrapping.
* Asset fingerprinting through configuration.

### Security
* Update dependencies in the Webpack project template.

### Fixed
* Prevent `DataStoreFile` from being converted to `OpenStruct`.
* Misc. updates to the projects documentation.

## [0.0.2](https://github.com/algolia/frontman/tree/0.0.2)
The initial alpha release.

