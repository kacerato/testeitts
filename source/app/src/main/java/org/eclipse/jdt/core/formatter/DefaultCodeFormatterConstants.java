package org.eclipse.jdt.core.formatter;

import java.util.Map;
import org.eclipse.jdt.internal.formatter.DefaultCodeFormatterOptions;

public class DefaultCodeFormatterConstants {
    public static final String COMMON_LINES = "common_lines";
    public static final String END_OF_LINE = "end_of_line";
    public static final String FALSE = "false";
    public static final String FORMATTER_ALIGNMENT_FOR_ADDITIVE_OPERATOR = "org.eclipse.jdt.core.formatter.alignment_for_additive_operator";
    public static final String FORMATTER_ALIGNMENT_FOR_ARGUMENTS_IN_ALLOCATION_EXPRESSION = "org.eclipse.jdt.core.formatter.alignment_for_arguments_in_allocation_expression";
    public static final String FORMATTER_ALIGNMENT_FOR_ARGUMENTS_IN_ANNOTATION = "org.eclipse.jdt.core.formatter.alignment_for_arguments_in_annotation";
    public static final String FORMATTER_ALIGNMENT_FOR_ARGUMENTS_IN_ENUM_CONSTANT = "org.eclipse.jdt.core.formatter.alignment_for_arguments_in_enum_constant";
    public static final String FORMATTER_ALIGNMENT_FOR_ARGUMENTS_IN_EXPLICIT_CONSTRUCTOR_CALL = "org.eclipse.jdt.core.formatter.alignment_for_arguments_in_explicit_constructor_call";
    public static final String FORMATTER_ALIGNMENT_FOR_ARGUMENTS_IN_METHOD_INVOCATION = "org.eclipse.jdt.core.formatter.alignment_for_arguments_in_method_invocation";
    public static final String FORMATTER_ALIGNMENT_FOR_ARGUMENTS_IN_QUALIFIED_ALLOCATION_EXPRESSION = "org.eclipse.jdt.core.formatter.alignment_for_arguments_in_qualified_allocation_expression";
    public static final String FORMATTER_ALIGNMENT_FOR_ASSIGNMENT = "org.eclipse.jdt.core.formatter.alignment_for_assignment";
    public static final String FORMATTER_ALIGNMENT_FOR_BINARY_EXPRESSION = "org.eclipse.jdt.core.formatter.alignment_for_binary_expression";
    public static final String FORMATTER_ALIGNMENT_FOR_BITWISE_OPERATOR = "org.eclipse.jdt.core.formatter.alignment_for_bitwise_operator";
    public static final String FORMATTER_ALIGNMENT_FOR_COMPACT_IF = "org.eclipse.jdt.core.formatter.alignment_for_compact_if";
    public static final String FORMATTER_ALIGNMENT_FOR_COMPACT_LOOP = "org.eclipse.jdt.core.formatter.alignment_for_compact_loops";
    public static final String FORMATTER_ALIGNMENT_FOR_CONDITIONAL_EXPRESSION = "org.eclipse.jdt.core.formatter.alignment_for_conditional_expression";
    public static final String FORMATTER_ALIGNMENT_FOR_CONDITIONAL_EXPRESSION_CHAIN = "org.eclipse.jdt.core.formatter.alignment_for_conditional_expression_chain";
    public static final String FORMATTER_ALIGNMENT_FOR_ENUM_CONSTANTS = "org.eclipse.jdt.core.formatter.alignment_for_enum_constants";
    public static final String FORMATTER_ALIGNMENT_FOR_EXPRESSIONS_IN_ARRAY_INITIALIZER = "org.eclipse.jdt.core.formatter.alignment_for_expressions_in_array_initializer";
    public static final String FORMATTER_ALIGNMENT_FOR_EXPRESSIONS_IN_FOR_LOOP_HEADER = "org.eclipse.jdt.core.formatter.alignment_for_expressions_in_for_loop_header";
    public static final String FORMATTER_ALIGNMENT_FOR_LOGICAL_OPERATOR = "org.eclipse.jdt.core.formatter.alignment_for_logical_operator";
    public static final String FORMATTER_ALIGNMENT_FOR_METHOD_DECLARATION = "org.eclipse.jdt.core.formatter.alignment_for_method_declaration";
    public static final String FORMATTER_ALIGNMENT_FOR_MODULE_STATEMENTS = "org.eclipse.jdt.core.formatter.alignment_for_module_statements";
    public static final String FORMATTER_ALIGNMENT_FOR_MULTIPLE_FIELDS = "org.eclipse.jdt.core.formatter.alignment_for_multiple_fields";
    public static final String FORMATTER_ALIGNMENT_FOR_MULTIPLICATIVE_OPERATOR = "org.eclipse.jdt.core.formatter.alignment_for_multiplicative_operator";
    public static final String FORMATTER_ALIGNMENT_FOR_PARAMETERIZED_TYPE_REFERENCES = "org.eclipse.jdt.core.formatter.alignment_for_parameterized_type_references";
    public static final String FORMATTER_ALIGNMENT_FOR_PARAMETERS_IN_CONSTRUCTOR_DECLARATION = "org.eclipse.jdt.core.formatter.alignment_for_parameters_in_constructor_declaration";
    public static final String FORMATTER_ALIGNMENT_FOR_PARAMETERS_IN_METHOD_DECLARATION = "org.eclipse.jdt.core.formatter.alignment_for_parameters_in_method_declaration";
    public static final String FORMATTER_ALIGNMENT_FOR_RELATIONAL_OPERATOR = "org.eclipse.jdt.core.formatter.alignment_for_relational_operator";
    public static final String FORMATTER_ALIGNMENT_FOR_RESOURCES_IN_TRY = "org.eclipse.jdt.core.formatter.alignment_for_resources_in_try";
    public static final String FORMATTER_ALIGNMENT_FOR_SELECTOR_IN_METHOD_INVOCATION = "org.eclipse.jdt.core.formatter.alignment_for_selector_in_method_invocation";
    public static final String FORMATTER_ALIGNMENT_FOR_SHIFT_OPERATOR = "org.eclipse.jdt.core.formatter.alignment_for_shift_operator";
    public static final String FORMATTER_ALIGNMENT_FOR_STRING_CONCATENATION = "org.eclipse.jdt.core.formatter.alignment_for_string_concatenation";
    public static final String FORMATTER_ALIGNMENT_FOR_SUPERCLASS_IN_TYPE_DECLARATION = "org.eclipse.jdt.core.formatter.alignment_for_superclass_in_type_declaration";
    public static final String FORMATTER_ALIGNMENT_FOR_SUPERINTERFACES_IN_ENUM_DECLARATION = "org.eclipse.jdt.core.formatter.alignment_for_superinterfaces_in_enum_declaration";
    public static final String FORMATTER_ALIGNMENT_FOR_SUPERINTERFACES_IN_TYPE_DECLARATION = "org.eclipse.jdt.core.formatter.alignment_for_superinterfaces_in_type_declaration";
    public static final String FORMATTER_ALIGNMENT_FOR_THROWS_CLAUSE_IN_CONSTRUCTOR_DECLARATION = "org.eclipse.jdt.core.formatter.alignment_for_throws_clause_in_constructor_declaration";
    public static final String FORMATTER_ALIGNMENT_FOR_THROWS_CLAUSE_IN_METHOD_DECLARATION = "org.eclipse.jdt.core.formatter.alignment_for_throws_clause_in_method_declaration";
    public static final String FORMATTER_ALIGNMENT_FOR_TYPE_ARGUMENTS = "org.eclipse.jdt.core.formatter.alignment_for_type_arguments";
    public static final String FORMATTER_ALIGNMENT_FOR_TYPE_PARAMETERS = "org.eclipse.jdt.core.formatter.alignment_for_type_parameters";
    public static final String FORMATTER_ALIGNMENT_FOR_UNION_TYPE_IN_MULTICATCH = "org.eclipse.jdt.core.formatter.alignment_for_union_type_in_multicatch";
    public static final String FORMATTER_ALIGN_ASSIGNMENT_STATEMENTS_ON_COLUMNS = "org.eclipse.jdt.core.formatter.align_assignment_statements_on_columns";
    public static final String FORMATTER_ALIGN_FIELDS_GROUPING_BLANK_LINES = "org.eclipse.jdt.core.formatter.align_fields_grouping_blank_lines";
    public static final String FORMATTER_ALIGN_TYPE_MEMBERS_ON_COLUMNS = "org.eclipse.jdt.core.formatter.align_type_members_on_columns";
    public static final String FORMATTER_ALIGN_VARIABLE_DECLARATIONS_ON_COLUMNS = "org.eclipse.jdt.core.formatter.align_variable_declarations_on_columns";
    public static final String FORMATTER_ALIGN_WITH_SPACES = "org.eclipse.jdt.core.formatter.align_with_spaces";
    public static final String FORMATTER_BLANK_LINES_AFTER_IMPORTS = "org.eclipse.jdt.core.formatter.blank_lines_after_imports";
    public static final String FORMATTER_BLANK_LINES_AFTER_PACKAGE = "org.eclipse.jdt.core.formatter.blank_lines_after_package";
    public static final String FORMATTER_BLANK_LINES_AT_BEGINNING_OF_METHOD_BODY = "org.eclipse.jdt.core.formatter.number_of_blank_lines_at_beginning_of_method_body";
    public static final String FORMATTER_BLANK_LINES_BEFORE_FIELD = "org.eclipse.jdt.core.formatter.blank_lines_before_field";
    public static final String FORMATTER_BLANK_LINES_BEFORE_FIRST_CLASS_BODY_DECLARATION = "org.eclipse.jdt.core.formatter.blank_lines_before_first_class_body_declaration";
    public static final String FORMATTER_BLANK_LINES_BEFORE_IMPORTS = "org.eclipse.jdt.core.formatter.blank_lines_before_imports";
    public static final String FORMATTER_BLANK_LINES_BEFORE_MEMBER_TYPE = "org.eclipse.jdt.core.formatter.blank_lines_before_member_type";
    public static final String FORMATTER_BLANK_LINES_BEFORE_METHOD = "org.eclipse.jdt.core.formatter.blank_lines_before_method";
    public static final String FORMATTER_BLANK_LINES_BEFORE_NEW_CHUNK = "org.eclipse.jdt.core.formatter.blank_lines_before_new_chunk";
    public static final String FORMATTER_BLANK_LINES_BEFORE_PACKAGE = "org.eclipse.jdt.core.formatter.blank_lines_before_package";
    public static final String FORMATTER_BLANK_LINES_BETWEEN_IMPORT_GROUPS = "org.eclipse.jdt.core.formatter.blank_lines_between_import_groups";
    public static final String FORMATTER_BLANK_LINES_BETWEEN_TYPE_DECLARATIONS = "org.eclipse.jdt.core.formatter.blank_lines_between_type_declarations";
    public static final String FORMATTER_BRACE_POSITION_FOR_ANNOTATION_TYPE_DECLARATION = "org.eclipse.jdt.core.formatter.brace_position_for_annotation_type_declaration";
    public static final String FORMATTER_BRACE_POSITION_FOR_ANONYMOUS_TYPE_DECLARATION = "org.eclipse.jdt.core.formatter.brace_position_for_anonymous_type_declaration";
    public static final String FORMATTER_BRACE_POSITION_FOR_ARRAY_INITIALIZER = "org.eclipse.jdt.core.formatter.brace_position_for_array_initializer";
    public static final String FORMATTER_BRACE_POSITION_FOR_BLOCK = "org.eclipse.jdt.core.formatter.brace_position_for_block";
    public static final String FORMATTER_BRACE_POSITION_FOR_BLOCK_IN_CASE = "org.eclipse.jdt.core.formatter.brace_position_for_block_in_case";
    public static final String FORMATTER_BRACE_POSITION_FOR_CONSTRUCTOR_DECLARATION = "org.eclipse.jdt.core.formatter.brace_position_for_constructor_declaration";
    public static final String FORMATTER_BRACE_POSITION_FOR_ENUM_CONSTANT = "org.eclipse.jdt.core.formatter.brace_position_for_enum_constant";
    public static final String FORMATTER_BRACE_POSITION_FOR_ENUM_DECLARATION = "org.eclipse.jdt.core.formatter.brace_position_for_enum_declaration";
    public static final String FORMATTER_BRACE_POSITION_FOR_LAMBDA_BODY = "org.eclipse.jdt.core.formatter.brace_position_for_lambda_body";
    public static final String FORMATTER_BRACE_POSITION_FOR_METHOD_DECLARATION = "org.eclipse.jdt.core.formatter.brace_position_for_method_declaration";
    public static final String FORMATTER_BRACE_POSITION_FOR_SWITCH = "org.eclipse.jdt.core.formatter.brace_position_for_switch";
    public static final String FORMATTER_BRACE_POSITION_FOR_TYPE_DECLARATION = "org.eclipse.jdt.core.formatter.brace_position_for_type_declaration";
    public static final String FORMATTER_COMMENT_ALIGN_TAGS_DESCREIPTIONS_GROUPED = "org.eclipse.jdt.core.formatter.comment.align_tags_descriptions_grouped";
    public static final String FORMATTER_COMMENT_ALIGN_TAGS_NAMES_DESCRIPTIONS = "org.eclipse.jdt.core.formatter.comment.align_tags_names_descriptions";

