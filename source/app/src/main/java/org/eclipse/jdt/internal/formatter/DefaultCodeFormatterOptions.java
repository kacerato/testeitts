package org.eclipse.jdt.internal.formatter;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.formatter.DefaultCodeFormatterConstants;
import org.eclipse.jdt.internal.compiler.util.Util;

public class DefaultCodeFormatterOptions {
    private static final char[] DEFAULT_DISABLING_TAG = "@formatter:off".toCharArray();
    private static final char[] DEFAULT_ENABLING_TAG = "@formatter:on".toCharArray();
    private static final List<String> KEEP_ON_ONE_LINE_VALUES = Arrays.asList(DefaultCodeFormatterConstants.ONE_LINE_NEVER, DefaultCodeFormatterConstants.ONE_LINE_IF_EMPTY, DefaultCodeFormatterConstants.ONE_LINE_IF_SINGLE_ITEM, DefaultCodeFormatterConstants.ONE_LINE_ALWAYS, DefaultCodeFormatterConstants.ONE_LINE_PRESERVE);
    public static final int MIXED = 4;
    public static final int SPACE = 2;
    public static final int TAB = 1;
    public boolean align_assignment_statements_on_columns;
    public int align_fields_grouping_blank_lines;
    public boolean align_type_members_on_columns;
    public boolean align_variable_declarations_on_columns;
    public boolean align_with_spaces;
    public int alignment_for_additive_operator;
    public int alignment_for_arguments_in_allocation_expression;
    public int alignment_for_arguments_in_annotation;
    public int alignment_for_arguments_in_enum_constant;
    public int alignment_for_arguments_in_explicit_constructor_call;
    public int alignment_for_arguments_in_method_invocation;
    public int alignment_for_arguments_in_qualified_allocation_expression;
    public int alignment_for_assignment;
    public int alignment_for_bitwise_operator;
    public int alignment_for_compact_if;
    public int alignment_for_compact_loop;
    public int alignment_for_conditional_expression;
    public int alignment_for_conditional_expression_chain;
    public int alignment_for_enum_constants;
    public int alignment_for_expressions_in_array_initializer;
    public int alignment_for_expressions_in_for_loop_header;
    public int alignment_for_logical_operator;
    public int alignment_for_method_declaration;
    public int alignment_for_module_statements;
    public int alignment_for_multiple_fields;
    public int alignment_for_multiplicative_operator;
    public int alignment_for_parameterized_type_references;
    public int alignment_for_parameters_in_constructor_declaration;
    public int alignment_for_parameters_in_method_declaration;
    public int alignment_for_relational_operator;
    public int alignment_for_resources_in_try;
    public int alignment_for_selector_in_method_invocation;
    public int alignment_for_shift_operator;
    public int alignment_for_string_concatenation;
    public int alignment_for_superclass_in_type_declaration;
    public int alignment_for_superinterfaces_in_enum_declaration;
    public int alignment_for_superinterfaces_in_type_declaration;
    public int alignment_for_throws_clause_in_constructor_declaration;
    public int alignment_for_throws_clause_in_method_declaration;
    public int alignment_for_type_arguments;
    public int alignment_for_type_parameters;
    public int alignment_for_union_type_in_multicatch;
    public int blank_lines_after_imports;
    public int blank_lines_after_package;
    public int blank_lines_at_beginning_of_method_body;
    public int blank_lines_before_field;
    public int blank_lines_before_first_class_body_declaration;
    public int blank_lines_before_imports;
    public int blank_lines_before_member_type;
    public int blank_lines_before_method;
    public int blank_lines_before_new_chunk;
    public int blank_lines_before_package;
    public int blank_lines_between_import_groups;
    public int blank_lines_between_type_declarations;
    public String brace_position_for_annotation_type_declaration;
    public String brace_position_for_anonymous_type_declaration;
    public String brace_position_for_array_initializer;
    public String brace_position_for_block;
    public String brace_position_for_block_in_case;
    public String brace_position_for_constructor_declaration;
    public String brace_position_for_enum_constant;
    public String brace_position_for_enum_declaration;
    public String brace_position_for_lambda_body;
    public String brace_position_for_method_declaration;
    public String brace_position_for_switch;
    public String brace_position_for_type_declaration;
    public boolean comment_align_tags_descriptions_grouped;
    public boolean comment_align_tags_names_descriptions;
    public boolean comment_clear_blank_lines_in_block_comment;
    public boolean comment_clear_blank_lines_in_javadoc_comment;
    public boolean comment_count_line_length_from_starting_position;
    public boolean comment_format_block_comment;
    public boolean comment_format_header;
    public boolean comment_format_html;
    public boolean comment_format_javadoc_comment;
    public boolean comment_format_line_comment;
    public boolean comment_format_line_comment_starting_on_first_column;
    public boolean comment_format_source;
    public boolean comment_indent_parameter_description;
    public boolean comment_indent_root_tags;
    public boolean comment_indent_tag_description;
    public boolean comment_insert_empty_line_before_root_tags;
    public boolean comment_insert_new_line_for_parameter;
    public int comment_line_length;
    public boolean comment_new_lines_at_block_boundaries;
    public boolean comment_new_lines_at_javadoc_boundaries;
    public boolean comment_preserve_white_space_between_code_and_line_comments;
    public boolean compact_else_if;
    public int continuation_indentation;
    public int continuation_indentation_for_array_initializer;
    public char[] disabling_tag;
    public char[] enabling_tag;
    public boolean indent_body_declarations_compare_to_annotation_declaration_header;
    public boolean indent_body_declarations_compare_to_enum_constant_header;
    public boolean indent_body_declarations_compare_to_enum_declaration_header;
    public boolean indent_body_declarations_compare_to_type_header;
    public boolean indent_breaks_compare_to_cases;
    public boolean indent_empty_lines;
    public boolean indent_statements_compare_to_block;
    public boolean indent_statements_compare_to_body;
    public boolean indent_switchstatements_compare_to_cases;
    public boolean indent_switchstatements_compare_to_switch;
    public int indentation_size;
    public int initial_indentation_level;
    public boolean insert_new_line_after_annotation_on_enum_constant;
    public boolean insert_new_line_after_annotation_on_field;
    public boolean insert_new_line_after_annotation_on_local_variable;
    public boolean insert_new_line_after_annotation_on_method;
    public boolean insert_new_line_after_annotation_on_package;
    public boolean insert_new_line_after_annotation_on_parameter;
    public boolean insert_new_line_after_annotation_on_type;
    public boolean insert_new_line_after_label;
    public boolean insert_new_line_after_opening_brace_in_array_initializer;
    public boolean insert_new_line_after_type_annotation;
    public boolean insert_new_line_at_end_of_file_if_missing;
    public boolean insert_new_line_before_catch_in_try_statement;
    public boolean insert_new_line_before_closing_brace_in_array_initializer;
    public boolean insert_new_line_before_else_in_if_statement;
    public boolean insert_new_line_before_finally_in_try_statement;
    public boolean insert_new_line_before_while_in_do_statement;
    public boolean insert_space_after_additive_operator;
    public boolean insert_space_after_and_in_type_parameter;
    public boolean insert_space_after_arrow_in_switch_case;
    public boolean insert_space_after_arrow_in_switch_default;
    public boolean insert_space_after_assignment_operator;
    public boolean insert_space_after_at_in_annotation;
    public boolean insert_space_after_at_in_annotation_type_declaration;
    public boolean insert_space_after_bitwise_operator;
    public boolean insert_space_after_closing_angle_bracket_in_type_arguments;
    public boolean insert_space_after_closing_angle_bracket_in_type_parameters;
    public boolean insert_space_after_closing_brace_in_block;
    public boolean insert_space_after_closing_paren_in_cast;
    public boolean insert_space_after_colon_in_assert;
    public boolean insert_space_after_colon_in_case;
    public boolean insert_space_after_colon_in_conditional;
    public boolean insert_space_after_colon_in_for;
    public boolean insert_space_after_colon_in_labeled_statement;
    public boolean insert_space_after_comma_in_allocation_expression;
    public boolean insert_space_after_comma_in_annotation;
    public boolean insert_space_after_comma_in_array_initializer;
    public boolean insert_space_after_comma_in_constructor_declaration_parameters;
    public boolean insert_space_after_comma_in_constructor_declaration_throws;
    public boolean insert_space_after_comma_in_enum_constant_arguments;
    public boolean insert_space_after_comma_in_enum_declarations;
    public boolean insert_space_after_comma_in_explicit_constructor_call_arguments;
    public boolean insert_space_after_comma_in_for_increments;
    public boolean insert_space_after_comma_in_for_inits;
    public boolean insert_space_after_comma_in_method_declaration_parameters;
    public boolean insert_space_after_comma_in_method_declaration_throws;
    public boolean insert_space_after_comma_in_method_invocation_arguments;
    public boolean insert_space_after_comma_in_multiple_field_declarations;
    public boolean insert_space_after_comma_in_multiple_local_declarations;
    public boolean insert_space_after_comma_in_parameterized_type_reference;
    public boolean insert_space_after_comma_in_superinterfaces;
    public boolean insert_space_after_comma_in_switch_case_expressions;
    public boolean insert_space_after_comma_in_type_arguments;
    public boolean insert_space_after_comma_in_type_parameters;
    public boolean insert_space_after_ellipsis;
    public boolean insert_space_after_lambda_arrow;
    public boolean insert_space_after_logical_operator;
    public boolean insert_space_after_multiplicative_operator;
    public boolean insert_space_after_opening_angle_bracket_in_parameterized_type_reference;
    public boolean insert_space_after_opening_angle_bracket_in_type_arguments;
    public boolean insert_space_after_opening_angle_bracket_in_type_parameters;
    public boolean insert_space_after_opening_brace_in_array_initializer;
    public boolean insert_space_after_opening_bracket_in_array_allocation_expression;
    public boolean insert_space_after_opening_bracket_in_array_reference;
    public boolean insert_space_after_opening_paren_in_annotation;
    public boolean insert_space_after_opening_paren_in_cast;
    public boolean insert_space_after_opening_paren_in_catch;
    public boolean insert_space_after_opening_paren_in_constructor_declaration;
    public boolean insert_space_after_opening_paren_in_enum_constant;
    public boolean insert_space_after_opening_paren_in_for;
    public boolean insert_space_after_opening_paren_in_if;
    public boolean insert_space_after_opening_paren_in_method_declaration;
    public boolean insert_space_after_opening_paren_in_method_invocation;
    public boolean insert_space_after_opening_paren_in_parenthesized_expression;
    public boolean insert_space_after_opening_paren_in_switch;
    public boolean insert_space_after_opening_paren_in_synchronized;
    public boolean insert_space_after_opening_paren_in_try;
    public boolean insert_space_after_opening_paren_in_while;
    public boolean insert_space_after_postfix_operator;
    public boolean insert_space_after_prefix_operator;
    public boolean insert_space_after_question_in_conditional;
    public boolean insert_space_after_question_in_wilcard;
    public boolean insert_space_after_relational_operator;
    public boolean insert_space_after_semicolon_in_for;
    public boolean insert_space_after_semicolon_in_try_resources;
    public boolean insert_space_after_shift_operator;
    public boolean insert_space_after_string_concatenation;
    public boolean insert_space_after_unary_operator;
    public boolean insert_space_before_additive_operator;
    public boolean insert_space_before_and_in_type_parameter;
    public boolean insert_space_before_arrow_in_switch_case;
    public boolean insert_space_before_arrow_in_switch_default;
    public boolean insert_space_before_assignment_operator;
    public boolean insert_space_before_at_in_annotation_type_declaration;
    public boolean insert_space_before_bitwise_operator;
    public boolean insert_space_before_closing_angle_bracket_in_parameterized_type_reference;
    public boolean insert_space_before_closing_angle_bracket_in_type_arguments;
    public boolean insert_space_before_closing_angle_bracket_in_type_parameters;
    public boolean insert_space_before_closing_brace_in_array_initializer;
    public boolean insert_space_before_closing_bracket_in_array_allocation_expression;
    public boolean insert_space_before_closing_bracket_in_array_reference;
    public boolean insert_space_before_closing_paren_in_annotation;
    public boolean insert_space_before_closing_paren_in_cast;
    public boolean insert_space_before_closing_paren_in_catch;
    public boolean insert_space_before_closing_paren_in_constructor_declaration;
    public boolean insert_space_before_closing_paren_in_enum_constant;
    public boolean insert_space_before_closing_paren_in_for;
    public boolean insert_space_before_closing_paren_in_if;
    public boolean insert_space_before_closing_paren_in_method_declaration;
    public boolean insert_space_before_closing_paren_in_method_invocation;
    public boolean insert_space_before_closing_paren_in_parenthesized_expression;
    public boolean insert_space_before_closing_paren_in_switch;
    public boolean insert_space_before_closing_paren_in_synchronized;
    public boolean insert_space_before_closing_paren_in_try;
    public boolean insert_space_before_closing_paren_in_while;
    public boolean insert_space_before_colon_in_assert;
    public boolean insert_space_before_colon_in_case;
    public boolean insert_space_before_colon_in_conditional;
    public boolean insert_space_before_colon_in_default;
    public boolean insert_space_before_colon_in_for;
    public boolean insert_space_before_colon_in_labeled_statement;
    public boolean insert_space_before_comma_in_allocation_expression;
    public boolean insert_space_before_comma_in_annotation;
    public boolean insert_space_before_comma_in_array_initializer;
    public boolean insert_space_before_comma_in_constructor_declaration_parameters;
    public boolean insert_space_before_comma_in_constructor_declaration_throws;
    public boolean insert_space_before_comma_in_enum_constant_arguments;
    public boolean insert_space_before_comma_in_enum_declarations;
    public boolean insert_space_before_comma_in_explicit_constructor_call_arguments;
    public boolean insert_space_before_comma_in_for_increments;
    public boolean insert_space_before_comma_in_for_inits;
    public boolean insert_space_before_comma_in_method_declaration_parameters;
    public boolean insert_space_before_comma_in_method_declaration_throws;
    public boolean insert_space_before_comma_in_method_invocation_arguments;
    public boolean insert_space_before_comma_in_multiple_field_declarations;
    public boolean insert_space_before_comma_in_multiple_local_declarations;
    public boolean insert_space_before_comma_in_parameterized_type_reference;
    public boolean insert_space_before_comma_in_superinterfaces;
    public boolean insert_space_before_comma_in_switch_case_expressions;
    public boolean insert_space_before_comma_in_type_arguments;
    public boolean insert_space_before_comma_in_type_parameters;
    public boolean insert_space_before_ellipsis;
    public boolean insert_space_before_lambda_arrow;
    public boolean insert_space_before_logical_operator;
    public boolean insert_space_before_multiplicative_operator;
    public boolean insert_space_before_opening_angle_bracket_in_parameterized_type_reference;
    public boolean insert_space_before_opening_angle_bracket_in_type_arguments;
    public boolean insert_space_before_opening_angle_bracket_in_type_parameters;
    public boolean insert_space_before_opening_brace_in_annotation_type_declaration;
    public boolean insert_space_before_opening_brace_in_anonymous_type_declaration;
    public boolean insert_space_before_opening_brace_in_array_initializer;
    public boolean insert_space_before_opening_brace_in_block;
    public boolean insert_space_before_opening_brace_in_constructor_declaration;
    public boolean insert_space_before_opening_brace_in_enum_constant;
    public boolean insert_space_before_opening_brace_in_enum_declaration;
    public boolean insert_space_before_opening_brace_in_method_declaration;
    public boolean insert_space_before_opening_brace_in_switch;
    public boolean insert_space_before_opening_brace_in_type_declaration;
    public boolean insert_space_before_opening_bracket_in_array_allocation_expression;
    public boolean insert_space_before_opening_bracket_in_array_reference;
    public boolean insert_space_before_opening_bracket_in_array_type_reference;
    public boolean insert_space_before_opening_paren_in_annotation;
    public boolean insert_space_before_opening_paren_in_annotation_type_member_declaration;
    public boolean insert_space_before_opening_paren_in_catch;
    public boolean insert_space_before_opening_paren_in_constructor_declaration;
    public boolean insert_space_before_opening_paren_in_enum_constant;
    public boolean insert_space_before_opening_paren_in_for;
    public boolean insert_space_before_opening_paren_in_if;
    public boolean insert_space_before_opening_paren_in_method_declaration;
    public boolean insert_space_before_opening_paren_in_method_invocation;
    public boolean insert_space_before_opening_paren_in_parenthesized_expression;
    public boolean insert_space_before_opening_paren_in_switch;
    public boolean insert_space_before_opening_paren_in_synchronized;
    public boolean insert_space_before_opening_paren_in_try;
    public boolean insert_space_before_opening_paren_in_while;
    public boolean insert_space_before_parenthesized_expression_in_return;
    public boolean insert_space_before_parenthesized_expression_in_throw;
    public boolean insert_space_before_postfix_operator;
    public boolean insert_space_before_prefix_operator;
    public boolean insert_space_before_question_in_conditional;
    public boolean insert_space_before_question_in_wilcard;
    public boolean insert_space_before_relational_operator;
    public boolean insert_space_before_semicolon;
    public boolean insert_space_before_semicolon_in_for;
    public boolean insert_space_before_semicolon_in_try_resources;
    public boolean insert_space_before_shift_operator;
    public boolean insert_space_before_string_concatenation;
    public boolean insert_space_before_unary_operator;
    public boolean insert_space_between_brackets_in_array_type_reference;
    public boolean insert_space_between_empty_braces_in_array_initializer;
    public boolean insert_space_between_empty_brackets_in_array_allocation_expression;
    public boolean insert_space_between_empty_parens_in_annotation_type_member_declaration;
    public boolean insert_space_between_empty_parens_in_constructor_declaration;
    public boolean insert_space_between_empty_parens_in_enum_constant;
    public boolean insert_space_between_empty_parens_in_method_declaration;
    public boolean insert_space_between_empty_parens_in_method_invocation;
    public boolean join_lines_in_comments;
    public boolean join_wrapped_lines;
    public String keep_annotation_declaration_on_one_line;
    public String keep_anonymous_type_declaration_on_one_line;
    public String keep_code_block_on_one_line;
    public boolean keep_else_statement_on_same_line;
    public boolean keep_empty_array_initializer_on_one_line;
    public String keep_enum_constant_declaration_on_one_line;
    public String keep_enum_declaration_on_one_line;
    public boolean keep_guardian_clause_on_one_line;
    public String keep_if_then_body_block_on_one_line;
    public String keep_lambda_body_block_on_one_line;
    public String keep_loop_body_block_on_one_line;
    public String keep_method_body_on_one_line;
    public boolean keep_simple_do_while_body_on_same_line;
    public boolean keep_simple_for_body_on_same_line;
    public boolean keep_simple_getter_setter_on_one_line;
    public boolean keep_simple_if_on_one_line;
    public boolean keep_simple_while_body_on_same_line;
    public boolean keep_then_statement_on_same_line;
    public String keep_type_declaration_on_one_line;
    public String line_separator;
    public boolean never_indent_block_comments_on_first_column;
    public boolean never_indent_line_comments_on_first_column;
    public int number_of_empty_lines_to_preserve;
    public int page_width;
    public String parenthesis_positions_in_annotation;
    public String parenthesis_positions_in_catch_clause;
    public String parenthesis_positions_in_enum_constant_declaration;
    public String parenthesis_positions_in_for_statement;
    public String parenthesis_positions_in_if_while_statement;
    public String parenthesis_positions_in_lambda_declaration;
    public String parenthesis_positions_in_method_declaration;
    public String parenthesis_positions_in_method_invocation;
    public String parenthesis_positions_in_switch_statement;
    public String parenthesis_positions_in_try_clause;
    public boolean put_empty_statement_on_new_line;
    public int tab_char;
    public int tab_size;
    public boolean use_tabs_only_for_leading_indentations;
    public boolean use_tags;
    public boolean wrap_before_additive_operator;
    public boolean wrap_before_assignment_operator;
    public boolean wrap_before_bitwise_operator;
    public boolean wrap_before_conditional_operator;
    public boolean wrap_before_logical_operator;
    public boolean wrap_before_multiplicative_operator;
    public boolean wrap_before_or_operator_multicatch;
    public boolean wrap_before_relational_operator;
    public boolean wrap_before_shift_operator;
    public boolean wrap_before_string_concatenation;
    public boolean wrap_outer_expressions_when_nested;

    public static class Alignment {
        public static final int M_COMPACT_FIRST_BREAK_SPLIT = 32;
        public static final int M_COMPACT_SPLIT = 16;
        public static final int M_FORCE = 1;
        public static final int M_INDENT_BY_ONE = 4;
        public static final int M_INDENT_ON_COLUMN = 2;
        public static final int M_NEXT_PER_LINE_SPLIT = 80;
        public static final int M_NEXT_SHIFTED_SPLIT = 64;
        public static final int M_NO_ALIGNMENT = 0;
        public static final int M_ONE_PER_LINE_SPLIT = 48;
        public static final int SPLIT_MASK = 112;
    }

    private DefaultCodeFormatterOptions() {
    }

    private String getAlignment(int i10) {
        return Integer.toString(i10);
    }

    public static DefaultCodeFormatterOptions getDefaultSettings() {
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = new DefaultCodeFormatterOptions();
        defaultCodeFormatterOptions.setDefaultSettings();
        return defaultCodeFormatterOptions;
    }

    public static DefaultCodeFormatterOptions getEclipseDefaultSettings() {
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = new DefaultCodeFormatterOptions();
        defaultCodeFormatterOptions.setEclipseDefaultSettings();
        return defaultCodeFormatterOptions;
    }

    public static DefaultCodeFormatterOptions getJavaConventionsSettings() {
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = new DefaultCodeFormatterOptions();
        defaultCodeFormatterOptions.setJavaConventionsSettings();
        return defaultCodeFormatterOptions;
    }

    public void lambda$0(int i10) {
        this.alignment_for_multiplicative_operator = i10;
    }

    public void lambda$1(int i10) {
        this.alignment_for_additive_operator = i10;
    }

    public void lambda$10(String str) {
        this.keep_anonymous_type_declaration_on_one_line = str;
    }

    public void lambda$11(String str) {
        this.keep_if_then_body_block_on_one_line = str;
    }

    public void lambda$12(String str) {
        this.keep_loop_body_block_on_one_line = str;
    }

    public void lambda$13(String str) {
        this.keep_lambda_body_block_on_one_line = str;
    }

    public void lambda$14(String str) {
        this.keep_code_block_on_one_line = str;
    }

    public void lambda$15(String str) {
        this.keep_enum_constant_declaration_on_one_line = str;
    }

    public void lambda$16(String str) {
        this.keep_enum_declaration_on_one_line = str;
    }

    public void lambda$17(String str) {
        this.keep_method_body_on_one_line = str;
    }

    public void lambda$18(String str) {
        this.keep_type_declaration_on_one_line = str;
    }

    public void lambda$19(Boolean bool) {
        this.keep_simple_getter_setter_on_one_line = bool.booleanValue();
    }

    public void lambda$2(int i10) {
        this.alignment_for_string_concatenation = i10;
    }

    public void lambda$20(Boolean bool) {
        this.insert_space_after_arrow_in_switch_case = bool.booleanValue();
    }

    public void lambda$21(Boolean bool) {
        this.insert_space_after_arrow_in_switch_default = bool.booleanValue();
    }

    public void lambda$22(Boolean bool) {
        this.insert_space_after_multiplicative_operator = bool.booleanValue();
    }

    public void lambda$23(Boolean bool) {
        this.insert_space_after_additive_operator = bool.booleanValue();
    }

    public void lambda$24(Boolean bool) {
        this.insert_space_after_string_concatenation = bool.booleanValue();
    }

    public void lambda$25(Boolean bool) {
        this.insert_space_after_shift_operator = bool.booleanValue();
    }

    public void lambda$26(Boolean bool) {
        this.insert_space_after_relational_operator = bool.booleanValue();
    }

    public void lambda$27(Boolean bool) {
        this.insert_space_after_bitwise_operator = bool.booleanValue();
    }

    public void lambda$28(Boolean bool) {
        this.insert_space_after_logical_operator = bool.booleanValue();
    }

    public void lambda$29(Boolean bool) {
        this.insert_space_after_comma_in_switch_case_expressions = bool.booleanValue();
    }

    public void lambda$3(int i10) {
        this.alignment_for_shift_operator = i10;
    }

    public void lambda$30(Boolean bool) {
        this.insert_space_before_arrow_in_switch_case = bool.booleanValue();
    }

    public void lambda$31(Boolean bool) {
        this.insert_space_before_arrow_in_switch_default = bool.booleanValue();
    }

    public void lambda$32(Boolean bool) {
        this.insert_space_before_multiplicative_operator = bool.booleanValue();
    }

    public void lambda$33(Boolean bool) {
        this.insert_space_before_additive_operator = bool.booleanValue();
    }

    public void lambda$34(Boolean bool) {
        this.insert_space_before_string_concatenation = bool.booleanValue();
    }

