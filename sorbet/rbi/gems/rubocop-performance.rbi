# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rubocop-performance/all/rubocop-performance.rbi
#
# rubocop-performance-1.3.0

module RuboCop
end
module RuboCop::Performance
end
module RuboCop::Performance::Version
end
module RuboCop::Performance::Inject
  def self.defaults!; end
end
module RuboCop::Cop
end
module RuboCop::Cop::Performance
end
class RuboCop::Cop::Performance::Caller < RuboCop::Cop::Cop
  def caller_with_scope_method?(node = nil); end
  def int_value(node); end
  def message(node); end
  def on_send(node); end
  def slow_caller?(node = nil); end
end
class RuboCop::Cop::Performance::CaseWhenSplat < RuboCop::Cop::Cop
  def autocorrect(when_node); end
  def indent_for(node); end
  def inline_fix_branch(corrector, when_node); end
  def needs_reorder?(when_node); end
  def new_branch_without_then(node, new_condition); end
  def new_condition_with_then(node, new_condition); end
  def non_splat?(condition); end
  def on_case(case_node); end
  def reorder_condition(corrector, when_node); end
  def reordering_correction(when_node); end
  def replacement(conditions); end
  def splat_offenses(when_conditions); end
  def when_branch_range(when_node); end
  include RuboCop::Cop::Alignment
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Performance::Casecmp < RuboCop::Cop::Cop
  def autocorrect(node); end
  def build_good_method(arg, variable); end
  def correction(node, _receiver, method, arg, variable); end
  def downcase_downcase(node = nil); end
  def downcase_eq(node = nil); end
  def eq_downcase(node = nil); end
  def on_send(node); end
  def take_method_apart(node); end
end
class RuboCop::Cop::Performance::CompareWithBlock < RuboCop::Cop::Cop
  def autocorrect(node); end
  def compare?(node = nil); end
  def compare_range(send, node); end
  def message(send, method, var_a, var_b, args); end
  def on_block(node); end
  def replaceable_body?(node = nil, param1, param2); end
  def slow_compare?(method, args_a, args_b); end
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Performance::Count < RuboCop::Cop::Cop
  def autocorrect(node); end
  def count_candidate?(node = nil); end
  def eligible_node?(node); end
  def on_send(node); end
  def source_starting_at(node); end
  include RuboCop::Cop::RangeHelp
  include RuboCop::Cop::SafeMode
end
class RuboCop::Cop::Performance::Detect < RuboCop::Cop::Cop
  def accept_first_call?(receiver, body); end
  def autocorrect(node); end
  def detect_candidate?(node = nil); end
  def lazy?(node); end
  def on_send(node); end
  def preferred_method; end
  def register_offense(node, receiver, second_method); end
  include RuboCop::Cop::SafeMode
end
class RuboCop::Cop::Performance::DoubleStartEndWith < RuboCop::Cop::Cop
  def add_offense_for_double_call(node, receiver, method, combined_args); end
  def autocorrect(node); end
  def check_for_active_support_aliases?; end
  def check_with_active_support_aliases(node = nil); end
  def combine_args(first_call_args, second_call_args); end
  def on_or(node); end
  def process_source(node); end
  def two_start_end_with_calls(node = nil); end
end
class RuboCop::Cop::Performance::EndWith < RuboCop::Cop::Cop
  def autocorrect(node); end
  def literal_at_end?(regex_str); end
  def on_send(node); end
  def redundant_regex?(node = nil); end
end
class RuboCop::Cop::Performance::FixedSize < RuboCop::Cop::Cop
  def allowed_argument?(arg); end
  def allowed_parent?(node); end
  def allowed_variable?(var); end
  def contains_double_splat?(node); end
  def contains_splat?(node); end
  def counter(node = nil); end
  def non_string_argument?(node); end
  def on_send(node); end
end
class RuboCop::Cop::Performance::FlatMap < RuboCop::Cop::Cop
  def autocorrect(node); end
  def flat_map_candidate?(node = nil); end
  def offense_for_levels(node, map_node, first_method, flatten); end
  def offense_for_method(node, map_node, first_method, flatten); end
  def on_send(node); end
  def register_offense(node, map_node, first_method, flatten, message); end
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Performance::InefficientHashSearch < RuboCop::Cop::Cop
  def autocorrect(node); end
  def autocorrect_argument(node); end
  def autocorrect_hash_expression(node); end
  def autocorrect_method(node); end
  def current_method(node); end
  def inefficient_include?(node = nil); end
  def message(node); end
  def on_send(node); end
  def use_long_method; end
end
class RuboCop::Cop::Performance::OpenStruct < RuboCop::Cop::Cop
  def on_send(node); end
  def open_struct(node = nil); end
end
class RuboCop::Cop::Performance::RangeInclude < RuboCop::Cop::Cop
  def autocorrect(node); end
  def on_send(node); end
  def range_include(node = nil); end