    @Deprecated
    public static final String FORMATTER_COMMENT_CLEAR_BLANK_LINES = "org.eclipse.jdt.core.formatter.comment.clear_blank_lines";
    public static final String FORMATTER_COMMENT_CLEAR_BLANK_LINES_IN_BLOCK_COMMENT = "org.eclipse.jdt.core.formatter.comment.clear_blank_lines_in_block_comment";
    public static final String FORMATTER_COMMENT_CLEAR_BLANK_LINES_IN_JAVADOC_COMMENT = "org.eclipse.jdt.core.formatter.comment.clear_blank_lines_in_javadoc_comment";
    public static final String FORMATTER_COMMENT_COUNT_LINE_LENGTH_FROM_STARTING_POSITION = "org.eclipse.jdt.core.formatter.comment.count_line_length_from_starting_position";

    @Deprecated
    public static final String FORMATTER_COMMENT_FORMAT = "org.eclipse.jdt.core.formatter.comment.format_comments";
    public static final String FORMATTER_COMMENT_FORMAT_BLOCK_COMMENT = "org.eclipse.jdt.core.formatter.comment.format_block_comments";
    public static final String FORMATTER_COMMENT_FORMAT_HEADER = "org.eclipse.jdt.core.formatter.comment.format_header";
    public static final String FORMATTER_COMMENT_FORMAT_HTML = "org.eclipse.jdt.core.formatter.comment.format_html";
    public static final String FORMATTER_COMMENT_FORMAT_JAVADOC_COMMENT = "org.eclipse.jdt.core.formatter.comment.format_javadoc_comments";
    public static final String FORMATTER_COMMENT_FORMAT_LINE_COMMENT = "org.eclipse.jdt.core.formatter.comment.format_line_comments";
    public static final String FORMATTER_COMMENT_FORMAT_LINE_COMMENT_STARTING_ON_FIRST_COLUMN = "org.eclipse.jdt.core.formatter.format_line_comment_starting_on_first_column";
    public static final String FORMATTER_COMMENT_FORMAT_SOURCE = "org.eclipse.jdt.core.formatter.comment.format_source_code";
    public static final String FORMATTER_COMMENT_INDENT_PARAMETER_DESCRIPTION = "org.eclipse.jdt.core.formatter.comment.indent_parameter_description";
    public static final String FORMATTER_COMMENT_INDENT_ROOT_TAGS = "org.eclipse.jdt.core.formatter.comment.indent_root_tags";
    public static final String FORMATTER_COMMENT_INDENT_TAG_DESCRIPTION = "org.eclipse.jdt.core.formatter.comment.indent_tag_description";
    public static final String FORMATTER_COMMENT_INSERT_EMPTY_LINE_BEFORE_ROOT_TAGS = "org.eclipse.jdt.core.formatter.comment.insert_new_line_before_root_tags";
    public static final String FORMATTER_COMMENT_INSERT_NEW_LINE_FOR_PARAMETER = "org.eclipse.jdt.core.formatter.comment.insert_new_line_for_parameter";
    public static final String FORMATTER_COMMENT_LINE_LENGTH = "org.eclipse.jdt.core.formatter.comment.line_length";
    public static final String FORMATTER_COMMENT_NEW_LINES_AT_BLOCK_BOUNDARIES = "org.eclipse.jdt.core.formatter.comment.new_lines_at_block_boundaries";
    public static final String FORMATTER_COMMENT_NEW_LINES_AT_JAVADOC_BOUNDARIES = "org.eclipse.jdt.core.formatter.comment.new_lines_at_javadoc_boundaries";
    public static final String FORMATTER_COMMENT_PRESERVE_WHITE_SPACE_BETWEEN_CODE_AND_LINE_COMMENT = "org.eclipse.jdt.core.formatter.comment.preserve_white_space_between_code_and_line_comments";
    public static final String FORMATTER_COMPACT_ELSE_IF = "org.eclipse.jdt.core.formatter.compact_else_if";
    public static final String FORMATTER_CONTINUATION_INDENTATION = "org.eclipse.jdt.core.formatter.continuation_indentation";
    public static final String FORMATTER_CONTINUATION_INDENTATION_FOR_ARRAY_INITIALIZER = "org.eclipse.jdt.core.formatter.continuation_indentation_for_array_initializer";
    public static final String FORMATTER_DISABLING_TAG = "org.eclipse.jdt.core.formatter.disabling_tag";
    public static final String FORMATTER_ENABLING_TAG = "org.eclipse.jdt.core.formatter.enabling_tag";
    public static final String FORMATTER_INDENTATION_SIZE = "org.eclipse.jdt.core.formatter.indentation.size";
    public static final String FORMATTER_INDENT_BODY_DECLARATIONS_COMPARE_TO_ANNOTATION_DECLARATION_HEADER = "org.eclipse.jdt.core.formatter.indent_body_declarations_compare_to_annotation_declaration_header";
    public static final String FORMATTER_INDENT_BODY_DECLARATIONS_COMPARE_TO_ENUM_CONSTANT_HEADER = "org.eclipse.jdt.core.formatter.indent_body_declarations_compare_to_enum_constant_header";
    public static final String FORMATTER_INDENT_BODY_DECLARATIONS_COMPARE_TO_ENUM_DECLARATION_HEADER = "org.eclipse.jdt.core.formatter.indent_body_declarations_compare_to_enum_declaration_header";
    public static final String FORMATTER_INDENT_BODY_DECLARATIONS_COMPARE_TO_TYPE_HEADER = "org.eclipse.jdt.core.formatter.indent_body_declarations_compare_to_type_header";
    public static final String FORMATTER_INDENT_BREAKS_COMPARE_TO_CASES = "org.eclipse.jdt.core.formatter.indent_breaks_compare_to_cases";
    public static final String FORMATTER_INDENT_EMPTY_LINES = "org.eclipse.jdt.core.formatter.indent_empty_lines";
    public static final String FORMATTER_INDENT_STATEMENTS_COMPARE_TO_BLOCK = "org.eclipse.jdt.core.formatter.indent_statements_compare_to_block";
    public static final String FORMATTER_INDENT_STATEMENTS_COMPARE_TO_BODY = "org.eclipse.jdt.core.formatter.indent_statements_compare_to_body";
    public static final String FORMATTER_INDENT_SWITCHSTATEMENTS_COMPARE_TO_CASES = "org.eclipse.jdt.core.formatter.indent_switchstatements_compare_to_cases";
    public static final String FORMATTER_INDENT_SWITCHSTATEMENTS_COMPARE_TO_SWITCH = "org.eclipse.jdt.core.formatter.indent_switchstatements_compare_to_switch";