    public void lambda$35(Boolean bool) {
        this.insert_space_before_shift_operator = bool.booleanValue();
    }

    public void lambda$36(Boolean bool) {
        this.insert_space_before_relational_operator = bool.booleanValue();
    }

    public void lambda$37(Boolean bool) {
        this.insert_space_before_bitwise_operator = bool.booleanValue();
    }

    public void lambda$38(Boolean bool) {
        this.insert_space_before_logical_operator = bool.booleanValue();
    }

    public void lambda$39(Boolean bool) {
        this.insert_space_before_comma_in_switch_case_expressions = bool.booleanValue();
    }

    public void lambda$4(int i10) {
        this.alignment_for_relational_operator = i10;
    }

    public void lambda$40(Boolean bool) {
        this.wrap_before_multiplicative_operator = bool.booleanValue();
    }

    public void lambda$41(Boolean bool) {
        this.wrap_before_additive_operator = bool.booleanValue();
    }

    public void lambda$42(Boolean bool) {
        this.wrap_before_string_concatenation = bool.booleanValue();
    }

    public void lambda$43(Boolean bool) {
        this.wrap_before_shift_operator = bool.booleanValue();
    }

    public void lambda$44(Boolean bool) {
        this.wrap_before_relational_operator = bool.booleanValue();
    }

    public void lambda$45(Boolean bool) {
        this.wrap_before_bitwise_operator = bool.booleanValue();
    }

    public void lambda$46(Boolean bool) {
        this.wrap_before_logical_operator = bool.booleanValue();
    }

    public void lambda$47(Boolean bool) {
        this.wrap_before_or_operator_multicatch = bool.booleanValue();
    }

    public void lambda$48(Boolean bool) {
        this.wrap_before_conditional_operator = bool.booleanValue();
    }

    public void lambda$49(Boolean bool) {
        this.wrap_before_assignment_operator = bool.booleanValue();
    }

    public void lambda$5(int i10) {
        this.alignment_for_bitwise_operator = i10;
    }

    public void lambda$50(HashMap hashMap, Boolean bool) {
        this.keep_annotation_declaration_on_one_line = (String) hashMap.get(bool);
    }

    public void lambda$51(HashMap hashMap, Boolean bool) {
        this.keep_anonymous_type_declaration_on_one_line = (String) hashMap.get(bool);
    }

    public void lambda$52(HashMap hashMap, Boolean bool) {
        this.keep_if_then_body_block_on_one_line = (String) hashMap.get(bool);
    }

    public void lambda$53(HashMap hashMap, Boolean bool) {
        this.keep_loop_body_block_on_one_line = (String) hashMap.get(bool);
    }

    public void lambda$54(HashMap hashMap, Boolean bool) {
        this.keep_lambda_body_block_on_one_line = (String) hashMap.get(bool);
    }

    public void lambda$55(HashMap hashMap, Boolean bool) {
        this.keep_code_block_on_one_line = (String) hashMap.get(bool);
    }

    public void lambda$56(HashMap hashMap, Boolean bool) {
        this.keep_enum_constant_declaration_on_one_line = (String) hashMap.get(bool);
    }

    public void lambda$57(HashMap hashMap, Boolean bool) {
        this.keep_enum_declaration_on_one_line = (String) hashMap.get(bool);
    }

    public void lambda$58(HashMap hashMap, Boolean bool) {
        this.keep_method_body_on_one_line = (String) hashMap.get(bool);
    }

    public void lambda$59(HashMap hashMap, Boolean bool) {
        this.keep_type_declaration_on_one_line = (String) hashMap.get(bool);
    }

    public void lambda$6(int i10) {
        this.alignment_for_logical_operator = i10;
    }

    public void lambda$60(int i10) {
        this.alignment_for_multiplicative_operator = i10;
    }

    public void lambda$61(int i10) {
        this.alignment_for_additive_operator = i10;
    }

    public void lambda$62(int i10) {
        this.alignment_for_string_concatenation = i10;
    }

    public void lambda$63(int i10) {
        this.alignment_for_bitwise_operator = i10;
    }

    public void lambda$64(int i10) {
        this.alignment_for_logical_operator = i10;
    }

    public void lambda$65(Boolean bool) {
        this.wrap_before_multiplicative_operator = bool.booleanValue();
    }

    public void lambda$66(Boolean bool) {
        this.wrap_before_additive_operator = bool.booleanValue();
    }

    public void lambda$67(Boolean bool) {
        this.wrap_before_string_concatenation = bool.booleanValue();
    }

    public void lambda$68(Boolean bool) {
        this.wrap_before_bitwise_operator = bool.booleanValue();
    }

    public void lambda$69(Boolean bool) {
        this.wrap_before_logical_operator = bool.booleanValue();
    }

    public void lambda$7(int i10) {
        this.alignment_for_conditional_expression_chain = i10;
    }

    public void lambda$70(Boolean bool) {
        this.insert_space_before_multiplicative_operator = bool.booleanValue();
    }

    public void lambda$71(Boolean bool) {
        this.insert_space_before_additive_operator = bool.booleanValue();
    }

    public void lambda$72(Boolean bool) {
        this.insert_space_before_string_concatenation = bool.booleanValue();
    }

    public void lambda$73(Boolean bool) {
        this.insert_space_before_shift_operator = bool.booleanValue();
    }

    public void lambda$74(Boolean bool) {
        this.insert_space_before_relational_operator = bool.booleanValue();
    }

    public void lambda$75(Boolean bool) {
        this.insert_space_before_bitwise_operator = bool.booleanValue();
    }

    public void lambda$76(Boolean bool) {
        this.insert_space_before_logical_operator = bool.booleanValue();
    }

    public void lambda$77(Boolean bool) {
        this.insert_space_after_multiplicative_operator = bool.booleanValue();
    }

    public void lambda$78(Boolean bool) {
        this.insert_space_after_additive_operator = bool.booleanValue();
    }

    public void lambda$79(Boolean bool) {
        this.insert_space_after_string_concatenation = bool.booleanValue();
    }

    public void lambda$8(Boolean bool) {
        this.comment_indent_tag_description = bool.booleanValue();
    }

    public void lambda$80(Boolean bool) {
        this.insert_space_after_shift_operator = bool.booleanValue();
    }

    public void lambda$81(Boolean bool) {
        this.insert_space_after_relational_operator = bool.booleanValue();
    }

    public void lambda$82(Boolean bool) {
        this.insert_space_after_bitwise_operator = bool.booleanValue();
    }

    public void lambda$83(Boolean bool) {
        this.insert_space_after_logical_operator = bool.booleanValue();
    }

    public void lambda$9(String str) {
        this.keep_annotation_declaration_on_one_line = str;
    }

    private void setBoolean(Map<String, String> map, String str, String str2, Consumer<Boolean> consumer) {
        String str3 = map.get(str);
        if (str3 != null) {
            consumer.accept(Boolean.valueOf(str2.equals(str3)));
        }
    }