end
class RuboCop::Cop::Performance::RedundantBlockCall < RuboCop::Cop::Cop
  def args_include_block_pass?(blockcall); end
  def autocorrect(node); end
  def blockarg_assigned?(node0, param1); end
  def blockarg_calls(node0, param1); end
  def blockarg_def(node = nil); end
  def calls_to_report(argname, body); end
  def on_def(node); end
end
class RuboCop::Cop::Performance::RedundantMatch < RuboCop::Cop::Cop
  def autocorrect(node); end
  def match_call?(node = nil); end
  def on_send(node); end
  def only_truthiness_matters?(node = nil); end
end
class RuboCop::Cop::Performance::RedundantMerge < RuboCop::Cop::Cop
  def autocorrect(node); end
  def correct_multiple_elements(node, parent, new_source); end
  def correct_single_element(node, new_source); end
  def each_redundant_merge(node); end
  def indent_width; end
  def kwsplat_used?(pairs); end
  def leading_spaces(node); end
  def max_key_value_pairs; end
  def message(node); end
  def modifier_flow_control?(node = nil); end
  def non_redundant_merge?(node, receiver, pairs); end
  def non_redundant_pairs?(receiver, pairs); end
  def non_redundant_value_used?(receiver, node); end
  def on_send(node); end
  def redundant_merge_candidate(node = nil); end
  def rewrite_with_modifier(node, parent, new_source); end
  def to_assignments(receiver, pairs); end
end
class RuboCop::Cop::Performance::RedundantMerge::EachWithObjectInspector
  def each_with_object_node(node = nil); end
  def eligible_receiver?; end
  def initialize(node, receiver); end
  def node; end
  def receiver; end
  def second_argument; end
  def unwind(receiver); end
  def value_used?; end
  extend RuboCop::NodePattern::Macros
end
class RuboCop::Cop::Performance::RegexpMatch < RuboCop::Cop::Cop
  def autocorrect(node); end
  def check_condition(cond); end
  def correct_operator(corrector, recv, arg, oper = nil); end
  def correction_range(recv, arg); end
  def find_last_match(body, range, scope_root); end
  def last_match_used?(match_node); end
  def last_matches(node0); end
  def match_gvar?(sym); end
  def match_method?(node = nil); end
  def match_node?(node = nil); end
  def match_operator?(node = nil); end
  def match_threequals?(node = nil); end
  def match_with_lvasgn?(node); end
  def message(node); end
  def next_match_pos(body, match_node_pos, scope_root); end
  def on_case(node); end
  def on_if(node); end
  def scope_body(node); end
  def scope_root(node); end
  def search_match_nodes(node0); end
  def swap_receiver_and_arg(corrector, recv, arg); end
  extend RuboCop::Cop::TargetRubyVersion
end
class RuboCop::Cop::Performance::ReverseEach < RuboCop::Cop::Cop
  def autocorrect(node); end
  def on_send(node); end
  def reverse_each?(node = nil); end
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Performance::Size < RuboCop::Cop::Cop
  def allowed_parent?(node); end
  def array?(node); end
  def autocorrect(node); end
  def eligible_node?(node); end
  def eligible_receiver?(node); end
  def hash?(node); end
  def on_send(node); end
end
class RuboCop::Cop::Performance::StartWith < RuboCop::Cop::Cop
  def autocorrect(node); end
  def literal_at_start?(regex_str); end
  def on_send(node); end
  def redundant_regex?(node = nil); end
end
class RuboCop::Cop::Performance::StringReplacement < RuboCop::Cop::Cop
  def accept_first_param?(first_param); end
  def accept_second_param?(second_param); end
  def autocorrect(node); end
  def first_source(first_param); end
  def message(node, first_source, second_source); end
  def method_suffix(node); end
  def offense(node, first_param, second_param); end
  def on_send(node); end
  def range(node); end
  def remove_second_param(corrector, node, first_param); end
  def replace_method(node, first, second, first_param, replacement); end
  def replacement_method(node, first_source, second_source); end
  def source_from_regex_constructor(node); end
  def source_from_regex_literal(node); end
  def string_replacement?(node = nil); end
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Performance::TimesMap < RuboCop::Cop::Cop
  def autocorrect(node); end
  def check(node); end
  def message(map_or_collect, count); end
  def on_block(node); end
  def on_send(node); end
  def times_map_call(node = nil); end
end
class RuboCop::Cop::Performance::UnfreezeString < RuboCop::Cop::Cop
  def dup_string?(node = nil); end
  def on_send(node); end
  def string_new?(node = nil); end
  extend RuboCop::Cop::TargetRubyVersion
end
class RuboCop::Cop::Performance::UriDefaultParser < RuboCop::Cop::Cop
  def autocorrect(node); end
  def on_send(node); end
  def uri_parser_new?(node = nil); end
end
class RuboCop::Cop::Performance::ChainArrayAllocation < RuboCop::Cop::Cop
  def flat_map_candidate?(node = nil); end
  def on_send(node); end
  include RuboCop::Cop::RangeHelp
end