    @Deprecated
    public static final String FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION = "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation";
    public static final String FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_ENUM_CONSTANT = "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_enum_constant";
    public static final String FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_FIELD = "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_field";
    public static final String FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_LOCAL_VARIABLE = "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_local_variable";

    @Deprecated
    public static final String FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_MEMBER = "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_member";
    public static final String FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_METHOD = "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_method";
    public static final String FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_PACKAGE = "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_package";
    public static final String FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_PARAMETER = "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_parameter";
    public static final String FORMATTER_INSERT_NEW_LINE_AFTER_ANNOTATION_ON_TYPE = "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_type";
    public static final String FORMATTER_INSERT_NEW_LINE_AFTER_LABEL = "org.eclipse.jdt.core.formatter.insert_new_line_after_label";
    public static final String FORMATTER_INSERT_NEW_LINE_AFTER_OPENING_BRACE_IN_ARRAY_INITIALIZER = "org.eclipse.jdt.core.formatter.insert_new_line_after_opening_brace_in_array_initializer";
    public static final String FORMATTER_INSERT_NEW_LINE_AFTER_TYPE_ANNOTATION = "org.eclipse.jdt.core.formatter.insert_new_line_after_type_annotation";
    public static final String FORMATTER_INSERT_NEW_LINE_AT_END_OF_FILE_IF_MISSING = "org.eclipse.jdt.core.formatter.insert_new_line_at_end_of_file_if_missing";
    public static final String FORMATTER_INSERT_NEW_LINE_BEFORE_CATCH_IN_TRY_STATEMENT = "org.eclipse.jdt.core.formatter.insert_new_line_before_catch_in_try_statement";
    public static final String FORMATTER_INSERT_NEW_LINE_BEFORE_CLOSING_BRACE_IN_ARRAY_INITIALIZER = "org.eclipse.jdt.core.formatter.insert_new_line_before_closing_brace_in_array_initializer";
    public static final String FORMATTER_INSERT_NEW_LINE_BEFORE_ELSE_IN_IF_STATEMENT = "org.eclipse.jdt.core.formatter.insert_new_line_before_else_in_if_statement";
    public static final String FORMATTER_INSERT_NEW_LINE_BEFORE_FINALLY_IN_TRY_STATEMENT = "org.eclipse.jdt.core.formatter.insert_new_line_before_finally_in_try_statement";
    public static final String FORMATTER_INSERT_NEW_LINE_BEFORE_WHILE_IN_DO_STATEMENT = "org.eclipse.jdt.core.formatter.insert_new_line_before_while_in_do_statement";

    @Deprecated
    public static final String FORMATTER_INSERT_NEW_LINE_IN_EMPTY_ANNOTATION_DECLARATION = "org.eclipse.jdt.core.formatter.insert_new_line_in_empty_annotation_declaration";