    private void setDeprecatedOptions(Map<String, String> map) {
        String str = map.get(DefaultCodeFormatterConstants.FORMATTER_COMMENT_CLEAR_BLANK_LINES);
        if (str != null) {
            this.comment_clear_blank_lines_in_javadoc_comment = "true".equals(str);
            this.comment_clear_blank_lines_in_block_comment = "true".equals(str);
        } else {
            String str2 = map.get(DefaultCodeFormatterConstants.FORMATTER_COMMENT_CLEAR_BLANK_LINES_IN_JAVADOC_COMMENT);
            if (str2 != null) {
                this.comment_clear_blank_lines_in_javadoc_comment = "true".equals(str2);
            }
            String str3 = map.get(DefaultCodeFormatterConstants.FORMATTER_COMMENT_CLEAR_BLANK_LINES_IN_BLOCK_COMMENT);
            if (str3 != null) {
                this.comment_clear_blank_lines_in_block_comment = "true".equals(str3);
            }
        }
        String str4 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION);
        String str5 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_MEMBER);
        String str6 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_TYPE);
        String str7 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_ENUM_CONSTANT);
        String str8 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_FIELD);
        String str9 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_METHOD);
        String str10 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_PACKAGE);
        String str11 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_PARAMETER);
        String str12 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_LOCAL_VARIABLE);
        if (str6 != null || str7 != null || str8 != null || str9 != null || str10 != null) {
            if (str6 != null) {
                this.insert_new_line_after_annotation_on_type = JavaCore.INSERT.equals(str6);
            }
            if (str7 != null) {
                this.insert_new_line_after_annotation_on_enum_constant = JavaCore.INSERT.equals(str7);
            }
            if (str8 != null) {
                this.insert_new_line_after_annotation_on_field = JavaCore.INSERT.equals(str8);
            }
            if (str9 != null) {
                this.insert_new_line_after_annotation_on_method = JavaCore.INSERT.equals(str9);
            }
            if (str10 != null) {
                this.insert_new_line_after_annotation_on_package = JavaCore.INSERT.equals(str10);
            }
            if (str11 != null) {
                this.insert_new_line_after_annotation_on_parameter = JavaCore.INSERT.equals(str11);
            }
            if (str12 != null) {
                this.insert_new_line_after_annotation_on_local_variable = JavaCore.INSERT.equals(str12);
            }
        } else if (str5 != null) {
            boolean equals = JavaCore.INSERT.equals(str5);
            this.insert_new_line_after_annotation_on_type = equals;
            this.insert_new_line_after_annotation_on_enum_constant = equals;
            this.insert_new_line_after_annotation_on_field = equals;
            this.insert_new_line_after_annotation_on_method = equals;
            this.insert_new_line_after_annotation_on_package = equals;
            if (str11 != null) {
                this.insert_new_line_after_annotation_on_parameter = JavaCore.INSERT.equals(str11);
            }
            if (str12 != null) {
                this.insert_new_line_after_annotation_on_local_variable = JavaCore.INSERT.equals(str12);
            }
        } else if (str11 == null && str12 == null && str4 != null) {
            boolean equals2 = JavaCore.INSERT.equals(str4);
            this.insert_new_line_after_annotation_on_type = equals2;
            this.insert_new_line_after_annotation_on_enum_constant = equals2;
            this.insert_new_line_after_annotation_on_field = equals2;
            this.insert_new_line_after_annotation_on_method = equals2;
            this.insert_new_line_after_annotation_on_package = equals2;
            this.insert_new_line_after_annotation_on_parameter = equals2;
            this.insert_new_line_after_annotation_on_local_variable = equals2;
        }
        final HashMap hashMap = new HashMap();
        hashMap.put(Boolean.TRUE, DefaultCodeFormatterConstants.ONE_LINE_NEVER);
        hashMap.put(Boolean.FALSE, DefaultCodeFormatterConstants.ONE_LINE_IF_EMPTY);
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_KEEP_ANNOTATION_DECLARATION_ON_ONE_LINE) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_IN_EMPTY_ANNOTATION_DECLARATION, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$50(hashMap, (Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_KEEP_ANONYMOUS_TYPE_DECLARATION_ON_ONE_LINE) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_IN_EMPTY_ANONYMOUS_TYPE_DECLARATION, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$51(hashMap, (Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_KEEP_IF_THEN_BODY_BLOCK_ON_ONE_LINE) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_IN_EMPTY_BLOCK, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$52(hashMap, (Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_KEEP_LOOP_BODY_BLOCK_ON_ONE_LINE) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_IN_EMPTY_BLOCK, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$53(hashMap, (Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_KEEP_LAMBDA_BODY_BLOCK_ON_ONE_LINE) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_IN_EMPTY_BLOCK, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$54(hashMap, (Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_KEEP_CODE_BLOCK_ON_ONE_LINE) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_IN_EMPTY_BLOCK, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$55(hashMap, (Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_KEEP_ENUM_CONSTANT_DECLARATION_ON_ONE_LINE) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_IN_EMPTY_ENUM_CONSTANT, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$56(hashMap, (Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_KEEP_ENUM_DECLARATION_ON_ONE_LINE) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_IN_EMPTY_ENUM_DECLARATION, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$57(hashMap, (Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_KEEP_METHOD_BODY_ON_ONE_LINE) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_IN_EMPTY_METHOD_BODY, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$58(hashMap, (Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_KEEP_TYPE_DECLARATION_ON_ONE_LINE) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_IN_EMPTY_TYPE_DECLARATION, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$59(hashMap, (Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_MULTIPLICATIVE_OPERATOR) == null) {
            setInt(map, DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_BINARY_EXPRESSION, new IntConsumer() {
                @Override
                public final void accept(int i10) {
                    DefaultCodeFormatterOptions.this.lambda$60(i10);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ADDITIVE_OPERATOR) == null) {
            setInt(map, DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_BINARY_EXPRESSION, new IntConsumer() {
                @Override
                public final void accept(int i10) {
                    DefaultCodeFormatterOptions.this.lambda$61(i10);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_STRING_CONCATENATION) == null) {
            setInt(map, DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_BINARY_EXPRESSION, new IntConsumer() {
                @Override
                public final void accept(int i10) {
                    DefaultCodeFormatterOptions.this.lambda$62(i10);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_BITWISE_OPERATOR) == null) {
            setInt(map, DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_BINARY_EXPRESSION, new IntConsumer() {
                @Override
                public final void accept(int i10) {
                    DefaultCodeFormatterOptions.this.lambda$63(i10);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_LOGICAL_OPERATOR) == null) {
            setInt(map, DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_BINARY_EXPRESSION, new IntConsumer() {
                @Override
                public final void accept(int i10) {
                    DefaultCodeFormatterOptions.this.lambda$64(i10);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_MULTIPLICATIVE_OPERATOR) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_BINARY_OPERATOR, "true", new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$65((Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_ADDITIVE_OPERATOR) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_BINARY_OPERATOR, "true", new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$66((Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_STRING_CONCATENATION) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_BINARY_OPERATOR, "true", new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$67((Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_BITWISE_OPERATOR) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_BINARY_OPERATOR, "true", new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$68((Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_LOGICAL_OPERATOR) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_BINARY_OPERATOR, "true", new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$69((Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_MULTIPLICATIVE_OPERATOR) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_BINARY_OPERATOR, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$70((Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_ADDITIVE_OPERATOR) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_BINARY_OPERATOR, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$71((Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_STRING_CONCATENATION) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_BINARY_OPERATOR, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$72((Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_SHIFT_OPERATOR) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_BINARY_OPERATOR, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$73((Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_RELATIONAL_OPERATOR) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_BINARY_OPERATOR, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$74((Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_BITWISE_OPERATOR) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_BINARY_OPERATOR, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$75((Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_LOGICAL_OPERATOR) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_BINARY_OPERATOR, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$76((Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_MULTIPLICATIVE_OPERATOR) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_BINARY_OPERATOR, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$77((Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_ADDITIVE_OPERATOR) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_BINARY_OPERATOR, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$78((Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_STRING_CONCATENATION) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_BINARY_OPERATOR, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$79((Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_SHIFT_OPERATOR) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_BINARY_OPERATOR, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$80((Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_RELATIONAL_OPERATOR) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_BINARY_OPERATOR, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$81((Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_BITWISE_OPERATOR) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_BINARY_OPERATOR, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$82((Boolean) obj);
                }
            });
        }
        if (map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_LOGICAL_OPERATOR) == null) {
            setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_BINARY_OPERATOR, JavaCore.INSERT, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    DefaultCodeFormatterOptions.this.lambda$83((Boolean) obj);
                }
            });
        }
    }

    private void setInt(Map<String, String> map, String str, IntConsumer intConsumer) {
        String str2 = map.get(str);
        if (str2 != null) {
            try {
                intConsumer.accept(Integer.parseInt(str2));
            } catch (NumberFormatException unused) {
                throw new IllegalArgumentException("Expected integer for setting " + str + ", got: " + str2);
            }
        }
    }

    private void setString(Map<String, String> map, String str, List<String> list, Consumer<String> consumer) {
        String str2 = map.get(str);
        if (str2 != null) {
            if (list.contains(str2)) {
                consumer.accept(str2);
                return;
            }
            throw new IllegalArgumentException("Unrecognized value for setting " + str + ": " + ((Object) str2));
        }
    }

    private int toInt(Object obj, int i10) {
        if (obj instanceof String) {
            try {
                return Integer.parseInt((String) obj);
            } catch (NumberFormatException unused) {
            }
        }
        return i10;
    }

    private String toString(Object obj, String str) {
        return obj instanceof String ? (String) obj : str;
    }

    public Map<String, String> getMap() {
        HashMap hashMap = new HashMap();
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ARGUMENTS_IN_ALLOCATION_EXPRESSION, getAlignment(this.alignment_for_arguments_in_allocation_expression));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ARGUMENTS_IN_ANNOTATION, getAlignment(this.alignment_for_arguments_in_annotation));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ARGUMENTS_IN_ENUM_CONSTANT, getAlignment(this.alignment_for_arguments_in_enum_constant));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ARGUMENTS_IN_EXPLICIT_CONSTRUCTOR_CALL, getAlignment(this.alignment_for_arguments_in_explicit_constructor_call));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ARGUMENTS_IN_METHOD_INVOCATION, getAlignment(this.alignment_for_arguments_in_method_invocation));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ARGUMENTS_IN_QUALIFIED_ALLOCATION_EXPRESSION, getAlignment(this.alignment_for_arguments_in_qualified_allocation_expression));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ASSIGNMENT, getAlignment(this.alignment_for_assignment));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_MULTIPLICATIVE_OPERATOR, getAlignment(this.alignment_for_multiplicative_operator));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ADDITIVE_OPERATOR, getAlignment(this.alignment_for_additive_operator));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_STRING_CONCATENATION, getAlignment(this.alignment_for_string_concatenation));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_SHIFT_OPERATOR, getAlignment(this.alignment_for_shift_operator));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_RELATIONAL_OPERATOR, getAlignment(this.alignment_for_relational_operator));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_BITWISE_OPERATOR, getAlignment(this.alignment_for_bitwise_operator));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_LOGICAL_OPERATOR, getAlignment(this.alignment_for_logical_operator));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_COMPACT_IF, getAlignment(this.alignment_for_compact_if));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_COMPACT_LOOP, getAlignment(this.alignment_for_compact_loop));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_CONDITIONAL_EXPRESSION, getAlignment(this.alignment_for_conditional_expression));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_CONDITIONAL_EXPRESSION_CHAIN, getAlignment(this.alignment_for_conditional_expression_chain));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ENUM_CONSTANTS, getAlignment(this.alignment_for_enum_constants));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_EXPRESSIONS_IN_ARRAY_INITIALIZER, getAlignment(this.alignment_for_expressions_in_array_initializer));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_EXPRESSIONS_IN_FOR_LOOP_HEADER, getAlignment(this.alignment_for_expressions_in_for_loop_header));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_METHOD_DECLARATION, getAlignment(this.alignment_for_method_declaration));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_MODULE_STATEMENTS, getAlignment(this.alignment_for_module_statements));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_MULTIPLE_FIELDS, getAlignment(this.alignment_for_multiple_fields));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_PARAMETERIZED_TYPE_REFERENCES, getAlignment(this.alignment_for_parameterized_type_references));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_PARAMETERS_IN_CONSTRUCTOR_DECLARATION, getAlignment(this.alignment_for_parameters_in_constructor_declaration));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_PARAMETERS_IN_METHOD_DECLARATION, getAlignment(this.alignment_for_parameters_in_method_declaration));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_RESOURCES_IN_TRY, getAlignment(this.alignment_for_resources_in_try));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_SELECTOR_IN_METHOD_INVOCATION, getAlignment(this.alignment_for_selector_in_method_invocation));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_SUPERCLASS_IN_TYPE_DECLARATION, getAlignment(this.alignment_for_superclass_in_type_declaration));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_SUPERINTERFACES_IN_ENUM_DECLARATION, getAlignment(this.alignment_for_superinterfaces_in_enum_declaration));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_SUPERINTERFACES_IN_TYPE_DECLARATION, getAlignment(this.alignment_for_superinterfaces_in_type_declaration));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_THROWS_CLAUSE_IN_CONSTRUCTOR_DECLARATION, getAlignment(this.alignment_for_throws_clause_in_constructor_declaration));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_THROWS_CLAUSE_IN_METHOD_DECLARATION, getAlignment(this.alignment_for_throws_clause_in_method_declaration));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_TYPE_ARGUMENTS, getAlignment(this.alignment_for_type_arguments));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_TYPE_PARAMETERS, getAlignment(this.alignment_for_type_parameters));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_UNION_TYPE_IN_MULTICATCH, getAlignment(this.alignment_for_union_type_in_multicatch));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGN_TYPE_MEMBERS_ON_COLUMNS, this.align_type_members_on_columns ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGN_VARIABLE_DECLARATIONS_ON_COLUMNS, this.align_variable_declarations_on_columns ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGN_ASSIGNMENT_STATEMENTS_ON_COLUMNS, this.align_assignment_statements_on_columns ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGN_FIELDS_GROUPING_BLANK_LINES, Integer.toString(this.align_fields_grouping_blank_lines));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ALIGN_WITH_SPACES, this.align_with_spaces ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_ANNOTATION_TYPE_DECLARATION, this.brace_position_for_annotation_type_declaration);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_ANONYMOUS_TYPE_DECLARATION, this.brace_position_for_anonymous_type_declaration);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_ARRAY_INITIALIZER, this.brace_position_for_array_initializer);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_BLOCK, this.brace_position_for_block);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_BLOCK_IN_CASE, this.brace_position_for_block_in_case);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_CONSTRUCTOR_DECLARATION, this.brace_position_for_constructor_declaration);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_ENUM_CONSTANT, this.brace_position_for_enum_constant);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_ENUM_DECLARATION, this.brace_position_for_enum_declaration);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_METHOD_DECLARATION, this.brace_position_for_method_declaration);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_TYPE_DECLARATION, this.brace_position_for_type_declaration);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_LAMBDA_BODY, this.brace_position_for_lambda_body);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_SWITCH, this.brace_position_for_switch);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_PARENTHESES_POSITIONS_IN_METHOD_DECLARATION, this.parenthesis_positions_in_method_declaration);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_PARENTHESES_POSITIONS_IN_METHOD_INVOCATION, this.parenthesis_positions_in_method_invocation);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_PARENTHESES_POSITIONS_IN_ENUM_CONSTANT_DECLARATION, this.parenthesis_positions_in_enum_constant_declaration);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_PARENTHESES_POSITIONS_IN_IF_WHILE_STATEMENT, this.parenthesis_positions_in_if_while_statement);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_PARENTHESES_POSITIONS_IN_FOR_STATEMENT, this.parenthesis_positions_in_for_statement);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_PARENTHESES_POSITIONS_IN_SWITCH_STATEMENT, this.parenthesis_positions_in_switch_statement);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_PARENTHESES_POSITIONS_IN_TRY_CLAUSE, this.parenthesis_positions_in_try_clause);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_PARENTHESES_POSITIONS_IN_CATCH_CLAUSE, this.parenthesis_positions_in_catch_clause);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_PARENTHESES_POSITIONS_IN_ANNOTATION, this.parenthesis_positions_in_annotation);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_PARENTHESES_POSITIONS_IN_LAMBDA_DECLARATION, this.parenthesis_positions_in_lambda_declaration);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_CLEAR_BLANK_LINES_IN_BLOCK_COMMENT, this.comment_clear_blank_lines_in_block_comment ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_CLEAR_BLANK_LINES_IN_JAVADOC_COMMENT, this.comment_clear_blank_lines_in_javadoc_comment ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_NEW_LINES_AT_BLOCK_BOUNDARIES, this.comment_new_lines_at_block_boundaries ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_NEW_LINES_AT_JAVADOC_BOUNDARIES, this.comment_new_lines_at_javadoc_boundaries ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_FORMAT_BLOCK_COMMENT, this.comment_format_block_comment ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_FORMAT_HEADER, this.comment_format_header ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_FORMAT_HTML, this.comment_format_html ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_FORMAT_JAVADOC_COMMENT, this.comment_format_javadoc_comment ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_FORMAT_LINE_COMMENT, this.comment_format_line_comment ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_FORMAT_LINE_COMMENT_STARTING_ON_FIRST_COLUMN, this.comment_format_line_comment_starting_on_first_column ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_FORMAT_SOURCE, this.comment_format_source ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_INDENT_PARAMETER_DESCRIPTION, this.comment_indent_parameter_description ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_INDENT_TAG_DESCRIPTION, this.comment_indent_tag_description ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_INDENT_ROOT_TAGS, this.comment_indent_root_tags ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_ALIGN_TAGS_NAMES_DESCRIPTIONS, this.comment_align_tags_names_descriptions ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_ALIGN_TAGS_DESCREIPTIONS_GROUPED, this.comment_align_tags_descriptions_grouped ? "true" : "false");
        boolean z10 = this.comment_insert_empty_line_before_root_tags;
        String str = JavaCore.DO_NOT_INSERT;
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_INSERT_EMPTY_LINE_BEFORE_ROOT_TAGS, z10 ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_INSERT_NEW_LINE_FOR_PARAMETER, this.comment_insert_new_line_for_parameter ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_PRESERVE_WHITE_SPACE_BETWEEN_CODE_AND_LINE_COMMENT, this.comment_preserve_white_space_between_code_and_line_comments ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_LINE_LENGTH, Integer.toString(this.comment_line_length));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMMENT_COUNT_LINE_LENGTH_FROM_STARTING_POSITION, this.comment_count_line_length_from_starting_position ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_CONTINUATION_INDENTATION, Integer.toString(this.continuation_indentation));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_CONTINUATION_INDENTATION_FOR_ARRAY_INITIALIZER, Integer.toString(this.continuation_indentation_for_array_initializer));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_AFTER_IMPORTS, Integer.toString(this.blank_lines_after_imports));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_AFTER_PACKAGE, Integer.toString(this.blank_lines_after_package));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_BEFORE_FIELD, Integer.toString(this.blank_lines_before_field));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_BEFORE_FIRST_CLASS_BODY_DECLARATION, Integer.toString(this.blank_lines_before_first_class_body_declaration));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_BEFORE_IMPORTS, Integer.toString(this.blank_lines_before_imports));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_BEFORE_MEMBER_TYPE, Integer.toString(this.blank_lines_before_member_type));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_BEFORE_METHOD, Integer.toString(this.blank_lines_before_method));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_BEFORE_NEW_CHUNK, Integer.toString(this.blank_lines_before_new_chunk));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_BEFORE_PACKAGE, Integer.toString(this.blank_lines_before_package));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_BETWEEN_IMPORT_GROUPS, Integer.toString(this.blank_lines_between_import_groups));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_BETWEEN_TYPE_DECLARATIONS, Integer.toString(this.blank_lines_between_type_declarations));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_AT_BEGINNING_OF_METHOD_BODY, Integer.toString(this.blank_lines_at_beginning_of_method_body));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INDENT_STATEMENTS_COMPARE_TO_BLOCK, this.indent_statements_compare_to_block ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INDENT_STATEMENTS_COMPARE_TO_BODY, this.indent_statements_compare_to_body ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INDENT_BODY_DECLARATIONS_COMPARE_TO_ANNOTATION_DECLARATION_HEADER, this.indent_body_declarations_compare_to_annotation_declaration_header ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INDENT_BODY_DECLARATIONS_COMPARE_TO_ENUM_CONSTANT_HEADER, this.indent_body_declarations_compare_to_enum_constant_header ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INDENT_BODY_DECLARATIONS_COMPARE_TO_ENUM_DECLARATION_HEADER, this.indent_body_declarations_compare_to_enum_declaration_header ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INDENT_BODY_DECLARATIONS_COMPARE_TO_TYPE_HEADER, this.indent_body_declarations_compare_to_type_header ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INDENT_BREAKS_COMPARE_TO_CASES, this.indent_breaks_compare_to_cases ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INDENT_EMPTY_LINES, this.indent_empty_lines ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INDENT_SWITCHSTATEMENTS_COMPARE_TO_CASES, this.indent_switchstatements_compare_to_cases ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INDENT_SWITCHSTATEMENTS_COMPARE_TO_SWITCH, this.indent_switchstatements_compare_to_switch ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INDENTATION_SIZE, Integer.toString(this.tab_char == 4 ? this.indentation_size : this.tab_size));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_TYPE, this.insert_new_line_after_annotation_on_type ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_TYPE_ANNOTATION, this.insert_new_line_after_type_annotation ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_ENUM_CONSTANT, this.insert_new_line_after_annotation_on_enum_constant ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_FIELD, this.insert_new_line_after_annotation_on_field ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_METHOD, this.insert_new_line_after_annotation_on_method ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_PACKAGE, this.insert_new_line_after_annotation_on_package ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_PARAMETER, this.insert_new_line_after_annotation_on_parameter ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_LOCAL_VARIABLE, this.insert_new_line_after_annotation_on_local_variable ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_OPENING_BRACE_IN_ARRAY_INITIALIZER, this.insert_new_line_after_opening_brace_in_array_initializer ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AT_END_OF_FILE_IF_MISSING, this.insert_new_line_at_end_of_file_if_missing ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_BEFORE_CATCH_IN_TRY_STATEMENT, this.insert_new_line_before_catch_in_try_statement ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_BEFORE_CLOSING_BRACE_IN_ARRAY_INITIALIZER, this.insert_new_line_before_closing_brace_in_array_initializer ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_BEFORE_ELSE_IN_IF_STATEMENT, this.insert_new_line_before_else_in_if_statement ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_BEFORE_FINALLY_IN_TRY_STATEMENT, this.insert_new_line_before_finally_in_try_statement ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_BEFORE_WHILE_IN_DO_STATEMENT, this.insert_new_line_before_while_in_do_statement ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_KEEP_ANNOTATION_DECLARATION_ON_ONE_LINE, this.keep_annotation_declaration_on_one_line);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_KEEP_ANONYMOUS_TYPE_DECLARATION_ON_ONE_LINE, this.keep_anonymous_type_declaration_on_one_line);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_KEEP_IF_THEN_BODY_BLOCK_ON_ONE_LINE, this.keep_if_then_body_block_on_one_line);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_KEEP_LAMBDA_BODY_BLOCK_ON_ONE_LINE, this.keep_lambda_body_block_on_one_line);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_KEEP_LOOP_BODY_BLOCK_ON_ONE_LINE, this.keep_loop_body_block_on_one_line);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_KEEP_CODE_BLOCK_ON_ONE_LINE, this.keep_code_block_on_one_line);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_KEEP_ENUM_CONSTANT_DECLARATION_ON_ONE_LINE, this.keep_enum_constant_declaration_on_one_line);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_KEEP_ENUM_DECLARATION_ON_ONE_LINE, this.keep_enum_declaration_on_one_line);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_KEEP_METHOD_BODY_ON_ONE_LINE, this.keep_method_body_on_one_line);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_KEEP_TYPE_DECLARATION_ON_ONE_LINE, this.keep_type_declaration_on_one_line);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_KEEP_SIMPLE_GETTER_SETTER_ON_ONE_LINE, this.keep_simple_getter_setter_on_one_line ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_LABEL, this.insert_new_line_after_label ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_AND_IN_TYPE_PARAMETER, this.insert_space_after_and_in_type_parameter ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_ARROW_IN_SWITCH_CASE, this.insert_space_after_arrow_in_switch_case ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_ARROW_IN_SWITCH_DEFAULT, this.insert_space_after_arrow_in_switch_default ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_ASSIGNMENT_OPERATOR, this.insert_space_after_assignment_operator ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_AT_IN_ANNOTATION, this.insert_space_after_at_in_annotation ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_AT_IN_ANNOTATION_TYPE_DECLARATION, this.insert_space_after_at_in_annotation_type_declaration ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_MULTIPLICATIVE_OPERATOR, this.insert_space_after_multiplicative_operator ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_ADDITIVE_OPERATOR, this.insert_space_after_additive_operator ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_STRING_CONCATENATION, this.insert_space_after_string_concatenation ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_SHIFT_OPERATOR, this.insert_space_after_shift_operator ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_RELATIONAL_OPERATOR, this.insert_space_after_relational_operator ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_BITWISE_OPERATOR, this.insert_space_after_bitwise_operator ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_LOGICAL_OPERATOR, this.insert_space_after_logical_operator ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_CLOSING_ANGLE_BRACKET_IN_TYPE_ARGUMENTS, this.insert_space_after_closing_angle_bracket_in_type_arguments ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_CLOSING_ANGLE_BRACKET_IN_TYPE_PARAMETERS, this.insert_space_after_closing_angle_bracket_in_type_parameters ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_CLOSING_PAREN_IN_CAST, this.insert_space_after_closing_paren_in_cast ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_CLOSING_BRACE_IN_BLOCK, this.insert_space_after_closing_brace_in_block ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COLON_IN_ASSERT, this.insert_space_after_colon_in_assert ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COLON_IN_CASE, this.insert_space_after_colon_in_case ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COLON_IN_CONDITIONAL, this.insert_space_after_colon_in_conditional ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COLON_IN_FOR, this.insert_space_after_colon_in_for ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COLON_IN_LABELED_STATEMENT, this.insert_space_after_colon_in_labeled_statement ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_ALLOCATION_EXPRESSION, this.insert_space_after_comma_in_allocation_expression ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_ANNOTATION, this.insert_space_after_comma_in_annotation ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_ARRAY_INITIALIZER, this.insert_space_after_comma_in_array_initializer ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_CONSTRUCTOR_DECLARATION_PARAMETERS, this.insert_space_after_comma_in_constructor_declaration_parameters ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_CONSTRUCTOR_DECLARATION_THROWS, this.insert_space_after_comma_in_constructor_declaration_throws ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_ENUM_CONSTANT_ARGUMENTS, this.insert_space_after_comma_in_enum_constant_arguments ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_ENUM_DECLARATIONS, this.insert_space_after_comma_in_enum_declarations ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_EXPLICIT_CONSTRUCTOR_CALL_ARGUMENTS, this.insert_space_after_comma_in_explicit_constructor_call_arguments ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_FOR_INCREMENTS, this.insert_space_after_comma_in_for_increments ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_FOR_INITS, this.insert_space_after_comma_in_for_inits ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_METHOD_INVOCATION_ARGUMENTS, this.insert_space_after_comma_in_method_invocation_arguments ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_METHOD_DECLARATION_PARAMETERS, this.insert_space_after_comma_in_method_declaration_parameters ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_METHOD_DECLARATION_THROWS, this.insert_space_after_comma_in_method_declaration_throws ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_MULTIPLE_FIELD_DECLARATIONS, this.insert_space_after_comma_in_multiple_field_declarations ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_MULTIPLE_LOCAL_DECLARATIONS, this.insert_space_after_comma_in_multiple_local_declarations ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_PARAMETERIZED_TYPE_REFERENCE, this.insert_space_after_comma_in_parameterized_type_reference ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_SUPERINTERFACES, this.insert_space_after_comma_in_superinterfaces ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_SWITCH_CASE_EXPRESSIONS, this.insert_space_after_comma_in_switch_case_expressions ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_TYPE_ARGUMENTS, this.insert_space_after_comma_in_type_arguments ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_TYPE_PARAMETERS, this.insert_space_after_comma_in_type_parameters ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_BRACKET_IN_ARRAY_ALLOCATION_EXPRESSION, this.insert_space_after_opening_bracket_in_array_allocation_expression ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_ELLIPSIS, this.insert_space_after_ellipsis ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_LAMBDA_ARROW, this.insert_space_after_lambda_arrow ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_ANGLE_BRACKET_IN_PARAMETERIZED_TYPE_REFERENCE, this.insert_space_after_opening_angle_bracket_in_parameterized_type_reference ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_ANGLE_BRACKET_IN_TYPE_ARGUMENTS, this.insert_space_after_opening_angle_bracket_in_type_arguments ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_ANGLE_BRACKET_IN_TYPE_PARAMETERS, this.insert_space_after_opening_angle_bracket_in_type_parameters ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_BRACKET_IN_ARRAY_REFERENCE, this.insert_space_after_opening_bracket_in_array_reference ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_BRACE_IN_ARRAY_INITIALIZER, this.insert_space_after_opening_brace_in_array_initializer ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_ANNOTATION, this.insert_space_after_opening_paren_in_annotation ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_CAST, this.insert_space_after_opening_paren_in_cast ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_CATCH, this.insert_space_after_opening_paren_in_catch ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_CONSTRUCTOR_DECLARATION, this.insert_space_after_opening_paren_in_constructor_declaration ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_ENUM_CONSTANT, this.insert_space_after_opening_paren_in_enum_constant ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_FOR, this.insert_space_after_opening_paren_in_for ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_IF, this.insert_space_after_opening_paren_in_if ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_METHOD_DECLARATION, this.insert_space_after_opening_paren_in_method_declaration ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_METHOD_INVOCATION, this.insert_space_after_opening_paren_in_method_invocation ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_PARENTHESIZED_EXPRESSION, this.insert_space_after_opening_paren_in_parenthesized_expression ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_SWITCH, this.insert_space_after_opening_paren_in_switch ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_SYNCHRONIZED, this.insert_space_after_opening_paren_in_synchronized ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_TRY, this.insert_space_after_opening_paren_in_try ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_WHILE, this.insert_space_after_opening_paren_in_while ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_POSTFIX_OPERATOR, this.insert_space_after_postfix_operator ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_PREFIX_OPERATOR, this.insert_space_after_prefix_operator ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_QUESTION_IN_CONDITIONAL, this.insert_space_after_question_in_conditional ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_QUESTION_IN_WILDCARD, this.insert_space_after_question_in_wilcard ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_SEMICOLON_IN_FOR, this.insert_space_after_semicolon_in_for ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_SEMICOLON_IN_TRY_RESOURCES, this.insert_space_after_semicolon_in_try_resources ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_UNARY_OPERATOR, this.insert_space_after_unary_operator ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_AND_IN_TYPE_PARAMETER, this.insert_space_before_and_in_type_parameter ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_ARROW_IN_SWITCH_CASE, this.insert_space_before_arrow_in_switch_case ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_ARROW_IN_SWITCH_DEFAULT, this.insert_space_before_arrow_in_switch_default ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_AT_IN_ANNOTATION_TYPE_DECLARATION, this.insert_space_before_at_in_annotation_type_declaration ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_ASSIGNMENT_OPERATOR, this.insert_space_before_assignment_operator ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_MULTIPLICATIVE_OPERATOR, this.insert_space_before_multiplicative_operator ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_ADDITIVE_OPERATOR, this.insert_space_before_additive_operator ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_STRING_CONCATENATION, this.insert_space_before_string_concatenation ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_SHIFT_OPERATOR, this.insert_space_before_shift_operator ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_RELATIONAL_OPERATOR, this.insert_space_before_relational_operator ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_BITWISE_OPERATOR, this.insert_space_before_bitwise_operator ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_LOGICAL_OPERATOR, this.insert_space_before_logical_operator ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_ANGLE_BRACKET_IN_PARAMETERIZED_TYPE_REFERENCE, this.insert_space_before_closing_angle_bracket_in_parameterized_type_reference ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_ANGLE_BRACKET_IN_TYPE_ARGUMENTS, this.insert_space_before_closing_angle_bracket_in_type_arguments ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_ANGLE_BRACKET_IN_TYPE_PARAMETERS, this.insert_space_before_closing_angle_bracket_in_type_parameters ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_BRACE_IN_ARRAY_INITIALIZER, this.insert_space_before_closing_brace_in_array_initializer ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_BRACKET_IN_ARRAY_ALLOCATION_EXPRESSION, this.insert_space_before_closing_bracket_in_array_allocation_expression ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_BRACKET_IN_ARRAY_REFERENCE, this.insert_space_before_closing_bracket_in_array_reference ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_ANNOTATION, this.insert_space_before_closing_paren_in_annotation ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_CAST, this.insert_space_before_closing_paren_in_cast ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_CATCH, this.insert_space_before_closing_paren_in_catch ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_CONSTRUCTOR_DECLARATION, this.insert_space_before_closing_paren_in_constructor_declaration ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_ENUM_CONSTANT, this.insert_space_before_closing_paren_in_enum_constant ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_FOR, this.insert_space_before_closing_paren_in_for ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_IF, this.insert_space_before_closing_paren_in_if ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_METHOD_DECLARATION, this.insert_space_before_closing_paren_in_method_declaration ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_METHOD_INVOCATION, this.insert_space_before_closing_paren_in_method_invocation ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_PARENTHESIZED_EXPRESSION, this.insert_space_before_closing_paren_in_parenthesized_expression ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_SWITCH, this.insert_space_before_closing_paren_in_switch ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_SYNCHRONIZED, this.insert_space_before_closing_paren_in_synchronized ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_TRY, this.insert_space_before_closing_paren_in_try ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_WHILE, this.insert_space_before_closing_paren_in_while ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COLON_IN_ASSERT, this.insert_space_before_colon_in_assert ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COLON_IN_CASE, this.insert_space_before_colon_in_case ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COLON_IN_CONDITIONAL, this.insert_space_before_colon_in_conditional ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COLON_IN_DEFAULT, this.insert_space_before_colon_in_default ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COLON_IN_FOR, this.insert_space_before_colon_in_for ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COLON_IN_LABELED_STATEMENT, this.insert_space_before_colon_in_labeled_statement ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_ALLOCATION_EXPRESSION, this.insert_space_before_comma_in_allocation_expression ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_ANNOTATION, this.insert_space_before_comma_in_annotation ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_ARRAY_INITIALIZER, this.insert_space_before_comma_in_array_initializer ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_CONSTRUCTOR_DECLARATION_PARAMETERS, this.insert_space_before_comma_in_constructor_declaration_parameters ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_CONSTRUCTOR_DECLARATION_THROWS, this.insert_space_before_comma_in_constructor_declaration_throws ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_ENUM_CONSTANT_ARGUMENTS, this.insert_space_before_comma_in_enum_constant_arguments ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_ENUM_DECLARATIONS, this.insert_space_before_comma_in_enum_declarations ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_EXPLICIT_CONSTRUCTOR_CALL_ARGUMENTS, this.insert_space_before_comma_in_explicit_constructor_call_arguments ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_FOR_INCREMENTS, this.insert_space_before_comma_in_for_increments ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_FOR_INITS, this.insert_space_before_comma_in_for_inits ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_METHOD_INVOCATION_ARGUMENTS, this.insert_space_before_comma_in_method_invocation_arguments ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_METHOD_DECLARATION_PARAMETERS, this.insert_space_before_comma_in_method_declaration_parameters ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_METHOD_DECLARATION_THROWS, this.insert_space_before_comma_in_method_declaration_throws ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_MULTIPLE_FIELD_DECLARATIONS, this.insert_space_before_comma_in_multiple_field_declarations ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_MULTIPLE_LOCAL_DECLARATIONS, this.insert_space_before_comma_in_multiple_local_declarations ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_SUPERINTERFACES, this.insert_space_before_comma_in_superinterfaces ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_SWITCH_CASE_EXPRESSIONS, this.insert_space_before_comma_in_switch_case_expressions ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_TYPE_ARGUMENTS, this.insert_space_before_comma_in_type_arguments ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_TYPE_PARAMETERS, this.insert_space_before_comma_in_type_parameters ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_PARAMETERIZED_TYPE_REFERENCE, this.insert_space_before_comma_in_parameterized_type_reference ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_ELLIPSIS, this.insert_space_before_ellipsis ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_LAMBDA_ARROW, this.insert_space_before_lambda_arrow ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_ANGLE_BRACKET_IN_PARAMETERIZED_TYPE_REFERENCE, this.insert_space_before_opening_angle_bracket_in_parameterized_type_reference ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_ANGLE_BRACKET_IN_TYPE_ARGUMENTS, this.insert_space_before_opening_angle_bracket_in_type_arguments ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_ANGLE_BRACKET_IN_TYPE_PARAMETERS, this.insert_space_before_opening_angle_bracket_in_type_parameters ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_ANNOTATION_TYPE_DECLARATION, this.insert_space_before_opening_brace_in_annotation_type_declaration ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_ANONYMOUS_TYPE_DECLARATION, this.insert_space_before_opening_brace_in_anonymous_type_declaration ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_ARRAY_INITIALIZER, this.insert_space_before_opening_brace_in_array_initializer ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_BLOCK, this.insert_space_before_opening_brace_in_block ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_CONSTRUCTOR_DECLARATION, this.insert_space_before_opening_brace_in_constructor_declaration ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_ENUM_CONSTANT, this.insert_space_before_opening_brace_in_enum_constant ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_ENUM_DECLARATION, this.insert_space_before_opening_brace_in_enum_declaration ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_METHOD_DECLARATION, this.insert_space_before_opening_brace_in_method_declaration ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_TYPE_DECLARATION, this.insert_space_before_opening_brace_in_type_declaration ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACKET_IN_ARRAY_ALLOCATION_EXPRESSION, this.insert_space_before_opening_bracket_in_array_allocation_expression ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACKET_IN_ARRAY_REFERENCE, this.insert_space_before_opening_bracket_in_array_reference ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACKET_IN_ARRAY_TYPE_REFERENCE, this.insert_space_before_opening_bracket_in_array_type_reference ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_ANNOTATION, this.insert_space_before_opening_paren_in_annotation ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_ANNOTATION_TYPE_MEMBER_DECLARATION, this.insert_space_before_opening_paren_in_annotation_type_member_declaration ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_CATCH, this.insert_space_before_opening_paren_in_catch ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_CONSTRUCTOR_DECLARATION, this.insert_space_before_opening_paren_in_constructor_declaration ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_ENUM_CONSTANT, this.insert_space_before_opening_paren_in_enum_constant ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_FOR, this.insert_space_before_opening_paren_in_for ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_IF, this.insert_space_before_opening_paren_in_if ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_METHOD_INVOCATION, this.insert_space_before_opening_paren_in_method_invocation ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_METHOD_DECLARATION, this.insert_space_before_opening_paren_in_method_declaration ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_SWITCH, this.insert_space_before_opening_paren_in_switch ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_SWITCH, this.insert_space_before_opening_brace_in_switch ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_SYNCHRONIZED, this.insert_space_before_opening_paren_in_synchronized ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_TRY, this.insert_space_before_opening_paren_in_try ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_PARENTHESIZED_EXPRESSION, this.insert_space_before_opening_paren_in_parenthesized_expression ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_WHILE, this.insert_space_before_opening_paren_in_while ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_PARENTHESIZED_EXPRESSION_IN_RETURN, this.insert_space_before_parenthesized_expression_in_return ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_PARENTHESIZED_EXPRESSION_IN_THROW, this.insert_space_before_parenthesized_expression_in_throw ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_POSTFIX_OPERATOR, this.insert_space_before_postfix_operator ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_PREFIX_OPERATOR, this.insert_space_before_prefix_operator ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_QUESTION_IN_CONDITIONAL, this.insert_space_before_question_in_conditional ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_QUESTION_IN_WILDCARD, this.insert_space_before_question_in_wilcard ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_SEMICOLON, this.insert_space_before_semicolon ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_SEMICOLON_IN_FOR, this.insert_space_before_semicolon_in_for ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_SEMICOLON_IN_TRY_RESOURCES, this.insert_space_before_semicolon_in_try_resources ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_UNARY_OPERATOR, this.insert_space_before_unary_operator ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BETWEEN_BRACKETS_IN_ARRAY_TYPE_REFERENCE, this.insert_space_between_brackets_in_array_type_reference ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BETWEEN_EMPTY_BRACES_IN_ARRAY_INITIALIZER, this.insert_space_between_empty_braces_in_array_initializer ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BETWEEN_EMPTY_BRACKETS_IN_ARRAY_ALLOCATION_EXPRESSION, this.insert_space_between_empty_brackets_in_array_allocation_expression ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BETWEEN_EMPTY_PARENS_IN_ANNOTATION_TYPE_MEMBER_DECLARATION, this.insert_space_between_empty_parens_in_annotation_type_member_declaration ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BETWEEN_EMPTY_PARENS_IN_CONSTRUCTOR_DECLARATION, this.insert_space_between_empty_parens_in_constructor_declaration ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BETWEEN_EMPTY_PARENS_IN_ENUM_CONSTANT, this.insert_space_between_empty_parens_in_enum_constant ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BETWEEN_EMPTY_PARENS_IN_METHOD_DECLARATION, this.insert_space_between_empty_parens_in_method_declaration ? JavaCore.INSERT : JavaCore.DO_NOT_INSERT);
        if (this.insert_space_between_empty_parens_in_method_invocation) {
            str = JavaCore.INSERT;
        }
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BETWEEN_EMPTY_PARENS_IN_METHOD_INVOCATION, str);
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_COMPACT_ELSE_IF, this.compact_else_if ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_KEEP_GUARDIAN_CLAUSE_ON_ONE_LINE, this.keep_guardian_clause_on_one_line ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_KEEP_ELSE_STATEMENT_ON_SAME_LINE, this.keep_else_statement_on_same_line ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_KEEP_EMPTY_ARRAY_INITIALIZER_ON_ONE_LINE, this.keep_empty_array_initializer_on_one_line ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_KEEP_SIMPLE_IF_ON_ONE_LINE, this.keep_simple_if_on_one_line ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_KEEP_THEN_STATEMENT_ON_SAME_LINE, this.keep_then_statement_on_same_line ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_KEEP_SIMPLE_FOR_BODY_ON_SAME_LINE, this.keep_simple_for_body_on_same_line ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_KEEP_SIMPLE_WHILE_BODY_ON_SAME_LINE, this.keep_simple_while_body_on_same_line ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_KEEP_SIMPLE_DO_WHILE_BODY_ON_SAME_LINE, this.keep_simple_do_while_body_on_same_line ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_NEVER_INDENT_BLOCK_COMMENTS_ON_FIRST_COLUMN, this.never_indent_block_comments_on_first_column ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_NEVER_INDENT_LINE_COMMENTS_ON_FIRST_COLUMN, this.never_indent_line_comments_on_first_column ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_NUMBER_OF_EMPTY_LINES_TO_PRESERVE, Integer.toString(this.number_of_empty_lines_to_preserve));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_JOIN_WRAPPED_LINES, this.join_wrapped_lines ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_JOIN_LINES_IN_COMMENTS, this.join_lines_in_comments ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_PUT_EMPTY_STATEMENT_ON_NEW_LINE, this.put_empty_statement_on_new_line ? "true" : "false");
        hashMap.put("org.eclipse.jdt.core.formatter.lineSplit", Integer.toString(this.page_width));
        int i10 = this.tab_char;
        if (i10 == 1) {
            hashMap.put("org.eclipse.jdt.core.formatter.tabulation.char", JavaCore.TAB);
        } else if (i10 == 2) {
            hashMap.put("org.eclipse.jdt.core.formatter.tabulation.char", JavaCore.SPACE);
        } else if (i10 == 4) {
            hashMap.put("org.eclipse.jdt.core.formatter.tabulation.char", DefaultCodeFormatterConstants.MIXED);
        }
        hashMap.put("org.eclipse.jdt.core.formatter.tabulation.size", Integer.toString(this.tab_char == 2 ? this.indentation_size : this.tab_size));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_USE_TABS_ONLY_FOR_LEADING_INDENTATIONS, this.use_tabs_only_for_leading_indentations ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_MULTIPLICATIVE_OPERATOR, this.wrap_before_multiplicative_operator ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_ADDITIVE_OPERATOR, this.wrap_before_additive_operator ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_STRING_CONCATENATION, this.wrap_before_string_concatenation ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_SHIFT_OPERATOR, this.wrap_before_shift_operator ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_RELATIONAL_OPERATOR, this.wrap_before_relational_operator ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_BITWISE_OPERATOR, this.wrap_before_bitwise_operator ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_LOGICAL_OPERATOR, this.wrap_before_logical_operator ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_OR_OPERATOR_MULTICATCH, this.wrap_before_or_operator_multicatch ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_CONDITIONAL_OPERATOR, this.wrap_before_conditional_operator ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_ASSIGNMENT_OPERATOR, this.wrap_before_assignment_operator ? "true" : "false");
        char[] cArr = this.disabling_tag;
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_DISABLING_TAG, cArr == null ? Util.EMPTY_STRING : new String(cArr));
        char[] cArr2 = this.enabling_tag;
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_ENABLING_TAG, cArr2 == null ? Util.EMPTY_STRING : new String(cArr2));
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_USE_ON_OFF_TAGS, this.use_tags ? "true" : "false");
        hashMap.put(DefaultCodeFormatterConstants.FORMATTER_WRAP_OUTER_EXPRESSIONS_WHEN_NESTED, this.wrap_outer_expressions_when_nested ? "true" : "false");
        return hashMap;
    }

    public void set(Map<String, String> map) {
        int i10;
        int i11;
        String str = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ARGUMENTS_IN_ALLOCATION_EXPRESSION);
        if (str != null) {
            try {
                this.alignment_for_arguments_in_allocation_expression = Integer.parseInt(str);
            } catch (ClassCastException unused) {
                this.alignment_for_arguments_in_allocation_expression = 16;
            } catch (NumberFormatException unused2) {
                this.alignment_for_arguments_in_allocation_expression = 16;
            }
        }
        String str2 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ARGUMENTS_IN_ANNOTATION);
        if (str2 != null) {
            try {
                this.alignment_for_arguments_in_annotation = Integer.parseInt(str2);
            } catch (ClassCastException unused3) {
                this.alignment_for_arguments_in_annotation = 0;
            } catch (NumberFormatException unused4) {
                this.alignment_for_arguments_in_annotation = 0;
            }
        }
        String str3 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ARGUMENTS_IN_ENUM_CONSTANT);
        if (str3 != null) {
            try {
                this.alignment_for_arguments_in_enum_constant = Integer.parseInt(str3);
            } catch (ClassCastException unused5) {
                this.alignment_for_arguments_in_enum_constant = 16;
            } catch (NumberFormatException unused6) {
                this.alignment_for_arguments_in_enum_constant = 16;
            }
        }
        String str4 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ARGUMENTS_IN_EXPLICIT_CONSTRUCTOR_CALL);
        if (str4 != null) {
            try {
                this.alignment_for_arguments_in_explicit_constructor_call = Integer.parseInt(str4);
            } catch (ClassCastException unused7) {
                this.alignment_for_arguments_in_explicit_constructor_call = 16;
            } catch (NumberFormatException unused8) {
                this.alignment_for_arguments_in_explicit_constructor_call = 16;
            }
        }
        String str5 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ARGUMENTS_IN_METHOD_INVOCATION);
        if (str5 != null) {
            try {
                this.alignment_for_arguments_in_method_invocation = Integer.parseInt(str5);
            } catch (ClassCastException unused9) {
                this.alignment_for_arguments_in_method_invocation = 16;
            } catch (NumberFormatException unused10) {
                this.alignment_for_arguments_in_method_invocation = 16;
            }
        }
        String str6 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ARGUMENTS_IN_QUALIFIED_ALLOCATION_EXPRESSION);
        if (str6 != null) {
            try {
                this.alignment_for_arguments_in_qualified_allocation_expression = Integer.parseInt(str6);
            } catch (ClassCastException unused11) {
                this.alignment_for_arguments_in_qualified_allocation_expression = 16;
            } catch (NumberFormatException unused12) {
                this.alignment_for_arguments_in_qualified_allocation_expression = 16;
            }
        }
        String str7 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ASSIGNMENT);
        if (str7 != null) {
            try {
                this.alignment_for_assignment = Integer.parseInt(str7);
            } catch (ClassCastException unused13) {
                this.alignment_for_assignment = 48;
            } catch (NumberFormatException unused14) {
                this.alignment_for_assignment = 48;
            }
        }
        setInt(map, DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_MULTIPLICATIVE_OPERATOR, new IntConsumer() {
            @Override
            public final void accept(int i12) {
                DefaultCodeFormatterOptions.this.lambda$0(i12);
            }
        });
        setInt(map, DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ADDITIVE_OPERATOR, new IntConsumer() {
            @Override
            public final void accept(int i12) {
                DefaultCodeFormatterOptions.this.lambda$1(i12);
            }
        });
        setInt(map, DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_STRING_CONCATENATION, new IntConsumer() {
            @Override
            public final void accept(int i12) {
                DefaultCodeFormatterOptions.this.lambda$2(i12);
            }
        });
        setInt(map, DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_SHIFT_OPERATOR, new IntConsumer() {
            @Override
            public final void accept(int i12) {
                DefaultCodeFormatterOptions.this.lambda$3(i12);
            }
        });
        setInt(map, DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_RELATIONAL_OPERATOR, new IntConsumer() {
            @Override
            public final void accept(int i12) {
                DefaultCodeFormatterOptions.this.lambda$4(i12);
            }
        });
        setInt(map, DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_BITWISE_OPERATOR, new IntConsumer() {
            @Override
            public final void accept(int i12) {
                DefaultCodeFormatterOptions.this.lambda$5(i12);
            }
        });
        setInt(map, DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_LOGICAL_OPERATOR, new IntConsumer() {
            @Override
            public final void accept(int i12) {
                DefaultCodeFormatterOptions.this.lambda$6(i12);
            }
        });
        String str8 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_COMPACT_IF);
        if (str8 != null) {
            try {
                this.alignment_for_compact_if = Integer.parseInt(str8);
            } catch (ClassCastException unused15) {
                this.alignment_for_compact_if = 52;
            } catch (NumberFormatException unused16) {
                this.alignment_for_compact_if = 52;
            }
        }
        String str9 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_COMPACT_LOOP);
        if (str9 != null) {
            this.alignment_for_compact_loop = toInt(str9, 52);
        }
        String str10 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_CONDITIONAL_EXPRESSION);
        if (str10 != null) {
            try {
                this.alignment_for_conditional_expression = Integer.parseInt(str10);
            } catch (ClassCastException unused17) {
                this.alignment_for_conditional_expression = 48;
            } catch (NumberFormatException unused18) {
                this.alignment_for_conditional_expression = 48;
            }
        }
        setInt(map, DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_CONDITIONAL_EXPRESSION_CHAIN, new IntConsumer() {
            @Override
            public final void accept(int i12) {
                DefaultCodeFormatterOptions.this.lambda$7(i12);
            }
        });
        String str11 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_ENUM_CONSTANTS);
        if (str11 != null) {
            try {
                this.alignment_for_enum_constants = Integer.parseInt(str11);
            } catch (ClassCastException unused19) {
                this.alignment_for_enum_constants = 0;
            } catch (NumberFormatException unused20) {
                this.alignment_for_enum_constants = 0;
            }
        }
        String str12 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_EXPRESSIONS_IN_ARRAY_INITIALIZER);
        if (str12 != null) {
            try {
                this.alignment_for_expressions_in_array_initializer = Integer.parseInt(str12);
            } catch (ClassCastException unused21) {
                this.alignment_for_expressions_in_array_initializer = 16;
            } catch (NumberFormatException unused22) {
                this.alignment_for_expressions_in_array_initializer = 16;
            }
        }
        String str13 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_EXPRESSIONS_IN_FOR_LOOP_HEADER);
        if (str13 != null) {
            this.alignment_for_expressions_in_for_loop_header = toInt(str13, 0);
        }
        String str14 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_METHOD_DECLARATION);
        if (str14 != null) {
            try {
                this.alignment_for_method_declaration = Integer.parseInt(str14);
            } catch (ClassCastException unused23) {
                this.alignment_for_method_declaration = 16;
            } catch (NumberFormatException unused24) {
                this.alignment_for_method_declaration = 16;
            }
        }
        String str15 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_MODULE_STATEMENTS);
        if (str15 != null) {
            this.alignment_for_module_statements = toInt(str15, 16);
        }
        String str16 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_MULTIPLE_FIELDS);
        if (str16 != null) {
            try {
                this.alignment_for_multiple_fields = Integer.parseInt(str16);
            } catch (ClassCastException unused25) {
                this.alignment_for_multiple_fields = 16;
            } catch (NumberFormatException unused26) {
                this.alignment_for_multiple_fields = 16;
            }
        }
        String str17 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_PARAMETERIZED_TYPE_REFERENCES);
        if (str17 != null) {
            this.alignment_for_parameterized_type_references = toInt(str17, 0);
        }
        String str18 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_PARAMETERS_IN_CONSTRUCTOR_DECLARATION);
        if (str18 != null) {
            try {
                this.alignment_for_parameters_in_constructor_declaration = Integer.parseInt(str18);
            } catch (ClassCastException unused27) {
                this.alignment_for_parameters_in_constructor_declaration = 16;
            } catch (NumberFormatException unused28) {
                this.alignment_for_parameters_in_constructor_declaration = 16;
            }
        }
        String str19 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_PARAMETERS_IN_METHOD_DECLARATION);
        if (str19 != null) {
            try {
                this.alignment_for_parameters_in_method_declaration = Integer.parseInt(str19);
            } catch (ClassCastException unused29) {
                this.alignment_for_parameters_in_method_declaration = 16;
            } catch (NumberFormatException unused30) {
                this.alignment_for_parameters_in_method_declaration = 16;
            }
        }
        String str20 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_RESOURCES_IN_TRY);
        if (str20 != null) {
            try {
                this.alignment_for_resources_in_try = Integer.parseInt(str20);
            } catch (ClassCastException unused31) {
                this.alignment_for_resources_in_try = 80;
            } catch (NumberFormatException unused32) {
                this.alignment_for_resources_in_try = 80;
            }
        }
        String str21 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_SELECTOR_IN_METHOD_INVOCATION);
        if (str21 != null) {
            try {
                this.alignment_for_selector_in_method_invocation = Integer.parseInt(str21);
            } catch (ClassCastException unused33) {
                this.alignment_for_selector_in_method_invocation = 16;
            } catch (NumberFormatException unused34) {
                this.alignment_for_selector_in_method_invocation = 16;
            }
        }
        String str22 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_SUPERCLASS_IN_TYPE_DECLARATION);
        if (str22 != null) {
            try {
                this.alignment_for_superclass_in_type_declaration = Integer.parseInt(str22);
            } catch (ClassCastException unused35) {
                this.alignment_for_superclass_in_type_declaration = 64;
            } catch (NumberFormatException unused36) {
                this.alignment_for_superclass_in_type_declaration = 64;
            }
        }
        String str23 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_SUPERINTERFACES_IN_ENUM_DECLARATION);
        if (str23 != null) {
            try {
                this.alignment_for_superinterfaces_in_enum_declaration = Integer.parseInt(str23);
            } catch (ClassCastException unused37) {
                this.alignment_for_superinterfaces_in_enum_declaration = 64;
            } catch (NumberFormatException unused38) {
                this.alignment_for_superinterfaces_in_enum_declaration = 64;
            }
        }
        String str24 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_SUPERINTERFACES_IN_TYPE_DECLARATION);
        if (str24 != null) {
            try {
                this.alignment_for_superinterfaces_in_type_declaration = Integer.parseInt(str24);
            } catch (ClassCastException unused39) {
                this.alignment_for_superinterfaces_in_type_declaration = 64;
            } catch (NumberFormatException unused40) {
                this.alignment_for_superinterfaces_in_type_declaration = 64;
            }
        }
        String str25 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_THROWS_CLAUSE_IN_CONSTRUCTOR_DECLARATION);
        if (str25 != null) {
            try {
                this.alignment_for_throws_clause_in_constructor_declaration = Integer.parseInt(str25);
            } catch (ClassCastException unused41) {
                this.alignment_for_throws_clause_in_constructor_declaration = 16;
            } catch (NumberFormatException unused42) {
                this.alignment_for_throws_clause_in_constructor_declaration = 16;
            }
        }
        String str26 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_THROWS_CLAUSE_IN_METHOD_DECLARATION);
        if (str26 != null) {
            try {
                this.alignment_for_throws_clause_in_method_declaration = Integer.parseInt(str26);
            } catch (ClassCastException unused43) {
                this.alignment_for_throws_clause_in_method_declaration = 16;
            } catch (NumberFormatException unused44) {
                this.alignment_for_throws_clause_in_method_declaration = 16;
            }
        }
        String str27 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_TYPE_ARGUMENTS);
        if (str27 != null) {
            this.alignment_for_type_arguments = toInt(str27, 0);
        }
        String str28 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_TYPE_PARAMETERS);
        if (str28 != null) {
            this.alignment_for_type_parameters = toInt(str28, 0);
        }
        String str29 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGNMENT_FOR_UNION_TYPE_IN_MULTICATCH);
        if (str29 != null) {
            try {
                this.alignment_for_union_type_in_multicatch = Integer.parseInt(str29);
            } catch (ClassCastException unused45) {
                this.alignment_for_union_type_in_multicatch = 16;
            } catch (NumberFormatException unused46) {
                this.alignment_for_union_type_in_multicatch = 16;
            }
        }
        String str30 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGN_TYPE_MEMBERS_ON_COLUMNS);
        if (str30 != null) {
            this.align_type_members_on_columns = "true".equals(str30);
        }
        String str31 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGN_VARIABLE_DECLARATIONS_ON_COLUMNS);
        if (str31 != null) {
            this.align_variable_declarations_on_columns = "true".equals(str31);
        }
        String str32 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGN_ASSIGNMENT_STATEMENTS_ON_COLUMNS);
        if (str32 != null) {
            this.align_assignment_statements_on_columns = "true".equals(str32);
        }
        String str33 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGN_FIELDS_GROUPING_BLANK_LINES);
        if (str30 != null) {
            try {
                this.align_fields_grouping_blank_lines = Integer.parseInt(str33);
            } catch (ClassCastException unused47) {
                this.align_fields_grouping_blank_lines = Integer.MAX_VALUE;
            } catch (NumberFormatException unused48) {
                this.align_fields_grouping_blank_lines = Integer.MAX_VALUE;
            }
        }
        String str34 = map.get(DefaultCodeFormatterConstants.FORMATTER_ALIGN_WITH_SPACES);
        if (str34 != null) {
            this.align_with_spaces = "true".equals(str34);
        }
        String str35 = map.get(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_ANNOTATION_TYPE_DECLARATION);
        if (str35 != null) {
            try {
                this.brace_position_for_annotation_type_declaration = str35;
            } catch (ClassCastException unused49) {
                this.brace_position_for_annotation_type_declaration = DefaultCodeFormatterConstants.END_OF_LINE;
            }
        }
        String str36 = map.get(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_ANONYMOUS_TYPE_DECLARATION);
        if (str36 != null) {
            try {
                this.brace_position_for_anonymous_type_declaration = str36;
            } catch (ClassCastException unused50) {
                this.brace_position_for_anonymous_type_declaration = DefaultCodeFormatterConstants.END_OF_LINE;
            }
        }
        String str37 = map.get(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_ARRAY_INITIALIZER);
        if (str37 != null) {
            try {
                this.brace_position_for_array_initializer = str37;
            } catch (ClassCastException unused51) {
                this.brace_position_for_array_initializer = DefaultCodeFormatterConstants.END_OF_LINE;
            }
        }
        String str38 = map.get(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_BLOCK);
        if (str38 != null) {
            try {
                this.brace_position_for_block = str38;
            } catch (ClassCastException unused52) {
                this.brace_position_for_block = DefaultCodeFormatterConstants.END_OF_LINE;
            }
        }
        String str39 = map.get(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_BLOCK_IN_CASE);
        if (str39 != null) {
            try {
                this.brace_position_for_block_in_case = str39;
            } catch (ClassCastException unused53) {
                this.brace_position_for_block_in_case = DefaultCodeFormatterConstants.END_OF_LINE;
            }
        }
        String str40 = map.get(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_CONSTRUCTOR_DECLARATION);
        if (str40 != null) {
            try {
                this.brace_position_for_constructor_declaration = str40;
            } catch (ClassCastException unused54) {
                this.brace_position_for_constructor_declaration = DefaultCodeFormatterConstants.END_OF_LINE;
            }
        }
        String str41 = map.get(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_ENUM_CONSTANT);
        if (str41 != null) {
            try {
                this.brace_position_for_enum_constant = str41;
            } catch (ClassCastException unused55) {
                this.brace_position_for_enum_constant = DefaultCodeFormatterConstants.END_OF_LINE;
            }
        }
        String str42 = map.get(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_ENUM_DECLARATION);
        if (str42 != null) {
            try {
                this.brace_position_for_enum_declaration = str42;
            } catch (ClassCastException unused56) {
                this.brace_position_for_enum_declaration = DefaultCodeFormatterConstants.END_OF_LINE;
            }
        }
        String str43 = map.get(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_LAMBDA_BODY);
        if (str43 != null) {
            try {
                this.brace_position_for_lambda_body = str43;
            } catch (ClassCastException unused57) {
                this.brace_position_for_lambda_body = DefaultCodeFormatterConstants.END_OF_LINE;
            }
        }
        String str44 = map.get(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_METHOD_DECLARATION);
        if (str44 != null) {
            try {
                this.brace_position_for_method_declaration = str44;
            } catch (ClassCastException unused58) {
                this.brace_position_for_method_declaration = DefaultCodeFormatterConstants.END_OF_LINE;
            }
        }
        String str45 = map.get(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_SWITCH);
        if (str45 != null) {
            try {
                this.brace_position_for_switch = str45;
            } catch (ClassCastException unused59) {
                this.brace_position_for_switch = DefaultCodeFormatterConstants.END_OF_LINE;
            }
        }
        String str46 = map.get(DefaultCodeFormatterConstants.FORMATTER_BRACE_POSITION_FOR_TYPE_DECLARATION);
        if (str46 != null) {
            try {
                this.brace_position_for_type_declaration = str46;
            } catch (ClassCastException unused60) {
                this.brace_position_for_type_declaration = DefaultCodeFormatterConstants.END_OF_LINE;
            }
        }
        String str47 = map.get(DefaultCodeFormatterConstants.FORMATTER_PARENTHESES_POSITIONS_IN_METHOD_DECLARATION);
        if (str47 != null) {
            this.parenthesis_positions_in_method_declaration = toString(str47, DefaultCodeFormatterConstants.COMMON_LINES);
        }
        String str48 = map.get(DefaultCodeFormatterConstants.FORMATTER_PARENTHESES_POSITIONS_IN_METHOD_INVOCATION);
        if (str48 != null) {
            this.parenthesis_positions_in_method_invocation = toString(str48, DefaultCodeFormatterConstants.COMMON_LINES);
        }
        String str49 = map.get(DefaultCodeFormatterConstants.FORMATTER_PARENTHESES_POSITIONS_IN_ENUM_CONSTANT_DECLARATION);
        if (str49 != null) {
            this.parenthesis_positions_in_enum_constant_declaration = toString(str49, DefaultCodeFormatterConstants.COMMON_LINES);
        }
        String str50 = map.get(DefaultCodeFormatterConstants.FORMATTER_PARENTHESES_POSITIONS_IN_IF_WHILE_STATEMENT);
        if (str50 != null) {
            this.parenthesis_positions_in_if_while_statement = toString(str50, DefaultCodeFormatterConstants.COMMON_LINES);
        }
        String str51 = map.get(DefaultCodeFormatterConstants.FORMATTER_PARENTHESES_POSITIONS_IN_FOR_STATEMENT);
        if (str51 != null) {
            this.parenthesis_positions_in_for_statement = toString(str51, DefaultCodeFormatterConstants.COMMON_LINES);
        }
        String str52 = map.get(DefaultCodeFormatterConstants.FORMATTER_PARENTHESES_POSITIONS_IN_SWITCH_STATEMENT);
        if (str52 != null) {
            this.parenthesis_positions_in_switch_statement = toString(str52, DefaultCodeFormatterConstants.COMMON_LINES);
        }
        String str53 = map.get(DefaultCodeFormatterConstants.FORMATTER_PARENTHESES_POSITIONS_IN_TRY_CLAUSE);
        if (str53 != null) {
            this.parenthesis_positions_in_try_clause = toString(str53, DefaultCodeFormatterConstants.COMMON_LINES);
        }
        String str54 = map.get(DefaultCodeFormatterConstants.FORMATTER_PARENTHESES_POSITIONS_IN_CATCH_CLAUSE);
        if (str54 != null) {
            this.parenthesis_positions_in_catch_clause = toString(str54, DefaultCodeFormatterConstants.COMMON_LINES);
        }
        String str55 = map.get(DefaultCodeFormatterConstants.FORMATTER_PARENTHESES_POSITIONS_IN_ANNOTATION);
        if (str55 != null) {
            this.parenthesis_positions_in_annotation = toString(str55, DefaultCodeFormatterConstants.COMMON_LINES);
        }
        String str56 = map.get(DefaultCodeFormatterConstants.FORMATTER_PARENTHESES_POSITIONS_IN_LAMBDA_DECLARATION);
        if (str56 != null) {
            this.parenthesis_positions_in_lambda_declaration = toString(str56, DefaultCodeFormatterConstants.COMMON_LINES);
        }
        String str57 = map.get(DefaultCodeFormatterConstants.FORMATTER_CONTINUATION_INDENTATION);
        if (str57 != null) {
            try {
                this.continuation_indentation = Integer.parseInt(str57);
            } catch (ClassCastException unused61) {
                this.continuation_indentation = 2;
            } catch (NumberFormatException unused62) {
                this.continuation_indentation = 2;
            }
        }
        String str58 = map.get(DefaultCodeFormatterConstants.FORMATTER_CONTINUATION_INDENTATION_FOR_ARRAY_INITIALIZER);
        if (str58 != null) {
            try {
                this.continuation_indentation_for_array_initializer = Integer.parseInt(str58);
            } catch (ClassCastException unused63) {
                this.continuation_indentation_for_array_initializer = 2;
            } catch (NumberFormatException unused64) {
                this.continuation_indentation_for_array_initializer = 2;
            }
        }
        String str59 = map.get(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_AFTER_IMPORTS);
        if (str59 != null) {
            try {
                this.blank_lines_after_imports = Integer.parseInt(str59);
            } catch (ClassCastException unused65) {
                this.blank_lines_after_imports = 0;
            } catch (NumberFormatException unused66) {
                this.blank_lines_after_imports = 0;
            }
        }
        String str60 = map.get(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_AFTER_PACKAGE);
        if (str60 != null) {
            try {
                this.blank_lines_after_package = Integer.parseInt(str60);
            } catch (ClassCastException unused67) {
                this.blank_lines_after_package = 0;
            } catch (NumberFormatException unused68) {
                this.blank_lines_after_package = 0;
            }
        }
        String str61 = map.get(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_BEFORE_FIELD);
        if (str61 != null) {
            try {
                this.blank_lines_before_field = Integer.parseInt(str61);
            } catch (ClassCastException unused69) {
                this.blank_lines_before_field = 0;
            } catch (NumberFormatException unused70) {
                this.blank_lines_before_field = 0;
            }
        }
        String str62 = map.get(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_BEFORE_FIRST_CLASS_BODY_DECLARATION);
        if (str62 != null) {
            try {
                this.blank_lines_before_first_class_body_declaration = Integer.parseInt(str62);
            } catch (ClassCastException unused71) {
                this.blank_lines_before_first_class_body_declaration = 0;
            } catch (NumberFormatException unused72) {
                this.blank_lines_before_first_class_body_declaration = 0;
            }
        }
        String str63 = map.get(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_BEFORE_IMPORTS);
        if (str63 != null) {
            try {
                this.blank_lines_before_imports = Integer.parseInt(str63);
            } catch (ClassCastException unused73) {
                this.blank_lines_before_imports = 0;
            } catch (NumberFormatException unused74) {
                this.blank_lines_before_imports = 0;
            }
        }
        String str64 = map.get(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_BEFORE_MEMBER_TYPE);
        if (str64 != null) {
            try {
                this.blank_lines_before_member_type = Integer.parseInt(str64);
            } catch (ClassCastException unused75) {
                this.blank_lines_before_member_type = 0;
            } catch (NumberFormatException unused76) {
                this.blank_lines_before_member_type = 0;
            }
        }
        String str65 = map.get(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_BEFORE_METHOD);
        if (str65 != null) {
            try {
                this.blank_lines_before_method = Integer.parseInt(str65);
            } catch (ClassCastException unused77) {
                this.blank_lines_before_method = 0;
            } catch (NumberFormatException unused78) {
                this.blank_lines_before_method = 0;
            }
        }
        String str66 = map.get(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_BEFORE_NEW_CHUNK);
        if (str66 != null) {
            try {
                this.blank_lines_before_new_chunk = Integer.parseInt(str66);
            } catch (ClassCastException unused79) {
                this.blank_lines_before_new_chunk = 0;
            } catch (NumberFormatException unused80) {
                this.blank_lines_before_new_chunk = 0;
            }
        }
        String str67 = map.get(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_BEFORE_PACKAGE);
        if (str67 != null) {
            try {
                this.blank_lines_before_package = Integer.parseInt(str67);
            } catch (ClassCastException unused81) {
                this.blank_lines_before_package = 0;
            } catch (NumberFormatException unused82) {
                this.blank_lines_before_package = 0;
            }
        }
        String str68 = map.get(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_BETWEEN_IMPORT_GROUPS);
        if (str68 != null) {
            try {
                this.blank_lines_between_import_groups = Integer.parseInt(str68);
            } catch (ClassCastException unused83) {
                this.blank_lines_between_import_groups = 1;
            } catch (NumberFormatException unused84) {
                this.blank_lines_between_import_groups = 1;
            }
        }
        String str69 = map.get(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_BETWEEN_TYPE_DECLARATIONS);
        if (str69 != null) {
            try {
                this.blank_lines_between_type_declarations = Integer.parseInt(str69);
            } catch (ClassCastException unused85) {
                this.blank_lines_between_type_declarations = 0;
            } catch (NumberFormatException unused86) {
                this.blank_lines_between_type_declarations = 0;
            }
        }
        String str70 = map.get(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_AT_BEGINNING_OF_METHOD_BODY);
        if (str70 != null) {
            try {
                this.blank_lines_at_beginning_of_method_body = Integer.parseInt(str70);
            } catch (ClassCastException unused87) {
                this.blank_lines_at_beginning_of_method_body = 0;
            } catch (NumberFormatException unused88) {
                this.blank_lines_at_beginning_of_method_body = 0;
            }
        }
        String str71 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_TYPE_ANNOTATION);
        if (str71 != null) {
            this.insert_new_line_after_type_annotation = JavaCore.INSERT.equals(str71);
        }
        setDeprecatedOptions(map);
        String str72 = map.get(DefaultCodeFormatterConstants.FORMATTER_COMMENT_FORMAT_JAVADOC_COMMENT);
        if (str72 != null) {
            this.comment_format_javadoc_comment = "true".equals(str72);
        }
        String str73 = map.get(DefaultCodeFormatterConstants.FORMATTER_COMMENT_FORMAT_BLOCK_COMMENT);
        if (str73 != null) {
            this.comment_format_block_comment = "true".equals(str73);
        }
        String str74 = map.get(DefaultCodeFormatterConstants.FORMATTER_COMMENT_FORMAT_LINE_COMMENT);
        if (str74 != null) {
            this.comment_format_line_comment = "true".equals(str74);
        }
        String str75 = map.get(DefaultCodeFormatterConstants.FORMATTER_COMMENT_FORMAT_LINE_COMMENT_STARTING_ON_FIRST_COLUMN);
        if (str75 != null) {
            this.comment_format_line_comment_starting_on_first_column = "true".equals(str75);
        }
        String str76 = map.get(DefaultCodeFormatterConstants.FORMATTER_COMMENT_FORMAT_HEADER);
        if (str76 != null) {
            this.comment_format_header = "true".equals(str76);
        }
        String str77 = map.get(DefaultCodeFormatterConstants.FORMATTER_COMMENT_FORMAT_HTML);
        if (str77 != null) {
            this.comment_format_html = "true".equals(str77);
        }
        String str78 = map.get(DefaultCodeFormatterConstants.FORMATTER_COMMENT_FORMAT_SOURCE);
        if (str78 != null) {
            this.comment_format_source = "true".equals(str78);
        }
        String str79 = map.get(DefaultCodeFormatterConstants.FORMATTER_COMMENT_INDENT_PARAMETER_DESCRIPTION);
        if (str79 != null) {
            this.comment_indent_parameter_description = "true".equals(str79);
        }
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_COMMENT_INDENT_TAG_DESCRIPTION, "true", new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$8((Boolean) obj);
            }
        });
        String str80 = map.get(DefaultCodeFormatterConstants.FORMATTER_COMMENT_INDENT_ROOT_TAGS);
        if (str80 != null) {
            this.comment_indent_root_tags = "true".equals(str80);
        }
        String str81 = map.get(DefaultCodeFormatterConstants.FORMATTER_COMMENT_ALIGN_TAGS_NAMES_DESCRIPTIONS);
        if (str81 != null) {
            this.comment_align_tags_names_descriptions = "true".equals(str81);
        }
        String str82 = map.get(DefaultCodeFormatterConstants.FORMATTER_COMMENT_ALIGN_TAGS_DESCREIPTIONS_GROUPED);
        if (str82 != null) {
            this.comment_align_tags_descriptions_grouped = "true".equals(str82);
        }
        String str83 = map.get(DefaultCodeFormatterConstants.FORMATTER_COMMENT_INSERT_EMPTY_LINE_BEFORE_ROOT_TAGS);
        if (str83 != null) {
            this.comment_insert_empty_line_before_root_tags = JavaCore.INSERT.equals(str83);
        }
        String str84 = map.get(DefaultCodeFormatterConstants.FORMATTER_COMMENT_INSERT_NEW_LINE_FOR_PARAMETER);
        if (str84 != null) {
            this.comment_insert_new_line_for_parameter = JavaCore.INSERT.equals(str84);
        }
        String str85 = map.get(DefaultCodeFormatterConstants.FORMATTER_COMMENT_PRESERVE_WHITE_SPACE_BETWEEN_CODE_AND_LINE_COMMENT);
        if (str85 != null) {
            this.comment_preserve_white_space_between_code_and_line_comments = "true".equals(str85);
        }
        String str86 = map.get(DefaultCodeFormatterConstants.FORMATTER_COMMENT_LINE_LENGTH);
        if (str86 != null) {
            try {
                this.comment_line_length = Integer.parseInt(str86);
            } catch (ClassCastException unused89) {
                this.comment_line_length = 80;
            } catch (NumberFormatException unused90) {
                this.comment_line_length = 80;
            }
        }
        String str87 = map.get(DefaultCodeFormatterConstants.FORMATTER_COMMENT_COUNT_LINE_LENGTH_FROM_STARTING_POSITION);
        if (str87 != null) {
            this.comment_count_line_length_from_starting_position = "true".equals(str87);
        }
        String str88 = map.get(DefaultCodeFormatterConstants.FORMATTER_COMMENT_NEW_LINES_AT_BLOCK_BOUNDARIES);
        if (str88 != null) {
            this.comment_new_lines_at_block_boundaries = "true".equals(str88);
        }
        String str89 = map.get(DefaultCodeFormatterConstants.FORMATTER_COMMENT_NEW_LINES_AT_JAVADOC_BOUNDARIES);
        if (str89 != null) {
            this.comment_new_lines_at_javadoc_boundaries = "true".equals(str89);
        }
        String str90 = map.get(DefaultCodeFormatterConstants.FORMATTER_INDENT_STATEMENTS_COMPARE_TO_BLOCK);
        if (str90 != null) {
            this.indent_statements_compare_to_block = "true".equals(str90);
        }
        String str91 = map.get(DefaultCodeFormatterConstants.FORMATTER_INDENT_STATEMENTS_COMPARE_TO_BODY);
        if (str91 != null) {
            this.indent_statements_compare_to_body = "true".equals(str91);
        }
        String str92 = map.get(DefaultCodeFormatterConstants.FORMATTER_INDENT_BODY_DECLARATIONS_COMPARE_TO_ANNOTATION_DECLARATION_HEADER);
        if (str92 != null) {
            this.indent_body_declarations_compare_to_annotation_declaration_header = "true".equals(str92);
        }
        String str93 = map.get(DefaultCodeFormatterConstants.FORMATTER_INDENT_BODY_DECLARATIONS_COMPARE_TO_ENUM_CONSTANT_HEADER);
        if (str93 != null) {
            this.indent_body_declarations_compare_to_enum_constant_header = "true".equals(str93);
        }
        String str94 = map.get(DefaultCodeFormatterConstants.FORMATTER_INDENT_BODY_DECLARATIONS_COMPARE_TO_ENUM_DECLARATION_HEADER);
        if (str94 != null) {
            this.indent_body_declarations_compare_to_enum_declaration_header = "true".equals(str94);
        }
        String str95 = map.get(DefaultCodeFormatterConstants.FORMATTER_INDENT_BODY_DECLARATIONS_COMPARE_TO_TYPE_HEADER);
        if (str95 != null) {
            this.indent_body_declarations_compare_to_type_header = "true".equals(str95);
        }
        String str96 = map.get(DefaultCodeFormatterConstants.FORMATTER_INDENT_BREAKS_COMPARE_TO_CASES);
        if (str96 != null) {
            this.indent_breaks_compare_to_cases = "true".equals(str96);
        }
        String str97 = map.get(DefaultCodeFormatterConstants.FORMATTER_INDENT_EMPTY_LINES);
        if (str97 != null) {
            this.indent_empty_lines = "true".equals(str97);
        }
        String str98 = map.get(DefaultCodeFormatterConstants.FORMATTER_INDENT_SWITCHSTATEMENTS_COMPARE_TO_CASES);
        if (str98 != null) {
            this.indent_switchstatements_compare_to_cases = "true".equals(str98);
        }
        String str99 = map.get(DefaultCodeFormatterConstants.FORMATTER_INDENT_SWITCHSTATEMENTS_COMPARE_TO_SWITCH);
        if (str99 != null) {
            this.indent_switchstatements_compare_to_switch = "true".equals(str99);
        }
        String str100 = map.get(DefaultCodeFormatterConstants.FORMATTER_INDENTATION_SIZE);
        if (str100 != null) {
            try {
                i10 = Integer.parseInt(str100);
            } catch (ClassCastException | NumberFormatException unused91) {
                i10 = 4;
            }
            if (DefaultCodeFormatterConstants.MIXED.equals(map.get("org.eclipse.jdt.core.formatter.tabulation.char"))) {
                this.indentation_size = i10;
            } else if (JavaCore.SPACE.equals(map.get("org.eclipse.jdt.core.formatter.tabulation.char"))) {
                this.tab_size = i10;
            }
        }
        String str101 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_OPENING_BRACE_IN_ARRAY_INITIALIZER);
        if (str101 != null) {
            this.insert_new_line_after_opening_brace_in_array_initializer = JavaCore.INSERT.equals(str101);
        }
        String str102 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AT_END_OF_FILE_IF_MISSING);
        if (str102 != null) {
            this.insert_new_line_at_end_of_file_if_missing = JavaCore.INSERT.equals(str102);
        }
        String str103 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_BEFORE_CATCH_IN_TRY_STATEMENT);
        if (str103 != null) {
            this.insert_new_line_before_catch_in_try_statement = JavaCore.INSERT.equals(str103);
        }
        String str104 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_BEFORE_CLOSING_BRACE_IN_ARRAY_INITIALIZER);
        if (str104 != null) {
            this.insert_new_line_before_closing_brace_in_array_initializer = JavaCore.INSERT.equals(str104);
        }
        String str105 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_BEFORE_ELSE_IN_IF_STATEMENT);
        if (str105 != null) {
            this.insert_new_line_before_else_in_if_statement = JavaCore.INSERT.equals(str105);
        }
        String str106 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_BEFORE_FINALLY_IN_TRY_STATEMENT);
        if (str106 != null) {
            this.insert_new_line_before_finally_in_try_statement = JavaCore.INSERT.equals(str106);
        }
        String str107 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_BEFORE_WHILE_IN_DO_STATEMENT);
        if (str107 != null) {
            this.insert_new_line_before_while_in_do_statement = JavaCore.INSERT.equals(str107);
        }
        List<String> list = KEEP_ON_ONE_LINE_VALUES;
        setString(map, DefaultCodeFormatterConstants.FORMATTER_KEEP_ANNOTATION_DECLARATION_ON_ONE_LINE, list, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$9((String) obj);
            }
        });
        setString(map, DefaultCodeFormatterConstants.FORMATTER_KEEP_ANONYMOUS_TYPE_DECLARATION_ON_ONE_LINE, list, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$10((String) obj);
            }
        });
        setString(map, DefaultCodeFormatterConstants.FORMATTER_KEEP_IF_THEN_BODY_BLOCK_ON_ONE_LINE, list, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$11((String) obj);
            }
        });
        setString(map, DefaultCodeFormatterConstants.FORMATTER_KEEP_LOOP_BODY_BLOCK_ON_ONE_LINE, list, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$12((String) obj);
            }
        });
        setString(map, DefaultCodeFormatterConstants.FORMATTER_KEEP_LAMBDA_BODY_BLOCK_ON_ONE_LINE, list, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$13((String) obj);
            }
        });
        setString(map, DefaultCodeFormatterConstants.FORMATTER_KEEP_CODE_BLOCK_ON_ONE_LINE, Arrays.asList(DefaultCodeFormatterConstants.ONE_LINE_NEVER, DefaultCodeFormatterConstants.ONE_LINE_IF_EMPTY), new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$14((String) obj);
            }
        });
        setString(map, DefaultCodeFormatterConstants.FORMATTER_KEEP_ENUM_CONSTANT_DECLARATION_ON_ONE_LINE, list, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$15((String) obj);
            }
        });
        setString(map, DefaultCodeFormatterConstants.FORMATTER_KEEP_ENUM_DECLARATION_ON_ONE_LINE, list, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$16((String) obj);
            }
        });
        setString(map, DefaultCodeFormatterConstants.FORMATTER_KEEP_METHOD_BODY_ON_ONE_LINE, list, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$17((String) obj);
            }
        });
        setString(map, DefaultCodeFormatterConstants.FORMATTER_KEEP_TYPE_DECLARATION_ON_ONE_LINE, list, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$18((String) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_KEEP_SIMPLE_GETTER_SETTER_ON_ONE_LINE, "true", new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$19((Boolean) obj);
            }
        });
        String str108 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_NEW_LINE_AFTER_LABEL);
        if (str108 != null) {
            this.insert_new_line_after_label = JavaCore.INSERT.equals(str108);
        }
        String str109 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_AND_IN_TYPE_PARAMETER);
        if (str109 != null) {
            this.insert_space_after_and_in_type_parameter = JavaCore.INSERT.equals(str109);
        }
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_ARROW_IN_SWITCH_CASE, JavaCore.INSERT, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$20((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_ARROW_IN_SWITCH_DEFAULT, JavaCore.INSERT, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$21((Boolean) obj);
            }
        });
        String str110 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_ASSIGNMENT_OPERATOR);
        if (str110 != null) {
            this.insert_space_after_assignment_operator = JavaCore.INSERT.equals(str110);
        }
        String str111 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_AT_IN_ANNOTATION);
        if (str111 != null) {
            this.insert_space_after_at_in_annotation = JavaCore.INSERT.equals(str111);
        }
        String str112 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_AT_IN_ANNOTATION_TYPE_DECLARATION);
        if (str112 != null) {
            this.insert_space_after_at_in_annotation_type_declaration = JavaCore.INSERT.equals(str112);
        }
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_MULTIPLICATIVE_OPERATOR, JavaCore.INSERT, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$22((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_ADDITIVE_OPERATOR, JavaCore.INSERT, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$23((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_STRING_CONCATENATION, JavaCore.INSERT, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$24((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_SHIFT_OPERATOR, JavaCore.INSERT, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$25((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_RELATIONAL_OPERATOR, JavaCore.INSERT, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$26((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_BITWISE_OPERATOR, JavaCore.INSERT, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$27((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_LOGICAL_OPERATOR, JavaCore.INSERT, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$28((Boolean) obj);
            }
        });
        String str113 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_CLOSING_ANGLE_BRACKET_IN_TYPE_ARGUMENTS);
        if (str113 != null) {
            this.insert_space_after_closing_angle_bracket_in_type_arguments = JavaCore.INSERT.equals(str113);
        }
        String str114 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_CLOSING_ANGLE_BRACKET_IN_TYPE_PARAMETERS);
        if (str114 != null) {
            this.insert_space_after_closing_angle_bracket_in_type_parameters = JavaCore.INSERT.equals(str114);
        }
        String str115 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_CLOSING_PAREN_IN_CAST);
        if (str115 != null) {
            this.insert_space_after_closing_paren_in_cast = JavaCore.INSERT.equals(str115);
        }
        String str116 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_CLOSING_BRACE_IN_BLOCK);
        if (str116 != null) {
            this.insert_space_after_closing_brace_in_block = JavaCore.INSERT.equals(str116);
        }
        String str117 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COLON_IN_ASSERT);
        if (str117 != null) {
            this.insert_space_after_colon_in_assert = JavaCore.INSERT.equals(str117);
        }
        String str118 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COLON_IN_CASE);
        if (str118 != null) {
            this.insert_space_after_colon_in_case = JavaCore.INSERT.equals(str118);
        }
        String str119 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COLON_IN_CONDITIONAL);
        if (str119 != null) {
            this.insert_space_after_colon_in_conditional = JavaCore.INSERT.equals(str119);
        }
        String str120 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COLON_IN_FOR);
        if (str120 != null) {
            this.insert_space_after_colon_in_for = JavaCore.INSERT.equals(str120);
        }
        String str121 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COLON_IN_LABELED_STATEMENT);
        if (str121 != null) {
            this.insert_space_after_colon_in_labeled_statement = JavaCore.INSERT.equals(str121);
        }
        String str122 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_ALLOCATION_EXPRESSION);
        if (str122 != null) {
            this.insert_space_after_comma_in_allocation_expression = JavaCore.INSERT.equals(str122);
        }
        String str123 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_ANNOTATION);
        if (str123 != null) {
            this.insert_space_after_comma_in_annotation = JavaCore.INSERT.equals(str123);
        }
        String str124 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_ARRAY_INITIALIZER);
        if (str124 != null) {
            this.insert_space_after_comma_in_array_initializer = JavaCore.INSERT.equals(str124);
        }
        String str125 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_CONSTRUCTOR_DECLARATION_PARAMETERS);
        if (str125 != null) {
            this.insert_space_after_comma_in_constructor_declaration_parameters = JavaCore.INSERT.equals(str125);
        }
        String str126 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_CONSTRUCTOR_DECLARATION_THROWS);
        if (str126 != null) {
            this.insert_space_after_comma_in_constructor_declaration_throws = JavaCore.INSERT.equals(str126);
        }
        String str127 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_ENUM_CONSTANT_ARGUMENTS);
        if (str127 != null) {
            this.insert_space_after_comma_in_enum_constant_arguments = JavaCore.INSERT.equals(str127);
        }
        String str128 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_ENUM_DECLARATIONS);
        if (str128 != null) {
            this.insert_space_after_comma_in_enum_declarations = JavaCore.INSERT.equals(str128);
        }
        String str129 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_EXPLICIT_CONSTRUCTOR_CALL_ARGUMENTS);
        if (str129 != null) {
            this.insert_space_after_comma_in_explicit_constructor_call_arguments = JavaCore.INSERT.equals(str129);
        }
        String str130 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_FOR_INCREMENTS);
        if (str130 != null) {
            this.insert_space_after_comma_in_for_increments = JavaCore.INSERT.equals(str130);
        }
        String str131 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_FOR_INITS);
        if (str131 != null) {
            this.insert_space_after_comma_in_for_inits = JavaCore.INSERT.equals(str131);
        }
        String str132 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_METHOD_INVOCATION_ARGUMENTS);
        if (str132 != null) {
            this.insert_space_after_comma_in_method_invocation_arguments = JavaCore.INSERT.equals(str132);
        }
        String str133 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_METHOD_DECLARATION_PARAMETERS);
        if (str133 != null) {
            this.insert_space_after_comma_in_method_declaration_parameters = JavaCore.INSERT.equals(str133);
        }
        String str134 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_METHOD_DECLARATION_THROWS);
        if (str134 != null) {
            this.insert_space_after_comma_in_method_declaration_throws = JavaCore.INSERT.equals(str134);
        }
        String str135 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_MULTIPLE_FIELD_DECLARATIONS);
        if (str135 != null) {
            this.insert_space_after_comma_in_multiple_field_declarations = JavaCore.INSERT.equals(str135);
        }
        String str136 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_MULTIPLE_LOCAL_DECLARATIONS);
        if (str136 != null) {
            this.insert_space_after_comma_in_multiple_local_declarations = JavaCore.INSERT.equals(str136);
        }
        String str137 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_PARAMETERIZED_TYPE_REFERENCE);
        if (str137 != null) {
            this.insert_space_after_comma_in_parameterized_type_reference = JavaCore.INSERT.equals(str137);
        }
        String str138 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_SUPERINTERFACES);
        if (str138 != null) {
            this.insert_space_after_comma_in_superinterfaces = JavaCore.INSERT.equals(str138);
        }
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_SWITCH_CASE_EXPRESSIONS, JavaCore.INSERT, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$29((Boolean) obj);
            }
        });
        String str139 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_TYPE_ARGUMENTS);
        if (str139 != null) {
            this.insert_space_after_comma_in_type_arguments = JavaCore.INSERT.equals(str139);
        }
        String str140 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_TYPE_PARAMETERS);
        if (str140 != null) {
            this.insert_space_after_comma_in_type_parameters = JavaCore.INSERT.equals(str140);
        }
        String str141 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_ELLIPSIS);
        if (str141 != null) {
            this.insert_space_after_ellipsis = JavaCore.INSERT.equals(str141);
        }
        String str142 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_LAMBDA_ARROW);
        if (str142 != null) {
            this.insert_space_after_lambda_arrow = JavaCore.INSERT.equals(str142);
        }
        String str143 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_ANGLE_BRACKET_IN_PARAMETERIZED_TYPE_REFERENCE);
        if (str143 != null) {
            this.insert_space_after_opening_angle_bracket_in_parameterized_type_reference = JavaCore.INSERT.equals(str143);
        }
        String str144 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_ANGLE_BRACKET_IN_TYPE_ARGUMENTS);
        if (str144 != null) {
            this.insert_space_after_opening_angle_bracket_in_type_arguments = JavaCore.INSERT.equals(str144);
        }
        String str145 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_ANGLE_BRACKET_IN_TYPE_PARAMETERS);
        if (str145 != null) {
            this.insert_space_after_opening_angle_bracket_in_type_parameters = JavaCore.INSERT.equals(str145);
        }
        String str146 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_BRACKET_IN_ARRAY_ALLOCATION_EXPRESSION);
        if (str146 != null) {
            this.insert_space_after_opening_bracket_in_array_allocation_expression = JavaCore.INSERT.equals(str146);
        }
        String str147 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_BRACKET_IN_ARRAY_REFERENCE);
        if (str147 != null) {
            this.insert_space_after_opening_bracket_in_array_reference = JavaCore.INSERT.equals(str147);
        }
        String str148 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_BRACE_IN_ARRAY_INITIALIZER);
        if (str148 != null) {
            this.insert_space_after_opening_brace_in_array_initializer = JavaCore.INSERT.equals(str148);
        }
        String str149 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_ANNOTATION);
        if (str149 != null) {
            this.insert_space_after_opening_paren_in_annotation = JavaCore.INSERT.equals(str149);
        }
        String str150 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_CAST);
        if (str150 != null) {
            this.insert_space_after_opening_paren_in_cast = JavaCore.INSERT.equals(str150);
        }
        String str151 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_CATCH);
        if (str151 != null) {
            this.insert_space_after_opening_paren_in_catch = JavaCore.INSERT.equals(str151);
        }
        String str152 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_CONSTRUCTOR_DECLARATION);
        if (str152 != null) {
            this.insert_space_after_opening_paren_in_constructor_declaration = JavaCore.INSERT.equals(str152);
        }
        String str153 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_ENUM_CONSTANT);
        if (str153 != null) {
            this.insert_space_after_opening_paren_in_enum_constant = JavaCore.INSERT.equals(str153);
        }
        String str154 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_FOR);
        if (str154 != null) {
            this.insert_space_after_opening_paren_in_for = JavaCore.INSERT.equals(str154);
        }
        String str155 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_IF);
        if (str155 != null) {
            this.insert_space_after_opening_paren_in_if = JavaCore.INSERT.equals(str155);
        }
        String str156 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_METHOD_DECLARATION);
        if (str156 != null) {
            this.insert_space_after_opening_paren_in_method_declaration = JavaCore.INSERT.equals(str156);
        }
        String str157 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_METHOD_INVOCATION);
        if (str157 != null) {
            this.insert_space_after_opening_paren_in_method_invocation = JavaCore.INSERT.equals(str157);
        }
        String str158 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_PARENTHESIZED_EXPRESSION);
        if (str158 != null) {
            this.insert_space_after_opening_paren_in_parenthesized_expression = JavaCore.INSERT.equals(str158);
        }
        String str159 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_SWITCH);
        if (str159 != null) {
            this.insert_space_after_opening_paren_in_switch = JavaCore.INSERT.equals(str159);
        }
        String str160 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_SYNCHRONIZED);
        if (str160 != null) {
            this.insert_space_after_opening_paren_in_synchronized = JavaCore.INSERT.equals(str160);
        }
        String str161 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_TRY);
        if (str161 != null) {
            this.insert_space_after_opening_paren_in_try = JavaCore.INSERT.equals(str161);
        }
        String str162 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_WHILE);
        if (str162 != null) {
            this.insert_space_after_opening_paren_in_while = JavaCore.INSERT.equals(str162);
        }
        String str163 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_POSTFIX_OPERATOR);
        if (str163 != null) {
            this.insert_space_after_postfix_operator = JavaCore.INSERT.equals(str163);
        }
        String str164 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_PREFIX_OPERATOR);
        if (str164 != null) {
            this.insert_space_after_prefix_operator = JavaCore.INSERT.equals(str164);
        }
        String str165 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_QUESTION_IN_CONDITIONAL);
        if (str165 != null) {
            this.insert_space_after_question_in_conditional = JavaCore.INSERT.equals(str165);
        }
        String str166 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_QUESTION_IN_WILDCARD);
        if (str166 != null) {
            this.insert_space_after_question_in_wilcard = JavaCore.INSERT.equals(str166);
        }
        String str167 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_SEMICOLON_IN_FOR);
        if (str167 != null) {
            this.insert_space_after_semicolon_in_for = JavaCore.INSERT.equals(str167);
        }
        String str168 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_SEMICOLON_IN_TRY_RESOURCES);
        if (str168 != null) {
            this.insert_space_after_semicolon_in_try_resources = JavaCore.INSERT.equals(str168);
        }
        String str169 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_AFTER_UNARY_OPERATOR);
        if (str169 != null) {
            this.insert_space_after_unary_operator = JavaCore.INSERT.equals(str169);
        }
        String str170 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_AND_IN_TYPE_PARAMETER);
        if (str170 != null) {
            this.insert_space_before_and_in_type_parameter = JavaCore.INSERT.equals(str170);
        }
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_ARROW_IN_SWITCH_CASE, JavaCore.INSERT, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$30((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_ARROW_IN_SWITCH_DEFAULT, JavaCore.INSERT, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$31((Boolean) obj);
            }
        });
        String str171 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_AT_IN_ANNOTATION_TYPE_DECLARATION);
        if (str171 != null) {
            this.insert_space_before_at_in_annotation_type_declaration = JavaCore.INSERT.equals(str171);
        }
        String str172 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_ASSIGNMENT_OPERATOR);
        if (str172 != null) {
            this.insert_space_before_assignment_operator = JavaCore.INSERT.equals(str172);
        }
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_MULTIPLICATIVE_OPERATOR, JavaCore.INSERT, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$32((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_ADDITIVE_OPERATOR, JavaCore.INSERT, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$33((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_STRING_CONCATENATION, JavaCore.INSERT, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$34((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_SHIFT_OPERATOR, JavaCore.INSERT, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$35((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_RELATIONAL_OPERATOR, JavaCore.INSERT, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$36((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_BITWISE_OPERATOR, JavaCore.INSERT, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$37((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_LOGICAL_OPERATOR, JavaCore.INSERT, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$38((Boolean) obj);
            }
        });
        String str173 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_ANGLE_BRACKET_IN_PARAMETERIZED_TYPE_REFERENCE);
        if (str173 != null) {
            this.insert_space_before_closing_angle_bracket_in_parameterized_type_reference = JavaCore.INSERT.equals(str173);
        }
        String str174 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_ANGLE_BRACKET_IN_TYPE_ARGUMENTS);
        if (str174 != null) {
            this.insert_space_before_closing_angle_bracket_in_type_arguments = JavaCore.INSERT.equals(str174);
        }
        String str175 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_ANGLE_BRACKET_IN_TYPE_PARAMETERS);
        if (str175 != null) {
            this.insert_space_before_closing_angle_bracket_in_type_parameters = JavaCore.INSERT.equals(str175);
        }
        String str176 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_BRACE_IN_ARRAY_INITIALIZER);
        if (str176 != null) {
            this.insert_space_before_closing_brace_in_array_initializer = JavaCore.INSERT.equals(str176);
        }
        String str177 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_BRACKET_IN_ARRAY_ALLOCATION_EXPRESSION);
        if (str177 != null) {
            this.insert_space_before_closing_bracket_in_array_allocation_expression = JavaCore.INSERT.equals(str177);
        }
        String str178 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_BRACKET_IN_ARRAY_REFERENCE);
        if (str178 != null) {
            this.insert_space_before_closing_bracket_in_array_reference = JavaCore.INSERT.equals(str178);
        }
        String str179 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_ANNOTATION);
        if (str179 != null) {
            this.insert_space_before_closing_paren_in_annotation = JavaCore.INSERT.equals(str179);
        }
        String str180 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_CAST);
        if (str180 != null) {
            this.insert_space_before_closing_paren_in_cast = JavaCore.INSERT.equals(str180);
        }
        String str181 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_CATCH);
        if (str181 != null) {
            this.insert_space_before_closing_paren_in_catch = JavaCore.INSERT.equals(str181);
        }
        String str182 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_CONSTRUCTOR_DECLARATION);
        if (str182 != null) {
            this.insert_space_before_closing_paren_in_constructor_declaration = JavaCore.INSERT.equals(str182);
        }
        String str183 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_ENUM_CONSTANT);
        if (str183 != null) {
            this.insert_space_before_closing_paren_in_enum_constant = JavaCore.INSERT.equals(str183);
        }
        String str184 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_FOR);
        if (str184 != null) {
            this.insert_space_before_closing_paren_in_for = JavaCore.INSERT.equals(str184);
        }
        String str185 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_IF);
        if (str185 != null) {
            this.insert_space_before_closing_paren_in_if = JavaCore.INSERT.equals(str185);
        }
        String str186 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_METHOD_DECLARATION);
        if (str186 != null) {
            this.insert_space_before_closing_paren_in_method_declaration = JavaCore.INSERT.equals(str186);
        }
        String str187 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_METHOD_INVOCATION);
        if (str187 != null) {
            this.insert_space_before_closing_paren_in_method_invocation = JavaCore.INSERT.equals(str187);
        }
        String str188 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_PARENTHESIZED_EXPRESSION);
        if (str188 != null) {
            this.insert_space_before_closing_paren_in_parenthesized_expression = JavaCore.INSERT.equals(str188);
        }
        String str189 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_SWITCH);
        if (str189 != null) {
            this.insert_space_before_closing_paren_in_switch = JavaCore.INSERT.equals(str189);
        }
        String str190 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_SYNCHRONIZED);
        if (str190 != null) {
            this.insert_space_before_closing_paren_in_synchronized = JavaCore.INSERT.equals(str190);
        }
        String str191 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_TRY);
        if (str191 != null) {
            this.insert_space_before_closing_paren_in_try = JavaCore.INSERT.equals(str191);
        }
        String str192 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_WHILE);
        if (str192 != null) {
            this.insert_space_before_closing_paren_in_while = JavaCore.INSERT.equals(str192);
        }
        String str193 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COLON_IN_ASSERT);
        if (str193 != null) {
            this.insert_space_before_colon_in_assert = JavaCore.INSERT.equals(str193);
        }
        String str194 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COLON_IN_CASE);
        if (str194 != null) {
            this.insert_space_before_colon_in_case = JavaCore.INSERT.equals(str194);
        }
        String str195 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COLON_IN_CONDITIONAL);
        if (str195 != null) {
            this.insert_space_before_colon_in_conditional = JavaCore.INSERT.equals(str195);
        }
        String str196 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COLON_IN_DEFAULT);
        if (str196 != null) {
            this.insert_space_before_colon_in_default = JavaCore.INSERT.equals(str196);
        }
        String str197 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COLON_IN_FOR);
        if (str197 != null) {
            this.insert_space_before_colon_in_for = JavaCore.INSERT.equals(str197);
        }
        String str198 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COLON_IN_LABELED_STATEMENT);
        if (str198 != null) {
            this.insert_space_before_colon_in_labeled_statement = JavaCore.INSERT.equals(str198);
        }
        String str199 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_ALLOCATION_EXPRESSION);
        if (str199 != null) {
            this.insert_space_before_comma_in_allocation_expression = JavaCore.INSERT.equals(str199);
        }
        String str200 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_ANNOTATION);
        if (str200 != null) {
            this.insert_space_before_comma_in_annotation = JavaCore.INSERT.equals(str200);
        }
        String str201 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_ARRAY_INITIALIZER);
        if (str201 != null) {
            this.insert_space_before_comma_in_array_initializer = JavaCore.INSERT.equals(str201);
        }
        String str202 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_CONSTRUCTOR_DECLARATION_PARAMETERS);
        if (str202 != null) {
            this.insert_space_before_comma_in_constructor_declaration_parameters = JavaCore.INSERT.equals(str202);
        }
        String str203 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_CONSTRUCTOR_DECLARATION_THROWS);
        if (str203 != null) {
            this.insert_space_before_comma_in_constructor_declaration_throws = JavaCore.INSERT.equals(str203);
        }
        String str204 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_ENUM_CONSTANT_ARGUMENTS);
        if (str204 != null) {
            this.insert_space_before_comma_in_enum_constant_arguments = JavaCore.INSERT.equals(str204);
        }
        String str205 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_ENUM_DECLARATIONS);
        if (str205 != null) {
            this.insert_space_before_comma_in_enum_declarations = JavaCore.INSERT.equals(str205);
        }
        String str206 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_EXPLICIT_CONSTRUCTOR_CALL_ARGUMENTS);
        if (str206 != null) {
            this.insert_space_before_comma_in_explicit_constructor_call_arguments = JavaCore.INSERT.equals(str206);
        }
        String str207 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_FOR_INCREMENTS);
        if (str207 != null) {
            this.insert_space_before_comma_in_for_increments = JavaCore.INSERT.equals(str207);
        }
        String str208 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_FOR_INITS);
        if (str208 != null) {
            this.insert_space_before_comma_in_for_inits = JavaCore.INSERT.equals(str208);
        }
        String str209 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_METHOD_INVOCATION_ARGUMENTS);
        if (str209 != null) {
            this.insert_space_before_comma_in_method_invocation_arguments = JavaCore.INSERT.equals(str209);
        }
        String str210 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_METHOD_DECLARATION_PARAMETERS);
        if (str210 != null) {
            this.insert_space_before_comma_in_method_declaration_parameters = JavaCore.INSERT.equals(str210);
        }
        String str211 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_METHOD_DECLARATION_THROWS);
        if (str211 != null) {
            this.insert_space_before_comma_in_method_declaration_throws = JavaCore.INSERT.equals(str211);
        }
        String str212 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_MULTIPLE_FIELD_DECLARATIONS);
        if (str212 != null) {
            this.insert_space_before_comma_in_multiple_field_declarations = JavaCore.INSERT.equals(str212);
        }
        String str213 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_MULTIPLE_LOCAL_DECLARATIONS);
        if (str213 != null) {
            this.insert_space_before_comma_in_multiple_local_declarations = JavaCore.INSERT.equals(str213);
        }
        String str214 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_PARAMETERIZED_TYPE_REFERENCE);
        if (str214 != null) {
            this.insert_space_before_comma_in_parameterized_type_reference = JavaCore.INSERT.equals(str214);
        }
        String str215 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_SUPERINTERFACES);
        if (str215 != null) {
            this.insert_space_before_comma_in_superinterfaces = JavaCore.INSERT.equals(str215);
        }
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_SWITCH_CASE_EXPRESSIONS, JavaCore.INSERT, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$39((Boolean) obj);
            }
        });
        String str216 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_TYPE_ARGUMENTS);
        if (str216 != null) {
            this.insert_space_before_comma_in_type_arguments = JavaCore.INSERT.equals(str216);
        }
        String str217 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_TYPE_PARAMETERS);
        if (str217 != null) {
            this.insert_space_before_comma_in_type_parameters = JavaCore.INSERT.equals(str217);
        }
        String str218 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_ELLIPSIS);
        if (str218 != null) {
            this.insert_space_before_ellipsis = JavaCore.INSERT.equals(str218);
        }
        String str219 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_LAMBDA_ARROW);
        if (str219 != null) {
            this.insert_space_before_lambda_arrow = JavaCore.INSERT.equals(str219);
        }
        String str220 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_ANGLE_BRACKET_IN_PARAMETERIZED_TYPE_REFERENCE);
        if (str220 != null) {
            this.insert_space_before_opening_angle_bracket_in_parameterized_type_reference = JavaCore.INSERT.equals(str220);
        }
        String str221 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_ANGLE_BRACKET_IN_TYPE_ARGUMENTS);
        if (str221 != null) {
            this.insert_space_before_opening_angle_bracket_in_type_arguments = JavaCore.INSERT.equals(str221);
        }
        String str222 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_ANGLE_BRACKET_IN_TYPE_PARAMETERS);
        if (str222 != null) {
            this.insert_space_before_opening_angle_bracket_in_type_parameters = JavaCore.INSERT.equals(str222);
        }
        String str223 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_ANNOTATION_TYPE_DECLARATION);
        if (str223 != null) {
            this.insert_space_before_opening_brace_in_annotation_type_declaration = JavaCore.INSERT.equals(str223);
        }
        String str224 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_ANONYMOUS_TYPE_DECLARATION);
        if (str224 != null) {
            this.insert_space_before_opening_brace_in_anonymous_type_declaration = JavaCore.INSERT.equals(str224);
        }
        String str225 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_ARRAY_INITIALIZER);
        if (str225 != null) {
            this.insert_space_before_opening_brace_in_array_initializer = JavaCore.INSERT.equals(str225);
        }
        String str226 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_BLOCK);
        if (str226 != null) {
            this.insert_space_before_opening_brace_in_block = JavaCore.INSERT.equals(str226);
        }
        String str227 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_CONSTRUCTOR_DECLARATION);
        if (str227 != null) {
            this.insert_space_before_opening_brace_in_constructor_declaration = JavaCore.INSERT.equals(str227);
        }
        String str228 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_ENUM_DECLARATION);
        if (str228 != null) {
            this.insert_space_before_opening_brace_in_enum_declaration = JavaCore.INSERT.equals(str228);
        }
        String str229 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_ENUM_CONSTANT);
        if (str229 != null) {
            this.insert_space_before_opening_brace_in_enum_constant = JavaCore.INSERT.equals(str229);
        }
        String str230 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_METHOD_DECLARATION);
        if (str230 != null) {
            this.insert_space_before_opening_brace_in_method_declaration = JavaCore.INSERT.equals(str230);
        }
        String str231 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_TYPE_DECLARATION);
        if (str231 != null) {
            this.insert_space_before_opening_brace_in_type_declaration = JavaCore.INSERT.equals(str231);
        }
        String str232 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACKET_IN_ARRAY_ALLOCATION_EXPRESSION);
        if (str232 != null) {
            this.insert_space_before_opening_bracket_in_array_allocation_expression = JavaCore.INSERT.equals(str232);
        }
        String str233 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACKET_IN_ARRAY_REFERENCE);
        if (str233 != null) {
            this.insert_space_before_opening_bracket_in_array_reference = JavaCore.INSERT.equals(str233);
        }
        String str234 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACKET_IN_ARRAY_TYPE_REFERENCE);
        if (str234 != null) {
            this.insert_space_before_opening_bracket_in_array_type_reference = JavaCore.INSERT.equals(str234);
        }
        String str235 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_ANNOTATION);
        if (str235 != null) {
            this.insert_space_before_opening_paren_in_annotation = JavaCore.INSERT.equals(str235);
        }
        String str236 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_ANNOTATION_TYPE_MEMBER_DECLARATION);
        if (str236 != null) {
            this.insert_space_before_opening_paren_in_annotation_type_member_declaration = JavaCore.INSERT.equals(str236);
        }
        String str237 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_CATCH);
        if (str237 != null) {
            this.insert_space_before_opening_paren_in_catch = JavaCore.INSERT.equals(str237);
        }
        String str238 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_CONSTRUCTOR_DECLARATION);
        if (str238 != null) {
            this.insert_space_before_opening_paren_in_constructor_declaration = JavaCore.INSERT.equals(str238);
        }
        String str239 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_ENUM_CONSTANT);
        if (str239 != null) {
            this.insert_space_before_opening_paren_in_enum_constant = JavaCore.INSERT.equals(str239);
        }
        String str240 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_FOR);
        if (str240 != null) {
            this.insert_space_before_opening_paren_in_for = JavaCore.INSERT.equals(str240);
        }
        String str241 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_IF);
        if (str241 != null) {
            this.insert_space_before_opening_paren_in_if = JavaCore.INSERT.equals(str241);
        }
        String str242 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_METHOD_INVOCATION);
        if (str242 != null) {
            this.insert_space_before_opening_paren_in_method_invocation = JavaCore.INSERT.equals(str242);
        }
        String str243 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_METHOD_DECLARATION);
        if (str243 != null) {
            this.insert_space_before_opening_paren_in_method_declaration = JavaCore.INSERT.equals(str243);
        }
        String str244 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_SWITCH);
        if (str244 != null) {
            this.insert_space_before_opening_paren_in_switch = JavaCore.INSERT.equals(str244);
        }
        String str245 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_SWITCH);
        if (str245 != null) {
            this.insert_space_before_opening_brace_in_switch = JavaCore.INSERT.equals(str245);
        }
        String str246 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_SYNCHRONIZED);
        if (str246 != null) {
            this.insert_space_before_opening_paren_in_synchronized = JavaCore.INSERT.equals(str246);
        }
        String str247 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_TRY);
        if (str247 != null) {
            this.insert_space_before_opening_paren_in_try = JavaCore.INSERT.equals(str247);
        }
        String str248 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_PARENTHESIZED_EXPRESSION);
        if (str248 != null) {
            this.insert_space_before_opening_paren_in_parenthesized_expression = JavaCore.INSERT.equals(str248);
        }
        String str249 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_WHILE);
        if (str249 != null) {
            this.insert_space_before_opening_paren_in_while = JavaCore.INSERT.equals(str249);
        }
        String str250 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_PARENTHESIZED_EXPRESSION_IN_RETURN);
        if (str250 != null) {
            this.insert_space_before_parenthesized_expression_in_return = JavaCore.INSERT.equals(str250);
        }
        String str251 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_PARENTHESIZED_EXPRESSION_IN_THROW);
        if (str251 != null) {
            this.insert_space_before_parenthesized_expression_in_throw = JavaCore.INSERT.equals(str251);
        }
        String str252 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_POSTFIX_OPERATOR);
        if (str252 != null) {
            this.insert_space_before_postfix_operator = JavaCore.INSERT.equals(str252);
        }
        String str253 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_PREFIX_OPERATOR);
        if (str253 != null) {
            this.insert_space_before_prefix_operator = JavaCore.INSERT.equals(str253);
        }
        String str254 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_QUESTION_IN_CONDITIONAL);
        if (str254 != null) {
            this.insert_space_before_question_in_conditional = JavaCore.INSERT.equals(str254);
        }
        String str255 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_QUESTION_IN_WILDCARD);
        if (str255 != null) {
            this.insert_space_before_question_in_wilcard = JavaCore.INSERT.equals(str255);
        }
        String str256 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_SEMICOLON);
        if (str256 != null) {
            this.insert_space_before_semicolon = JavaCore.INSERT.equals(str256);
        }
        String str257 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_SEMICOLON_IN_FOR);
        if (str257 != null) {
            this.insert_space_before_semicolon_in_for = JavaCore.INSERT.equals(str257);
        }
        String str258 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_SEMICOLON_IN_TRY_RESOURCES);
        if (str258 != null) {
            this.insert_space_before_semicolon_in_try_resources = JavaCore.INSERT.equals(str258);
        }
        String str259 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_UNARY_OPERATOR);
        if (str259 != null) {
            this.insert_space_before_unary_operator = JavaCore.INSERT.equals(str259);
        }
        String str260 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BETWEEN_BRACKETS_IN_ARRAY_TYPE_REFERENCE);
        if (str260 != null) {
            this.insert_space_between_brackets_in_array_type_reference = JavaCore.INSERT.equals(str260);
        }
        String str261 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BETWEEN_EMPTY_BRACES_IN_ARRAY_INITIALIZER);
        if (str261 != null) {
            this.insert_space_between_empty_braces_in_array_initializer = JavaCore.INSERT.equals(str261);
        }
        String str262 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BETWEEN_EMPTY_BRACKETS_IN_ARRAY_ALLOCATION_EXPRESSION);
        if (str262 != null) {
            this.insert_space_between_empty_brackets_in_array_allocation_expression = JavaCore.INSERT.equals(str262);
        }
        String str263 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BETWEEN_EMPTY_PARENS_IN_CONSTRUCTOR_DECLARATION);
        if (str263 != null) {
            this.insert_space_between_empty_parens_in_constructor_declaration = JavaCore.INSERT.equals(str263);
        }
        String str264 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BETWEEN_EMPTY_PARENS_IN_ANNOTATION_TYPE_MEMBER_DECLARATION);
        if (str264 != null) {
            this.insert_space_between_empty_parens_in_annotation_type_member_declaration = JavaCore.INSERT.equals(str264);
        }
        String str265 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BETWEEN_EMPTY_PARENS_IN_ENUM_CONSTANT);
        if (str265 != null) {
            this.insert_space_between_empty_parens_in_enum_constant = JavaCore.INSERT.equals(str265);
        }
        String str266 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BETWEEN_EMPTY_PARENS_IN_METHOD_DECLARATION);
        if (str266 != null) {
            this.insert_space_between_empty_parens_in_method_declaration = JavaCore.INSERT.equals(str266);
        }
        String str267 = map.get(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BETWEEN_EMPTY_PARENS_IN_METHOD_INVOCATION);
        if (str267 != null) {
            this.insert_space_between_empty_parens_in_method_invocation = JavaCore.INSERT.equals(str267);
        }
        String str268 = map.get(DefaultCodeFormatterConstants.FORMATTER_COMPACT_ELSE_IF);
        if (str268 != null) {
            this.compact_else_if = "true".equals(str268);
        }
        String str269 = map.get(DefaultCodeFormatterConstants.FORMATTER_KEEP_GUARDIAN_CLAUSE_ON_ONE_LINE);
        if (str269 != null) {
            this.keep_guardian_clause_on_one_line = "true".equals(str269);
        }
        String str270 = map.get(DefaultCodeFormatterConstants.FORMATTER_KEEP_ELSE_STATEMENT_ON_SAME_LINE);
        if (str270 != null) {
            this.keep_else_statement_on_same_line = "true".equals(str270);
        }
        String str271 = map.get(DefaultCodeFormatterConstants.FORMATTER_KEEP_EMPTY_ARRAY_INITIALIZER_ON_ONE_LINE);
        if (str271 != null) {
            this.keep_empty_array_initializer_on_one_line = "true".equals(str271);
        }
        String str272 = map.get(DefaultCodeFormatterConstants.FORMATTER_KEEP_SIMPLE_IF_ON_ONE_LINE);
        if (str272 != null) {
            this.keep_simple_if_on_one_line = "true".equals(str272);
        }
        String str273 = map.get(DefaultCodeFormatterConstants.FORMATTER_KEEP_THEN_STATEMENT_ON_SAME_LINE);
        if (str273 != null) {
            this.keep_then_statement_on_same_line = "true".equals(str273);
        }
        String str274 = map.get(DefaultCodeFormatterConstants.FORMATTER_KEEP_SIMPLE_FOR_BODY_ON_SAME_LINE);
        if (str274 != null) {
            this.keep_simple_for_body_on_same_line = "true".equals(str274);
        }
        String str275 = map.get(DefaultCodeFormatterConstants.FORMATTER_KEEP_SIMPLE_WHILE_BODY_ON_SAME_LINE);
        if (str275 != null) {
            this.keep_simple_while_body_on_same_line = "true".equals(str275);
        }
        String str276 = map.get(DefaultCodeFormatterConstants.FORMATTER_KEEP_SIMPLE_DO_WHILE_BODY_ON_SAME_LINE);
        if (str276 != null) {
            this.keep_simple_do_while_body_on_same_line = "true".equals(str276);
        }
        String str277 = map.get(DefaultCodeFormatterConstants.FORMATTER_NEVER_INDENT_BLOCK_COMMENTS_ON_FIRST_COLUMN);
        if (str277 != null) {
            this.never_indent_block_comments_on_first_column = "true".equals(str277);
        }
        String str278 = map.get(DefaultCodeFormatterConstants.FORMATTER_NEVER_INDENT_LINE_COMMENTS_ON_FIRST_COLUMN);
        if (str278 != null) {
            this.never_indent_line_comments_on_first_column = "true".equals(str278);
        }
        String str279 = map.get(DefaultCodeFormatterConstants.FORMATTER_NUMBER_OF_EMPTY_LINES_TO_PRESERVE);
        if (str279 != null) {
            try {
                this.number_of_empty_lines_to_preserve = Integer.parseInt(str279);
            } catch (ClassCastException unused92) {
                this.number_of_empty_lines_to_preserve = 0;
            } catch (NumberFormatException unused93) {
                this.number_of_empty_lines_to_preserve = 0;
            }
        }
        String str280 = map.get(DefaultCodeFormatterConstants.FORMATTER_JOIN_LINES_IN_COMMENTS);
        if (str280 != null) {
            this.join_lines_in_comments = "true".equals(str280);
        }
        String str281 = map.get(DefaultCodeFormatterConstants.FORMATTER_JOIN_WRAPPED_LINES);
        if (str281 != null) {
            this.join_wrapped_lines = "true".equals(str281);
        }
        String str282 = map.get(DefaultCodeFormatterConstants.FORMATTER_PUT_EMPTY_STATEMENT_ON_NEW_LINE);
        if (str282 != null) {
            this.put_empty_statement_on_new_line = "true".equals(str282);
        }
        String str283 = map.get("org.eclipse.jdt.core.formatter.tabulation.size");
        if (str283 != null) {
            try {
                i11 = Integer.parseInt(str283);
            } catch (ClassCastException | NumberFormatException unused94) {
                i11 = 4;
            }
            if (!JavaCore.SPACE.equals(map.get("org.eclipse.jdt.core.formatter.tabulation.char"))) {
                this.tab_size = i11;
            }
            if (!DefaultCodeFormatterConstants.MIXED.equals(map.get("org.eclipse.jdt.core.formatter.tabulation.char"))) {
                this.indentation_size = i11;
            }
        }
        String str284 = map.get(DefaultCodeFormatterConstants.FORMATTER_USE_TABS_ONLY_FOR_LEADING_INDENTATIONS);
        if (str284 != null) {
            this.use_tabs_only_for_leading_indentations = "true".equals(str284);
        }
        String str285 = map.get("org.eclipse.jdt.core.formatter.lineSplit");
        if (str285 != null) {
            try {
                this.page_width = Integer.parseInt(str285);
            } catch (ClassCastException unused95) {
                this.page_width = 120;
            } catch (NumberFormatException unused96) {
                this.page_width = 120;
            }
        }
        String str286 = map.get("org.eclipse.jdt.core.formatter.tabulation.char");
        if (str286 != null) {
            if (JavaCore.TAB.equals(str286)) {
                this.tab_char = 1;
            } else if (JavaCore.SPACE.equals(str286)) {
                this.tab_char = 2;
            } else {
                this.tab_char = 4;
            }
        }
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_MULTIPLICATIVE_OPERATOR, "true", new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$40((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_ADDITIVE_OPERATOR, "true", new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$41((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_STRING_CONCATENATION, "true", new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$42((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_SHIFT_OPERATOR, "true", new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$43((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_RELATIONAL_OPERATOR, "true", new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$44((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_BITWISE_OPERATOR, "true", new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$45((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_LOGICAL_OPERATOR, "true", new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$46((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_OR_OPERATOR_MULTICATCH, "true", new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$47((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_CONDITIONAL_OPERATOR, "true", new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$48((Boolean) obj);
            }
        });
        setBoolean(map, DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_ASSIGNMENT_OPERATOR, "true", new Consumer() {
            @Override
            public final void accept(Object obj) {
                DefaultCodeFormatterOptions.this.lambda$49((Boolean) obj);
            }
        });
        String str287 = map.get(DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_OR_OPERATOR_MULTICATCH);
        if (str287 != null) {
            this.wrap_before_or_operator_multicatch = "true".equals(str287);
        }
        String str288 = map.get(DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_CONDITIONAL_OPERATOR);
        if (str288 != null) {
            this.wrap_before_conditional_operator = "true".equals(str288);
        }
        String str289 = map.get(DefaultCodeFormatterConstants.FORMATTER_WRAP_BEFORE_ASSIGNMENT_OPERATOR);
        if (str289 != null) {
            this.wrap_before_assignment_operator = "true".equals(str289);
        }
        String str290 = map.get(DefaultCodeFormatterConstants.FORMATTER_USE_ON_OFF_TAGS);
        if (str290 != null) {
            this.use_tags = "true".equals(str290);
        }
        String str291 = map.get(DefaultCodeFormatterConstants.FORMATTER_DISABLING_TAG);
        if (str291 != null && (str291 instanceof String)) {
            String str292 = str291;
            int indexOf = str292.indexOf(10);
            if (indexOf == 0) {
                this.disabling_tag = null;
            } else {
                if (indexOf >= 0) {
                    str292 = str292.substring(0, indexOf);
                }
                String trim = str292.trim();
                if (trim.length() == 0) {
                    this.disabling_tag = null;
                } else {
                    this.disabling_tag = trim.toCharArray();
                }
            }
        }
        String str293 = map.get(DefaultCodeFormatterConstants.FORMATTER_ENABLING_TAG);
        if (str293 != null && (str293 instanceof String)) {
            String str294 = str293;
            int indexOf2 = str294.indexOf(10);
            if (indexOf2 == 0) {
                this.enabling_tag = null;
            } else {
                if (indexOf2 >= 0) {
                    str294 = str294.substring(0, indexOf2);
                }
                String trim2 = str294.trim();
                if (trim2.length() == 0) {
                    this.enabling_tag = null;
                } else {
                    this.enabling_tag = trim2.toCharArray();
                }
            }
        }
        String str295 = map.get(DefaultCodeFormatterConstants.FORMATTER_WRAP_OUTER_EXPRESSIONS_WHEN_NESTED);
        if (str295 != null) {
            this.wrap_outer_expressions_when_nested = "true".equals(str295);
        }
    }

    public void setDefaultSettings() {
        this.alignment_for_arguments_in_allocation_expression = 16;
        this.alignment_for_arguments_in_annotation = 0;
        this.alignment_for_arguments_in_enum_constant = 16;
        this.alignment_for_arguments_in_explicit_constructor_call = 16;
        this.alignment_for_arguments_in_method_invocation = 16;
        this.alignment_for_arguments_in_qualified_allocation_expression = 16;
        this.alignment_for_assignment = 0;
        this.alignment_for_multiplicative_operator = 16;
        this.alignment_for_additive_operator = 16;
        this.alignment_for_string_concatenation = 16;
        this.alignment_for_shift_operator = 0;
        this.alignment_for_relational_operator = 0;
        this.alignment_for_bitwise_operator = 16;
        this.alignment_for_logical_operator = 16;
        this.alignment_for_compact_if = 52;
        this.alignment_for_compact_loop = 52;
        this.alignment_for_conditional_expression = 48;
        this.alignment_for_conditional_expression_chain = 0;
        this.alignment_for_enum_constants = 0;
        this.alignment_for_expressions_in_array_initializer = 16;
        this.alignment_for_expressions_in_for_loop_header = 0;
        this.alignment_for_method_declaration = 0;
        this.alignment_for_module_statements = 16;
        this.alignment_for_multiple_fields = 16;
        this.alignment_for_parameterized_type_references = 0;
        this.alignment_for_parameters_in_constructor_declaration = 16;
        this.alignment_for_parameters_in_method_declaration = 16;
        this.alignment_for_resources_in_try = 80;
        this.alignment_for_selector_in_method_invocation = 16;
        this.alignment_for_superclass_in_type_declaration = 64;
        this.alignment_for_superinterfaces_in_enum_declaration = 64;
        this.alignment_for_superinterfaces_in_type_declaration = 64;
        this.alignment_for_throws_clause_in_constructor_declaration = 16;
        this.alignment_for_throws_clause_in_method_declaration = 16;
        this.alignment_for_type_arguments = 0;
        this.alignment_for_type_parameters = 0;
        this.alignment_for_union_type_in_multicatch = 16;
        this.align_type_members_on_columns = false;
        this.align_variable_declarations_on_columns = false;
        this.align_assignment_statements_on_columns = false;
        this.align_with_spaces = false;
        this.align_fields_grouping_blank_lines = Integer.MAX_VALUE;
        this.brace_position_for_annotation_type_declaration = DefaultCodeFormatterConstants.END_OF_LINE;
        this.brace_position_for_anonymous_type_declaration = DefaultCodeFormatterConstants.END_OF_LINE;
        this.brace_position_for_array_initializer = DefaultCodeFormatterConstants.END_OF_LINE;
        this.brace_position_for_block = DefaultCodeFormatterConstants.END_OF_LINE;
        this.brace_position_for_block_in_case = DefaultCodeFormatterConstants.END_OF_LINE;
        this.brace_position_for_constructor_declaration = DefaultCodeFormatterConstants.END_OF_LINE;
        this.brace_position_for_enum_constant = DefaultCodeFormatterConstants.END_OF_LINE;
        this.brace_position_for_enum_declaration = DefaultCodeFormatterConstants.END_OF_LINE;
        this.brace_position_for_lambda_body = DefaultCodeFormatterConstants.END_OF_LINE;
        this.brace_position_for_method_declaration = DefaultCodeFormatterConstants.END_OF_LINE;
        this.brace_position_for_type_declaration = DefaultCodeFormatterConstants.END_OF_LINE;
        this.brace_position_for_switch = DefaultCodeFormatterConstants.END_OF_LINE;
        this.parenthesis_positions_in_method_declaration = DefaultCodeFormatterConstants.COMMON_LINES;
        this.parenthesis_positions_in_method_invocation = DefaultCodeFormatterConstants.COMMON_LINES;
        this.parenthesis_positions_in_enum_constant_declaration = DefaultCodeFormatterConstants.COMMON_LINES;
        this.parenthesis_positions_in_if_while_statement = DefaultCodeFormatterConstants.COMMON_LINES;
        this.parenthesis_positions_in_for_statement = DefaultCodeFormatterConstants.COMMON_LINES;
        this.parenthesis_positions_in_switch_statement = DefaultCodeFormatterConstants.COMMON_LINES;
        this.parenthesis_positions_in_try_clause = DefaultCodeFormatterConstants.COMMON_LINES;
        this.parenthesis_positions_in_catch_clause = DefaultCodeFormatterConstants.COMMON_LINES;
        this.parenthesis_positions_in_annotation = DefaultCodeFormatterConstants.COMMON_LINES;
        this.parenthesis_positions_in_lambda_declaration = DefaultCodeFormatterConstants.COMMON_LINES;
        this.comment_clear_blank_lines_in_block_comment = false;
        this.comment_clear_blank_lines_in_javadoc_comment = false;
        this.comment_format_block_comment = true;
        this.comment_format_javadoc_comment = true;
        this.comment_format_line_comment = true;
        this.comment_format_line_comment_starting_on_first_column = true;
        this.comment_format_header = false;
        this.comment_format_html = true;
        this.comment_format_source = true;
        this.comment_indent_parameter_description = true;
        this.comment_indent_tag_description = false;
        this.comment_indent_root_tags = true;
        this.comment_align_tags_names_descriptions = false;
        this.comment_align_tags_descriptions_grouped = false;
        this.comment_insert_empty_line_before_root_tags = true;
        this.comment_insert_new_line_for_parameter = true;
        this.comment_new_lines_at_block_boundaries = true;
        this.comment_new_lines_at_javadoc_boundaries = true;
        this.comment_line_length = 80;
        this.comment_count_line_length_from_starting_position = true;
        this.comment_preserve_white_space_between_code_and_line_comments = false;
        this.continuation_indentation = 2;
        this.continuation_indentation_for_array_initializer = 2;
        this.blank_lines_after_imports = 0;
        this.blank_lines_after_package = 0;
        this.blank_lines_before_field = 0;
        this.blank_lines_before_first_class_body_declaration = 0;
        this.blank_lines_before_imports = 0;
        this.blank_lines_before_member_type = 0;
        this.blank_lines_before_method = 0;
        this.blank_lines_before_new_chunk = 0;
        this.blank_lines_before_package = 0;
        this.blank_lines_between_import_groups = 1;
        this.blank_lines_between_type_declarations = 0;
        this.blank_lines_at_beginning_of_method_body = 0;
        this.indent_statements_compare_to_block = true;
        this.indent_statements_compare_to_body = true;
        this.indent_body_declarations_compare_to_annotation_declaration_header = true;
        this.indent_body_declarations_compare_to_enum_constant_header = true;
        this.indent_body_declarations_compare_to_enum_declaration_header = true;
        this.indent_body_declarations_compare_to_type_header = true;
        this.indent_breaks_compare_to_cases = true;
        this.indent_empty_lines = false;
        this.indent_switchstatements_compare_to_cases = true;
        this.indent_switchstatements_compare_to_switch = true;
        this.indentation_size = 4;
        this.insert_new_line_after_annotation_on_type = true;
        this.insert_new_line_after_type_annotation = false;
        this.insert_new_line_after_annotation_on_enum_constant = true;
        this.insert_new_line_after_annotation_on_field = true;
        this.insert_new_line_after_annotation_on_method = true;
        this.insert_new_line_after_annotation_on_package = true;
        this.insert_new_line_after_annotation_on_parameter = false;
        this.insert_new_line_after_annotation_on_local_variable = true;
        this.insert_new_line_after_opening_brace_in_array_initializer = false;
        this.insert_new_line_at_end_of_file_if_missing = false;
        this.insert_new_line_before_catch_in_try_statement = false;
        this.insert_new_line_before_closing_brace_in_array_initializer = false;
        this.insert_new_line_before_else_in_if_statement = false;
        this.insert_new_line_before_finally_in_try_statement = false;
        this.insert_new_line_before_while_in_do_statement = false;
        this.keep_annotation_declaration_on_one_line = DefaultCodeFormatterConstants.ONE_LINE_NEVER;
        this.keep_anonymous_type_declaration_on_one_line = DefaultCodeFormatterConstants.ONE_LINE_NEVER;
        this.keep_if_then_body_block_on_one_line = DefaultCodeFormatterConstants.ONE_LINE_NEVER;
        this.keep_lambda_body_block_on_one_line = DefaultCodeFormatterConstants.ONE_LINE_NEVER;
        this.keep_loop_body_block_on_one_line = DefaultCodeFormatterConstants.ONE_LINE_NEVER;
        this.keep_code_block_on_one_line = DefaultCodeFormatterConstants.ONE_LINE_NEVER;
        this.keep_enum_constant_declaration_on_one_line = DefaultCodeFormatterConstants.ONE_LINE_NEVER;
        this.keep_enum_declaration_on_one_line = DefaultCodeFormatterConstants.ONE_LINE_NEVER;
        this.keep_method_body_on_one_line = DefaultCodeFormatterConstants.ONE_LINE_NEVER;
        this.keep_type_declaration_on_one_line = DefaultCodeFormatterConstants.ONE_LINE_NEVER;
        this.keep_simple_getter_setter_on_one_line = false;
        this.insert_space_after_and_in_type_parameter = true;
        this.insert_space_after_arrow_in_switch_case = true;
        this.insert_space_after_arrow_in_switch_default = true;
        this.insert_space_after_assignment_operator = true;
        this.insert_space_after_at_in_annotation = false;
        this.insert_space_after_at_in_annotation_type_declaration = false;
        this.insert_space_after_multiplicative_operator = true;
        this.insert_space_after_additive_operator = true;
        this.insert_space_after_string_concatenation = true;
        this.insert_space_after_shift_operator = true;
        this.insert_space_after_relational_operator = true;
        this.insert_space_after_bitwise_operator = true;
        this.insert_space_after_logical_operator = true;
        this.insert_space_after_closing_angle_bracket_in_type_arguments = false;
        this.insert_space_after_closing_angle_bracket_in_type_parameters = true;
        this.insert_space_after_closing_paren_in_cast = true;
        this.insert_space_after_closing_brace_in_block = true;
        this.insert_space_after_colon_in_assert = true;
        this.insert_space_after_colon_in_case = true;
        this.insert_space_after_colon_in_conditional = true;
        this.insert_space_after_colon_in_for = true;
        this.insert_space_after_colon_in_labeled_statement = true;
        this.insert_space_after_comma_in_allocation_expression = true;
        this.insert_space_after_comma_in_annotation = true;
        this.insert_space_after_comma_in_array_initializer = true;
        this.insert_space_after_comma_in_constructor_declaration_parameters = true;
        this.insert_space_after_comma_in_constructor_declaration_throws = true;
        this.insert_space_after_comma_in_enum_constant_arguments = true;
        this.insert_space_after_comma_in_enum_declarations = true;
        this.insert_space_after_comma_in_explicit_constructor_call_arguments = true;
        this.insert_space_after_comma_in_for_increments = true;
        this.insert_space_after_comma_in_for_inits = true;
        this.insert_space_after_comma_in_method_invocation_arguments = true;
        this.insert_space_after_comma_in_method_declaration_parameters = true;
        this.insert_space_after_comma_in_method_declaration_throws = true;
        this.insert_space_after_comma_in_multiple_field_declarations = true;
        this.insert_space_after_comma_in_multiple_local_declarations = true;
        this.insert_space_after_comma_in_parameterized_type_reference = true;
        this.insert_space_after_comma_in_superinterfaces = true;
        this.insert_space_after_comma_in_switch_case_expressions = true;
        this.insert_space_after_comma_in_type_arguments = true;
        this.insert_space_after_comma_in_type_parameters = true;
        this.insert_space_after_ellipsis = true;
        this.insert_space_after_lambda_arrow = true;
        this.insert_space_after_opening_angle_bracket_in_parameterized_type_reference = false;
        this.insert_space_after_opening_angle_bracket_in_type_arguments = false;
        this.insert_space_after_opening_angle_bracket_in_type_parameters = false;
        this.insert_space_after_opening_bracket_in_array_allocation_expression = false;
        this.insert_space_after_opening_bracket_in_array_reference = false;
        this.insert_space_after_opening_brace_in_array_initializer = false;
        this.insert_space_after_opening_paren_in_annotation = false;
        this.insert_space_after_opening_paren_in_cast = false;
        this.insert_space_after_opening_paren_in_catch = false;
        this.insert_space_after_opening_paren_in_constructor_declaration = false;
        this.insert_space_after_opening_paren_in_enum_constant = false;
        this.insert_space_after_opening_paren_in_for = false;
        this.insert_space_after_opening_paren_in_if = false;
        this.insert_space_after_opening_paren_in_method_declaration = false;
        this.insert_space_after_opening_paren_in_method_invocation = false;
        this.insert_space_after_opening_paren_in_parenthesized_expression = false;
        this.insert_space_after_opening_paren_in_switch = false;
        this.insert_space_after_opening_paren_in_synchronized = false;
        this.insert_space_after_opening_paren_in_try = false;
        this.insert_space_after_opening_paren_in_while = false;
        this.insert_space_after_postfix_operator = false;
        this.insert_space_after_prefix_operator = false;
        this.insert_space_after_question_in_conditional = true;
        this.insert_space_after_question_in_wilcard = false;
        this.insert_space_after_semicolon_in_for = true;
        this.insert_space_after_semicolon_in_try_resources = true;
        this.insert_space_after_unary_operator = false;
        this.insert_space_before_and_in_type_parameter = true;
        this.insert_space_before_arrow_in_switch_case = true;
        this.insert_space_before_arrow_in_switch_default = true;
        this.insert_space_before_at_in_annotation_type_declaration = true;
        this.insert_space_before_assignment_operator = true;
        this.insert_space_before_multiplicative_operator = true;
        this.insert_space_before_additive_operator = true;
        this.insert_space_before_string_concatenation = true;
        this.insert_space_before_shift_operator = true;
        this.insert_space_before_relational_operator = true;
        this.insert_space_before_bitwise_operator = true;
        this.insert_space_before_logical_operator = true;
        this.insert_space_before_closing_angle_bracket_in_parameterized_type_reference = false;
        this.insert_space_before_closing_angle_bracket_in_type_arguments = false;
        this.insert_space_before_closing_angle_bracket_in_type_parameters = false;
        this.insert_space_before_closing_brace_in_array_initializer = false;
        this.insert_space_before_closing_bracket_in_array_allocation_expression = false;
        this.insert_space_before_closing_bracket_in_array_reference = false;
        this.insert_space_before_closing_paren_in_annotation = false;
        this.insert_space_before_closing_paren_in_cast = false;
        this.insert_space_before_closing_paren_in_catch = false;
        this.insert_space_before_closing_paren_in_constructor_declaration = false;
        this.insert_space_before_closing_paren_in_enum_constant = false;
        this.insert_space_before_closing_paren_in_for = false;
        this.insert_space_before_closing_paren_in_if = false;
        this.insert_space_before_closing_paren_in_method_declaration = false;
        this.insert_space_before_closing_paren_in_method_invocation = false;
        this.insert_space_before_closing_paren_in_parenthesized_expression = false;
        this.insert_space_before_closing_paren_in_switch = false;
        this.insert_space_before_closing_paren_in_synchronized = false;
        this.insert_space_before_closing_paren_in_try = false;
        this.insert_space_before_closing_paren_in_while = false;
        this.insert_space_before_colon_in_assert = true;
        this.insert_space_before_colon_in_case = true;
        this.insert_space_before_colon_in_conditional = true;
        this.insert_space_before_colon_in_default = true;
        this.insert_space_before_colon_in_for = true;
        this.insert_space_before_colon_in_labeled_statement = true;
        this.insert_space_before_comma_in_allocation_expression = false;
        this.insert_space_before_comma_in_array_initializer = false;
        this.insert_space_before_comma_in_constructor_declaration_parameters = false;
        this.insert_space_before_comma_in_constructor_declaration_throws = false;
        this.insert_space_before_comma_in_enum_constant_arguments = false;
        this.insert_space_before_comma_in_enum_declarations = false;
        this.insert_space_before_comma_in_explicit_constructor_call_arguments = false;
        this.insert_space_before_comma_in_for_increments = false;
        this.insert_space_before_comma_in_for_inits = false;
        this.insert_space_before_comma_in_method_invocation_arguments = false;
        this.insert_space_before_comma_in_method_declaration_parameters = false;
        this.insert_space_before_comma_in_method_declaration_throws = false;
        this.insert_space_before_comma_in_multiple_field_declarations = false;
        this.insert_space_before_comma_in_multiple_local_declarations = false;
        this.insert_space_before_comma_in_parameterized_type_reference = false;
        this.insert_space_before_comma_in_superinterfaces = false;
        this.insert_space_before_comma_in_switch_case_expressions = false;
        this.insert_space_before_comma_in_type_arguments = false;
        this.insert_space_before_comma_in_type_parameters = false;
        this.insert_space_before_ellipsis = false;
        this.insert_space_before_lambda_arrow = true;
        this.insert_space_before_parenthesized_expression_in_return = true;
        this.insert_space_before_parenthesized_expression_in_throw = true;
        this.insert_space_before_opening_angle_bracket_in_parameterized_type_reference = false;
        this.insert_space_before_opening_angle_bracket_in_type_arguments = false;
        this.insert_space_before_opening_angle_bracket_in_type_parameters = false;
        this.insert_space_before_opening_brace_in_annotation_type_declaration = true;
        this.insert_space_before_opening_brace_in_anonymous_type_declaration = true;
        this.insert_space_before_opening_brace_in_array_initializer = false;
        this.insert_space_before_opening_brace_in_block = true;
        this.insert_space_before_opening_brace_in_constructor_declaration = true;
        this.insert_space_before_opening_brace_in_enum_constant = true;
        this.insert_space_before_opening_brace_in_enum_declaration = true;
        this.insert_space_before_opening_brace_in_method_declaration = true;
        this.insert_space_before_opening_brace_in_switch = true;
        this.insert_space_before_opening_brace_in_type_declaration = true;
        this.insert_space_before_opening_bracket_in_array_allocation_expression = false;
        this.insert_space_before_opening_bracket_in_array_reference = false;
        this.insert_space_before_opening_bracket_in_array_type_reference = false;
        this.insert_space_before_opening_paren_in_annotation = false;
        this.insert_space_before_opening_paren_in_annotation_type_member_declaration = false;
        this.insert_space_before_opening_paren_in_catch = true;
        this.insert_space_before_opening_paren_in_constructor_declaration = false;
        this.insert_space_before_opening_paren_in_enum_constant = false;
        this.insert_space_before_opening_paren_in_for = true;
        this.insert_space_before_opening_paren_in_if = true;
        this.insert_space_before_opening_paren_in_method_invocation = false;
        this.insert_space_before_opening_paren_in_method_declaration = false;
        this.insert_space_before_opening_paren_in_switch = true;
        this.insert_space_before_opening_paren_in_synchronized = true;
        this.insert_space_before_opening_paren_in_try = true;
        this.insert_space_before_opening_paren_in_parenthesized_expression = false;
        this.insert_space_before_opening_paren_in_while = true;
        this.insert_space_before_postfix_operator = false;
        this.insert_space_before_prefix_operator = false;
        this.insert_space_before_question_in_conditional = true;
        this.insert_space_before_question_in_wilcard = false;
        this.insert_space_before_semicolon = false;
        this.insert_space_before_semicolon_in_for = false;
        this.insert_space_before_semicolon_in_try_resources = false;
        this.insert_space_before_unary_operator = false;
        this.insert_space_between_brackets_in_array_type_reference = false;
        this.insert_space_between_empty_braces_in_array_initializer = false;
        this.insert_space_between_empty_brackets_in_array_allocation_expression = false;
        this.insert_space_between_empty_parens_in_annotation_type_member_declaration = false;
        this.insert_space_between_empty_parens_in_constructor_declaration = false;
        this.insert_space_between_empty_parens_in_enum_constant = false;
        this.insert_space_between_empty_parens_in_method_declaration = false;
        this.insert_space_between_empty_parens_in_method_invocation = false;
        this.compact_else_if = true;
        this.keep_guardian_clause_on_one_line = false;
        this.keep_else_statement_on_same_line = false;
        this.keep_empty_array_initializer_on_one_line = false;
        this.keep_simple_if_on_one_line = false;
        this.keep_then_statement_on_same_line = false;
        this.keep_simple_for_body_on_same_line = false;
        this.keep_simple_while_body_on_same_line = false;
        this.keep_simple_do_while_body_on_same_line = false;
        this.never_indent_block_comments_on_first_column = false;
        this.never_indent_line_comments_on_first_column = false;
        this.number_of_empty_lines_to_preserve = 1;
        this.join_lines_in_comments = true;
        this.join_wrapped_lines = true;
        this.put_empty_statement_on_new_line = false;
        this.tab_size = 4;
        this.page_width = 120;
        this.tab_char = 1;
        this.use_tabs_only_for_leading_indentations = false;
        this.wrap_before_multiplicative_operator = true;
        this.wrap_before_additive_operator = true;
        this.wrap_before_string_concatenation = true;
        this.wrap_before_shift_operator = true;
        this.wrap_before_relational_operator = true;
        this.wrap_before_bitwise_operator = true;
        this.wrap_before_logical_operator = true;
        this.wrap_before_or_operator_multicatch = true;
        this.wrap_before_conditional_operator = true;
        this.wrap_before_assignment_operator = false;
        this.use_tags = false;
        this.disabling_tag = DEFAULT_DISABLING_TAG;
        this.enabling_tag = DEFAULT_ENABLING_TAG;
        this.wrap_outer_expressions_when_nested = true;
    }

    public void setEclipseDefaultSettings() {
        setJavaConventionsSettings();
        this.tab_char = 1;
        this.tab_size = 4;
    }

    public void setJavaConventionsSettings() {
        this.alignment_for_arguments_in_allocation_expression = 16;
        this.alignment_for_arguments_in_annotation = 0;
        this.alignment_for_arguments_in_enum_constant = 16;
        this.alignment_for_arguments_in_explicit_constructor_call = 16;
        this.alignment_for_arguments_in_method_invocation = 16;
        this.alignment_for_arguments_in_qualified_allocation_expression = 16;
        this.alignment_for_assignment = 0;
        this.alignment_for_multiplicative_operator = 16;
        this.alignment_for_additive_operator = 16;
        this.alignment_for_string_concatenation = 16;
        this.alignment_for_shift_operator = 0;
        this.alignment_for_relational_operator = 0;
        this.alignment_for_bitwise_operator = 16;
        this.alignment_for_logical_operator = 16;
        this.alignment_for_compact_if = 16;
        this.alignment_for_compact_loop = 16;
        this.alignment_for_conditional_expression = 80;
        this.alignment_for_conditional_expression_chain = 0;
        this.alignment_for_enum_constants = 16;
        this.alignment_for_expressions_in_array_initializer = 16;
        this.alignment_for_expressions_in_for_loop_header = 0;
        this.alignment_for_method_declaration = 0;
        this.alignment_for_module_statements = 16;
        this.alignment_for_multiple_fields = 16;
        this.alignment_for_parameterized_type_references = 0;
        this.alignment_for_parameters_in_constructor_declaration = 16;
        this.alignment_for_parameters_in_method_declaration = 16;
        this.alignment_for_resources_in_try = 80;
        this.alignment_for_selector_in_method_invocation = 16;
        this.alignment_for_superclass_in_type_declaration = 16;
        this.alignment_for_superinterfaces_in_enum_declaration = 16;
        this.alignment_for_superinterfaces_in_type_declaration = 16;
        this.alignment_for_throws_clause_in_constructor_declaration = 16;
        this.alignment_for_throws_clause_in_method_declaration = 16;
        this.alignment_for_type_arguments = 0;
        this.alignment_for_type_parameters = 0;
        this.alignment_for_union_type_in_multicatch = 16;
        this.align_type_members_on_columns = false;
        this.align_variable_declarations_on_columns = false;
        this.align_assignment_statements_on_columns = false;
        this.align_with_spaces = false;
        this.align_fields_grouping_blank_lines = Integer.MAX_VALUE;
        this.brace_position_for_annotation_type_declaration = DefaultCodeFormatterConstants.END_OF_LINE;
        this.brace_position_for_anonymous_type_declaration = DefaultCodeFormatterConstants.END_OF_LINE;
        this.brace_position_for_array_initializer = DefaultCodeFormatterConstants.END_OF_LINE;
        this.brace_position_for_block = DefaultCodeFormatterConstants.END_OF_LINE;
        this.brace_position_for_block_in_case = DefaultCodeFormatterConstants.END_OF_LINE;
        this.brace_position_for_constructor_declaration = DefaultCodeFormatterConstants.END_OF_LINE;
        this.brace_position_for_enum_constant = DefaultCodeFormatterConstants.END_OF_LINE;
        this.brace_position_for_enum_declaration = DefaultCodeFormatterConstants.END_OF_LINE;
        this.brace_position_for_lambda_body = DefaultCodeFormatterConstants.END_OF_LINE;
        this.brace_position_for_method_declaration = DefaultCodeFormatterConstants.END_OF_LINE;
        this.brace_position_for_type_declaration = DefaultCodeFormatterConstants.END_OF_LINE;
        this.brace_position_for_switch = DefaultCodeFormatterConstants.END_OF_LINE;
        this.parenthesis_positions_in_method_declaration = DefaultCodeFormatterConstants.COMMON_LINES;
        this.parenthesis_positions_in_method_invocation = DefaultCodeFormatterConstants.COMMON_LINES;
        this.parenthesis_positions_in_enum_constant_declaration = DefaultCodeFormatterConstants.COMMON_LINES;
        this.parenthesis_positions_in_if_while_statement = DefaultCodeFormatterConstants.COMMON_LINES;
        this.parenthesis_positions_in_for_statement = DefaultCodeFormatterConstants.COMMON_LINES;
        this.parenthesis_positions_in_switch_statement = DefaultCodeFormatterConstants.COMMON_LINES;
        this.parenthesis_positions_in_try_clause = DefaultCodeFormatterConstants.COMMON_LINES;
        this.parenthesis_positions_in_catch_clause = DefaultCodeFormatterConstants.COMMON_LINES;
        this.parenthesis_positions_in_annotation = DefaultCodeFormatterConstants.COMMON_LINES;
        this.parenthesis_positions_in_lambda_declaration = DefaultCodeFormatterConstants.COMMON_LINES;
        this.comment_clear_blank_lines_in_block_comment = false;
        this.comment_clear_blank_lines_in_javadoc_comment = false;
        this.comment_format_block_comment = true;
        this.comment_format_javadoc_comment = true;
        this.comment_format_line_comment = true;
        this.comment_format_line_comment_starting_on_first_column = false;
        this.comment_format_header = false;
        this.comment_format_html = true;
        this.comment_format_source = true;
        this.comment_indent_parameter_description = false;
        this.comment_indent_tag_description = false;
        this.comment_indent_root_tags = false;
        this.comment_align_tags_names_descriptions = false;
        this.comment_align_tags_descriptions_grouped = true;
        this.comment_insert_empty_line_before_root_tags = true;
        this.comment_insert_new_line_for_parameter = false;
        this.comment_new_lines_at_block_boundaries = true;
        this.comment_new_lines_at_javadoc_boundaries = true;
        this.comment_line_length = 80;
        this.comment_count_line_length_from_starting_position = true;
        this.comment_preserve_white_space_between_code_and_line_comments = false;
        this.continuation_indentation = 2;
        this.continuation_indentation_for_array_initializer = 2;
        this.blank_lines_after_imports = 1;
        this.blank_lines_after_package = 1;
        this.blank_lines_before_field = 0;
        this.blank_lines_before_first_class_body_declaration = 0;
        this.blank_lines_before_imports = 1;
        this.blank_lines_before_member_type = 1;
        this.blank_lines_before_method = 1;
        this.blank_lines_before_new_chunk = 1;
        this.blank_lines_before_package = 0;
        this.blank_lines_between_import_groups = 1;
        this.blank_lines_between_type_declarations = 1;
        this.blank_lines_at_beginning_of_method_body = 0;
        this.indent_statements_compare_to_block = true;
        this.indent_statements_compare_to_body = true;
        this.indent_body_declarations_compare_to_annotation_declaration_header = true;
        this.indent_body_declarations_compare_to_enum_constant_header = true;
        this.indent_body_declarations_compare_to_enum_declaration_header = true;
        this.indent_body_declarations_compare_to_type_header = true;
        this.indent_breaks_compare_to_cases = true;
        this.indent_empty_lines = false;
        this.indent_switchstatements_compare_to_cases = true;
        this.indent_switchstatements_compare_to_switch = false;
        this.indentation_size = 4;
        this.insert_new_line_after_annotation_on_type = true;
        this.insert_new_line_after_type_annotation = false;
        this.insert_new_line_after_annotation_on_enum_constant = true;
        this.insert_new_line_after_annotation_on_field = true;
        this.insert_new_line_after_annotation_on_method = true;
        this.insert_new_line_after_annotation_on_package = true;
        this.insert_new_line_after_annotation_on_parameter = false;
        this.insert_new_line_after_annotation_on_local_variable = true;
        this.insert_new_line_after_opening_brace_in_array_initializer = false;
        this.insert_new_line_at_end_of_file_if_missing = false;
        this.insert_new_line_before_catch_in_try_statement = false;
        this.insert_new_line_before_closing_brace_in_array_initializer = false;
        this.insert_new_line_before_else_in_if_statement = false;
        this.insert_new_line_before_finally_in_try_statement = false;
        this.insert_new_line_before_while_in_do_statement = false;
        this.keep_annotation_declaration_on_one_line = DefaultCodeFormatterConstants.ONE_LINE_NEVER;
        this.keep_anonymous_type_declaration_on_one_line = DefaultCodeFormatterConstants.ONE_LINE_NEVER;
        this.keep_if_then_body_block_on_one_line = DefaultCodeFormatterConstants.ONE_LINE_NEVER;
        this.keep_lambda_body_block_on_one_line = DefaultCodeFormatterConstants.ONE_LINE_NEVER;
        this.keep_loop_body_block_on_one_line = DefaultCodeFormatterConstants.ONE_LINE_NEVER;
        this.keep_code_block_on_one_line = DefaultCodeFormatterConstants.ONE_LINE_NEVER;
        this.keep_enum_constant_declaration_on_one_line = DefaultCodeFormatterConstants.ONE_LINE_NEVER;
        this.keep_enum_declaration_on_one_line = DefaultCodeFormatterConstants.ONE_LINE_NEVER;
        this.keep_method_body_on_one_line = DefaultCodeFormatterConstants.ONE_LINE_NEVER;
        this.keep_type_declaration_on_one_line = DefaultCodeFormatterConstants.ONE_LINE_NEVER;
        this.insert_space_after_and_in_type_parameter = true;
        this.insert_space_after_arrow_in_switch_case = true;
        this.insert_space_after_arrow_in_switch_default = true;
        this.insert_space_after_assignment_operator = true;
        this.insert_space_after_at_in_annotation = false;
        this.insert_space_after_at_in_annotation_type_declaration = false;
        this.insert_space_after_multiplicative_operator = true;
        this.insert_space_after_additive_operator = true;
        this.insert_space_after_string_concatenation = true;
        this.insert_space_after_shift_operator = true;
        this.insert_space_after_relational_operator = true;
        this.insert_space_after_bitwise_operator = true;
        this.insert_space_after_logical_operator = true;
        this.insert_space_after_closing_angle_bracket_in_type_arguments = false;
        this.insert_space_after_closing_angle_bracket_in_type_parameters = true;
        this.insert_space_after_closing_paren_in_cast = true;
        this.insert_space_after_closing_brace_in_block = true;
        this.insert_space_after_colon_in_assert = true;
        this.insert_space_after_colon_in_case = true;
        this.insert_space_after_colon_in_conditional = true;
        this.insert_space_after_colon_in_for = true;
        this.insert_space_after_colon_in_labeled_statement = true;
        this.insert_space_after_comma_in_allocation_expression = true;
        this.insert_space_after_comma_in_annotation = true;
        this.insert_space_after_comma_in_array_initializer = true;
        this.insert_space_after_comma_in_constructor_declaration_parameters = true;
        this.insert_space_after_comma_in_constructor_declaration_throws = true;
        this.insert_space_after_comma_in_enum_constant_arguments = true;
        this.insert_space_after_comma_in_enum_declarations = true;
        this.insert_space_after_comma_in_explicit_constructor_call_arguments = true;
        this.insert_space_after_comma_in_for_increments = true;
        this.insert_space_after_comma_in_for_inits = true;
        this.insert_space_after_comma_in_method_invocation_arguments = true;
        this.insert_space_after_comma_in_method_declaration_parameters = true;
        this.insert_space_after_comma_in_method_declaration_throws = true;
        this.insert_space_after_comma_in_multiple_field_declarations = true;
        this.insert_space_after_comma_in_multiple_local_declarations = true;
        this.insert_space_after_comma_in_parameterized_type_reference = true;
        this.insert_space_after_comma_in_superinterfaces = true;
        this.insert_space_after_comma_in_switch_case_expressions = true;
        this.insert_space_after_comma_in_type_arguments = true;
        this.insert_space_after_comma_in_type_parameters = true;
        this.insert_space_after_ellipsis = true;
        this.insert_space_after_lambda_arrow = true;
        this.insert_space_after_opening_angle_bracket_in_parameterized_type_reference = false;
        this.insert_space_after_opening_angle_bracket_in_type_arguments = false;
        this.insert_space_after_opening_angle_bracket_in_type_parameters = false;
        this.insert_space_after_opening_bracket_in_array_allocation_expression = false;
        this.insert_space_after_opening_bracket_in_array_reference = false;
        this.insert_space_after_opening_brace_in_array_initializer = true;
        this.insert_space_after_opening_paren_in_annotation = false;
        this.insert_space_after_opening_paren_in_cast = false;
        this.insert_space_after_opening_paren_in_catch = false;
        this.insert_space_after_opening_paren_in_constructor_declaration = false;
        this.insert_space_after_opening_paren_in_enum_constant = false;
        this.insert_space_after_opening_paren_in_for = false;
        this.insert_space_after_opening_paren_in_if = false;
        this.insert_space_after_opening_paren_in_method_declaration = false;
        this.insert_space_after_opening_paren_in_method_invocation = false;
        this.insert_space_after_opening_paren_in_parenthesized_expression = false;
        this.insert_space_after_opening_paren_in_switch = false;
        this.insert_space_after_opening_paren_in_synchronized = false;
        this.insert_space_after_opening_paren_in_try = false;
        this.insert_space_after_opening_paren_in_while = false;
        this.insert_space_after_postfix_operator = false;
        this.insert_space_after_prefix_operator = false;
        this.insert_space_after_question_in_conditional = true;
        this.insert_space_after_question_in_wilcard = false;
        this.insert_space_after_semicolon_in_for = true;
        this.insert_space_after_semicolon_in_try_resources = true;
        this.insert_space_after_unary_operator = false;
        this.insert_space_before_and_in_type_parameter = true;
        this.insert_space_before_arrow_in_switch_case = true;
        this.insert_space_before_arrow_in_switch_default = true;
        this.insert_space_before_at_in_annotation_type_declaration = true;
        this.insert_space_before_assignment_operator = true;
        this.insert_space_before_multiplicative_operator = true;
        this.insert_space_before_additive_operator = true;
        this.insert_space_before_string_concatenation = true;
        this.insert_space_before_shift_operator = true;
        this.insert_space_before_relational_operator = true;
        this.insert_space_before_bitwise_operator = true;
        this.insert_space_before_logical_operator = true;
        this.insert_space_before_closing_angle_bracket_in_parameterized_type_reference = false;
        this.insert_space_before_closing_angle_bracket_in_type_arguments = false;
        this.insert_space_before_closing_angle_bracket_in_type_parameters = false;
        this.insert_space_before_closing_brace_in_array_initializer = true;
        this.insert_space_before_closing_bracket_in_array_allocation_expression = false;
        this.insert_space_before_closing_bracket_in_array_reference = false;
        this.insert_space_before_closing_paren_in_annotation = false;
        this.insert_space_before_closing_paren_in_cast = false;
        this.insert_space_before_closing_paren_in_catch = false;
        this.insert_space_before_closing_paren_in_constructor_declaration = false;
        this.insert_space_before_closing_paren_in_enum_constant = false;
        this.insert_space_before_closing_paren_in_for = false;
        this.insert_space_before_closing_paren_in_if = false;
        this.insert_space_before_closing_paren_in_method_declaration = false;
        this.insert_space_before_closing_paren_in_method_invocation = false;
        this.insert_space_before_closing_paren_in_parenthesized_expression = false;
        this.insert_space_before_closing_paren_in_switch = false;
        this.insert_space_before_closing_paren_in_synchronized = false;
        this.insert_space_before_closing_paren_in_try = false;
        this.insert_space_before_closing_paren_in_while = false;
        this.insert_space_before_colon_in_assert = true;
        this.insert_space_before_colon_in_case = false;
        this.insert_space_before_colon_in_conditional = true;
        this.insert_space_before_colon_in_default = false;
        this.insert_space_before_colon_in_for = true;
        this.insert_space_before_colon_in_labeled_statement = false;
        this.insert_space_before_comma_in_allocation_expression = false;
        this.insert_space_before_comma_in_array_initializer = false;
        this.insert_space_before_comma_in_constructor_declaration_parameters = false;
        this.insert_space_before_comma_in_constructor_declaration_throws = false;
        this.insert_space_before_comma_in_enum_constant_arguments = false;
        this.insert_space_before_comma_in_enum_declarations = false;
        this.insert_space_before_comma_in_explicit_constructor_call_arguments = false;
        this.insert_space_before_comma_in_for_increments = false;
        this.insert_space_before_comma_in_for_inits = false;
        this.insert_space_before_comma_in_method_invocation_arguments = false;
        this.insert_space_before_comma_in_method_declaration_parameters = false;
        this.insert_space_before_comma_in_method_declaration_throws = false;
        this.insert_space_before_comma_in_multiple_field_declarations = false;
        this.insert_space_before_comma_in_multiple_local_declarations = false;
        this.insert_space_before_comma_in_parameterized_type_reference = false;
        this.insert_space_before_comma_in_superinterfaces = false;
        this.insert_space_before_comma_in_switch_case_expressions = false;
        this.insert_space_before_comma_in_type_arguments = false;
        this.insert_space_before_comma_in_type_parameters = false;
        this.insert_space_before_ellipsis = false;
        this.insert_space_before_lambda_arrow = true;
        this.insert_space_before_parenthesized_expression_in_return = true;
        this.insert_space_before_parenthesized_expression_in_throw = true;
        this.insert_space_before_opening_angle_bracket_in_parameterized_type_reference = false;
        this.insert_space_before_opening_angle_bracket_in_type_arguments = false;
        this.insert_space_before_opening_angle_bracket_in_type_parameters = false;
        this.insert_space_before_opening_brace_in_annotation_type_declaration = true;
        this.insert_space_before_opening_brace_in_anonymous_type_declaration = true;
        this.insert_space_before_opening_brace_in_array_initializer = true;
        this.insert_space_before_opening_brace_in_block = true;
        this.insert_space_before_opening_brace_in_constructor_declaration = true;
        this.insert_space_before_opening_brace_in_enum_constant = true;
        this.insert_space_before_opening_brace_in_enum_declaration = true;
        this.insert_space_before_opening_brace_in_method_declaration = true;
        this.insert_space_before_opening_brace_in_switch = true;
        this.insert_space_before_opening_brace_in_type_declaration = true;
        this.insert_space_before_opening_bracket_in_array_allocation_expression = false;
        this.insert_space_before_opening_bracket_in_array_reference = false;
        this.insert_space_before_opening_bracket_in_array_type_reference = false;
        this.insert_space_before_opening_paren_in_annotation = false;
        this.insert_space_before_opening_paren_in_annotation_type_member_declaration = false;
        this.insert_space_before_opening_paren_in_catch = true;
        this.insert_space_before_opening_paren_in_constructor_declaration = false;
        this.insert_space_before_opening_paren_in_enum_constant = false;
        this.insert_space_before_opening_paren_in_for = true;
        this.insert_space_before_opening_paren_in_if = true;
        this.insert_space_before_opening_paren_in_method_invocation = false;
        this.insert_space_before_opening_paren_in_method_declaration = false;
        this.insert_space_before_opening_paren_in_switch = true;
        this.insert_space_before_opening_paren_in_synchronized = true;
        this.insert_space_before_opening_paren_in_try = true;
        this.insert_space_before_opening_paren_in_parenthesized_expression = false;
        this.insert_space_before_opening_paren_in_while = true;
        this.insert_space_before_postfix_operator = false;
        this.insert_space_before_prefix_operator = false;
        this.insert_space_before_question_in_conditional = true;
        this.insert_space_before_question_in_wilcard = false;
        this.insert_space_before_semicolon = false;
        this.insert_space_before_semicolon_in_for = false;
        this.insert_space_before_semicolon_in_try_resources = false;
        this.insert_space_before_unary_operator = false;
        this.insert_space_between_brackets_in_array_type_reference = false;
        this.insert_space_between_empty_braces_in_array_initializer = false;
        this.insert_space_between_empty_brackets_in_array_allocation_expression = false;
        this.insert_space_between_empty_parens_in_annotation_type_member_declaration = false;
        this.insert_space_between_empty_parens_in_constructor_declaration = false;
        this.insert_space_between_empty_parens_in_enum_constant = false;
        this.insert_space_between_empty_parens_in_method_declaration = false;
        this.insert_space_between_empty_parens_in_method_invocation = false;
        this.compact_else_if = true;
        this.keep_guardian_clause_on_one_line = false;
        this.keep_else_statement_on_same_line = false;
        this.keep_empty_array_initializer_on_one_line = false;
        this.keep_simple_if_on_one_line = false;
        this.keep_then_statement_on_same_line = false;
        this.keep_simple_for_body_on_same_line = false;
        this.keep_simple_while_body_on_same_line = false;
        this.keep_simple_do_while_body_on_same_line = false;
        this.never_indent_block_comments_on_first_column = false;
        this.never_indent_line_comments_on_first_column = false;
        this.number_of_empty_lines_to_preserve = 1;
        this.join_lines_in_comments = true;
        this.join_wrapped_lines = true;
        this.put_empty_statement_on_new_line = true;
        this.tab_size = 8;
        this.page_width = 120;
        this.tab_char = 4;
        this.use_tabs_only_for_leading_indentations = false;
        this.wrap_before_multiplicative_operator = true;
        this.wrap_before_additive_operator = true;
        this.wrap_before_string_concatenation = true;
        this.wrap_before_shift_operator = true;
        this.wrap_before_relational_operator = true;
        this.wrap_before_bitwise_operator = true;
        this.wrap_before_logical_operator = true;
        this.wrap_before_or_operator_multicatch = true;
        this.wrap_before_conditional_operator = true;
        this.wrap_before_assignment_operator = false;
        this.use_tags = false;
        this.disabling_tag = DEFAULT_DISABLING_TAG;
        this.enabling_tag = DEFAULT_ENABLING_TAG;
        this.wrap_outer_expressions_when_nested = true;
    }

    public DefaultCodeFormatterOptions(Map<String, String> map) {
        setDefaultSettings();
        if (map == null) {
            return;
        }
        set(map);
    }
}