    @Deprecated
    public static final String FORMATTER_INSERT_NEW_LINE_IN_EMPTY_ANONYMOUS_TYPE_DECLARATION = "org.eclipse.jdt.core.formatter.insert_new_line_in_empty_anonymous_type_declaration";

    @Deprecated
    public static final String FORMATTER_INSERT_NEW_LINE_IN_EMPTY_BLOCK = "org.eclipse.jdt.core.formatter.insert_new_line_in_empty_block";

    @Deprecated
    public static final String FORMATTER_INSERT_NEW_LINE_IN_EMPTY_ENUM_CONSTANT = "org.eclipse.jdt.core.formatter.insert_new_line_in_empty_enum_constant";

    @Deprecated
    public static final String FORMATTER_INSERT_NEW_LINE_IN_EMPTY_ENUM_DECLARATION = "org.eclipse.jdt.core.formatter.insert_new_line_in_empty_enum_declaration";

    @Deprecated
    public static final String FORMATTER_INSERT_NEW_LINE_IN_EMPTY_METHOD_BODY = "org.eclipse.jdt.core.formatter.insert_new_line_in_empty_method_body";

    @Deprecated
    public static final String FORMATTER_INSERT_NEW_LINE_IN_EMPTY_TYPE_DECLARATION = "org.eclipse.jdt.core.formatter.insert_new_line_in_empty_type_declaration";
    public static final String FORMATTER_INSERT_SPACE_AFTER_ADDITIVE_OPERATOR = "org.eclipse.jdt.core.formatter.insert_space_after_additive_operator";
    public static final String FORMATTER_INSERT_SPACE_AFTER_AND_IN_TYPE_PARAMETER = "org.eclipse.jdt.core.formatter.insert_space_after_and_in_type_parameter";
    public static final String FORMATTER_INSERT_SPACE_AFTER_ARROW_IN_SWITCH_CASE = "org.eclipse.jdt.core.formatter.insert_space_after_arrow_in_switch_case";
    public static final String FORMATTER_INSERT_SPACE_AFTER_ARROW_IN_SWITCH_DEFAULT = "org.eclipse.jdt.core.formatter.insert_space_after_arrow_in_switch_default";
    public static final String FORMATTER_INSERT_SPACE_AFTER_ASSIGNMENT_OPERATOR = "org.eclipse.jdt.core.formatter.insert_space_after_assignment_operator";
    public static final String FORMATTER_INSERT_SPACE_AFTER_AT_IN_ANNOTATION = "org.eclipse.jdt.core.formatter.insert_space_after_at_in_annotation";
    public static final String FORMATTER_INSERT_SPACE_AFTER_AT_IN_ANNOTATION_TYPE_DECLARATION = "org.eclipse.jdt.core.formatter.insert_space_after_at_in_annotation_type_declaration";
    public static final String FORMATTER_INSERT_SPACE_AFTER_BINARY_OPERATOR = "org.eclipse.jdt.core.formatter.insert_space_after_binary_operator";
    public static final String FORMATTER_INSERT_SPACE_AFTER_BITWISE_OPERATOR = "org.eclipse.jdt.core.formatter.insert_space_after_bitwise_operator";
    public static final String FORMATTER_INSERT_SPACE_AFTER_CLOSING_ANGLE_BRACKET_IN_TYPE_ARGUMENTS = "org.eclipse.jdt.core.formatter.insert_space_after_closing_angle_bracket_in_type_arguments";
    public static final String FORMATTER_INSERT_SPACE_AFTER_CLOSING_ANGLE_BRACKET_IN_TYPE_PARAMETERS = "org.eclipse.jdt.core.formatter.insert_space_after_closing_angle_bracket_in_type_parameters";
    public static final String FORMATTER_INSERT_SPACE_AFTER_CLOSING_BRACE_IN_BLOCK = "org.eclipse.jdt.core.formatter.insert_space_after_closing_brace_in_block";
    public static final String FORMATTER_INSERT_SPACE_AFTER_CLOSING_PAREN_IN_CAST = "org.eclipse.jdt.core.formatter.insert_space_after_closing_paren_in_cast";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COLON_IN_ASSERT = "org.eclipse.jdt.core.formatter.insert_space_after_colon_in_assert";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COLON_IN_CASE = "org.eclipse.jdt.core.formatter.insert_space_after_colon_in_case";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COLON_IN_CONDITIONAL = "org.eclipse.jdt.core.formatter.insert_space_after_colon_in_conditional";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COLON_IN_FOR = "org.eclipse.jdt.core.formatter.insert_space_after_colon_in_for";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COLON_IN_LABELED_STATEMENT = "org.eclipse.jdt.core.formatter.insert_space_after_colon_in_labeled_statement";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_ALLOCATION_EXPRESSION = "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_allocation_expression";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_ANNOTATION = "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_annotation";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_ARRAY_INITIALIZER = "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_array_initializer";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_CONSTRUCTOR_DECLARATION_PARAMETERS = "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_constructor_declaration_parameters";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_CONSTRUCTOR_DECLARATION_THROWS = "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_constructor_declaration_throws";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_ENUM_CONSTANT_ARGUMENTS = "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_enum_constant_arguments";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_ENUM_DECLARATIONS = "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_enum_declarations";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_EXPLICIT_CONSTRUCTOR_CALL_ARGUMENTS = "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_explicitconstructorcall_arguments";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_FOR_INCREMENTS = "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_for_increments";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_FOR_INITS = "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_for_inits";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_METHOD_DECLARATION_PARAMETERS = "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_method_declaration_parameters";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_METHOD_DECLARATION_THROWS = "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_method_declaration_throws";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_METHOD_INVOCATION_ARGUMENTS = "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_method_invocation_arguments";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_MULTIPLE_FIELD_DECLARATIONS = "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_multiple_field_declarations";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_MULTIPLE_LOCAL_DECLARATIONS = "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_multiple_local_declarations";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_PARAMETERIZED_TYPE_REFERENCE = "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_parameterized_type_reference";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_SUPERINTERFACES = "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_superinterfaces";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_SWITCH_CASE_EXPRESSIONS = "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_switch_case_expressions";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_TYPE_ARGUMENTS = "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_type_arguments";
    public static final String FORMATTER_INSERT_SPACE_AFTER_COMMA_IN_TYPE_PARAMETERS = "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_type_parameters";
    public static final String FORMATTER_INSERT_SPACE_AFTER_ELLIPSIS = "org.eclipse.jdt.core.formatter.insert_space_after_ellipsis";
    public static final String FORMATTER_INSERT_SPACE_AFTER_LAMBDA_ARROW = "org.eclipse.jdt.core.formatter.insert_space_after_lambda_arrow";
    public static final String FORMATTER_INSERT_SPACE_AFTER_LOGICAL_OPERATOR = "org.eclipse.jdt.core.formatter.insert_space_after_logical_operator";
    public static final String FORMATTER_INSERT_SPACE_AFTER_MULTIPLICATIVE_OPERATOR = "org.eclipse.jdt.core.formatter.insert_space_after_multiplicative_operator";
    public static final String FORMATTER_INSERT_SPACE_AFTER_OPENING_ANGLE_BRACKET_IN_PARAMETERIZED_TYPE_REFERENCE = "org.eclipse.jdt.core.formatter.insert_space_after_opening_angle_bracket_in_parameterized_type_reference";
    public static final String FORMATTER_INSERT_SPACE_AFTER_OPENING_ANGLE_BRACKET_IN_TYPE_ARGUMENTS = "org.eclipse.jdt.core.formatter.insert_space_after_opening_angle_bracket_in_type_arguments";
    public static final String FORMATTER_INSERT_SPACE_AFTER_OPENING_ANGLE_BRACKET_IN_TYPE_PARAMETERS = "org.eclipse.jdt.core.formatter.insert_space_after_opening_angle_bracket_in_type_parameters";
    public static final String FORMATTER_INSERT_SPACE_AFTER_OPENING_BRACE_IN_ARRAY_INITIALIZER = "org.eclipse.jdt.core.formatter.insert_space_after_opening_brace_in_array_initializer";
    public static final String FORMATTER_INSERT_SPACE_AFTER_OPENING_BRACKET_IN_ARRAY_ALLOCATION_EXPRESSION = "org.eclipse.jdt.core.formatter.insert_space_after_opening_bracket_in_array_allocation_expression";
    public static final String FORMATTER_INSERT_SPACE_AFTER_OPENING_BRACKET_IN_ARRAY_REFERENCE = "org.eclipse.jdt.core.formatter.insert_space_after_opening_bracket_in_array_reference";
    public static final String FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_ANNOTATION = "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_annotation";
    public static final String FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_CAST = "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_cast";
    public static final String FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_CATCH = "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_catch";
    public static final String FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_CONSTRUCTOR_DECLARATION = "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_constructor_declaration";
    public static final String FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_ENUM_CONSTANT = "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_enum_constant";
    public static final String FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_FOR = "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_for";
    public static final String FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_IF = "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_if";
    public static final String FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_METHOD_DECLARATION = "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_method_declaration";
    public static final String FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_METHOD_INVOCATION = "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_method_invocation";
    public static final String FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_PARENTHESIZED_EXPRESSION = "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_parenthesized_expression";
    public static final String FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_SWITCH = "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_switch";
    public static final String FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_SYNCHRONIZED = "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_synchronized";
    public static final String FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_TRY = "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_try";
    public static final String FORMATTER_INSERT_SPACE_AFTER_OPENING_PAREN_IN_WHILE = "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_while";
    public static final String FORMATTER_INSERT_SPACE_AFTER_POSTFIX_OPERATOR = "org.eclipse.jdt.core.formatter.insert_space_after_postfix_operator";
    public static final String FORMATTER_INSERT_SPACE_AFTER_PREFIX_OPERATOR = "org.eclipse.jdt.core.formatter.insert_space_after_prefix_operator";
    public static final String FORMATTER_INSERT_SPACE_AFTER_QUESTION_IN_CONDITIONAL = "org.eclipse.jdt.core.formatter.insert_space_after_question_in_conditional";
    public static final String FORMATTER_INSERT_SPACE_AFTER_QUESTION_IN_WILDCARD = "org.eclipse.jdt.core.formatter.insert_space_after_question_in_wildcard";
    public static final String FORMATTER_INSERT_SPACE_AFTER_RELATIONAL_OPERATOR = "org.eclipse.jdt.core.formatter.insert_space_after_relational_operator";
    public static final String FORMATTER_INSERT_SPACE_AFTER_SEMICOLON_IN_FOR = "org.eclipse.jdt.core.formatter.insert_space_after_semicolon_in_for";
    public static final String FORMATTER_INSERT_SPACE_AFTER_SEMICOLON_IN_TRY_RESOURCES = "org.eclipse.jdt.core.formatter.insert_space_after_semicolon_in_try_resources";
    public static final String FORMATTER_INSERT_SPACE_AFTER_SHIFT_OPERATOR = "org.eclipse.jdt.core.formatter.insert_space_after_shift_operator";
    public static final String FORMATTER_INSERT_SPACE_AFTER_STRING_CONCATENATION = "org.eclipse.jdt.core.formatter.insert_space_after_string_concatenation";
    public static final String FORMATTER_INSERT_SPACE_AFTER_UNARY_OPERATOR = "org.eclipse.jdt.core.formatter.insert_space_after_unary_operator";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_ADDITIVE_OPERATOR = "org.eclipse.jdt.core.formatter.insert_space_before_additive_operator";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_AND_IN_TYPE_PARAMETER = "org.eclipse.jdt.core.formatter.insert_space_before_and_in_type_parameter";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_ARROW_IN_SWITCH_CASE = "org.eclipse.jdt.core.formatter.insert_space_before_arrow_in_switch_case";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_ARROW_IN_SWITCH_DEFAULT = "org.eclipse.jdt.core.formatter.insert_space_before_arrow_in_switch_default";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_ASSIGNMENT_OPERATOR = "org.eclipse.jdt.core.formatter.insert_space_before_assignment_operator";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_AT_IN_ANNOTATION_TYPE_DECLARATION = "org.eclipse.jdt.core.formatter.insert_space_before_at_in_annotation_type_declaration";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_BINARY_OPERATOR = "org.eclipse.jdt.core.formatter.insert_space_before_binary_operator";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_BITWISE_OPERATOR = "org.eclipse.jdt.core.formatter.insert_space_before_bitwise_operator";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_CLOSING_ANGLE_BRACKET_IN_PARAMETERIZED_TYPE_REFERENCE = "org.eclipse.jdt.core.formatter.insert_space_before_closing_angle_bracket_in_parameterized_type_reference";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_CLOSING_ANGLE_BRACKET_IN_TYPE_ARGUMENTS = "org.eclipse.jdt.core.formatter.insert_space_before_closing_angle_bracket_in_type_arguments";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_CLOSING_ANGLE_BRACKET_IN_TYPE_PARAMETERS = "org.eclipse.jdt.core.formatter.insert_space_before_closing_angle_bracket_in_type_parameters";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_CLOSING_BRACE_IN_ARRAY_INITIALIZER = "org.eclipse.jdt.core.formatter.insert_space_before_closing_brace_in_array_initializer";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_CLOSING_BRACKET_IN_ARRAY_ALLOCATION_EXPRESSION = "org.eclipse.jdt.core.formatter.insert_space_before_closing_bracket_in_array_allocation_expression";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_CLOSING_BRACKET_IN_ARRAY_REFERENCE = "org.eclipse.jdt.core.formatter.insert_space_before_closing_bracket_in_array_reference";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_ANNOTATION = "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_annotation";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_CAST = "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_cast";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_CATCH = "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_catch";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_CONSTRUCTOR_DECLARATION = "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_constructor_declaration";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_ENUM_CONSTANT = "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_enum_constant";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_FOR = "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_for";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_IF = "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_if";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_METHOD_DECLARATION = "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_method_declaration";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_METHOD_INVOCATION = "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_method_invocation";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_PARENTHESIZED_EXPRESSION = "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_parenthesized_expression";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_SWITCH = "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_switch";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_SYNCHRONIZED = "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_synchronized";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_TRY = "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_try";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_CLOSING_PAREN_IN_WHILE = "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_while";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COLON_IN_ASSERT = "org.eclipse.jdt.core.formatter.insert_space_before_colon_in_assert";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COLON_IN_CASE = "org.eclipse.jdt.core.formatter.insert_space_before_colon_in_case";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COLON_IN_CONDITIONAL = "org.eclipse.jdt.core.formatter.insert_space_before_colon_in_conditional";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COLON_IN_DEFAULT = "org.eclipse.jdt.core.formatter.insert_space_before_colon_in_default";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COLON_IN_FOR = "org.eclipse.jdt.core.formatter.insert_space_before_colon_in_for";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COLON_IN_LABELED_STATEMENT = "org.eclipse.jdt.core.formatter.insert_space_before_colon_in_labeled_statement";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_ALLOCATION_EXPRESSION = "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_allocation_expression";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_ANNOTATION = "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_annotation";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_ARRAY_INITIALIZER = "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_array_initializer";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_CONSTRUCTOR_DECLARATION_PARAMETERS = "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_constructor_declaration_parameters";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_CONSTRUCTOR_DECLARATION_THROWS = "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_constructor_declaration_throws";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_ENUM_CONSTANT_ARGUMENTS = "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_enum_constant_arguments";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_ENUM_DECLARATIONS = "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_enum_declarations";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_EXPLICIT_CONSTRUCTOR_CALL_ARGUMENTS = "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_explicitconstructorcall_arguments";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_FOR_INCREMENTS = "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_for_increments";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_FOR_INITS = "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_for_inits";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_METHOD_DECLARATION_PARAMETERS = "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_method_declaration_parameters";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_METHOD_DECLARATION_THROWS = "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_method_declaration_throws";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_METHOD_INVOCATION_ARGUMENTS = "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_method_invocation_arguments";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_MULTIPLE_FIELD_DECLARATIONS = "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_multiple_field_declarations";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_MULTIPLE_LOCAL_DECLARATIONS = "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_multiple_local_declarations";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_PARAMETERIZED_TYPE_REFERENCE = "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_parameterized_type_reference";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_SUPERINTERFACES = "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_superinterfaces";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_SWITCH_CASE_EXPRESSIONS = "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_switch_case_expressions";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_TYPE_ARGUMENTS = "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_type_arguments";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_COMMA_IN_TYPE_PARAMETERS = "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_type_parameters";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_ELLIPSIS = "org.eclipse.jdt.core.formatter.insert_space_before_ellipsis";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_LAMBDA_ARROW = "org.eclipse.jdt.core.formatter.insert_space_before_lambda_arrow";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_LOGICAL_OPERATOR = "org.eclipse.jdt.core.formatter.insert_space_before_logical_operator";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_MULTIPLICATIVE_OPERATOR = "org.eclipse.jdt.core.formatter.insert_space_before_multiplicative_operator";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_ANGLE_BRACKET_IN_PARAMETERIZED_TYPE_REFERENCE = "org.eclipse.jdt.core.formatter.insert_space_before_opening_angle_bracket_in_parameterized_type_reference";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_ANGLE_BRACKET_IN_TYPE_ARGUMENTS = "org.eclipse.jdt.core.formatter.insert_space_before_opening_angle_bracket_in_type_arguments";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_ANGLE_BRACKET_IN_TYPE_PARAMETERS = "org.eclipse.jdt.core.formatter.insert_space_before_opening_angle_bracket_in_type_parameters";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_ANNOTATION_TYPE_DECLARATION = "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_annotation_type_declaration";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_ANONYMOUS_TYPE_DECLARATION = "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_anonymous_type_declaration";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_ARRAY_INITIALIZER = "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_array_initializer";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_BLOCK = "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_block";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_CONSTRUCTOR_DECLARATION = "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_constructor_declaration";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_ENUM_CONSTANT = "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_enum_constant";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_ENUM_DECLARATION = "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_enum_declaration";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_METHOD_DECLARATION = "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_method_declaration";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_SWITCH = "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_switch";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACE_IN_TYPE_DECLARATION = "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_type_declaration";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACKET_IN_ARRAY_ALLOCATION_EXPRESSION = "org.eclipse.jdt.core.formatter.insert_space_before_opening_bracket_in_array_allocation_expression";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACKET_IN_ARRAY_REFERENCE = "org.eclipse.jdt.core.formatter.insert_space_before_opening_bracket_in_array_reference";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_BRACKET_IN_ARRAY_TYPE_REFERENCE = "org.eclipse.jdt.core.formatter.insert_space_before_opening_bracket_in_array_type_reference";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_ANNOTATION = "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_annotation";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_ANNOTATION_TYPE_MEMBER_DECLARATION = "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_annotation_type_member_declaration";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_CATCH = "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_catch";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_CONSTRUCTOR_DECLARATION = "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_constructor_declaration";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_ENUM_CONSTANT = "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_enum_constant";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_FOR = "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_for";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_IF = "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_if";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_METHOD_DECLARATION = "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_method_declaration";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_METHOD_INVOCATION = "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_method_invocation";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_PARENTHESIZED_EXPRESSION = "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_parenthesized_expression";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_SWITCH = "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_switch";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_SYNCHRONIZED = "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_synchronized";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_TRY = "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_try";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_OPENING_PAREN_IN_WHILE = "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_while";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_PARENTHESIZED_EXPRESSION_IN_RETURN = "org.eclipse.jdt.core.formatter.insert_space_before_parenthesized_expression_in_return";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_PARENTHESIZED_EXPRESSION_IN_THROW = "org.eclipse.jdt.core.formatter.insert_space_before_parenthesized_expression_in_throw";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_POSTFIX_OPERATOR = "org.eclipse.jdt.core.formatter.insert_space_before_postfix_operator";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_PREFIX_OPERATOR = "org.eclipse.jdt.core.formatter.insert_space_before_prefix_operator";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_QUESTION_IN_CONDITIONAL = "org.eclipse.jdt.core.formatter.insert_space_before_question_in_conditional";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_QUESTION_IN_WILDCARD = "org.eclipse.jdt.core.formatter.insert_space_before_question_in_wildcard";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_RELATIONAL_OPERATOR = "org.eclipse.jdt.core.formatter.insert_space_before_relational_operator";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_SEMICOLON = "org.eclipse.jdt.core.formatter.insert_space_before_semicolon";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_SEMICOLON_IN_FOR = "org.eclipse.jdt.core.formatter.insert_space_before_semicolon_in_for";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_SEMICOLON_IN_TRY_RESOURCES = "org.eclipse.jdt.core.formatter.insert_space_before_semicolon_in_try_resources";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_SHIFT_OPERATOR = "org.eclipse.jdt.core.formatter.insert_space_before_shift_operator";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_STRING_CONCATENATION = "org.eclipse.jdt.core.formatter.insert_space_before_string_concatenation";
    public static final String FORMATTER_INSERT_SPACE_BEFORE_UNARY_OPERATOR = "org.eclipse.jdt.core.formatter.insert_space_before_unary_operator";
    public static final String FORMATTER_INSERT_SPACE_BETWEEN_BRACKETS_IN_ARRAY_TYPE_REFERENCE = "org.eclipse.jdt.core.formatter.insert_space_between_brackets_in_array_type_reference";
    public static final String FORMATTER_INSERT_SPACE_BETWEEN_EMPTY_BRACES_IN_ARRAY_INITIALIZER = "org.eclipse.jdt.core.formatter.insert_space_between_empty_braces_in_array_initializer";
    public static final String FORMATTER_INSERT_SPACE_BETWEEN_EMPTY_BRACKETS_IN_ARRAY_ALLOCATION_EXPRESSION = "org.eclipse.jdt.core.formatter.insert_space_between_empty_brackets_in_array_allocation_expression";
    public static final String FORMATTER_INSERT_SPACE_BETWEEN_EMPTY_PARENS_IN_ANNOTATION_TYPE_MEMBER_DECLARATION = "org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_annotation_type_member_declaration";
    public static final String FORMATTER_INSERT_SPACE_BETWEEN_EMPTY_PARENS_IN_CONSTRUCTOR_DECLARATION = "org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_constructor_declaration";
    public static final String FORMATTER_INSERT_SPACE_BETWEEN_EMPTY_PARENS_IN_ENUM_CONSTANT = "org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_enum_constant";
    public static final String FORMATTER_INSERT_SPACE_BETWEEN_EMPTY_PARENS_IN_METHOD_DECLARATION = "org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_method_declaration";
    public static final String FORMATTER_INSERT_SPACE_BETWEEN_EMPTY_PARENS_IN_METHOD_INVOCATION = "org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_method_invocation";
    public static final String FORMATTER_JOIN_LINES_IN_COMMENTS = "org.eclipse.jdt.core.formatter.join_lines_in_comments";
    public static final String FORMATTER_JOIN_WRAPPED_LINES = "org.eclipse.jdt.core.formatter.join_wrapped_lines";
    public static final String FORMATTER_KEEP_ANNOTATION_DECLARATION_ON_ONE_LINE = "org.eclipse.jdt.core.formatter.keep_annotation_declaration_on_one_line";
    public static final String FORMATTER_KEEP_ANONYMOUS_TYPE_DECLARATION_ON_ONE_LINE = "org.eclipse.jdt.core.formatter.keep_anonymous_type_declaration_on_one_line";
    public static final String FORMATTER_KEEP_CODE_BLOCK_ON_ONE_LINE = "org.eclipse.jdt.core.formatter.keep_code_block_on_one_line";
    public static final String FORMATTER_KEEP_ELSE_STATEMENT_ON_SAME_LINE = "org.eclipse.jdt.core.formatter.keep_else_statement_on_same_line";
    public static final String FORMATTER_KEEP_EMPTY_ARRAY_INITIALIZER_ON_ONE_LINE = "org.eclipse.jdt.core.formatter.keep_empty_array_initializer_on_one_line";
    public static final String FORMATTER_KEEP_ENUM_CONSTANT_DECLARATION_ON_ONE_LINE = "org.eclipse.jdt.core.formatter.keep_enum_constant_declaration_on_one_line";
    public static final String FORMATTER_KEEP_ENUM_DECLARATION_ON_ONE_LINE = "org.eclipse.jdt.core.formatter.keep_enum_declaration_on_one_line";
    public static final String FORMATTER_KEEP_GUARDIAN_CLAUSE_ON_ONE_LINE = "org.eclipse.jdt.core.formatter.format_guardian_clause_on_one_line";
    public static final String FORMATTER_KEEP_IF_THEN_BODY_BLOCK_ON_ONE_LINE = "org.eclipse.jdt.core.formatter.keep_if_then_body_block_on_one_line";
    public static final String FORMATTER_KEEP_LAMBDA_BODY_BLOCK_ON_ONE_LINE = "org.eclipse.jdt.core.formatter.keep_lambda_body_block_on_one_line";
    public static final String FORMATTER_KEEP_LOOP_BODY_BLOCK_ON_ONE_LINE = "org.eclipse.jdt.core.formatter.keep_loop_body_block_on_one_line";
    public static final String FORMATTER_KEEP_METHOD_BODY_ON_ONE_LINE = "org.eclipse.jdt.core.formatter.keep_method_body_on_one_line";
    public static final String FORMATTER_KEEP_SIMPLE_DO_WHILE_BODY_ON_SAME_LINE = "org.eclipse.jdt.core.formatter.keep_simple_do_while_body_on_same_line";
    public static final String FORMATTER_KEEP_SIMPLE_FOR_BODY_ON_SAME_LINE = "org.eclipse.jdt.core.formatter.keep_simple_for_body_on_same_line";
    public static final String FORMATTER_KEEP_SIMPLE_GETTER_SETTER_ON_ONE_LINE = "org.eclipse.jdt.core.formatter.keep_simple_getter_setter_on_one_line";
    public static final String FORMATTER_KEEP_SIMPLE_IF_ON_ONE_LINE = "org.eclipse.jdt.core.formatter.keep_imple_if_on_one_line";
    public static final String FORMATTER_KEEP_SIMPLE_WHILE_BODY_ON_SAME_LINE = "org.eclipse.jdt.core.formatter.keep_simple_while_body_on_same_line";
    public static final String FORMATTER_KEEP_THEN_STATEMENT_ON_SAME_LINE = "org.eclipse.jdt.core.formatter.keep_then_statement_on_same_line";
    public static final String FORMATTER_KEEP_TYPE_DECLARATION_ON_ONE_LINE = "org.eclipse.jdt.core.formatter.keep_type_declaration_on_one_line";
    public static final String FORMATTER_LINE_SPLIT = "org.eclipse.jdt.core.formatter.lineSplit";
    public static final String FORMATTER_NEVER_INDENT_BLOCK_COMMENTS_ON_FIRST_COLUMN = "org.eclipse.jdt.core.formatter.never_indent_block_comments_on_first_column";
    public static final String FORMATTER_NEVER_INDENT_LINE_COMMENTS_ON_FIRST_COLUMN = "org.eclipse.jdt.core.formatter.never_indent_line_comments_on_first_column";
    public static final String FORMATTER_NUMBER_OF_EMPTY_LINES_TO_PRESERVE = "org.eclipse.jdt.core.formatter.number_of_empty_lines_to_preserve";
    public static final String FORMATTER_PARENTHESES_POSITIONS_IN_ANNOTATION = "org.eclipse.jdt.core.formatter.parentheses_positions_in_annotation";
    public static final String FORMATTER_PARENTHESES_POSITIONS_IN_CATCH_CLAUSE = "org.eclipse.jdt.core.formatter.parentheses_positions_in_catch_clause";
    public static final String FORMATTER_PARENTHESES_POSITIONS_IN_ENUM_CONSTANT_DECLARATION = "org.eclipse.jdt.core.formatter.parentheses_positions_in_enum_constant_declaration";
    public static final String FORMATTER_PARENTHESES_POSITIONS_IN_FOR_STATEMENT = "org.eclipse.jdt.core.formatter.parentheses_positions_in_for_statment";
    public static final String FORMATTER_PARENTHESES_POSITIONS_IN_IF_WHILE_STATEMENT = "org.eclipse.jdt.core.formatter.parentheses_positions_in_if_while_statement";
    public static final String FORMATTER_PARENTHESES_POSITIONS_IN_LAMBDA_DECLARATION = "org.eclipse.jdt.core.formatter.parentheses_positions_in_lambda_declaration";
    public static final String FORMATTER_PARENTHESES_POSITIONS_IN_METHOD_DECLARATION = "org.eclipse.jdt.core.formatter.parentheses_positions_in_method_delcaration";
    public static final String FORMATTER_PARENTHESES_POSITIONS_IN_METHOD_INVOCATION = "org.eclipse.jdt.core.formatter.parentheses_positions_in_method_invocation";
    public static final String FORMATTER_PARENTHESES_POSITIONS_IN_SWITCH_STATEMENT = "org.eclipse.jdt.core.formatter.parentheses_positions_in_switch_statement";
    public static final String FORMATTER_PARENTHESES_POSITIONS_IN_TRY_CLAUSE = "org.eclipse.jdt.core.formatter.parentheses_positions_in_try_clause";
    public static final String FORMATTER_PUT_EMPTY_STATEMENT_ON_NEW_LINE = "org.eclipse.jdt.core.formatter.put_empty_statement_on_new_line";
    public static final String FORMATTER_TAB_CHAR = "org.eclipse.jdt.core.formatter.tabulation.char";
    public static final String FORMATTER_TAB_SIZE = "org.eclipse.jdt.core.formatter.tabulation.size";
    public static final String FORMATTER_USE_ON_OFF_TAGS = "org.eclipse.jdt.core.formatter.use_on_off_tags";
    public static final String FORMATTER_USE_TABS_ONLY_FOR_LEADING_INDENTATIONS = "org.eclipse.jdt.core.formatter.use_tabs_only_for_leading_indentations";
    public static final String FORMATTER_WRAP_BEFORE_ADDITIVE_OPERATOR = "org.eclipse.jdt.core.formatter.wrap_before_additive_operator";
    public static final String FORMATTER_WRAP_BEFORE_ASSIGNMENT_OPERATOR = "org.eclipse.jdt.core.formatter.wrap_before_assignment_operator";
    public static final String FORMATTER_WRAP_BEFORE_BINARY_OPERATOR = "org.eclipse.jdt.core.formatter.wrap_before_binary_operator";
    public static final String FORMATTER_WRAP_BEFORE_BITWISE_OPERATOR = "org.eclipse.jdt.core.formatter.wrap_before_bitwise_operator";
    public static final String FORMATTER_WRAP_BEFORE_CONDITIONAL_OPERATOR = "org.eclipse.jdt.core.formatter.wrap_before_conditional_operator";
    public static final String FORMATTER_WRAP_BEFORE_LOGICAL_OPERATOR = "org.eclipse.jdt.core.formatter.wrap_before_logical_operator";
    public static final String FORMATTER_WRAP_BEFORE_MULTIPLICATIVE_OPERATOR = "org.eclipse.jdt.core.formatter.wrap_before_multiplicative_operator";
    public static final String FORMATTER_WRAP_BEFORE_OR_OPERATOR_MULTICATCH = "org.eclipse.jdt.core.formatter.wrap_before_or_operator_multicatch";
    public static final String FORMATTER_WRAP_BEFORE_RELATIONAL_OPERATOR = "org.eclipse.jdt.core.formatter.wrap_before_relational_operator";
    public static final String FORMATTER_WRAP_BEFORE_SHIFT_OPERATOR = "org.eclipse.jdt.core.formatter.wrap_before_shift_operator";
    public static final String FORMATTER_WRAP_BEFORE_STRING_CONCATENATION = "org.eclipse.jdt.core.formatter.wrap_before_string_concatenation";
    public static final String FORMATTER_WRAP_OUTER_EXPRESSIONS_WHEN_NESTED = "org.eclipse.jdt.core.formatter.wrap_outer_expressions_when_nested";
    public static final int INDENT_BY_ONE = 2;
    public static final int INDENT_DEFAULT = 0;
    public static final int INDENT_ON_COLUMN = 1;
    public static final String MIXED = "mixed";
    public static final String NEXT_LINE = "next_line";
    public static final String NEXT_LINE_ON_WRAP = "next_line_on_wrap";
    public static final String NEXT_LINE_SHIFTED = "next_line_shifted";
    public static final String ONE_LINE_ALWAYS = "one_line_always";
    public static final String ONE_LINE_IF_EMPTY = "one_line_if_empty";
    public static final String ONE_LINE_IF_SINGLE_ITEM = "one_line_if_single_item";
    public static final String ONE_LINE_NEVER = "one_line_never";
    public static final String ONE_LINE_PRESERVE = "one_line_preserve";
    public static final String PRESERVE_POSITIONS = "preserve_positions";
    public static final String SEPARATE_LINES = "separate_lines";
    public static final String SEPARATE_LINES_IF_NOT_EMPTY = "separate_lines_if_not_empty";
    public static final String SEPARATE_LINES_IF_WRAPPED = "separate_lines_if_wrapped";
    public static final String TRUE = "true";
    public static final int WRAP_COMPACT = 1;
    public static final int WRAP_COMPACT_FIRST_BREAK = 2;
    public static final int WRAP_NEXT_PER_LINE = 5;
    public static final int WRAP_NEXT_SHIFTED = 4;
    public static final int WRAP_NO_SPLIT = 0;
    public static final int WRAP_ONE_PER_LINE = 3;

    public static String createAlignmentValue(boolean z10, int i10, int i11) {
        int i12 = i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? i10 != 5 ? 0 : 80 : 64 : 48 : 32 : 16;
        if (z10) {
            i12 |= 1;
        }
        if (i11 == 1) {
            i12 |= 2;
        } else if (i11 == 2) {
            i12 |= 4;
        }
        return String.valueOf(i12);
    }

    public static Map getEclipse21Settings() {
        DefaultCodeFormatterOptions defaultSettings = DefaultCodeFormatterOptions.getDefaultSettings();
        defaultSettings.page_width = 80;
        defaultSettings.comment_count_line_length_from_starting_position = false;
        return defaultSettings.getMap();
    }

    public static Map getEclipseDefaultSettings() {
        return DefaultCodeFormatterOptions.getEclipseDefaultSettings().getMap();
    }

    public static boolean getForceWrapping(String str) {
        try {
            return (Integer.parseInt(str) & 1) != 0;
        } catch (NumberFormatException e10) {
            throw new IllegalArgumentException("Alignment value is not an integer: " + str, e10);
        }
    }

    public static int getIndentStyle(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            if ((parseInt & 4) != 0) {
                return 2;
            }
            return (parseInt & 2) != 0 ? 1 : 0;
        } catch (NumberFormatException e10) {
            throw new IllegalArgumentException("Alignment value is not an integer: " + str, e10);
        }
    }

    public static Map getJavaConventionsSettings() {
        return DefaultCodeFormatterOptions.getJavaConventionsSettings().getMap();
    }

    public static int getWrappingStyle(String str) {
        try {
            int parseInt = Integer.parseInt(str) & 112;
            if (parseInt == 16) {
                return 1;
            }
            if (parseInt == 32) {
                return 2;
            }
            if (parseInt == 48) {
                return 3;
            }
            if (parseInt != 64) {
                return parseInt != 80 ? 0 : 5;
            }
            return 4;
        } catch (NumberFormatException e10) {
            throw new IllegalArgumentException("Alignment value is not an integer: " + str, e10);
        }
    }

    public static String setForceWrapping(String str, boolean z10) {
        try {
            int parseInt = Integer.parseInt(str) & (-2);
            if (z10) {
                parseInt |= 1;
            }
            return String.valueOf(parseInt);
        } catch (NumberFormatException e10) {
            throw new IllegalArgumentException("Alignment value is not an integer: " + str, e10);
        }
    }

    public static String setIndentStyle(String str, int i10) {
        if (i10 != 0 && i10 != 1 && i10 != 2) {
            throw new IllegalArgumentException("Unrecognized indent style: " + i10);
        }
        try {
            int parseInt = Integer.parseInt(str) & (-7);
            if (i10 == 1) {
                parseInt |= 2;
            } else if (i10 == 2) {
                parseInt |= 4;
            }
            return String.valueOf(parseInt);
        } catch (NumberFormatException e10) {
            throw new IllegalArgumentException("Alignment value is not an integer: " + str, e10);
        }
    }

    public static String setWrappingStyle(String str, int i10) {
        if (i10 != 0 && i10 != 1 && i10 != 2 && i10 != 3 && i10 != 4 && i10 != 5) {
            throw new IllegalArgumentException("Unrecognized wrapping style: " + str);
        }
        try {
            int parseInt = Integer.parseInt(str) & (-113);
            if (i10 == 1) {
                parseInt |= 16;
            } else if (i10 == 2) {
                parseInt |= 32;
            } else if (i10 == 3) {
                parseInt |= 48;
            } else if (i10 == 4) {
                parseInt |= 64;
            } else if (i10 == 5) {
                parseInt |= 80;
            }
            return String.valueOf(parseInt);
        } catch (NumberFormatException e10) {
            throw new IllegalArgumentException("Alignment value is not an integer: " + str, e10);
        }
    }
}
