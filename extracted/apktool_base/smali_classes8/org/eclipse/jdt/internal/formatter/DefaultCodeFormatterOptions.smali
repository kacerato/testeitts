.class public Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions$Alignment;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISABLING_TAG:[C

.field private static final DEFAULT_ENABLING_TAG:[C

.field private static final KEEP_ON_ONE_LINE_VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIXED:I = 0x4

.field public static final SPACE:I = 0x2

.field public static final TAB:I = 0x1


# instance fields
.field public align_assignment_statements_on_columns:Z

.field public align_fields_grouping_blank_lines:I

.field public align_type_members_on_columns:Z

.field public align_variable_declarations_on_columns:Z

.field public align_with_spaces:Z

.field public alignment_for_additive_operator:I

.field public alignment_for_arguments_in_allocation_expression:I

.field public alignment_for_arguments_in_annotation:I

.field public alignment_for_arguments_in_enum_constant:I

.field public alignment_for_arguments_in_explicit_constructor_call:I

.field public alignment_for_arguments_in_method_invocation:I

.field public alignment_for_arguments_in_qualified_allocation_expression:I

.field public alignment_for_assignment:I

.field public alignment_for_bitwise_operator:I

.field public alignment_for_compact_if:I

.field public alignment_for_compact_loop:I

.field public alignment_for_conditional_expression:I

.field public alignment_for_conditional_expression_chain:I

.field public alignment_for_enum_constants:I

.field public alignment_for_expressions_in_array_initializer:I

.field public alignment_for_expressions_in_for_loop_header:I

.field public alignment_for_logical_operator:I

.field public alignment_for_method_declaration:I

.field public alignment_for_module_statements:I

.field public alignment_for_multiple_fields:I

.field public alignment_for_multiplicative_operator:I

.field public alignment_for_parameterized_type_references:I

.field public alignment_for_parameters_in_constructor_declaration:I

.field public alignment_for_parameters_in_method_declaration:I

.field public alignment_for_relational_operator:I

.field public alignment_for_resources_in_try:I

.field public alignment_for_selector_in_method_invocation:I

.field public alignment_for_shift_operator:I

.field public alignment_for_string_concatenation:I

.field public alignment_for_superclass_in_type_declaration:I

.field public alignment_for_superinterfaces_in_enum_declaration:I

.field public alignment_for_superinterfaces_in_type_declaration:I

.field public alignment_for_throws_clause_in_constructor_declaration:I

.field public alignment_for_throws_clause_in_method_declaration:I

.field public alignment_for_type_arguments:I

.field public alignment_for_type_parameters:I

.field public alignment_for_union_type_in_multicatch:I

.field public blank_lines_after_imports:I

.field public blank_lines_after_package:I

.field public blank_lines_at_beginning_of_method_body:I

.field public blank_lines_before_field:I

.field public blank_lines_before_first_class_body_declaration:I

.field public blank_lines_before_imports:I

.field public blank_lines_before_member_type:I

.field public blank_lines_before_method:I

.field public blank_lines_before_new_chunk:I

.field public blank_lines_before_package:I

.field public blank_lines_between_import_groups:I

.field public blank_lines_between_type_declarations:I

.field public brace_position_for_annotation_type_declaration:Ljava/lang/String;

.field public brace_position_for_anonymous_type_declaration:Ljava/lang/String;

.field public brace_position_for_array_initializer:Ljava/lang/String;

.field public brace_position_for_block:Ljava/lang/String;

.field public brace_position_for_block_in_case:Ljava/lang/String;

.field public brace_position_for_constructor_declaration:Ljava/lang/String;

.field public brace_position_for_enum_constant:Ljava/lang/String;

.field public brace_position_for_enum_declaration:Ljava/lang/String;

.field public brace_position_for_lambda_body:Ljava/lang/String;

.field public brace_position_for_method_declaration:Ljava/lang/String;

.field public brace_position_for_switch:Ljava/lang/String;

.field public brace_position_for_type_declaration:Ljava/lang/String;

.field public comment_align_tags_descriptions_grouped:Z

.field public comment_align_tags_names_descriptions:Z

.field public comment_clear_blank_lines_in_block_comment:Z

.field public comment_clear_blank_lines_in_javadoc_comment:Z

.field public comment_count_line_length_from_starting_position:Z

.field public comment_format_block_comment:Z

.field public comment_format_header:Z

.field public comment_format_html:Z

.field public comment_format_javadoc_comment:Z

.field public comment_format_line_comment:Z

.field public comment_format_line_comment_starting_on_first_column:Z

.field public comment_format_source:Z

.field public comment_indent_parameter_description:Z

.field public comment_indent_root_tags:Z

.field public comment_indent_tag_description:Z

.field public comment_insert_empty_line_before_root_tags:Z

.field public comment_insert_new_line_for_parameter:Z

.field public comment_line_length:I

.field public comment_new_lines_at_block_boundaries:Z

.field public comment_new_lines_at_javadoc_boundaries:Z

.field public comment_preserve_white_space_between_code_and_line_comments:Z

.field public compact_else_if:Z

.field public continuation_indentation:I

.field public continuation_indentation_for_array_initializer:I

.field public disabling_tag:[C

.field public enabling_tag:[C

.field public indent_body_declarations_compare_to_annotation_declaration_header:Z

.field public indent_body_declarations_compare_to_enum_constant_header:Z

.field public indent_body_declarations_compare_to_enum_declaration_header:Z

.field public indent_body_declarations_compare_to_type_header:Z

.field public indent_breaks_compare_to_cases:Z

.field public indent_empty_lines:Z

.field public indent_statements_compare_to_block:Z

.field public indent_statements_compare_to_body:Z

.field public indent_switchstatements_compare_to_cases:Z

.field public indent_switchstatements_compare_to_switch:Z

.field public indentation_size:I

.field public initial_indentation_level:I

.field public insert_new_line_after_annotation_on_enum_constant:Z

.field public insert_new_line_after_annotation_on_field:Z

.field public insert_new_line_after_annotation_on_local_variable:Z

.field public insert_new_line_after_annotation_on_method:Z

.field public insert_new_line_after_annotation_on_package:Z

.field public insert_new_line_after_annotation_on_parameter:Z

.field public insert_new_line_after_annotation_on_type:Z

.field public insert_new_line_after_label:Z

.field public insert_new_line_after_opening_brace_in_array_initializer:Z

.field public insert_new_line_after_type_annotation:Z

.field public insert_new_line_at_end_of_file_if_missing:Z

.field public insert_new_line_before_catch_in_try_statement:Z

.field public insert_new_line_before_closing_brace_in_array_initializer:Z

.field public insert_new_line_before_else_in_if_statement:Z

.field public insert_new_line_before_finally_in_try_statement:Z

.field public insert_new_line_before_while_in_do_statement:Z

.field public insert_space_after_additive_operator:Z

.field public insert_space_after_and_in_type_parameter:Z

.field public insert_space_after_arrow_in_switch_case:Z

.field public insert_space_after_arrow_in_switch_default:Z

.field public insert_space_after_assignment_operator:Z

.field public insert_space_after_at_in_annotation:Z

.field public insert_space_after_at_in_annotation_type_declaration:Z

.field public insert_space_after_bitwise_operator:Z

.field public insert_space_after_closing_angle_bracket_in_type_arguments:Z

.field public insert_space_after_closing_angle_bracket_in_type_parameters:Z

.field public insert_space_after_closing_brace_in_block:Z

.field public insert_space_after_closing_paren_in_cast:Z

.field public insert_space_after_colon_in_assert:Z

.field public insert_space_after_colon_in_case:Z

.field public insert_space_after_colon_in_conditional:Z

.field public insert_space_after_colon_in_for:Z

.field public insert_space_after_colon_in_labeled_statement:Z

.field public insert_space_after_comma_in_allocation_expression:Z

.field public insert_space_after_comma_in_annotation:Z

.field public insert_space_after_comma_in_array_initializer:Z

.field public insert_space_after_comma_in_constructor_declaration_parameters:Z

.field public insert_space_after_comma_in_constructor_declaration_throws:Z

.field public insert_space_after_comma_in_enum_constant_arguments:Z

.field public insert_space_after_comma_in_enum_declarations:Z

.field public insert_space_after_comma_in_explicit_constructor_call_arguments:Z

.field public insert_space_after_comma_in_for_increments:Z

.field public insert_space_after_comma_in_for_inits:Z

.field public insert_space_after_comma_in_method_declaration_parameters:Z

.field public insert_space_after_comma_in_method_declaration_throws:Z

.field public insert_space_after_comma_in_method_invocation_arguments:Z

.field public insert_space_after_comma_in_multiple_field_declarations:Z

.field public insert_space_after_comma_in_multiple_local_declarations:Z

.field public insert_space_after_comma_in_parameterized_type_reference:Z

.field public insert_space_after_comma_in_superinterfaces:Z

.field public insert_space_after_comma_in_switch_case_expressions:Z

.field public insert_space_after_comma_in_type_arguments:Z

.field public insert_space_after_comma_in_type_parameters:Z

.field public insert_space_after_ellipsis:Z

.field public insert_space_after_lambda_arrow:Z

.field public insert_space_after_logical_operator:Z

.field public insert_space_after_multiplicative_operator:Z

.field public insert_space_after_opening_angle_bracket_in_parameterized_type_reference:Z

.field public insert_space_after_opening_angle_bracket_in_type_arguments:Z

.field public insert_space_after_opening_angle_bracket_in_type_parameters:Z

.field public insert_space_after_opening_brace_in_array_initializer:Z

.field public insert_space_after_opening_bracket_in_array_allocation_expression:Z

.field public insert_space_after_opening_bracket_in_array_reference:Z

.field public insert_space_after_opening_paren_in_annotation:Z

.field public insert_space_after_opening_paren_in_cast:Z

.field public insert_space_after_opening_paren_in_catch:Z

.field public insert_space_after_opening_paren_in_constructor_declaration:Z

.field public insert_space_after_opening_paren_in_enum_constant:Z

.field public insert_space_after_opening_paren_in_for:Z

.field public insert_space_after_opening_paren_in_if:Z

.field public insert_space_after_opening_paren_in_method_declaration:Z

.field public insert_space_after_opening_paren_in_method_invocation:Z

.field public insert_space_after_opening_paren_in_parenthesized_expression:Z

.field public insert_space_after_opening_paren_in_switch:Z

.field public insert_space_after_opening_paren_in_synchronized:Z

.field public insert_space_after_opening_paren_in_try:Z

.field public insert_space_after_opening_paren_in_while:Z

.field public insert_space_after_postfix_operator:Z

.field public insert_space_after_prefix_operator:Z

.field public insert_space_after_question_in_conditional:Z

.field public insert_space_after_question_in_wilcard:Z

.field public insert_space_after_relational_operator:Z

.field public insert_space_after_semicolon_in_for:Z

.field public insert_space_after_semicolon_in_try_resources:Z

.field public insert_space_after_shift_operator:Z

.field public insert_space_after_string_concatenation:Z

.field public insert_space_after_unary_operator:Z

.field public insert_space_before_additive_operator:Z

.field public insert_space_before_and_in_type_parameter:Z

.field public insert_space_before_arrow_in_switch_case:Z

.field public insert_space_before_arrow_in_switch_default:Z

.field public insert_space_before_assignment_operator:Z

.field public insert_space_before_at_in_annotation_type_declaration:Z

.field public insert_space_before_bitwise_operator:Z

.field public insert_space_before_closing_angle_bracket_in_parameterized_type_reference:Z

.field public insert_space_before_closing_angle_bracket_in_type_arguments:Z

.field public insert_space_before_closing_angle_bracket_in_type_parameters:Z

.field public insert_space_before_closing_brace_in_array_initializer:Z

.field public insert_space_before_closing_bracket_in_array_allocation_expression:Z

.field public insert_space_before_closing_bracket_in_array_reference:Z

.field public insert_space_before_closing_paren_in_annotation:Z

.field public insert_space_before_closing_paren_in_cast:Z

.field public insert_space_before_closing_paren_in_catch:Z

.field public insert_space_before_closing_paren_in_constructor_declaration:Z

.field public insert_space_before_closing_paren_in_enum_constant:Z

.field public insert_space_before_closing_paren_in_for:Z

.field public insert_space_before_closing_paren_in_if:Z

.field public insert_space_before_closing_paren_in_method_declaration:Z

.field public insert_space_before_closing_paren_in_method_invocation:Z

.field public insert_space_before_closing_paren_in_parenthesized_expression:Z

.field public insert_space_before_closing_paren_in_switch:Z

.field public insert_space_before_closing_paren_in_synchronized:Z

.field public insert_space_before_closing_paren_in_try:Z

.field public insert_space_before_closing_paren_in_while:Z

.field public insert_space_before_colon_in_assert:Z

.field public insert_space_before_colon_in_case:Z

.field public insert_space_before_colon_in_conditional:Z

.field public insert_space_before_colon_in_default:Z

.field public insert_space_before_colon_in_for:Z

.field public insert_space_before_colon_in_labeled_statement:Z

.field public insert_space_before_comma_in_allocation_expression:Z

.field public insert_space_before_comma_in_annotation:Z

.field public insert_space_before_comma_in_array_initializer:Z

.field public insert_space_before_comma_in_constructor_declaration_parameters:Z

.field public insert_space_before_comma_in_constructor_declaration_throws:Z

.field public insert_space_before_comma_in_enum_constant_arguments:Z

.field public insert_space_before_comma_in_enum_declarations:Z

.field public insert_space_before_comma_in_explicit_constructor_call_arguments:Z

.field public insert_space_before_comma_in_for_increments:Z

.field public insert_space_before_comma_in_for_inits:Z

.field public insert_space_before_comma_in_method_declaration_parameters:Z

.field public insert_space_before_comma_in_method_declaration_throws:Z

.field public insert_space_before_comma_in_method_invocation_arguments:Z

.field public insert_space_before_comma_in_multiple_field_declarations:Z

.field public insert_space_before_comma_in_multiple_local_declarations:Z

.field public insert_space_before_comma_in_parameterized_type_reference:Z

.field public insert_space_before_comma_in_superinterfaces:Z

.field public insert_space_before_comma_in_switch_case_expressions:Z

.field public insert_space_before_comma_in_type_arguments:Z

.field public insert_space_before_comma_in_type_parameters:Z

.field public insert_space_before_ellipsis:Z

.field public insert_space_before_lambda_arrow:Z

.field public insert_space_before_logical_operator:Z

.field public insert_space_before_multiplicative_operator:Z

.field public insert_space_before_opening_angle_bracket_in_parameterized_type_reference:Z

.field public insert_space_before_opening_angle_bracket_in_type_arguments:Z

.field public insert_space_before_opening_angle_bracket_in_type_parameters:Z

.field public insert_space_before_opening_brace_in_annotation_type_declaration:Z

.field public insert_space_before_opening_brace_in_anonymous_type_declaration:Z

.field public insert_space_before_opening_brace_in_array_initializer:Z

.field public insert_space_before_opening_brace_in_block:Z

.field public insert_space_before_opening_brace_in_constructor_declaration:Z

.field public insert_space_before_opening_brace_in_enum_constant:Z

.field public insert_space_before_opening_brace_in_enum_declaration:Z

.field public insert_space_before_opening_brace_in_method_declaration:Z

.field public insert_space_before_opening_brace_in_switch:Z

.field public insert_space_before_opening_brace_in_type_declaration:Z

.field public insert_space_before_opening_bracket_in_array_allocation_expression:Z

.field public insert_space_before_opening_bracket_in_array_reference:Z

.field public insert_space_before_opening_bracket_in_array_type_reference:Z

.field public insert_space_before_opening_paren_in_annotation:Z

.field public insert_space_before_opening_paren_in_annotation_type_member_declaration:Z

.field public insert_space_before_opening_paren_in_catch:Z

.field public insert_space_before_opening_paren_in_constructor_declaration:Z

.field public insert_space_before_opening_paren_in_enum_constant:Z

.field public insert_space_before_opening_paren_in_for:Z

.field public insert_space_before_opening_paren_in_if:Z

.field public insert_space_before_opening_paren_in_method_declaration:Z

.field public insert_space_before_opening_paren_in_method_invocation:Z

.field public insert_space_before_opening_paren_in_parenthesized_expression:Z

.field public insert_space_before_opening_paren_in_switch:Z

.field public insert_space_before_opening_paren_in_synchronized:Z

.field public insert_space_before_opening_paren_in_try:Z

.field public insert_space_before_opening_paren_in_while:Z

.field public insert_space_before_parenthesized_expression_in_return:Z

.field public insert_space_before_parenthesized_expression_in_throw:Z

.field public insert_space_before_postfix_operator:Z

.field public insert_space_before_prefix_operator:Z

.field public insert_space_before_question_in_conditional:Z

.field public insert_space_before_question_in_wilcard:Z

.field public insert_space_before_relational_operator:Z

.field public insert_space_before_semicolon:Z

.field public insert_space_before_semicolon_in_for:Z

.field public insert_space_before_semicolon_in_try_resources:Z

.field public insert_space_before_shift_operator:Z

.field public insert_space_before_string_concatenation:Z

.field public insert_space_before_unary_operator:Z

.field public insert_space_between_brackets_in_array_type_reference:Z

.field public insert_space_between_empty_braces_in_array_initializer:Z

.field public insert_space_between_empty_brackets_in_array_allocation_expression:Z

.field public insert_space_between_empty_parens_in_annotation_type_member_declaration:Z

.field public insert_space_between_empty_parens_in_constructor_declaration:Z

.field public insert_space_between_empty_parens_in_enum_constant:Z

.field public insert_space_between_empty_parens_in_method_declaration:Z

.field public insert_space_between_empty_parens_in_method_invocation:Z

.field public join_lines_in_comments:Z

.field public join_wrapped_lines:Z

.field public keep_annotation_declaration_on_one_line:Ljava/lang/String;

.field public keep_anonymous_type_declaration_on_one_line:Ljava/lang/String;

.field public keep_code_block_on_one_line:Ljava/lang/String;

.field public keep_else_statement_on_same_line:Z

.field public keep_empty_array_initializer_on_one_line:Z

.field public keep_enum_constant_declaration_on_one_line:Ljava/lang/String;

.field public keep_enum_declaration_on_one_line:Ljava/lang/String;

.field public keep_guardian_clause_on_one_line:Z

.field public keep_if_then_body_block_on_one_line:Ljava/lang/String;

.field public keep_lambda_body_block_on_one_line:Ljava/lang/String;

.field public keep_loop_body_block_on_one_line:Ljava/lang/String;

.field public keep_method_body_on_one_line:Ljava/lang/String;

.field public keep_simple_do_while_body_on_same_line:Z

.field public keep_simple_for_body_on_same_line:Z

.field public keep_simple_getter_setter_on_one_line:Z

.field public keep_simple_if_on_one_line:Z

.field public keep_simple_while_body_on_same_line:Z

.field public keep_then_statement_on_same_line:Z

.field public keep_type_declaration_on_one_line:Ljava/lang/String;

.field public line_separator:Ljava/lang/String;

.field public never_indent_block_comments_on_first_column:Z

.field public never_indent_line_comments_on_first_column:Z

.field public number_of_empty_lines_to_preserve:I

.field public page_width:I

.field public parenthesis_positions_in_annotation:Ljava/lang/String;

.field public parenthesis_positions_in_catch_clause:Ljava/lang/String;

.field public parenthesis_positions_in_enum_constant_declaration:Ljava/lang/String;

.field public parenthesis_positions_in_for_statement:Ljava/lang/String;

.field public parenthesis_positions_in_if_while_statement:Ljava/lang/String;

.field public parenthesis_positions_in_lambda_declaration:Ljava/lang/String;

.field public parenthesis_positions_in_method_declaration:Ljava/lang/String;

.field public parenthesis_positions_in_method_invocation:Ljava/lang/String;

.field public parenthesis_positions_in_switch_statement:Ljava/lang/String;

.field public parenthesis_positions_in_try_clause:Ljava/lang/String;

.field public put_empty_statement_on_new_line:Z

.field public tab_char:I

.field public tab_size:I

.field public use_tabs_only_for_leading_indentations:Z

.field public use_tags:Z

.field public wrap_before_additive_operator:Z

.field public wrap_before_assignment_operator:Z

.field public wrap_before_bitwise_operator:Z

.field public wrap_before_conditional_operator:Z

.field public wrap_before_logical_operator:Z

.field public wrap_before_multiplicative_operator:Z

.field public wrap_before_or_operator_multicatch:Z

.field public wrap_before_relational_operator:Z

.field public wrap_before_shift_operator:Z

.field public wrap_before_string_concatenation:Z

.field public wrap_outer_expressions_when_nested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "@formatter:off"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->DEFAULT_DISABLING_TAG:[C

    const-string v0, "@formatter:on"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->DEFAULT_ENABLING_TAG:[C

    const-string v0, "one_line_always"

    const-string v1, "one_line_preserve"

    const-string v2, "one_line_never"

    const-string v3, "one_line_if_empty"

    const-string v4, "one_line_if_single_item"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->KEEP_ON_ONE_LINE_VALUES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setDefaultSettings()V

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->set(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic A(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$13(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic A0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$41(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic B(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$75(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic B0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$80(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic C(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/HashMap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$55(Ljava/util/HashMap;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic C0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/HashMap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$51(Ljava/util/HashMap;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic D(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$82(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic D0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$68(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic E(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$11(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic E0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$29(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic F(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$28(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic F0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$81(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic G(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$3(I)V

    return-void
.end method

.method public static synthetic H(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$1(I)V

    return-void
.end method

.method public static synthetic I(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$16(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic J(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$67(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic K(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$25(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic L(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$2(I)V

    return-void
.end method

.method public static synthetic M(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$30(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic N(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$26(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic O(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$18(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic P(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$46(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic Q(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$10(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic R(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$22(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic S(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$0(I)V

    return-void
.end method

.method public static synthetic T(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$9(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic U(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$32(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic V(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$40(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic W(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$36(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic X(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$6(I)V

    return-void
.end method

.method public static synthetic Y(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$74(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic Z(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$47(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/HashMap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$59(Ljava/util/HashMap;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic a0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$60(I)V

    return-void
.end method

.method public static synthetic b(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$65(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$7(I)V

    return-void
.end method

.method public static synthetic c(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$62(I)V

    return-void
.end method

.method public static synthetic c0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$78(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic d(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/HashMap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$53(Ljava/util/HashMap;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic d0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$64(I)V

    return-void
.end method

.method public static synthetic e(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$33(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic e0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$43(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic f(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$61(I)V

    return-void
.end method

.method public static synthetic f0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$76(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic g(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$63(I)V

    return-void
.end method

.method public static synthetic g0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$72(Ljava/lang/Boolean;)V

    return-void
.end method

.method private getAlignment(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getDefaultSettings()Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;-><init>()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setDefaultSettings()V

    return-object v0
.end method

.method public static getEclipseDefaultSettings()Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;-><init>()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setEclipseDefaultSettings()V

    return-object v0
.end method

.method public static getJavaConventionsSettings()Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;-><init>()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setJavaConventionsSettings()V

    return-object v0
.end method

.method public static synthetic h(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$31(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic h0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$14(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$69(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic i0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$45(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic j(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$4(I)V

    return-void
.end method

.method public static synthetic j0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$70(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic k(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$83(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic k0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/HashMap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$50(Ljava/util/HashMap;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic l(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/HashMap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$52(Ljava/util/HashMap;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic l0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$20(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$0(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_multiplicative_operator:I

    return-void
.end method

.method private synthetic lambda$1(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_additive_operator:I

    return-void
.end method

.method private synthetic lambda$10(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_anonymous_type_declaration_on_one_line:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$11(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_if_then_body_block_on_one_line:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$12(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_loop_body_block_on_one_line:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$13(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_lambda_body_block_on_one_line:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$14(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_code_block_on_one_line:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$15(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_enum_constant_declaration_on_one_line:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$16(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_enum_declaration_on_one_line:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$17(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_method_body_on_one_line:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$18(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_type_declaration_on_one_line:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$19(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_getter_setter_on_one_line:Z

    return-void
.end method

.method private synthetic lambda$2(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_string_concatenation:I

    return-void
.end method

.method private synthetic lambda$20(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_arrow_in_switch_case:Z

    return-void
.end method

.method private synthetic lambda$21(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_arrow_in_switch_default:Z

    return-void
.end method

.method private synthetic lambda$22(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_multiplicative_operator:Z

    return-void
.end method

.method private synthetic lambda$23(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_additive_operator:Z

    return-void
.end method

.method private synthetic lambda$24(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_string_concatenation:Z

    return-void
.end method

.method private synthetic lambda$25(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_shift_operator:Z

    return-void
.end method

.method private synthetic lambda$26(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_relational_operator:Z

    return-void
.end method

.method private synthetic lambda$27(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_bitwise_operator:Z

    return-void
.end method

.method private synthetic lambda$28(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_logical_operator:Z

    return-void
.end method

.method private synthetic lambda$29(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_switch_case_expressions:Z

    return-void
.end method

.method private synthetic lambda$3(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_shift_operator:I

    return-void
.end method

.method private synthetic lambda$30(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_arrow_in_switch_case:Z

    return-void
.end method

.method private synthetic lambda$31(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_arrow_in_switch_default:Z

    return-void
.end method

.method private synthetic lambda$32(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_multiplicative_operator:Z

    return-void
.end method

.method private synthetic lambda$33(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_additive_operator:Z

    return-void
.end method

.method private synthetic lambda$34(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_string_concatenation:Z

    return-void
.end method

.method private synthetic lambda$35(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_shift_operator:Z

    return-void
.end method

.method private synthetic lambda$36(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_relational_operator:Z

    return-void
.end method

.method private synthetic lambda$37(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_bitwise_operator:Z

    return-void
.end method

.method private synthetic lambda$38(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_logical_operator:Z

    return-void
.end method

.method private synthetic lambda$39(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_switch_case_expressions:Z

    return-void
.end method

.method private synthetic lambda$4(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_relational_operator:I

    return-void
.end method

.method private synthetic lambda$40(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_multiplicative_operator:Z

    return-void
.end method

.method private synthetic lambda$41(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_additive_operator:Z

    return-void
.end method

.method private synthetic lambda$42(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_string_concatenation:Z

    return-void
.end method

.method private synthetic lambda$43(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_shift_operator:Z

    return-void
.end method

.method private synthetic lambda$44(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_relational_operator:Z

    return-void
.end method

.method private synthetic lambda$45(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_bitwise_operator:Z

    return-void
.end method

.method private synthetic lambda$46(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_logical_operator:Z

    return-void
.end method

.method private synthetic lambda$47(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_or_operator_multicatch:Z

    return-void
.end method

.method private synthetic lambda$48(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_conditional_operator:Z

    return-void
.end method

.method private synthetic lambda$49(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_assignment_operator:Z

    return-void
.end method

.method private synthetic lambda$5(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_bitwise_operator:I

    return-void
.end method

.method private synthetic lambda$50(Ljava/util/HashMap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_annotation_declaration_on_one_line:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$51(Ljava/util/HashMap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_anonymous_type_declaration_on_one_line:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$52(Ljava/util/HashMap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_if_then_body_block_on_one_line:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$53(Ljava/util/HashMap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_loop_body_block_on_one_line:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$54(Ljava/util/HashMap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_lambda_body_block_on_one_line:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$55(Ljava/util/HashMap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_code_block_on_one_line:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$56(Ljava/util/HashMap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_enum_constant_declaration_on_one_line:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$57(Ljava/util/HashMap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_enum_declaration_on_one_line:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$58(Ljava/util/HashMap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_method_body_on_one_line:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$59(Ljava/util/HashMap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_type_declaration_on_one_line:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$6(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_logical_operator:I

    return-void
.end method

.method private synthetic lambda$60(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_multiplicative_operator:I

    return-void
.end method

.method private synthetic lambda$61(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_additive_operator:I

    return-void
.end method

.method private synthetic lambda$62(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_string_concatenation:I

    return-void
.end method

.method private synthetic lambda$63(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_bitwise_operator:I

    return-void
.end method

.method private synthetic lambda$64(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_logical_operator:I

    return-void
.end method

.method private synthetic lambda$65(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_multiplicative_operator:Z

    return-void
.end method

.method private synthetic lambda$66(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_additive_operator:Z

    return-void
.end method

.method private synthetic lambda$67(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_string_concatenation:Z

    return-void
.end method

.method private synthetic lambda$68(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_bitwise_operator:Z

    return-void
.end method

.method private synthetic lambda$69(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_logical_operator:Z

    return-void
.end method

.method private synthetic lambda$7(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_conditional_expression_chain:I

    return-void
.end method

.method private synthetic lambda$70(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_multiplicative_operator:Z

    return-void
.end method

.method private synthetic lambda$71(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_additive_operator:Z

    return-void
.end method

.method private synthetic lambda$72(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_string_concatenation:Z

    return-void
.end method

.method private synthetic lambda$73(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_shift_operator:Z

    return-void
.end method

.method private synthetic lambda$74(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_relational_operator:Z

    return-void
.end method

.method private synthetic lambda$75(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_bitwise_operator:Z

    return-void
.end method

.method private synthetic lambda$76(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_logical_operator:Z

    return-void
.end method

.method private synthetic lambda$77(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_multiplicative_operator:Z

    return-void
.end method

.method private synthetic lambda$78(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_additive_operator:Z

    return-void
.end method

.method private synthetic lambda$79(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_string_concatenation:Z

    return-void
.end method

.method private synthetic lambda$8(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_indent_tag_description:Z

    return-void
.end method

.method private synthetic lambda$80(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_shift_operator:Z

    return-void
.end method

.method private synthetic lambda$81(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_relational_operator:Z

    return-void
.end method

.method private synthetic lambda$82(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_bitwise_operator:Z

    return-void
.end method

.method private synthetic lambda$83(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_logical_operator:Z

    return-void
.end method

.method private synthetic lambda$9(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_annotation_declaration_on_one_line:Ljava/lang/String;

    return-void
.end method

.method public static synthetic m(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$21(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic m0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$24(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic n(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$44(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic n0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$38(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic o(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$71(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic o0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$73(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic p(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$19(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic p0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$79(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic q(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/HashMap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$56(Ljava/util/HashMap;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic q0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/HashMap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$57(Ljava/util/HashMap;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic r(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$12(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic r0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$42(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic s(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$5(I)V

    return-void
.end method

.method public static synthetic s0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$17(Ljava/lang/String;)V

    return-void
.end method

.method private setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setDeprecatedOptions(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "org.eclipse.jdt.core.formatter.comment.clear_blank_lines"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "true"

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_clear_blank_lines_in_javadoc_comment:Z

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_clear_blank_lines_in_block_comment:Z

    goto :goto_0

    :cond_0
    const-string v0, "org.eclipse.jdt.core.formatter.comment.clear_blank_lines_in_javadoc_comment"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_clear_blank_lines_in_javadoc_comment:Z

    :cond_1
    const-string v0, "org.eclipse.jdt.core.formatter.comment.clear_blank_lines_in_block_comment"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_clear_blank_lines_in_block_comment:Z

    :cond_2
    :goto_0
    const-string v0, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_member"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_type"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_enum_constant"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_field"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_method"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_package"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_parameter"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_local_variable"

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "insert"

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    if-eqz v2, :cond_4

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_type:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_enum_constant:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_field:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_method:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_package:Z

    if-eqz v8, :cond_3

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_parameter:Z

    :cond_3
    if-eqz v9, :cond_c

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_local_variable:Z

    goto :goto_1

    :cond_4
    if-nez v8, :cond_c

    if-nez v9, :cond_c

    if-eqz v0, :cond_c

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_type:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_enum_constant:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_field:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_method:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_package:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_parameter:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_local_variable:Z

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_type:Z

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_enum_constant:Z

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_field:Z

    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_method:Z

    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_package:Z

    :cond_a
    if-eqz v8, :cond_b

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_parameter:Z

    :cond_b
    if-eqz v9, :cond_c

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_local_variable:Z

    :cond_c
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "one_line_never"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "one_line_if_empty"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.formatter.keep_annotation_declaration_on_one_line"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_d

    new-instance v2, Lorg/eclipse/jdt/internal/formatter/a;

    invoke-direct {v2, p0, v0}, Lorg/eclipse/jdt/internal/formatter/a;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/HashMap;)V

    const-string v3, "org.eclipse.jdt.core.formatter.insert_new_line_in_empty_annotation_declaration"

    invoke-direct {p0, p1, v3, v10, v2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_d
    const-string v2, "org.eclipse.jdt.core.formatter.keep_anonymous_type_declaration_on_one_line"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_e

    new-instance v2, Lorg/eclipse/jdt/internal/formatter/c;

    invoke-direct {v2, p0, v0}, Lorg/eclipse/jdt/internal/formatter/c;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/HashMap;)V

    const-string v3, "org.eclipse.jdt.core.formatter.insert_new_line_in_empty_anonymous_type_declaration"

    invoke-direct {p0, p1, v3, v10, v2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_e
    const-string v2, "org.eclipse.jdt.core.formatter.keep_if_then_body_block_on_one_line"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "org.eclipse.jdt.core.formatter.insert_new_line_in_empty_block"

    if-nez v2, :cond_f

    new-instance v2, Lorg/eclipse/jdt/internal/formatter/o;

    invoke-direct {v2, p0, v0}, Lorg/eclipse/jdt/internal/formatter/o;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/HashMap;)V

    invoke-direct {p0, p1, v3, v10, v2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_f
    const-string v2, "org.eclipse.jdt.core.formatter.keep_loop_body_block_on_one_line"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_10

    new-instance v2, Lorg/eclipse/jdt/internal/formatter/t;

    invoke-direct {v2, p0, v0}, Lorg/eclipse/jdt/internal/formatter/t;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/HashMap;)V

    invoke-direct {p0, p1, v3, v10, v2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_10
    const-string v2, "org.eclipse.jdt.core.formatter.keep_lambda_body_block_on_one_line"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_11

    new-instance v2, Lorg/eclipse/jdt/internal/formatter/u;

    invoke-direct {v2, p0, v0}, Lorg/eclipse/jdt/internal/formatter/u;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/HashMap;)V

    invoke-direct {p0, p1, v3, v10, v2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_11
    const-string v2, "org.eclipse.jdt.core.formatter.keep_code_block_on_one_line"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_12

    new-instance v2, Lorg/eclipse/jdt/internal/formatter/v;

    invoke-direct {v2, p0, v0}, Lorg/eclipse/jdt/internal/formatter/v;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/HashMap;)V

    invoke-direct {p0, p1, v3, v10, v2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_12
    const-string v2, "org.eclipse.jdt.core.formatter.keep_enum_constant_declaration_on_one_line"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_13

    new-instance v2, Lorg/eclipse/jdt/internal/formatter/x;

    invoke-direct {v2, p0, v0}, Lorg/eclipse/jdt/internal/formatter/x;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/HashMap;)V

    const-string v3, "org.eclipse.jdt.core.formatter.insert_new_line_in_empty_enum_constant"

    invoke-direct {p0, p1, v3, v10, v2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_13
    const-string v2, "org.eclipse.jdt.core.formatter.keep_enum_declaration_on_one_line"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_14

    new-instance v2, Lorg/eclipse/jdt/internal/formatter/y;

    invoke-direct {v2, p0, v0}, Lorg/eclipse/jdt/internal/formatter/y;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/HashMap;)V

    const-string v3, "org.eclipse.jdt.core.formatter.insert_new_line_in_empty_enum_declaration"

    invoke-direct {p0, p1, v3, v10, v2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_14
    const-string v2, "org.eclipse.jdt.core.formatter.keep_method_body_on_one_line"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_15

    new-instance v2, Lorg/eclipse/jdt/internal/formatter/z;

    invoke-direct {v2, p0, v0}, Lorg/eclipse/jdt/internal/formatter/z;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/HashMap;)V

    const-string v3, "org.eclipse.jdt.core.formatter.insert_new_line_in_empty_method_body"

    invoke-direct {p0, p1, v3, v10, v2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_15
    const-string v2, "org.eclipse.jdt.core.formatter.keep_type_declaration_on_one_line"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_16

    new-instance v2, Lorg/eclipse/jdt/internal/formatter/A;

    invoke-direct {v2, p0, v0}, Lorg/eclipse/jdt/internal/formatter/A;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/HashMap;)V

    const-string v0, "org.eclipse.jdt.core.formatter.insert_new_line_in_empty_type_declaration"

    invoke-direct {p0, p1, v0, v10, v2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_16
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_multiplicative_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_binary_expression"

    if-nez v0, :cond_17

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/l;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/l;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v2, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setInt(Ljava/util/Map;Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    :cond_17
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_additive_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_18

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/w;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/w;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v2, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setInt(Ljava/util/Map;Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    :cond_18
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_string_concatenation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/H;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/H;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v2, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setInt(Ljava/util/Map;Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    :cond_19
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_bitwise_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1a

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/T;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/T;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v2, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setInt(Ljava/util/Map;Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    :cond_1a
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_logical_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1b

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/e0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/e0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v2, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setInt(Ljava/util/Map;Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    :cond_1b
    const-string v0, "org.eclipse.jdt.core.formatter.wrap_before_multiplicative_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "org.eclipse.jdt.core.formatter.wrap_before_binary_operator"

    if-nez v0, :cond_1c

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/p0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/p0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_1c
    const-string v0, "org.eclipse.jdt.core.formatter.wrap_before_additive_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1d

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/A0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/A0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_1d
    const-string v0, "org.eclipse.jdt.core.formatter.wrap_before_string_concatenation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1e

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/F0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/F0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_1e
    const-string v0, "org.eclipse.jdt.core.formatter.wrap_before_bitwise_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1f

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/G0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/G0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_1f
    const-string v0, "org.eclipse.jdt.core.formatter.wrap_before_logical_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_20

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/b;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/b;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_20
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_multiplicative_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "org.eclipse.jdt.core.formatter.insert_space_before_binary_operator"

    if-nez v0, :cond_21

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/d;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/d;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v1, v10, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_21
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_additive_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_22

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/e;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/e;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v1, v10, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_22
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_string_concatenation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_23

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/f;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/f;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v1, v10, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_23
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_shift_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_24

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/g;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/g;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v1, v10, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_24
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_relational_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_25

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/h;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/h;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v1, v10, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_25
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_bitwise_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_26

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/i;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/i;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v1, v10, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_26
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_logical_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_27

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/j;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/j;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v1, v10, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_27
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_multiplicative_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "org.eclipse.jdt.core.formatter.insert_space_after_binary_operator"

    if-nez v0, :cond_28

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/k;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/k;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v1, v10, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_28
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_additive_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_29

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/m;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/m;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v1, v10, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_29
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_string_concatenation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2a

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/n;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/n;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v1, v10, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_2a
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_shift_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2b

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/p;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/p;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v1, v10, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_2b
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_relational_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2c

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/q;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/q;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v1, v10, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_2c
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_bitwise_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2d

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/r;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/r;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v1, v10, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_2d
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_logical_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2e

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/s;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/s;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-direct {p0, p1, v1, v10, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_2e
    return-void
.end method

.method private setInt(Ljava/util/Map;Ljava/lang/String;Ljava/util/function/IntConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/IntConsumer;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Ljava/util/function/IntConsumer;->accept(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected integer for setting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", got: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_0
    :goto_0
    return-void
.end method

.method private setString(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Unrecognized value for setting "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic t(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$35(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic t0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/HashMap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$58(Ljava/util/HashMap;Ljava/lang/Boolean;)V

    return-void
.end method

.method private toInt(Ljava/lang/Object;I)I
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    return p2
.end method

.method private toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public static synthetic u(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$39(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic u0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/HashMap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$54(Ljava/util/HashMap;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic v(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$23(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic v0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$49(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic w(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$77(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic w0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$34(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic x(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$27(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic x0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$15(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic y(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$48(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic y0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$8(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic z(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$37(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic z0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->lambda$66(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public getMap()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_allocation_expression:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_arguments_in_allocation_expression"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_annotation:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_arguments_in_annotation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_enum_constant:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_arguments_in_enum_constant"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_explicit_constructor_call:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_arguments_in_explicit_constructor_call"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_method_invocation:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_arguments_in_method_invocation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_qualified_allocation_expression:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_arguments_in_qualified_allocation_expression"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_assignment:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_assignment"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_multiplicative_operator:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_multiplicative_operator"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_additive_operator:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_additive_operator"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_string_concatenation:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_string_concatenation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_shift_operator:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_shift_operator"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_relational_operator:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_relational_operator"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_bitwise_operator:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_bitwise_operator"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_logical_operator:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_logical_operator"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_compact_if:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_compact_if"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_compact_loop:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_compact_loops"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_conditional_expression:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_conditional_expression"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_conditional_expression_chain:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_conditional_expression_chain"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_enum_constants:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_enum_constants"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_expressions_in_array_initializer:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_expressions_in_array_initializer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_expressions_in_for_loop_header:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_expressions_in_for_loop_header"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_method_declaration:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_method_declaration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_module_statements:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_module_statements"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_multiple_fields:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_multiple_fields"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_parameterized_type_references:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_parameterized_type_references"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_parameters_in_constructor_declaration:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_parameters_in_constructor_declaration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_parameters_in_method_declaration:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_parameters_in_method_declaration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_resources_in_try:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_resources_in_try"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_selector_in_method_invocation:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_selector_in_method_invocation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_superclass_in_type_declaration:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_superclass_in_type_declaration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_superinterfaces_in_enum_declaration:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_superinterfaces_in_enum_declaration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_superinterfaces_in_type_declaration:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_superinterfaces_in_type_declaration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_throws_clause_in_constructor_declaration:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_throws_clause_in_constructor_declaration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_throws_clause_in_method_declaration:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_throws_clause_in_method_declaration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_type_arguments:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_type_arguments"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_type_parameters:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_type_parameters"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_union_type_in_multicatch:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getAlignment(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_union_type_in_multicatch"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_type_members_on_columns:Z

    const-string v2, "false"

    const-string v3, "true"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v4, "org.eclipse.jdt.core.formatter.align_type_members_on_columns"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_variable_declarations_on_columns:Z

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string v4, "org.eclipse.jdt.core.formatter.align_variable_declarations_on_columns"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_assignment_statements_on_columns:Z

    if-eqz v1, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    const-string v4, "org.eclipse.jdt.core.formatter.align_assignment_statements_on_columns"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_fields_grouping_blank_lines:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "org.eclipse.jdt.core.formatter.align_fields_grouping_blank_lines"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_with_spaces:Z

    if-eqz v1, :cond_3

    move-object v1, v3

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    const-string v4, "org.eclipse.jdt.core.formatter.align_with_spaces"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.brace_position_for_annotation_type_declaration"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_annotation_type_declaration:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.brace_position_for_anonymous_type_declaration"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_anonymous_type_declaration:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.brace_position_for_array_initializer"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_array_initializer:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.brace_position_for_block"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_block:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.brace_position_for_block_in_case"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_block_in_case:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.brace_position_for_constructor_declaration"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_constructor_declaration:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.brace_position_for_enum_constant"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_enum_constant:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.brace_position_for_enum_declaration"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_enum_declaration:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.brace_position_for_method_declaration"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_method_declaration:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.brace_position_for_type_declaration"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_type_declaration:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.brace_position_for_lambda_body"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_lambda_body:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.brace_position_for_switch"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_switch:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.parentheses_positions_in_method_delcaration"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_method_declaration:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.parentheses_positions_in_method_invocation"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_method_invocation:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.parentheses_positions_in_enum_constant_declaration"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_enum_constant_declaration:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.parentheses_positions_in_if_while_statement"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_if_while_statement:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.parentheses_positions_in_for_statment"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_for_statement:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.parentheses_positions_in_switch_statement"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_switch_statement:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.parentheses_positions_in_try_clause"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_try_clause:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.parentheses_positions_in_catch_clause"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_catch_clause:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.parentheses_positions_in_annotation"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_annotation:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.parentheses_positions_in_lambda_declaration"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_lambda_declaration:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_clear_blank_lines_in_block_comment:Z

    if-eqz v1, :cond_4

    move-object v1, v3

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    const-string v4, "org.eclipse.jdt.core.formatter.comment.clear_blank_lines_in_block_comment"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_clear_blank_lines_in_javadoc_comment:Z

    if-eqz v1, :cond_5

    move-object v1, v3

    goto :goto_5

    :cond_5
    move-object v1, v2

    :goto_5
    const-string v4, "org.eclipse.jdt.core.formatter.comment.clear_blank_lines_in_javadoc_comment"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_new_lines_at_block_boundaries:Z

    if-eqz v1, :cond_6

    move-object v1, v3

    goto :goto_6

    :cond_6
    move-object v1, v2

    :goto_6
    const-string v4, "org.eclipse.jdt.core.formatter.comment.new_lines_at_block_boundaries"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_new_lines_at_javadoc_boundaries:Z

    if-eqz v1, :cond_7

    move-object v1, v3

    goto :goto_7

    :cond_7
    move-object v1, v2

    :goto_7
    const-string v4, "org.eclipse.jdt.core.formatter.comment.new_lines_at_javadoc_boundaries"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_block_comment:Z

    if-eqz v1, :cond_8

    move-object v1, v3

    goto :goto_8

    :cond_8
    move-object v1, v2

    :goto_8
    const-string v4, "org.eclipse.jdt.core.formatter.comment.format_block_comments"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_header:Z

    if-eqz v1, :cond_9

    move-object v1, v3

    goto :goto_9

    :cond_9
    move-object v1, v2

    :goto_9
    const-string v4, "org.eclipse.jdt.core.formatter.comment.format_header"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_html:Z

    if-eqz v1, :cond_a

    move-object v1, v3

    goto :goto_a

    :cond_a
    move-object v1, v2

    :goto_a
    const-string v4, "org.eclipse.jdt.core.formatter.comment.format_html"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_javadoc_comment:Z

    if-eqz v1, :cond_b

    move-object v1, v3

    goto :goto_b

    :cond_b
    move-object v1, v2

    :goto_b
    const-string v4, "org.eclipse.jdt.core.formatter.comment.format_javadoc_comments"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_line_comment:Z

    if-eqz v1, :cond_c

    move-object v1, v3

    goto :goto_c

    :cond_c
    move-object v1, v2

    :goto_c
    const-string v4, "org.eclipse.jdt.core.formatter.comment.format_line_comments"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_line_comment_starting_on_first_column:Z

    if-eqz v1, :cond_d

    move-object v1, v3

    goto :goto_d

    :cond_d
    move-object v1, v2

    :goto_d
    const-string v4, "org.eclipse.jdt.core.formatter.format_line_comment_starting_on_first_column"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_source:Z

    if-eqz v1, :cond_e

    move-object v1, v3

    goto :goto_e

    :cond_e
    move-object v1, v2

    :goto_e
    const-string v4, "org.eclipse.jdt.core.formatter.comment.format_source_code"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_indent_parameter_description:Z

    if-eqz v1, :cond_f

    move-object v1, v3

    goto :goto_f

    :cond_f
    move-object v1, v2

    :goto_f
    const-string v4, "org.eclipse.jdt.core.formatter.comment.indent_parameter_description"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_indent_tag_description:Z

    if-eqz v1, :cond_10

    move-object v1, v3

    goto :goto_10

    :cond_10
    move-object v1, v2

    :goto_10
    const-string v4, "org.eclipse.jdt.core.formatter.comment.indent_tag_description"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_indent_root_tags:Z

    if-eqz v1, :cond_11

    move-object v1, v3

    goto :goto_11

    :cond_11
    move-object v1, v2

    :goto_11
    const-string v4, "org.eclipse.jdt.core.formatter.comment.indent_root_tags"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_align_tags_names_descriptions:Z

    if-eqz v1, :cond_12

    move-object v1, v3

    goto :goto_12

    :cond_12
    move-object v1, v2

    :goto_12
    const-string v4, "org.eclipse.jdt.core.formatter.comment.align_tags_names_descriptions"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_align_tags_descriptions_grouped:Z

    if-eqz v1, :cond_13

    move-object v1, v3

    goto :goto_13

    :cond_13
    move-object v1, v2

    :goto_13
    const-string v4, "org.eclipse.jdt.core.formatter.comment.align_tags_descriptions_grouped"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_insert_empty_line_before_root_tags:Z

    const-string v4, "do not insert"

    const-string v5, "insert"

    if-eqz v1, :cond_14

    move-object v1, v5

    goto :goto_14

    :cond_14
    move-object v1, v4

    :goto_14
    const-string v6, "org.eclipse.jdt.core.formatter.comment.insert_new_line_before_root_tags"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_insert_new_line_for_parameter:Z

    if-eqz v1, :cond_15

    move-object v1, v5

    goto :goto_15

    :cond_15
    move-object v1, v4

    :goto_15
    const-string v6, "org.eclipse.jdt.core.formatter.comment.insert_new_line_for_parameter"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_preserve_white_space_between_code_and_line_comments:Z

    if-eqz v1, :cond_16

    move-object v1, v3

    goto :goto_16

    :cond_16
    move-object v1, v2

    :goto_16
    const-string v6, "org.eclipse.jdt.core.formatter.comment.preserve_white_space_between_code_and_line_comments"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_line_length:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "org.eclipse.jdt.core.formatter.comment.line_length"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_count_line_length_from_starting_position:Z

    if-eqz v1, :cond_17

    move-object v1, v3

    goto :goto_17

    :cond_17
    move-object v1, v2

    :goto_17
    const-string v6, "org.eclipse.jdt.core.formatter.comment.count_line_length_from_starting_position"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->continuation_indentation:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "org.eclipse.jdt.core.formatter.continuation_indentation"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->continuation_indentation_for_array_initializer:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "org.eclipse.jdt.core.formatter.continuation_indentation_for_array_initializer"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_after_imports:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "org.eclipse.jdt.core.formatter.blank_lines_after_imports"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_after_package:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "org.eclipse.jdt.core.formatter.blank_lines_after_package"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_field:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "org.eclipse.jdt.core.formatter.blank_lines_before_field"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_first_class_body_declaration:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "org.eclipse.jdt.core.formatter.blank_lines_before_first_class_body_declaration"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_imports:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "org.eclipse.jdt.core.formatter.blank_lines_before_imports"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_member_type:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "org.eclipse.jdt.core.formatter.blank_lines_before_member_type"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_method:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "org.eclipse.jdt.core.formatter.blank_lines_before_method"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_new_chunk:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "org.eclipse.jdt.core.formatter.blank_lines_before_new_chunk"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_package:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "org.eclipse.jdt.core.formatter.blank_lines_before_package"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_between_import_groups:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "org.eclipse.jdt.core.formatter.blank_lines_between_import_groups"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_between_type_declarations:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "org.eclipse.jdt.core.formatter.blank_lines_between_type_declarations"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_at_beginning_of_method_body:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "org.eclipse.jdt.core.formatter.number_of_blank_lines_at_beginning_of_method_body"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_statements_compare_to_block:Z

    if-eqz v1, :cond_18

    move-object v1, v3

    goto :goto_18

    :cond_18
    move-object v1, v2

    :goto_18
    const-string v6, "org.eclipse.jdt.core.formatter.indent_statements_compare_to_block"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_statements_compare_to_body:Z

    if-eqz v1, :cond_19

    move-object v1, v3

    goto :goto_19

    :cond_19
    move-object v1, v2

    :goto_19
    const-string v6, "org.eclipse.jdt.core.formatter.indent_statements_compare_to_body"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_annotation_declaration_header:Z

    if-eqz v1, :cond_1a

    move-object v1, v3

    goto :goto_1a

    :cond_1a
    move-object v1, v2

    :goto_1a
    const-string v6, "org.eclipse.jdt.core.formatter.indent_body_declarations_compare_to_annotation_declaration_header"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_enum_constant_header:Z

    if-eqz v1, :cond_1b

    move-object v1, v3

    goto :goto_1b

    :cond_1b
    move-object v1, v2

    :goto_1b
    const-string v6, "org.eclipse.jdt.core.formatter.indent_body_declarations_compare_to_enum_constant_header"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_enum_declaration_header:Z

    if-eqz v1, :cond_1c

    move-object v1, v3

    goto :goto_1c

    :cond_1c
    move-object v1, v2

    :goto_1c
    const-string v6, "org.eclipse.jdt.core.formatter.indent_body_declarations_compare_to_enum_declaration_header"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_type_header:Z

    if-eqz v1, :cond_1d

    move-object v1, v3

    goto :goto_1d

    :cond_1d
    move-object v1, v2

    :goto_1d
    const-string v6, "org.eclipse.jdt.core.formatter.indent_body_declarations_compare_to_type_header"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_breaks_compare_to_cases:Z

    if-eqz v1, :cond_1e

    move-object v1, v3

    goto :goto_1e

    :cond_1e
    move-object v1, v2

    :goto_1e
    const-string v6, "org.eclipse.jdt.core.formatter.indent_breaks_compare_to_cases"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_empty_lines:Z

    if-eqz v1, :cond_1f

    move-object v1, v3

    goto :goto_1f

    :cond_1f
    move-object v1, v2

    :goto_1f
    const-string v6, "org.eclipse.jdt.core.formatter.indent_empty_lines"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_switchstatements_compare_to_cases:Z

    if-eqz v1, :cond_20

    move-object v1, v3

    goto :goto_20

    :cond_20
    move-object v1, v2

    :goto_20
    const-string v6, "org.eclipse.jdt.core.formatter.indent_switchstatements_compare_to_cases"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_switchstatements_compare_to_switch:Z

    if-eqz v1, :cond_21

    move-object v1, v3

    goto :goto_21

    :cond_21
    move-object v1, v2

    :goto_21
    const-string v6, "org.eclipse.jdt.core.formatter.indent_switchstatements_compare_to_switch"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_char:I

    const/4 v6, 0x4

    if-ne v1, v6, :cond_22

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indentation_size:I

    goto :goto_22

    :cond_22
    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_size:I

    :goto_22
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "org.eclipse.jdt.core.formatter.indentation.size"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_type:Z

    if-eqz v1, :cond_23

    move-object v1, v5

    goto :goto_23

    :cond_23
    move-object v1, v4

    :goto_23
    const-string v7, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_type"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_type_annotation:Z

    if-eqz v1, :cond_24

    move-object v1, v5

    goto :goto_24

    :cond_24
    move-object v1, v4

    :goto_24
    const-string v7, "org.eclipse.jdt.core.formatter.insert_new_line_after_type_annotation"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_enum_constant:Z

    if-eqz v1, :cond_25

    move-object v1, v5

    goto :goto_25

    :cond_25
    move-object v1, v4

    :goto_25
    const-string v7, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_enum_constant"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_field:Z

    if-eqz v1, :cond_26

    move-object v1, v5

    goto :goto_26

    :cond_26
    move-object v1, v4

    :goto_26
    const-string v7, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_field"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_method:Z

    if-eqz v1, :cond_27

    move-object v1, v5

    goto :goto_27

    :cond_27
    move-object v1, v4

    :goto_27
    const-string v7, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_method"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_package:Z

    if-eqz v1, :cond_28

    move-object v1, v5

    goto :goto_28

    :cond_28
    move-object v1, v4

    :goto_28
    const-string v7, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_package"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_parameter:Z

    if-eqz v1, :cond_29

    move-object v1, v5

    goto :goto_29

    :cond_29
    move-object v1, v4

    :goto_29
    const-string v7, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_parameter"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_local_variable:Z

    if-eqz v1, :cond_2a

    move-object v1, v5

    goto :goto_2a

    :cond_2a
    move-object v1, v4

    :goto_2a
    const-string v7, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_local_variable"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_opening_brace_in_array_initializer:Z

    if-eqz v1, :cond_2b

    move-object v1, v5

    goto :goto_2b

    :cond_2b
    move-object v1, v4

    :goto_2b
    const-string v7, "org.eclipse.jdt.core.formatter.insert_new_line_after_opening_brace_in_array_initializer"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_at_end_of_file_if_missing:Z

    if-eqz v1, :cond_2c

    move-object v1, v5

    goto :goto_2c

    :cond_2c
    move-object v1, v4

    :goto_2c
    const-string v7, "org.eclipse.jdt.core.formatter.insert_new_line_at_end_of_file_if_missing"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_catch_in_try_statement:Z

    if-eqz v1, :cond_2d

    move-object v1, v5

    goto :goto_2d

    :cond_2d
    move-object v1, v4

    :goto_2d
    const-string v7, "org.eclipse.jdt.core.formatter.insert_new_line_before_catch_in_try_statement"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_closing_brace_in_array_initializer:Z

    if-eqz v1, :cond_2e

    move-object v1, v5

    goto :goto_2e

    :cond_2e
    move-object v1, v4

    :goto_2e
    const-string v7, "org.eclipse.jdt.core.formatter.insert_new_line_before_closing_brace_in_array_initializer"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_else_in_if_statement:Z

    if-eqz v1, :cond_2f

    move-object v1, v5

    goto :goto_2f

    :cond_2f
    move-object v1, v4

    :goto_2f
    const-string v7, "org.eclipse.jdt.core.formatter.insert_new_line_before_else_in_if_statement"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_finally_in_try_statement:Z

    if-eqz v1, :cond_30

    move-object v1, v5

    goto :goto_30

    :cond_30
    move-object v1, v4

    :goto_30
    const-string v7, "org.eclipse.jdt.core.formatter.insert_new_line_before_finally_in_try_statement"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_while_in_do_statement:Z

    if-eqz v1, :cond_31

    move-object v1, v5

    goto :goto_31

    :cond_31
    move-object v1, v4

    :goto_31
    const-string v7, "org.eclipse.jdt.core.formatter.insert_new_line_before_while_in_do_statement"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.keep_annotation_declaration_on_one_line"

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_annotation_declaration_on_one_line:Ljava/lang/String;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.keep_anonymous_type_declaration_on_one_line"

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_anonymous_type_declaration_on_one_line:Ljava/lang/String;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.keep_if_then_body_block_on_one_line"

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_if_then_body_block_on_one_line:Ljava/lang/String;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.keep_lambda_body_block_on_one_line"

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_lambda_body_block_on_one_line:Ljava/lang/String;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.keep_loop_body_block_on_one_line"

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_loop_body_block_on_one_line:Ljava/lang/String;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.keep_code_block_on_one_line"

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_code_block_on_one_line:Ljava/lang/String;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.keep_enum_constant_declaration_on_one_line"

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_enum_constant_declaration_on_one_line:Ljava/lang/String;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.keep_enum_declaration_on_one_line"

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_enum_declaration_on_one_line:Ljava/lang/String;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.keep_method_body_on_one_line"

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_method_body_on_one_line:Ljava/lang/String;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.keep_type_declaration_on_one_line"

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_type_declaration_on_one_line:Ljava/lang/String;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_getter_setter_on_one_line:Z

    if-eqz v1, :cond_32

    move-object v1, v3

    goto :goto_32

    :cond_32
    move-object v1, v2

    :goto_32
    const-string v7, "org.eclipse.jdt.core.formatter.keep_simple_getter_setter_on_one_line"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_label:Z

    if-eqz v1, :cond_33

    move-object v1, v5

    goto :goto_33

    :cond_33
    move-object v1, v4

    :goto_33
    const-string v7, "org.eclipse.jdt.core.formatter.insert_new_line_after_label"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_and_in_type_parameter:Z

    if-eqz v1, :cond_34

    move-object v1, v5

    goto :goto_34

    :cond_34
    move-object v1, v4

    :goto_34
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_and_in_type_parameter"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_arrow_in_switch_case:Z

    if-eqz v1, :cond_35

    move-object v1, v5

    goto :goto_35

    :cond_35
    move-object v1, v4

    :goto_35
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_arrow_in_switch_case"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_arrow_in_switch_default:Z

    if-eqz v1, :cond_36

    move-object v1, v5

    goto :goto_36

    :cond_36
    move-object v1, v4

    :goto_36
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_arrow_in_switch_default"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_assignment_operator:Z

    if-eqz v1, :cond_37

    move-object v1, v5

    goto :goto_37

    :cond_37
    move-object v1, v4

    :goto_37
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_assignment_operator"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_at_in_annotation:Z

    if-eqz v1, :cond_38

    move-object v1, v5

    goto :goto_38

    :cond_38
    move-object v1, v4

    :goto_38
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_at_in_annotation"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_at_in_annotation_type_declaration:Z

    if-eqz v1, :cond_39

    move-object v1, v5

    goto :goto_39

    :cond_39
    move-object v1, v4

    :goto_39
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_at_in_annotation_type_declaration"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_multiplicative_operator:Z

    if-eqz v1, :cond_3a

    move-object v1, v5

    goto :goto_3a

    :cond_3a
    move-object v1, v4

    :goto_3a
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_multiplicative_operator"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_additive_operator:Z

    if-eqz v1, :cond_3b

    move-object v1, v5

    goto :goto_3b

    :cond_3b
    move-object v1, v4

    :goto_3b
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_additive_operator"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_string_concatenation:Z

    if-eqz v1, :cond_3c

    move-object v1, v5

    goto :goto_3c

    :cond_3c
    move-object v1, v4

    :goto_3c
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_string_concatenation"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_shift_operator:Z

    if-eqz v1, :cond_3d

    move-object v1, v5

    goto :goto_3d

    :cond_3d
    move-object v1, v4

    :goto_3d
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_shift_operator"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_relational_operator:Z

    if-eqz v1, :cond_3e

    move-object v1, v5

    goto :goto_3e

    :cond_3e
    move-object v1, v4

    :goto_3e
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_relational_operator"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_bitwise_operator:Z

    if-eqz v1, :cond_3f

    move-object v1, v5

    goto :goto_3f

    :cond_3f
    move-object v1, v4

    :goto_3f
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_bitwise_operator"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_logical_operator:Z

    if-eqz v1, :cond_40

    move-object v1, v5

    goto :goto_40

    :cond_40
    move-object v1, v4

    :goto_40
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_logical_operator"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_closing_angle_bracket_in_type_arguments:Z

    if-eqz v1, :cond_41

    move-object v1, v5

    goto :goto_41

    :cond_41
    move-object v1, v4

    :goto_41
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_closing_angle_bracket_in_type_arguments"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_closing_angle_bracket_in_type_parameters:Z

    if-eqz v1, :cond_42

    move-object v1, v5

    goto :goto_42

    :cond_42
    move-object v1, v4

    :goto_42
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_closing_angle_bracket_in_type_parameters"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_closing_paren_in_cast:Z

    if-eqz v1, :cond_43

    move-object v1, v5

    goto :goto_43

    :cond_43
    move-object v1, v4

    :goto_43
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_closing_paren_in_cast"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_closing_brace_in_block:Z

    if-eqz v1, :cond_44

    move-object v1, v5

    goto :goto_44

    :cond_44
    move-object v1, v4

    :goto_44
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_closing_brace_in_block"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_assert:Z

    if-eqz v1, :cond_45

    move-object v1, v5

    goto :goto_45

    :cond_45
    move-object v1, v4

    :goto_45
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_colon_in_assert"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_case:Z

    if-eqz v1, :cond_46

    move-object v1, v5

    goto :goto_46

    :cond_46
    move-object v1, v4

    :goto_46
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_colon_in_case"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_conditional:Z

    if-eqz v1, :cond_47

    move-object v1, v5

    goto :goto_47

    :cond_47
    move-object v1, v4

    :goto_47
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_colon_in_conditional"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_for:Z

    if-eqz v1, :cond_48

    move-object v1, v5

    goto :goto_48

    :cond_48
    move-object v1, v4

    :goto_48
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_colon_in_for"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_labeled_statement:Z

    if-eqz v1, :cond_49

    move-object v1, v5

    goto :goto_49

    :cond_49
    move-object v1, v4

    :goto_49
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_colon_in_labeled_statement"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_allocation_expression:Z

    if-eqz v1, :cond_4a

    move-object v1, v5

    goto :goto_4a

    :cond_4a
    move-object v1, v4

    :goto_4a
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_allocation_expression"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_annotation:Z

    if-eqz v1, :cond_4b

    move-object v1, v5

    goto :goto_4b

    :cond_4b
    move-object v1, v4

    :goto_4b
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_annotation"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_array_initializer:Z

    if-eqz v1, :cond_4c

    move-object v1, v5

    goto :goto_4c

    :cond_4c
    move-object v1, v4

    :goto_4c
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_array_initializer"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_constructor_declaration_parameters:Z

    if-eqz v1, :cond_4d

    move-object v1, v5

    goto :goto_4d

    :cond_4d
    move-object v1, v4

    :goto_4d
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_constructor_declaration_parameters"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_constructor_declaration_throws:Z

    if-eqz v1, :cond_4e

    move-object v1, v5

    goto :goto_4e

    :cond_4e
    move-object v1, v4

    :goto_4e
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_constructor_declaration_throws"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_enum_constant_arguments:Z

    if-eqz v1, :cond_4f

    move-object v1, v5

    goto :goto_4f

    :cond_4f
    move-object v1, v4

    :goto_4f
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_enum_constant_arguments"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_enum_declarations:Z

    if-eqz v1, :cond_50

    move-object v1, v5

    goto :goto_50

    :cond_50
    move-object v1, v4

    :goto_50
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_enum_declarations"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_explicit_constructor_call_arguments:Z

    if-eqz v1, :cond_51

    move-object v1, v5

    goto :goto_51

    :cond_51
    move-object v1, v4

    :goto_51
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_explicitconstructorcall_arguments"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_for_increments:Z

    if-eqz v1, :cond_52

    move-object v1, v5

    goto :goto_52

    :cond_52
    move-object v1, v4

    :goto_52
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_for_increments"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_for_inits:Z

    if-eqz v1, :cond_53

    move-object v1, v5

    goto :goto_53

    :cond_53
    move-object v1, v4

    :goto_53
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_for_inits"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_method_invocation_arguments:Z

    if-eqz v1, :cond_54

    move-object v1, v5

    goto :goto_54

    :cond_54
    move-object v1, v4

    :goto_54
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_method_invocation_arguments"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_method_declaration_parameters:Z

    if-eqz v1, :cond_55

    move-object v1, v5

    goto :goto_55

    :cond_55
    move-object v1, v4

    :goto_55
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_method_declaration_parameters"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_method_declaration_throws:Z

    if-eqz v1, :cond_56

    move-object v1, v5

    goto :goto_56

    :cond_56
    move-object v1, v4

    :goto_56
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_method_declaration_throws"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_multiple_field_declarations:Z

    if-eqz v1, :cond_57

    move-object v1, v5

    goto :goto_57

    :cond_57
    move-object v1, v4

    :goto_57
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_multiple_field_declarations"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_multiple_local_declarations:Z

    if-eqz v1, :cond_58

    move-object v1, v5

    goto :goto_58

    :cond_58
    move-object v1, v4

    :goto_58
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_multiple_local_declarations"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_parameterized_type_reference:Z

    if-eqz v1, :cond_59

    move-object v1, v5

    goto :goto_59

    :cond_59
    move-object v1, v4

    :goto_59
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_parameterized_type_reference"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_superinterfaces:Z

    if-eqz v1, :cond_5a

    move-object v1, v5

    goto :goto_5a

    :cond_5a
    move-object v1, v4

    :goto_5a
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_superinterfaces"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_switch_case_expressions:Z

    if-eqz v1, :cond_5b

    move-object v1, v5

    goto :goto_5b

    :cond_5b
    move-object v1, v4

    :goto_5b
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_switch_case_expressions"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_type_arguments:Z

    if-eqz v1, :cond_5c

    move-object v1, v5

    goto :goto_5c

    :cond_5c
    move-object v1, v4

    :goto_5c
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_type_arguments"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_type_parameters:Z

    if-eqz v1, :cond_5d

    move-object v1, v5

    goto :goto_5d

    :cond_5d
    move-object v1, v4

    :goto_5d
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_type_parameters"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_bracket_in_array_allocation_expression:Z

    if-eqz v1, :cond_5e

    move-object v1, v5

    goto :goto_5e

    :cond_5e
    move-object v1, v4

    :goto_5e
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_opening_bracket_in_array_allocation_expression"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_ellipsis:Z

    if-eqz v1, :cond_5f

    move-object v1, v5

    goto :goto_5f

    :cond_5f
    move-object v1, v4

    :goto_5f
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_ellipsis"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_lambda_arrow:Z

    if-eqz v1, :cond_60

    move-object v1, v5

    goto :goto_60

    :cond_60
    move-object v1, v4

    :goto_60
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_lambda_arrow"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_angle_bracket_in_parameterized_type_reference:Z

    if-eqz v1, :cond_61

    move-object v1, v5

    goto :goto_61

    :cond_61
    move-object v1, v4

    :goto_61
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_opening_angle_bracket_in_parameterized_type_reference"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_angle_bracket_in_type_arguments:Z

    if-eqz v1, :cond_62

    move-object v1, v5

    goto :goto_62

    :cond_62
    move-object v1, v4

    :goto_62
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_opening_angle_bracket_in_type_arguments"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_angle_bracket_in_type_parameters:Z

    if-eqz v1, :cond_63

    move-object v1, v5

    goto :goto_63

    :cond_63
    move-object v1, v4

    :goto_63
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_opening_angle_bracket_in_type_parameters"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_bracket_in_array_reference:Z

    if-eqz v1, :cond_64

    move-object v1, v5

    goto :goto_64

    :cond_64
    move-object v1, v4

    :goto_64
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_opening_bracket_in_array_reference"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_brace_in_array_initializer:Z

    if-eqz v1, :cond_65

    move-object v1, v5

    goto :goto_65

    :cond_65
    move-object v1, v4

    :goto_65
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_opening_brace_in_array_initializer"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_annotation:Z

    if-eqz v1, :cond_66

    move-object v1, v5

    goto :goto_66

    :cond_66
    move-object v1, v4

    :goto_66
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_annotation"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_cast:Z

    if-eqz v1, :cond_67

    move-object v1, v5

    goto :goto_67

    :cond_67
    move-object v1, v4

    :goto_67
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_cast"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_catch:Z

    if-eqz v1, :cond_68

    move-object v1, v5

    goto :goto_68

    :cond_68
    move-object v1, v4

    :goto_68
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_catch"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_constructor_declaration:Z

    if-eqz v1, :cond_69

    move-object v1, v5

    goto :goto_69

    :cond_69
    move-object v1, v4

    :goto_69
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_constructor_declaration"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_enum_constant:Z

    if-eqz v1, :cond_6a

    move-object v1, v5

    goto :goto_6a

    :cond_6a
    move-object v1, v4

    :goto_6a
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_enum_constant"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_for:Z

    if-eqz v1, :cond_6b

    move-object v1, v5

    goto :goto_6b

    :cond_6b
    move-object v1, v4

    :goto_6b
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_for"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_if:Z

    if-eqz v1, :cond_6c

    move-object v1, v5

    goto :goto_6c

    :cond_6c
    move-object v1, v4

    :goto_6c
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_if"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_method_declaration:Z

    if-eqz v1, :cond_6d

    move-object v1, v5

    goto :goto_6d

    :cond_6d
    move-object v1, v4

    :goto_6d
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_method_declaration"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_method_invocation:Z

    if-eqz v1, :cond_6e

    move-object v1, v5

    goto :goto_6e

    :cond_6e
    move-object v1, v4

    :goto_6e
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_method_invocation"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_parenthesized_expression:Z

    if-eqz v1, :cond_6f

    move-object v1, v5

    goto :goto_6f

    :cond_6f
    move-object v1, v4

    :goto_6f
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_parenthesized_expression"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_switch:Z

    if-eqz v1, :cond_70

    move-object v1, v5

    goto :goto_70

    :cond_70
    move-object v1, v4

    :goto_70
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_switch"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_synchronized:Z

    if-eqz v1, :cond_71

    move-object v1, v5

    goto :goto_71

    :cond_71
    move-object v1, v4

    :goto_71
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_synchronized"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_try:Z

    if-eqz v1, :cond_72

    move-object v1, v5

    goto :goto_72

    :cond_72
    move-object v1, v4

    :goto_72
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_try"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_while:Z

    if-eqz v1, :cond_73

    move-object v1, v5

    goto :goto_73

    :cond_73
    move-object v1, v4

    :goto_73
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_while"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_postfix_operator:Z

    if-eqz v1, :cond_74

    move-object v1, v5

    goto :goto_74

    :cond_74
    move-object v1, v4

    :goto_74
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_postfix_operator"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_prefix_operator:Z

    if-eqz v1, :cond_75

    move-object v1, v5

    goto :goto_75

    :cond_75
    move-object v1, v4

    :goto_75
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_prefix_operator"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_question_in_conditional:Z

    if-eqz v1, :cond_76

    move-object v1, v5

    goto :goto_76

    :cond_76
    move-object v1, v4

    :goto_76
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_question_in_conditional"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_question_in_wilcard:Z

    if-eqz v1, :cond_77

    move-object v1, v5

    goto :goto_77

    :cond_77
    move-object v1, v4

    :goto_77
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_question_in_wildcard"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_semicolon_in_for:Z

    if-eqz v1, :cond_78

    move-object v1, v5

    goto :goto_78

    :cond_78
    move-object v1, v4

    :goto_78
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_semicolon_in_for"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_semicolon_in_try_resources:Z

    if-eqz v1, :cond_79

    move-object v1, v5

    goto :goto_79

    :cond_79
    move-object v1, v4

    :goto_79
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_semicolon_in_try_resources"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_unary_operator:Z

    if-eqz v1, :cond_7a

    move-object v1, v5

    goto :goto_7a

    :cond_7a
    move-object v1, v4

    :goto_7a
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_unary_operator"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_and_in_type_parameter:Z

    if-eqz v1, :cond_7b

    move-object v1, v5

    goto :goto_7b

    :cond_7b
    move-object v1, v4

    :goto_7b
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_and_in_type_parameter"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_arrow_in_switch_case:Z

    if-eqz v1, :cond_7c

    move-object v1, v5

    goto :goto_7c

    :cond_7c
    move-object v1, v4

    :goto_7c
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_arrow_in_switch_case"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_arrow_in_switch_default:Z

    if-eqz v1, :cond_7d

    move-object v1, v5

    goto :goto_7d

    :cond_7d
    move-object v1, v4

    :goto_7d
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_arrow_in_switch_default"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_at_in_annotation_type_declaration:Z

    if-eqz v1, :cond_7e

    move-object v1, v5

    goto :goto_7e

    :cond_7e
    move-object v1, v4

    :goto_7e
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_at_in_annotation_type_declaration"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_assignment_operator:Z

    if-eqz v1, :cond_7f

    move-object v1, v5

    goto :goto_7f

    :cond_7f
    move-object v1, v4

    :goto_7f
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_assignment_operator"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_multiplicative_operator:Z

    if-eqz v1, :cond_80

    move-object v1, v5

    goto :goto_80

    :cond_80
    move-object v1, v4

    :goto_80
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_multiplicative_operator"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_additive_operator:Z

    if-eqz v1, :cond_81

    move-object v1, v5

    goto :goto_81

    :cond_81
    move-object v1, v4

    :goto_81
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_additive_operator"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_string_concatenation:Z

    if-eqz v1, :cond_82

    move-object v1, v5

    goto :goto_82

    :cond_82
    move-object v1, v4

    :goto_82
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_string_concatenation"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_shift_operator:Z

    if-eqz v1, :cond_83

    move-object v1, v5

    goto :goto_83

    :cond_83
    move-object v1, v4

    :goto_83
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_shift_operator"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_relational_operator:Z

    if-eqz v1, :cond_84

    move-object v1, v5

    goto :goto_84

    :cond_84
    move-object v1, v4

    :goto_84
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_relational_operator"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_bitwise_operator:Z

    if-eqz v1, :cond_85

    move-object v1, v5

    goto :goto_85

    :cond_85
    move-object v1, v4

    :goto_85
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_bitwise_operator"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_logical_operator:Z

    if-eqz v1, :cond_86

    move-object v1, v5

    goto :goto_86

    :cond_86
    move-object v1, v4

    :goto_86
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_logical_operator"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_angle_bracket_in_parameterized_type_reference:Z

    if-eqz v1, :cond_87

    move-object v1, v5

    goto :goto_87

    :cond_87
    move-object v1, v4

    :goto_87
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_closing_angle_bracket_in_parameterized_type_reference"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_angle_bracket_in_type_arguments:Z

    if-eqz v1, :cond_88

    move-object v1, v5

    goto :goto_88

    :cond_88
    move-object v1, v4

    :goto_88
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_closing_angle_bracket_in_type_arguments"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_angle_bracket_in_type_parameters:Z

    if-eqz v1, :cond_89

    move-object v1, v5

    goto :goto_89

    :cond_89
    move-object v1, v4

    :goto_89
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_closing_angle_bracket_in_type_parameters"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_brace_in_array_initializer:Z

    if-eqz v1, :cond_8a

    move-object v1, v5

    goto :goto_8a

    :cond_8a
    move-object v1, v4

    :goto_8a
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_closing_brace_in_array_initializer"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_bracket_in_array_allocation_expression:Z

    if-eqz v1, :cond_8b

    move-object v1, v5

    goto :goto_8b

    :cond_8b
    move-object v1, v4

    :goto_8b
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_closing_bracket_in_array_allocation_expression"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_bracket_in_array_reference:Z

    if-eqz v1, :cond_8c

    move-object v1, v5

    goto :goto_8c

    :cond_8c
    move-object v1, v4

    :goto_8c
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_closing_bracket_in_array_reference"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_annotation:Z

    if-eqz v1, :cond_8d

    move-object v1, v5

    goto :goto_8d

    :cond_8d
    move-object v1, v4

    :goto_8d
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_annotation"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_cast:Z

    if-eqz v1, :cond_8e

    move-object v1, v5

    goto :goto_8e

    :cond_8e
    move-object v1, v4

    :goto_8e
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_cast"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_catch:Z

    if-eqz v1, :cond_8f

    move-object v1, v5

    goto :goto_8f

    :cond_8f
    move-object v1, v4

    :goto_8f
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_catch"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_constructor_declaration:Z

    if-eqz v1, :cond_90

    move-object v1, v5

    goto :goto_90

    :cond_90
    move-object v1, v4

    :goto_90
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_constructor_declaration"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_enum_constant:Z

    if-eqz v1, :cond_91

    move-object v1, v5

    goto :goto_91

    :cond_91
    move-object v1, v4

    :goto_91
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_enum_constant"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_for:Z

    if-eqz v1, :cond_92

    move-object v1, v5

    goto :goto_92

    :cond_92
    move-object v1, v4

    :goto_92
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_for"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_if:Z

    if-eqz v1, :cond_93

    move-object v1, v5

    goto :goto_93

    :cond_93
    move-object v1, v4

    :goto_93
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_if"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_method_declaration:Z

    if-eqz v1, :cond_94

    move-object v1, v5

    goto :goto_94

    :cond_94
    move-object v1, v4

    :goto_94
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_method_declaration"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_method_invocation:Z

    if-eqz v1, :cond_95

    move-object v1, v5

    goto :goto_95

    :cond_95
    move-object v1, v4

    :goto_95
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_method_invocation"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_parenthesized_expression:Z

    if-eqz v1, :cond_96

    move-object v1, v5

    goto :goto_96

    :cond_96
    move-object v1, v4

    :goto_96
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_parenthesized_expression"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_switch:Z

    if-eqz v1, :cond_97

    move-object v1, v5

    goto :goto_97

    :cond_97
    move-object v1, v4

    :goto_97
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_switch"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_synchronized:Z

    if-eqz v1, :cond_98

    move-object v1, v5

    goto :goto_98

    :cond_98
    move-object v1, v4

    :goto_98
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_synchronized"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_try:Z

    if-eqz v1, :cond_99

    move-object v1, v5

    goto :goto_99

    :cond_99
    move-object v1, v4

    :goto_99
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_try"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_while:Z

    if-eqz v1, :cond_9a

    move-object v1, v5

    goto :goto_9a

    :cond_9a
    move-object v1, v4

    :goto_9a
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_while"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_assert:Z

    if-eqz v1, :cond_9b

    move-object v1, v5

    goto :goto_9b

    :cond_9b
    move-object v1, v4

    :goto_9b
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_colon_in_assert"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_case:Z

    if-eqz v1, :cond_9c

    move-object v1, v5

    goto :goto_9c

    :cond_9c
    move-object v1, v4

    :goto_9c
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_colon_in_case"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_conditional:Z

    if-eqz v1, :cond_9d

    move-object v1, v5

    goto :goto_9d

    :cond_9d
    move-object v1, v4

    :goto_9d
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_colon_in_conditional"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_default:Z

    if-eqz v1, :cond_9e

    move-object v1, v5

    goto :goto_9e

    :cond_9e
    move-object v1, v4

    :goto_9e
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_colon_in_default"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_for:Z

    if-eqz v1, :cond_9f

    move-object v1, v5

    goto :goto_9f

    :cond_9f
    move-object v1, v4

    :goto_9f
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_colon_in_for"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_labeled_statement:Z

    if-eqz v1, :cond_a0

    move-object v1, v5

    goto :goto_a0

    :cond_a0
    move-object v1, v4

    :goto_a0
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_colon_in_labeled_statement"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_allocation_expression:Z

    if-eqz v1, :cond_a1

    move-object v1, v5

    goto :goto_a1

    :cond_a1
    move-object v1, v4

    :goto_a1
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_allocation_expression"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_annotation:Z

    if-eqz v1, :cond_a2

    move-object v1, v5

    goto :goto_a2

    :cond_a2
    move-object v1, v4

    :goto_a2
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_annotation"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_array_initializer:Z

    if-eqz v1, :cond_a3

    move-object v1, v5

    goto :goto_a3

    :cond_a3
    move-object v1, v4

    :goto_a3
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_array_initializer"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_constructor_declaration_parameters:Z

    if-eqz v1, :cond_a4

    move-object v1, v5

    goto :goto_a4

    :cond_a4
    move-object v1, v4

    :goto_a4
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_constructor_declaration_parameters"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_constructor_declaration_throws:Z

    if-eqz v1, :cond_a5

    move-object v1, v5

    goto :goto_a5

    :cond_a5
    move-object v1, v4

    :goto_a5
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_constructor_declaration_throws"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_enum_constant_arguments:Z

    if-eqz v1, :cond_a6

    move-object v1, v5

    goto :goto_a6

    :cond_a6
    move-object v1, v4

    :goto_a6
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_enum_constant_arguments"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_enum_declarations:Z

    if-eqz v1, :cond_a7

    move-object v1, v5

    goto :goto_a7

    :cond_a7
    move-object v1, v4

    :goto_a7
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_enum_declarations"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_explicit_constructor_call_arguments:Z

    if-eqz v1, :cond_a8

    move-object v1, v5

    goto :goto_a8

    :cond_a8
    move-object v1, v4

    :goto_a8
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_explicitconstructorcall_arguments"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_for_increments:Z

    if-eqz v1, :cond_a9

    move-object v1, v5

    goto :goto_a9

    :cond_a9
    move-object v1, v4

    :goto_a9
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_for_increments"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_for_inits:Z

    if-eqz v1, :cond_aa

    move-object v1, v5

    goto :goto_aa

    :cond_aa
    move-object v1, v4

    :goto_aa
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_for_inits"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_method_invocation_arguments:Z

    if-eqz v1, :cond_ab

    move-object v1, v5

    goto :goto_ab

    :cond_ab
    move-object v1, v4

    :goto_ab
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_method_invocation_arguments"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_method_declaration_parameters:Z

    if-eqz v1, :cond_ac

    move-object v1, v5

    goto :goto_ac

    :cond_ac
    move-object v1, v4

    :goto_ac
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_method_declaration_parameters"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_method_declaration_throws:Z

    if-eqz v1, :cond_ad

    move-object v1, v5

    goto :goto_ad

    :cond_ad
    move-object v1, v4

    :goto_ad
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_method_declaration_throws"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_multiple_field_declarations:Z

    if-eqz v1, :cond_ae

    move-object v1, v5

    goto :goto_ae

    :cond_ae
    move-object v1, v4

    :goto_ae
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_multiple_field_declarations"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_multiple_local_declarations:Z

    if-eqz v1, :cond_af

    move-object v1, v5

    goto :goto_af

    :cond_af
    move-object v1, v4

    :goto_af
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_multiple_local_declarations"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_superinterfaces:Z

    if-eqz v1, :cond_b0

    move-object v1, v5

    goto :goto_b0

    :cond_b0
    move-object v1, v4

    :goto_b0
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_superinterfaces"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_switch_case_expressions:Z

    if-eqz v1, :cond_b1

    move-object v1, v5

    goto :goto_b1

    :cond_b1
    move-object v1, v4

    :goto_b1
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_switch_case_expressions"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_type_arguments:Z

    if-eqz v1, :cond_b2

    move-object v1, v5

    goto :goto_b2

    :cond_b2
    move-object v1, v4

    :goto_b2
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_type_arguments"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_type_parameters:Z

    if-eqz v1, :cond_b3

    move-object v1, v5

    goto :goto_b3

    :cond_b3
    move-object v1, v4

    :goto_b3
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_type_parameters"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_parameterized_type_reference:Z

    if-eqz v1, :cond_b4

    move-object v1, v5

    goto :goto_b4

    :cond_b4
    move-object v1, v4

    :goto_b4
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_parameterized_type_reference"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_ellipsis:Z

    if-eqz v1, :cond_b5

    move-object v1, v5

    goto :goto_b5

    :cond_b5
    move-object v1, v4

    :goto_b5
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_ellipsis"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_lambda_arrow:Z

    if-eqz v1, :cond_b6

    move-object v1, v5

    goto :goto_b6

    :cond_b6
    move-object v1, v4

    :goto_b6
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_lambda_arrow"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_angle_bracket_in_parameterized_type_reference:Z

    if-eqz v1, :cond_b7

    move-object v1, v5

    goto :goto_b7

    :cond_b7
    move-object v1, v4

    :goto_b7
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_angle_bracket_in_parameterized_type_reference"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_angle_bracket_in_type_arguments:Z

    if-eqz v1, :cond_b8

    move-object v1, v5

    goto :goto_b8

    :cond_b8
    move-object v1, v4

    :goto_b8
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_angle_bracket_in_type_arguments"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_angle_bracket_in_type_parameters:Z

    if-eqz v1, :cond_b9

    move-object v1, v5

    goto :goto_b9

    :cond_b9
    move-object v1, v4

    :goto_b9
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_angle_bracket_in_type_parameters"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_annotation_type_declaration:Z

    if-eqz v1, :cond_ba

    move-object v1, v5

    goto :goto_ba

    :cond_ba
    move-object v1, v4

    :goto_ba
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_annotation_type_declaration"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_anonymous_type_declaration:Z

    if-eqz v1, :cond_bb

    move-object v1, v5

    goto :goto_bb

    :cond_bb
    move-object v1, v4

    :goto_bb
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_anonymous_type_declaration"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_array_initializer:Z

    if-eqz v1, :cond_bc

    move-object v1, v5

    goto :goto_bc

    :cond_bc
    move-object v1, v4

    :goto_bc
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_array_initializer"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_block:Z

    if-eqz v1, :cond_bd

    move-object v1, v5

    goto :goto_bd

    :cond_bd
    move-object v1, v4

    :goto_bd
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_block"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_constructor_declaration:Z

    if-eqz v1, :cond_be

    move-object v1, v5

    goto :goto_be

    :cond_be
    move-object v1, v4

    :goto_be
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_constructor_declaration"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_enum_constant:Z

    if-eqz v1, :cond_bf

    move-object v1, v5

    goto :goto_bf

    :cond_bf
    move-object v1, v4

    :goto_bf
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_enum_constant"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_enum_declaration:Z

    if-eqz v1, :cond_c0

    move-object v1, v5

    goto :goto_c0

    :cond_c0
    move-object v1, v4

    :goto_c0
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_enum_declaration"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_method_declaration:Z

    if-eqz v1, :cond_c1

    move-object v1, v5

    goto :goto_c1

    :cond_c1
    move-object v1, v4

    :goto_c1
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_method_declaration"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_type_declaration:Z

    if-eqz v1, :cond_c2

    move-object v1, v5

    goto :goto_c2

    :cond_c2
    move-object v1, v4

    :goto_c2
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_type_declaration"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_bracket_in_array_allocation_expression:Z

    if-eqz v1, :cond_c3

    move-object v1, v5

    goto :goto_c3

    :cond_c3
    move-object v1, v4

    :goto_c3
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_bracket_in_array_allocation_expression"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_bracket_in_array_reference:Z

    if-eqz v1, :cond_c4

    move-object v1, v5

    goto :goto_c4

    :cond_c4
    move-object v1, v4

    :goto_c4
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_bracket_in_array_reference"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_bracket_in_array_type_reference:Z

    if-eqz v1, :cond_c5

    move-object v1, v5

    goto :goto_c5

    :cond_c5
    move-object v1, v4

    :goto_c5
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_bracket_in_array_type_reference"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_annotation:Z

    if-eqz v1, :cond_c6

    move-object v1, v5

    goto :goto_c6

    :cond_c6
    move-object v1, v4

    :goto_c6
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_annotation"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_annotation_type_member_declaration:Z

    if-eqz v1, :cond_c7

    move-object v1, v5

    goto :goto_c7

    :cond_c7
    move-object v1, v4

    :goto_c7
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_annotation_type_member_declaration"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_catch:Z

    if-eqz v1, :cond_c8

    move-object v1, v5

    goto :goto_c8

    :cond_c8
    move-object v1, v4

    :goto_c8
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_catch"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_constructor_declaration:Z

    if-eqz v1, :cond_c9

    move-object v1, v5

    goto :goto_c9

    :cond_c9
    move-object v1, v4

    :goto_c9
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_constructor_declaration"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_enum_constant:Z

    if-eqz v1, :cond_ca

    move-object v1, v5

    goto :goto_ca

    :cond_ca
    move-object v1, v4

    :goto_ca
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_enum_constant"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_for:Z

    if-eqz v1, :cond_cb

    move-object v1, v5

    goto :goto_cb

    :cond_cb
    move-object v1, v4

    :goto_cb
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_for"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_if:Z

    if-eqz v1, :cond_cc

    move-object v1, v5

    goto :goto_cc

    :cond_cc
    move-object v1, v4

    :goto_cc
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_if"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_method_invocation:Z

    if-eqz v1, :cond_cd

    move-object v1, v5

    goto :goto_cd

    :cond_cd
    move-object v1, v4

    :goto_cd
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_method_invocation"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_method_declaration:Z

    if-eqz v1, :cond_ce

    move-object v1, v5

    goto :goto_ce

    :cond_ce
    move-object v1, v4

    :goto_ce
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_method_declaration"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_switch:Z

    if-eqz v1, :cond_cf

    move-object v1, v5

    goto :goto_cf

    :cond_cf
    move-object v1, v4

    :goto_cf
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_switch"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_switch:Z

    if-eqz v1, :cond_d0

    move-object v1, v5

    goto :goto_d0

    :cond_d0
    move-object v1, v4

    :goto_d0
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_switch"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_synchronized:Z

    if-eqz v1, :cond_d1

    move-object v1, v5

    goto :goto_d1

    :cond_d1
    move-object v1, v4

    :goto_d1
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_synchronized"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_try:Z

    if-eqz v1, :cond_d2

    move-object v1, v5

    goto :goto_d2

    :cond_d2
    move-object v1, v4

    :goto_d2
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_try"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_parenthesized_expression:Z

    if-eqz v1, :cond_d3

    move-object v1, v5

    goto :goto_d3

    :cond_d3
    move-object v1, v4

    :goto_d3
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_parenthesized_expression"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_while:Z

    if-eqz v1, :cond_d4

    move-object v1, v5

    goto :goto_d4

    :cond_d4
    move-object v1, v4

    :goto_d4
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_while"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_parenthesized_expression_in_return:Z

    if-eqz v1, :cond_d5

    move-object v1, v5

    goto :goto_d5

    :cond_d5
    move-object v1, v4

    :goto_d5
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_parenthesized_expression_in_return"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_parenthesized_expression_in_throw:Z

    if-eqz v1, :cond_d6

    move-object v1, v5

    goto :goto_d6

    :cond_d6
    move-object v1, v4

    :goto_d6
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_parenthesized_expression_in_throw"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_postfix_operator:Z

    if-eqz v1, :cond_d7

    move-object v1, v5

    goto :goto_d7

    :cond_d7
    move-object v1, v4

    :goto_d7
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_postfix_operator"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_prefix_operator:Z

    if-eqz v1, :cond_d8

    move-object v1, v5

    goto :goto_d8

    :cond_d8
    move-object v1, v4

    :goto_d8
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_prefix_operator"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_question_in_conditional:Z

    if-eqz v1, :cond_d9

    move-object v1, v5

    goto :goto_d9

    :cond_d9
    move-object v1, v4

    :goto_d9
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_question_in_conditional"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_question_in_wilcard:Z

    if-eqz v1, :cond_da

    move-object v1, v5

    goto :goto_da

    :cond_da
    move-object v1, v4

    :goto_da
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_question_in_wildcard"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_semicolon:Z

    if-eqz v1, :cond_db

    move-object v1, v5

    goto :goto_db

    :cond_db
    move-object v1, v4

    :goto_db
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_semicolon"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_semicolon_in_for:Z

    if-eqz v1, :cond_dc

    move-object v1, v5

    goto :goto_dc

    :cond_dc
    move-object v1, v4

    :goto_dc
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_semicolon_in_for"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_semicolon_in_try_resources:Z

    if-eqz v1, :cond_dd

    move-object v1, v5

    goto :goto_dd

    :cond_dd
    move-object v1, v4

    :goto_dd
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_semicolon_in_try_resources"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_unary_operator:Z

    if-eqz v1, :cond_de

    move-object v1, v5

    goto :goto_de

    :cond_de
    move-object v1, v4

    :goto_de
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_unary_operator"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_brackets_in_array_type_reference:Z

    if-eqz v1, :cond_df

    move-object v1, v5

    goto :goto_df

    :cond_df
    move-object v1, v4

    :goto_df
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_between_brackets_in_array_type_reference"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_braces_in_array_initializer:Z

    if-eqz v1, :cond_e0

    move-object v1, v5

    goto :goto_e0

    :cond_e0
    move-object v1, v4

    :goto_e0
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_between_empty_braces_in_array_initializer"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_brackets_in_array_allocation_expression:Z

    if-eqz v1, :cond_e1

    move-object v1, v5

    goto :goto_e1

    :cond_e1
    move-object v1, v4

    :goto_e1
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_between_empty_brackets_in_array_allocation_expression"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_annotation_type_member_declaration:Z

    if-eqz v1, :cond_e2

    move-object v1, v5

    goto :goto_e2

    :cond_e2
    move-object v1, v4

    :goto_e2
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_annotation_type_member_declaration"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_constructor_declaration:Z

    if-eqz v1, :cond_e3

    move-object v1, v5

    goto :goto_e3

    :cond_e3
    move-object v1, v4

    :goto_e3
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_constructor_declaration"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_enum_constant:Z

    if-eqz v1, :cond_e4

    move-object v1, v5

    goto :goto_e4

    :cond_e4
    move-object v1, v4

    :goto_e4
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_enum_constant"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_method_declaration:Z

    if-eqz v1, :cond_e5

    move-object v1, v5

    goto :goto_e5

    :cond_e5
    move-object v1, v4

    :goto_e5
    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_method_declaration"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_method_invocation:Z

    if-eqz v1, :cond_e6

    move-object v4, v5

    :cond_e6
    const-string v1, "org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_method_invocation"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->compact_else_if:Z

    if-eqz v1, :cond_e7

    move-object v1, v3

    goto :goto_e6

    :cond_e7
    move-object v1, v2

    :goto_e6
    const-string v4, "org.eclipse.jdt.core.formatter.compact_else_if"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_guardian_clause_on_one_line:Z

    if-eqz v1, :cond_e8

    move-object v1, v3

    goto :goto_e7

    :cond_e8
    move-object v1, v2

    :goto_e7
    const-string v4, "org.eclipse.jdt.core.formatter.format_guardian_clause_on_one_line"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_else_statement_on_same_line:Z

    if-eqz v1, :cond_e9

    move-object v1, v3

    goto :goto_e8

    :cond_e9
    move-object v1, v2

    :goto_e8
    const-string v4, "org.eclipse.jdt.core.formatter.keep_else_statement_on_same_line"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_empty_array_initializer_on_one_line:Z

    if-eqz v1, :cond_ea

    move-object v1, v3

    goto :goto_e9

    :cond_ea
    move-object v1, v2

    :goto_e9
    const-string v4, "org.eclipse.jdt.core.formatter.keep_empty_array_initializer_on_one_line"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_if_on_one_line:Z

    if-eqz v1, :cond_eb

    move-object v1, v3

    goto :goto_ea

    :cond_eb
    move-object v1, v2

    :goto_ea
    const-string v4, "org.eclipse.jdt.core.formatter.keep_imple_if_on_one_line"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_then_statement_on_same_line:Z

    if-eqz v1, :cond_ec

    move-object v1, v3

    goto :goto_eb

    :cond_ec
    move-object v1, v2

    :goto_eb
    const-string v4, "org.eclipse.jdt.core.formatter.keep_then_statement_on_same_line"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_for_body_on_same_line:Z

    if-eqz v1, :cond_ed

    move-object v1, v3

    goto :goto_ec

    :cond_ed
    move-object v1, v2

    :goto_ec
    const-string v4, "org.eclipse.jdt.core.formatter.keep_simple_for_body_on_same_line"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_while_body_on_same_line:Z

    if-eqz v1, :cond_ee

    move-object v1, v3

    goto :goto_ed

    :cond_ee
    move-object v1, v2

    :goto_ed
    const-string v4, "org.eclipse.jdt.core.formatter.keep_simple_while_body_on_same_line"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_do_while_body_on_same_line:Z

    if-eqz v1, :cond_ef

    move-object v1, v3

    goto :goto_ee

    :cond_ef
    move-object v1, v2

    :goto_ee
    const-string v4, "org.eclipse.jdt.core.formatter.keep_simple_do_while_body_on_same_line"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->never_indent_block_comments_on_first_column:Z

    if-eqz v1, :cond_f0

    move-object v1, v3

    goto :goto_ef

    :cond_f0
    move-object v1, v2

    :goto_ef
    const-string v4, "org.eclipse.jdt.core.formatter.never_indent_block_comments_on_first_column"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->never_indent_line_comments_on_first_column:Z

    if-eqz v1, :cond_f1

    move-object v1, v3

    goto :goto_f0

    :cond_f1
    move-object v1, v2

    :goto_f0
    const-string v4, "org.eclipse.jdt.core.formatter.never_indent_line_comments_on_first_column"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->number_of_empty_lines_to_preserve:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "org.eclipse.jdt.core.formatter.number_of_empty_lines_to_preserve"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->join_wrapped_lines:Z

    if-eqz v1, :cond_f2

    move-object v1, v3

    goto :goto_f1

    :cond_f2
    move-object v1, v2

    :goto_f1
    const-string v4, "org.eclipse.jdt.core.formatter.join_wrapped_lines"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->join_lines_in_comments:Z

    if-eqz v1, :cond_f3

    move-object v1, v3

    goto :goto_f2

    :cond_f3
    move-object v1, v2

    :goto_f2
    const-string v4, "org.eclipse.jdt.core.formatter.join_lines_in_comments"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->put_empty_statement_on_new_line:Z

    if-eqz v1, :cond_f4

    move-object v1, v3

    goto :goto_f3

    :cond_f4
    move-object v1, v2

    :goto_f3
    const-string v4, "org.eclipse.jdt.core.formatter.put_empty_statement_on_new_line"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->page_width:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "org.eclipse.jdt.core.formatter.lineSplit"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_char:I

    const/4 v4, 0x1

    const/4 v5, 0x2

    const-string v7, "org.eclipse.jdt.core.formatter.tabulation.char"

    if-eq v1, v4, :cond_f7

    if-eq v1, v5, :cond_f6

    if-eq v1, v6, :cond_f5

    goto :goto_f4

    :cond_f5
    const-string v1, "mixed"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f4

    :cond_f6
    const-string v1, "space"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f4

    :cond_f7
    const-string v1, "tab"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f4
    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_char:I

    if-ne v1, v5, :cond_f8

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indentation_size:I

    goto :goto_f5

    :cond_f8
    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_size:I

    :goto_f5
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "org.eclipse.jdt.core.formatter.tabulation.size"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->use_tabs_only_for_leading_indentations:Z

    if-eqz v1, :cond_f9

    move-object v1, v3

    goto :goto_f6

    :cond_f9
    move-object v1, v2

    :goto_f6
    const-string v4, "org.eclipse.jdt.core.formatter.use_tabs_only_for_leading_indentations"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_multiplicative_operator:Z

    if-eqz v1, :cond_fa

    move-object v1, v3

    goto :goto_f7

    :cond_fa
    move-object v1, v2

    :goto_f7
    const-string v4, "org.eclipse.jdt.core.formatter.wrap_before_multiplicative_operator"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_additive_operator:Z

    if-eqz v1, :cond_fb

    move-object v1, v3

    goto :goto_f8

    :cond_fb
    move-object v1, v2

    :goto_f8
    const-string v4, "org.eclipse.jdt.core.formatter.wrap_before_additive_operator"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_string_concatenation:Z

    if-eqz v1, :cond_fc

    move-object v1, v3

    goto :goto_f9

    :cond_fc
    move-object v1, v2

    :goto_f9
    const-string v4, "org.eclipse.jdt.core.formatter.wrap_before_string_concatenation"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_shift_operator:Z

    if-eqz v1, :cond_fd

    move-object v1, v3

    goto :goto_fa

    :cond_fd
    move-object v1, v2

    :goto_fa
    const-string v4, "org.eclipse.jdt.core.formatter.wrap_before_shift_operator"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_relational_operator:Z

    if-eqz v1, :cond_fe

    move-object v1, v3

    goto :goto_fb

    :cond_fe
    move-object v1, v2

    :goto_fb
    const-string v4, "org.eclipse.jdt.core.formatter.wrap_before_relational_operator"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_bitwise_operator:Z

    if-eqz v1, :cond_ff

    move-object v1, v3

    goto :goto_fc

    :cond_ff
    move-object v1, v2

    :goto_fc
    const-string v4, "org.eclipse.jdt.core.formatter.wrap_before_bitwise_operator"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_logical_operator:Z

    if-eqz v1, :cond_100

    move-object v1, v3

    goto :goto_fd

    :cond_100
    move-object v1, v2

    :goto_fd
    const-string v4, "org.eclipse.jdt.core.formatter.wrap_before_logical_operator"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_or_operator_multicatch:Z

    if-eqz v1, :cond_101

    move-object v1, v3

    goto :goto_fe

    :cond_101
    move-object v1, v2

    :goto_fe
    const-string v4, "org.eclipse.jdt.core.formatter.wrap_before_or_operator_multicatch"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_conditional_operator:Z

    if-eqz v1, :cond_102

    move-object v1, v3

    goto :goto_ff

    :cond_102
    move-object v1, v2

    :goto_ff
    const-string v4, "org.eclipse.jdt.core.formatter.wrap_before_conditional_operator"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_assignment_operator:Z

    if-eqz v1, :cond_103

    move-object v1, v3

    goto :goto_100

    :cond_103
    move-object v1, v2

    :goto_100
    const-string v4, "org.eclipse.jdt.core.formatter.wrap_before_assignment_operator"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->disabling_tag:[C

    if-nez v1, :cond_104

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_101

    :cond_104
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    move-object v1, v4

    :goto_101
    const-string v4, "org.eclipse.jdt.core.formatter.disabling_tag"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->enabling_tag:[C

    if-nez v1, :cond_105

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_102

    :cond_105
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    move-object v1, v4

    :goto_102
    const-string v4, "org.eclipse.jdt.core.formatter.enabling_tag"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->use_tags:Z

    if-eqz v1, :cond_106

    move-object v1, v3

    goto :goto_103

    :cond_106
    move-object v1, v2

    :goto_103
    const-string v4, "org.eclipse.jdt.core.formatter.use_on_off_tags"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_outer_expressions_when_nested:Z

    if-eqz v1, :cond_107

    move-object v2, v3

    :cond_107
    const-string v1, "org.eclipse.jdt.core.formatter.wrap_outer_expressions_when_nested"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public set(Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_arguments_in_allocation_expression"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_allocation_expression:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_allocation_expression:I

    goto :goto_0

    :catch_1
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_allocation_expression:I

    :cond_0
    :goto_0
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_arguments_in_annotation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :try_start_1
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_annotation:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_annotation:I

    goto :goto_1

    :catch_3
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_annotation:I

    :cond_1
    :goto_1
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_arguments_in_enum_constant"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_2
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_enum_constant:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :catch_4
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_enum_constant:I

    goto :goto_2

    :catch_5
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_enum_constant:I

    :cond_2
    :goto_2
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_arguments_in_explicit_constructor_call"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_3
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_explicit_constructor_call:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_3

    :catch_6
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_explicit_constructor_call:I

    goto :goto_3

    :catch_7
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_explicit_constructor_call:I

    :cond_3
    :goto_3
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_arguments_in_method_invocation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_4
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_method_invocation:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_8

    goto :goto_4

    :catch_8
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_method_invocation:I

    goto :goto_4

    :catch_9
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_method_invocation:I

    :cond_4
    :goto_4
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_arguments_in_qualified_allocation_expression"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_5
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_qualified_allocation_expression:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_a

    goto :goto_5

    :catch_a
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_qualified_allocation_expression:I

    goto :goto_5

    :catch_b
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_qualified_allocation_expression:I

    :cond_5
    :goto_5
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_assignment"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x30

    if-eqz v0, :cond_6

    :try_start_6
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_assignment:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_c

    goto :goto_6

    :catch_c
    iput v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_assignment:I

    goto :goto_6

    :catch_d
    iput v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_assignment:I

    :cond_6
    :goto_6
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/B;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/B;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v4, "org.eclipse.jdt.core.formatter.alignment_for_multiplicative_operator"

    invoke-direct {p0, p1, v4, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setInt(Ljava/util/Map;Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/N;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/N;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v4, "org.eclipse.jdt.core.formatter.alignment_for_additive_operator"

    invoke-direct {p0, p1, v4, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setInt(Ljava/util/Map;Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/a0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/a0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v4, "org.eclipse.jdt.core.formatter.alignment_for_string_concatenation"

    invoke-direct {p0, p1, v4, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setInt(Ljava/util/Map;Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/m0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/m0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v4, "org.eclipse.jdt.core.formatter.alignment_for_shift_operator"

    invoke-direct {p0, p1, v4, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setInt(Ljava/util/Map;Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/y0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/y0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v4, "org.eclipse.jdt.core.formatter.alignment_for_relational_operator"

    invoke-direct {p0, p1, v4, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setInt(Ljava/util/Map;Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/z0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/z0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v4, "org.eclipse.jdt.core.formatter.alignment_for_bitwise_operator"

    invoke-direct {p0, p1, v4, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setInt(Ljava/util/Map;Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/B0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/B0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v4, "org.eclipse.jdt.core.formatter.alignment_for_logical_operator"

    invoke-direct {p0, p1, v4, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setInt(Ljava/util/Map;Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_compact_if"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x34

    if-eqz v0, :cond_7

    :try_start_7
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_compact_if:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_e

    goto :goto_7

    :catch_e
    iput v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_compact_if:I

    goto :goto_7

    :catch_f
    iput v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_compact_if:I

    :cond_7
    :goto_7
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_compact_loops"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-direct {p0, v0, v4}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->toInt(Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_compact_loop:I

    :cond_8
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_conditional_expression"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    :try_start_8
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_conditional_expression:I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_10

    goto :goto_8

    :catch_10
    iput v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_conditional_expression:I

    goto :goto_8

    :catch_11
    iput v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_conditional_expression:I

    :cond_9
    :goto_8
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/C0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/C0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v3, "org.eclipse.jdt.core.formatter.alignment_for_conditional_expression_chain"

    invoke-direct {p0, p1, v3, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setInt(Ljava/util/Map;Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_enum_constants"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    :try_start_9
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_enum_constants:I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_13
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_12

    goto :goto_9

    :catch_12
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_enum_constants:I

    goto :goto_9

    :catch_13
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_enum_constants:I

    :cond_a
    :goto_9
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_expressions_in_array_initializer"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    :try_start_a
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_expressions_in_array_initializer:I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_15
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_14

    goto :goto_a

    :catch_14
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_expressions_in_array_initializer:I

    goto :goto_a

    :catch_15
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_expressions_in_array_initializer:I

    :cond_b
    :goto_a
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_expressions_in_for_loop_header"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->toInt(Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_expressions_in_for_loop_header:I

    :cond_c
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_method_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    :try_start_b
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_method_declaration:I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_17
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_16

    goto :goto_b

    :catch_16
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_method_declaration:I

    goto :goto_b

    :catch_17
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_method_declaration:I

    :cond_d
    :goto_b
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_module_statements"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->toInt(Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_module_statements:I

    :cond_e
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_multiple_fields"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    :try_start_c
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_multiple_fields:I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_19
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_18

    goto :goto_c

    :catch_18
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_multiple_fields:I

    goto :goto_c

    :catch_19
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_multiple_fields:I

    :cond_f
    :goto_c
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_parameterized_type_references"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->toInt(Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_parameterized_type_references:I

    :cond_10
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_parameters_in_constructor_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    :try_start_d
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_parameters_in_constructor_declaration:I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_1b
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_1a

    goto :goto_d

    :catch_1a
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_parameters_in_constructor_declaration:I

    goto :goto_d

    :catch_1b
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_parameters_in_constructor_declaration:I

    :cond_11
    :goto_d
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_parameters_in_method_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    :try_start_e
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_parameters_in_method_declaration:I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_1d
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_1c

    goto :goto_e

    :catch_1c
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_parameters_in_method_declaration:I

    goto :goto_e

    :catch_1d
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_parameters_in_method_declaration:I

    :cond_12
    :goto_e
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_resources_in_try"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x50

    if-eqz v0, :cond_13

    :try_start_f
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_resources_in_try:I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_1f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_1e

    goto :goto_f

    :catch_1e
    iput v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_resources_in_try:I

    goto :goto_f

    :catch_1f
    iput v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_resources_in_try:I

    :cond_13
    :goto_f
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_selector_in_method_invocation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_10
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_selector_in_method_invocation:I
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_21
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_10} :catch_20

    goto :goto_10

    :catch_20
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_selector_in_method_invocation:I

    goto :goto_10

    :catch_21
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_selector_in_method_invocation:I

    :cond_14
    :goto_10
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_superclass_in_type_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x40

    if-eqz v0, :cond_15

    :try_start_11
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_superclass_in_type_declaration:I
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_23
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_11} :catch_22

    goto :goto_11

    :catch_22
    iput v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_superclass_in_type_declaration:I

    goto :goto_11

    :catch_23
    iput v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_superclass_in_type_declaration:I

    :cond_15
    :goto_11
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_superinterfaces_in_enum_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    :try_start_12
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_superinterfaces_in_enum_declaration:I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_25
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_12} :catch_24

    goto :goto_12

    :catch_24
    iput v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_superinterfaces_in_enum_declaration:I

    goto :goto_12

    :catch_25
    iput v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_superinterfaces_in_enum_declaration:I

    :cond_16
    :goto_12
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_superinterfaces_in_type_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_13
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_superinterfaces_in_type_declaration:I
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_27
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_13} :catch_26

    goto :goto_13

    :catch_26
    iput v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_superinterfaces_in_type_declaration:I

    goto :goto_13

    :catch_27
    iput v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_superinterfaces_in_type_declaration:I

    :cond_17
    :goto_13
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_throws_clause_in_constructor_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    :try_start_14
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_throws_clause_in_constructor_declaration:I
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_29
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_14} :catch_28

    goto :goto_14

    :catch_28
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_throws_clause_in_constructor_declaration:I

    goto :goto_14

    :catch_29
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_throws_clause_in_constructor_declaration:I

    :cond_18
    :goto_14
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_throws_clause_in_method_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    :try_start_15
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_throws_clause_in_method_declaration:I
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_2b
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_15} :catch_2a

    goto :goto_15

    :catch_2a
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_throws_clause_in_method_declaration:I

    goto :goto_15

    :catch_2b
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_throws_clause_in_method_declaration:I

    :cond_19
    :goto_15
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_type_arguments"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->toInt(Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_type_arguments:I

    :cond_1a
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_type_parameters"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->toInt(Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_type_parameters:I

    :cond_1b
    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_union_type_in_multicatch"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_16
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_union_type_in_multicatch:I
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_2d
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_16} :catch_2c

    goto :goto_16

    :catch_2c
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_union_type_in_multicatch:I

    goto :goto_16

    :catch_2d
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_union_type_in_multicatch:I

    :cond_1c
    :goto_16
    const-string v0, "org.eclipse.jdt.core.formatter.align_type_members_on_columns"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "true"

    if-eqz v0, :cond_1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_type_members_on_columns:Z

    :cond_1d
    const-string v4, "org.eclipse.jdt.core.formatter.align_variable_declarations_on_columns"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1e

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_variable_declarations_on_columns:Z

    :cond_1e
    const-string v4, "org.eclipse.jdt.core.formatter.align_assignment_statements_on_columns"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_assignment_statements_on_columns:Z

    :cond_1f
    const-string v4, "org.eclipse.jdt.core.formatter.align_fields_grouping_blank_lines"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v0, :cond_20

    const v0, 0x7fffffff

    :try_start_17
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_fields_grouping_blank_lines:I
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_2f
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_17} :catch_2e

    goto :goto_17

    :catch_2e
    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_fields_grouping_blank_lines:I

    goto :goto_17

    :catch_2f
    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_fields_grouping_blank_lines:I

    :cond_20
    :goto_17
    const-string v0, "org.eclipse.jdt.core.formatter.align_with_spaces"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_with_spaces:Z

    :cond_21
    const-string v0, "org.eclipse.jdt.core.formatter.brace_position_for_annotation_type_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "end_of_line"

    if-eqz v0, :cond_22

    :try_start_18
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_annotation_type_declaration:Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_18} :catch_30

    goto :goto_18

    :catch_30
    iput-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_annotation_type_declaration:Ljava/lang/String;

    :cond_22
    :goto_18
    const-string v0, "org.eclipse.jdt.core.formatter.brace_position_for_anonymous_type_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_23

    :try_start_19
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_anonymous_type_declaration:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_19 .. :try_end_19} :catch_31

    goto :goto_19

    :catch_31
    iput-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_anonymous_type_declaration:Ljava/lang/String;

    :cond_23
    :goto_19
    const-string v0, "org.eclipse.jdt.core.formatter.brace_position_for_array_initializer"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24

    :try_start_1a
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_array_initializer:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/ClassCastException; {:try_start_1a .. :try_end_1a} :catch_32

    goto :goto_1a

    :catch_32
    iput-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_array_initializer:Ljava/lang/String;

    :cond_24
    :goto_1a
    const-string v0, "org.eclipse.jdt.core.formatter.brace_position_for_block"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    :try_start_1b
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_block:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_1b} :catch_33

    goto :goto_1b

    :catch_33
    iput-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_block:Ljava/lang/String;

    :cond_25
    :goto_1b
    const-string v0, "org.eclipse.jdt.core.formatter.brace_position_for_block_in_case"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    :try_start_1c
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_block_in_case:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_1c .. :try_end_1c} :catch_34

    goto :goto_1c

    :catch_34
    iput-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_block_in_case:Ljava/lang/String;

    :cond_26
    :goto_1c
    const-string v0, "org.eclipse.jdt.core.formatter.brace_position_for_constructor_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_27

    :try_start_1d
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_constructor_declaration:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_1d .. :try_end_1d} :catch_35

    goto :goto_1d

    :catch_35
    iput-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_constructor_declaration:Ljava/lang/String;

    :cond_27
    :goto_1d
    const-string v0, "org.eclipse.jdt.core.formatter.brace_position_for_enum_constant"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    :try_start_1e
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_enum_constant:Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_1e .. :try_end_1e} :catch_36

    goto :goto_1e

    :catch_36
    iput-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_enum_constant:Ljava/lang/String;

    :cond_28
    :goto_1e
    const-string v0, "org.eclipse.jdt.core.formatter.brace_position_for_enum_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    :try_start_1f
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_enum_declaration:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/ClassCastException; {:try_start_1f .. :try_end_1f} :catch_37

    goto :goto_1f

    :catch_37
    iput-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_enum_declaration:Ljava/lang/String;

    :cond_29
    :goto_1f
    const-string v0, "org.eclipse.jdt.core.formatter.brace_position_for_lambda_body"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    :try_start_20
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_lambda_body:Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_20 .. :try_end_20} :catch_38

    goto :goto_20

    :catch_38
    iput-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_lambda_body:Ljava/lang/String;

    :cond_2a
    :goto_20
    const-string v0, "org.eclipse.jdt.core.formatter.brace_position_for_method_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    :try_start_21
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_method_declaration:Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/ClassCastException; {:try_start_21 .. :try_end_21} :catch_39

    goto :goto_21

    :catch_39
    iput-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_method_declaration:Ljava/lang/String;

    :cond_2b
    :goto_21
    const-string v0, "org.eclipse.jdt.core.formatter.brace_position_for_switch"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    :try_start_22
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_switch:Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/ClassCastException; {:try_start_22 .. :try_end_22} :catch_3a

    goto :goto_22

    :catch_3a
    iput-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_switch:Ljava/lang/String;

    :cond_2c
    :goto_22
    const-string v0, "org.eclipse.jdt.core.formatter.brace_position_for_type_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2d

    :try_start_23
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_type_declaration:Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/ClassCastException; {:try_start_23 .. :try_end_23} :catch_3b

    goto :goto_23

    :catch_3b
    iput-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_type_declaration:Ljava/lang/String;

    :cond_2d
    :goto_23
    const-string v0, "org.eclipse.jdt.core.formatter.parentheses_positions_in_method_delcaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "common_lines"

    if-eqz v0, :cond_2e

    invoke-direct {p0, v0, v4}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_method_declaration:Ljava/lang/String;

    :cond_2e
    const-string v0, "org.eclipse.jdt.core.formatter.parentheses_positions_in_method_invocation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-direct {p0, v0, v4}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_method_invocation:Ljava/lang/String;

    :cond_2f
    const-string v0, "org.eclipse.jdt.core.formatter.parentheses_positions_in_enum_constant_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-direct {p0, v0, v4}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_enum_constant_declaration:Ljava/lang/String;

    :cond_30
    const-string v0, "org.eclipse.jdt.core.formatter.parentheses_positions_in_if_while_statement"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-direct {p0, v0, v4}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_if_while_statement:Ljava/lang/String;

    :cond_31
    const-string v0, "org.eclipse.jdt.core.formatter.parentheses_positions_in_for_statment"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-direct {p0, v0, v4}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_for_statement:Ljava/lang/String;

    :cond_32
    const-string v0, "org.eclipse.jdt.core.formatter.parentheses_positions_in_switch_statement"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-direct {p0, v0, v4}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_switch_statement:Ljava/lang/String;

    :cond_33
    const-string v0, "org.eclipse.jdt.core.formatter.parentheses_positions_in_try_clause"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-direct {p0, v0, v4}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_try_clause:Ljava/lang/String;

    :cond_34
    const-string v0, "org.eclipse.jdt.core.formatter.parentheses_positions_in_catch_clause"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-direct {p0, v0, v4}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_catch_clause:Ljava/lang/String;

    :cond_35
    const-string v0, "org.eclipse.jdt.core.formatter.parentheses_positions_in_annotation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-direct {p0, v0, v4}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_annotation:Ljava/lang/String;

    :cond_36
    const-string v0, "org.eclipse.jdt.core.formatter.parentheses_positions_in_lambda_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-direct {p0, v0, v4}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_lambda_declaration:Ljava/lang/String;

    :cond_37
    const-string v0, "org.eclipse.jdt.core.formatter.continuation_indentation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x2

    if-eqz v0, :cond_38

    :try_start_24
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->continuation_indentation:I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_24} :catch_3d
    .catch Ljava/lang/ClassCastException; {:try_start_24 .. :try_end_24} :catch_3c

    goto :goto_24

    :catch_3c
    iput v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->continuation_indentation:I

    goto :goto_24

    :catch_3d
    iput v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->continuation_indentation:I

    :cond_38
    :goto_24
    const-string v0, "org.eclipse.jdt.core.formatter.continuation_indentation_for_array_initializer"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_39

    :try_start_25
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->continuation_indentation_for_array_initializer:I
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_25} :catch_3f
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_25} :catch_3e

    goto :goto_25

    :catch_3e
    iput v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->continuation_indentation_for_array_initializer:I

    goto :goto_25

    :catch_3f
    iput v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->continuation_indentation_for_array_initializer:I

    :cond_39
    :goto_25
    const-string v0, "org.eclipse.jdt.core.formatter.blank_lines_after_imports"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3a

    :try_start_26
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_after_imports:I
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_26} :catch_41
    .catch Ljava/lang/ClassCastException; {:try_start_26 .. :try_end_26} :catch_40

    goto :goto_26

    :catch_40
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_after_imports:I

    goto :goto_26

    :catch_41
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_after_imports:I

    :cond_3a
    :goto_26
    const-string v0, "org.eclipse.jdt.core.formatter.blank_lines_after_package"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3b

    :try_start_27
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_after_package:I
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_27} :catch_43
    .catch Ljava/lang/ClassCastException; {:try_start_27 .. :try_end_27} :catch_42

    goto :goto_27

    :catch_42
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_after_package:I

    goto :goto_27

    :catch_43
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_after_package:I

    :cond_3b
    :goto_27
    const-string v0, "org.eclipse.jdt.core.formatter.blank_lines_before_field"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3c

    :try_start_28
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_field:I
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_28} :catch_45
    .catch Ljava/lang/ClassCastException; {:try_start_28 .. :try_end_28} :catch_44

    goto :goto_28

    :catch_44
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_field:I

    goto :goto_28

    :catch_45
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_field:I

    :cond_3c
    :goto_28
    const-string v0, "org.eclipse.jdt.core.formatter.blank_lines_before_first_class_body_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3d

    :try_start_29
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_first_class_body_declaration:I
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_29} :catch_47
    .catch Ljava/lang/ClassCastException; {:try_start_29 .. :try_end_29} :catch_46

    goto :goto_29

    :catch_46
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_first_class_body_declaration:I

    goto :goto_29

    :catch_47
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_first_class_body_declaration:I

    :cond_3d
    :goto_29
    const-string v0, "org.eclipse.jdt.core.formatter.blank_lines_before_imports"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3e

    :try_start_2a
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_imports:I
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2a} :catch_49
    .catch Ljava/lang/ClassCastException; {:try_start_2a .. :try_end_2a} :catch_48

    goto :goto_2a

    :catch_48
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_imports:I

    goto :goto_2a

    :catch_49
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_imports:I

    :cond_3e
    :goto_2a
    const-string v0, "org.eclipse.jdt.core.formatter.blank_lines_before_member_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3f

    :try_start_2b
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_member_type:I
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_2b} :catch_4b
    .catch Ljava/lang/ClassCastException; {:try_start_2b .. :try_end_2b} :catch_4a

    goto :goto_2b

    :catch_4a
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_member_type:I

    goto :goto_2b

    :catch_4b
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_member_type:I

    :cond_3f
    :goto_2b
    const-string v0, "org.eclipse.jdt.core.formatter.blank_lines_before_method"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_40

    :try_start_2c
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_method:I
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_2c} :catch_4d
    .catch Ljava/lang/ClassCastException; {:try_start_2c .. :try_end_2c} :catch_4c

    goto :goto_2c

    :catch_4c
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_method:I

    goto :goto_2c

    :catch_4d
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_method:I

    :cond_40
    :goto_2c
    const-string v0, "org.eclipse.jdt.core.formatter.blank_lines_before_new_chunk"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_41

    :try_start_2d
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_new_chunk:I
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_2d} :catch_4f
    .catch Ljava/lang/ClassCastException; {:try_start_2d .. :try_end_2d} :catch_4e

    goto :goto_2d

    :catch_4e
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_new_chunk:I

    goto :goto_2d

    :catch_4f
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_new_chunk:I

    :cond_41
    :goto_2d
    const-string v0, "org.eclipse.jdt.core.formatter.blank_lines_before_package"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_42

    :try_start_2e
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_package:I
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_2e} :catch_51
    .catch Ljava/lang/ClassCastException; {:try_start_2e .. :try_end_2e} :catch_50

    goto :goto_2e

    :catch_50
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_package:I

    goto :goto_2e

    :catch_51
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_package:I

    :cond_42
    :goto_2e
    const-string v0, "org.eclipse.jdt.core.formatter.blank_lines_between_import_groups"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v5, 0x1

    if-eqz v0, :cond_43

    :try_start_2f
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_between_import_groups:I
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_2f} :catch_53
    .catch Ljava/lang/ClassCastException; {:try_start_2f .. :try_end_2f} :catch_52

    goto :goto_2f

    :catch_52
    iput v5, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_between_import_groups:I

    goto :goto_2f

    :catch_53
    iput v5, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_between_import_groups:I

    :cond_43
    :goto_2f
    const-string v0, "org.eclipse.jdt.core.formatter.blank_lines_between_type_declarations"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_44

    :try_start_30
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_between_type_declarations:I
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_30} :catch_55
    .catch Ljava/lang/ClassCastException; {:try_start_30 .. :try_end_30} :catch_54

    goto :goto_30

    :catch_54
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_between_type_declarations:I

    goto :goto_30

    :catch_55
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_between_type_declarations:I

    :cond_44
    :goto_30
    const-string v0, "org.eclipse.jdt.core.formatter.number_of_blank_lines_at_beginning_of_method_body"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_45

    :try_start_31
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_at_beginning_of_method_body:I
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_31} :catch_57
    .catch Ljava/lang/ClassCastException; {:try_start_31 .. :try_end_31} :catch_56

    goto :goto_31

    :catch_56
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_at_beginning_of_method_body:I

    goto :goto_31

    :catch_57
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_at_beginning_of_method_body:I

    :cond_45
    :goto_31
    const-string v0, "org.eclipse.jdt.core.formatter.insert_new_line_after_type_annotation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v6, "insert"

    if-eqz v0, :cond_46

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_type_annotation:Z

    :cond_46
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setDeprecatedOptions(Ljava/util/Map;)V

    const-string v0, "org.eclipse.jdt.core.formatter.comment.format_javadoc_comments"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_javadoc_comment:Z

    :cond_47
    const-string v0, "org.eclipse.jdt.core.formatter.comment.format_block_comments"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_block_comment:Z

    :cond_48
    const-string v0, "org.eclipse.jdt.core.formatter.comment.format_line_comments"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_line_comment:Z

    :cond_49
    const-string v0, "org.eclipse.jdt.core.formatter.format_line_comment_starting_on_first_column"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_line_comment_starting_on_first_column:Z

    :cond_4a
    const-string v0, "org.eclipse.jdt.core.formatter.comment.format_header"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_header:Z

    :cond_4b
    const-string v0, "org.eclipse.jdt.core.formatter.comment.format_html"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_html:Z

    :cond_4c
    const-string v0, "org.eclipse.jdt.core.formatter.comment.format_source_code"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_source:Z

    :cond_4d
    const-string v0, "org.eclipse.jdt.core.formatter.comment.indent_parameter_description"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_indent_parameter_description:Z

    :cond_4e
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/D0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/D0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v7, "org.eclipse.jdt.core.formatter.comment.indent_tag_description"

    invoke-direct {p0, p1, v7, v1, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    const-string v0, "org.eclipse.jdt.core.formatter.comment.indent_root_tags"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4f

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_indent_root_tags:Z

    :cond_4f
    const-string v0, "org.eclipse.jdt.core.formatter.comment.align_tags_names_descriptions"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_align_tags_names_descriptions:Z

    :cond_50
    const-string v0, "org.eclipse.jdt.core.formatter.comment.align_tags_descriptions_grouped"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_align_tags_descriptions_grouped:Z

    :cond_51
    const-string v0, "org.eclipse.jdt.core.formatter.comment.insert_new_line_before_root_tags"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_insert_empty_line_before_root_tags:Z

    :cond_52
    const-string v0, "org.eclipse.jdt.core.formatter.comment.insert_new_line_for_parameter"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_insert_new_line_for_parameter:Z

    :cond_53
    const-string v0, "org.eclipse.jdt.core.formatter.comment.preserve_white_space_between_code_and_line_comments"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_preserve_white_space_between_code_and_line_comments:Z

    :cond_54
    const-string v0, "org.eclipse.jdt.core.formatter.comment.line_length"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_55

    :try_start_32
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_line_length:I
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_32} :catch_59
    .catch Ljava/lang/ClassCastException; {:try_start_32 .. :try_end_32} :catch_58

    goto :goto_32

    :catch_58
    iput v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_line_length:I

    goto :goto_32

    :catch_59
    iput v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_line_length:I

    :cond_55
    :goto_32
    const-string v0, "org.eclipse.jdt.core.formatter.comment.count_line_length_from_starting_position"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_count_line_length_from_starting_position:Z

    :cond_56
    const-string v0, "org.eclipse.jdt.core.formatter.comment.new_lines_at_block_boundaries"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_57

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_new_lines_at_block_boundaries:Z

    :cond_57
    const-string v0, "org.eclipse.jdt.core.formatter.comment.new_lines_at_javadoc_boundaries"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_58

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_new_lines_at_javadoc_boundaries:Z

    :cond_58
    const-string v0, "org.eclipse.jdt.core.formatter.indent_statements_compare_to_block"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_statements_compare_to_block:Z

    :cond_59
    const-string v0, "org.eclipse.jdt.core.formatter.indent_statements_compare_to_body"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_statements_compare_to_body:Z

    :cond_5a
    const-string v0, "org.eclipse.jdt.core.formatter.indent_body_declarations_compare_to_annotation_declaration_header"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_annotation_declaration_header:Z

    :cond_5b
    const-string v0, "org.eclipse.jdt.core.formatter.indent_body_declarations_compare_to_enum_constant_header"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_enum_constant_header:Z

    :cond_5c
    const-string v0, "org.eclipse.jdt.core.formatter.indent_body_declarations_compare_to_enum_declaration_header"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5d

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_enum_declaration_header:Z

    :cond_5d
    const-string v0, "org.eclipse.jdt.core.formatter.indent_body_declarations_compare_to_type_header"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_type_header:Z

    :cond_5e
    const-string v0, "org.eclipse.jdt.core.formatter.indent_breaks_compare_to_cases"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_breaks_compare_to_cases:Z

    :cond_5f
    const-string v0, "org.eclipse.jdt.core.formatter.indent_empty_lines"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_empty_lines:Z

    :cond_60
    const-string v0, "org.eclipse.jdt.core.formatter.indent_switchstatements_compare_to_cases"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_switchstatements_compare_to_cases:Z

    :cond_61
    const-string v0, "org.eclipse.jdt.core.formatter.indent_switchstatements_compare_to_switch"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_62

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_switchstatements_compare_to_switch:Z

    :cond_62
    const-string v0, "org.eclipse.jdt.core.formatter.indentation.size"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "mixed"

    const-string v7, "space"

    const/4 v8, 0x4

    const-string v9, "org.eclipse.jdt.core.formatter.tabulation.char"

    if-eqz v0, :cond_64

    :try_start_33
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_33} :catch_5a
    .catch Ljava/lang/ClassCastException; {:try_start_33 .. :try_end_33} :catch_5a

    goto :goto_33

    :catch_5a
    move v0, v8

    :goto_33
    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_63

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indentation_size:I

    goto :goto_34

    :cond_63
    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_64

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_size:I

    :cond_64
    :goto_34
    const-string v0, "org.eclipse.jdt.core.formatter.insert_new_line_after_opening_brace_in_array_initializer"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_65

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_opening_brace_in_array_initializer:Z

    :cond_65
    const-string v0, "org.eclipse.jdt.core.formatter.insert_new_line_at_end_of_file_if_missing"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_66

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_at_end_of_file_if_missing:Z

    :cond_66
    const-string v0, "org.eclipse.jdt.core.formatter.insert_new_line_before_catch_in_try_statement"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_67

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_catch_in_try_statement:Z

    :cond_67
    const-string v0, "org.eclipse.jdt.core.formatter.insert_new_line_before_closing_brace_in_array_initializer"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_closing_brace_in_array_initializer:Z

    :cond_68
    const-string v0, "org.eclipse.jdt.core.formatter.insert_new_line_before_else_in_if_statement"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_else_in_if_statement:Z

    :cond_69
    const-string v0, "org.eclipse.jdt.core.formatter.insert_new_line_before_finally_in_try_statement"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6a

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_finally_in_try_statement:Z

    :cond_6a
    const-string v0, "org.eclipse.jdt.core.formatter.insert_new_line_before_while_in_do_statement"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6b

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_while_in_do_statement:Z

    :cond_6b
    sget-object v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->KEEP_ON_ONE_LINE_VALUES:Ljava/util/List;

    new-instance v10, Lorg/eclipse/jdt/internal/formatter/E0;

    invoke-direct {v10, p0}, Lorg/eclipse/jdt/internal/formatter/E0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v11, "org.eclipse.jdt.core.formatter.keep_annotation_declaration_on_one_line"

    invoke-direct {p0, p1, v11, v0, v10}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setString(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/function/Consumer;)V

    new-instance v10, Lorg/eclipse/jdt/internal/formatter/C;

    invoke-direct {v10, p0}, Lorg/eclipse/jdt/internal/formatter/C;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v11, "org.eclipse.jdt.core.formatter.keep_anonymous_type_declaration_on_one_line"

    invoke-direct {p0, p1, v11, v0, v10}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setString(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/function/Consumer;)V

    new-instance v10, Lorg/eclipse/jdt/internal/formatter/D;

    invoke-direct {v10, p0}, Lorg/eclipse/jdt/internal/formatter/D;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v11, "org.eclipse.jdt.core.formatter.keep_if_then_body_block_on_one_line"

    invoke-direct {p0, p1, v11, v0, v10}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setString(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/function/Consumer;)V

    new-instance v10, Lorg/eclipse/jdt/internal/formatter/E;

    invoke-direct {v10, p0}, Lorg/eclipse/jdt/internal/formatter/E;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v11, "org.eclipse.jdt.core.formatter.keep_loop_body_block_on_one_line"

    invoke-direct {p0, p1, v11, v0, v10}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setString(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/function/Consumer;)V

    new-instance v10, Lorg/eclipse/jdt/internal/formatter/F;

    invoke-direct {v10, p0}, Lorg/eclipse/jdt/internal/formatter/F;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v11, "org.eclipse.jdt.core.formatter.keep_lambda_body_block_on_one_line"

    invoke-direct {p0, p1, v11, v0, v10}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setString(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/function/Consumer;)V

    const-string v10, "one_line_never"

    const-string v11, "one_line_if_empty"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    new-instance v11, Lorg/eclipse/jdt/internal/formatter/G;

    invoke-direct {v11, p0}, Lorg/eclipse/jdt/internal/formatter/G;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v12, "org.eclipse.jdt.core.formatter.keep_code_block_on_one_line"

    invoke-direct {p0, p1, v12, v10, v11}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setString(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/function/Consumer;)V

    new-instance v10, Lorg/eclipse/jdt/internal/formatter/I;

    invoke-direct {v10, p0}, Lorg/eclipse/jdt/internal/formatter/I;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v11, "org.eclipse.jdt.core.formatter.keep_enum_constant_declaration_on_one_line"

    invoke-direct {p0, p1, v11, v0, v10}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setString(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/function/Consumer;)V

    new-instance v10, Lorg/eclipse/jdt/internal/formatter/J;

    invoke-direct {v10, p0}, Lorg/eclipse/jdt/internal/formatter/J;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v11, "org.eclipse.jdt.core.formatter.keep_enum_declaration_on_one_line"

    invoke-direct {p0, p1, v11, v0, v10}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setString(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/function/Consumer;)V

    new-instance v10, Lorg/eclipse/jdt/internal/formatter/K;

    invoke-direct {v10, p0}, Lorg/eclipse/jdt/internal/formatter/K;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v11, "org.eclipse.jdt.core.formatter.keep_method_body_on_one_line"

    invoke-direct {p0, p1, v11, v0, v10}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setString(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/function/Consumer;)V

    new-instance v10, Lorg/eclipse/jdt/internal/formatter/L;

    invoke-direct {v10, p0}, Lorg/eclipse/jdt/internal/formatter/L;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v11, "org.eclipse.jdt.core.formatter.keep_type_declaration_on_one_line"

    invoke-direct {p0, p1, v11, v0, v10}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setString(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/M;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/M;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v10, "org.eclipse.jdt.core.formatter.keep_simple_getter_setter_on_one_line"

    invoke-direct {p0, p1, v10, v1, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    const-string v0, "org.eclipse.jdt.core.formatter.insert_new_line_after_label"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_label:Z

    :cond_6c
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_and_in_type_parameter"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6d

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_and_in_type_parameter:Z

    :cond_6d
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/O;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/O;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v10, "org.eclipse.jdt.core.formatter.insert_space_after_arrow_in_switch_case"

    invoke-direct {p0, p1, v10, v6, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/P;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/P;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v10, "org.eclipse.jdt.core.formatter.insert_space_after_arrow_in_switch_default"

    invoke-direct {p0, p1, v10, v6, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_assignment_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6e

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_assignment_operator:Z

    :cond_6e
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_at_in_annotation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6f

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_at_in_annotation:Z

    :cond_6f
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_at_in_annotation_type_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_70

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_at_in_annotation_type_declaration:Z

    :cond_70
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/Q;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/Q;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v10, "org.eclipse.jdt.core.formatter.insert_space_after_multiplicative_operator"

    invoke-direct {p0, p1, v10, v6, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/S;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/S;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v10, "org.eclipse.jdt.core.formatter.insert_space_after_additive_operator"

    invoke-direct {p0, p1, v10, v6, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/U;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/U;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v10, "org.eclipse.jdt.core.formatter.insert_space_after_string_concatenation"

    invoke-direct {p0, p1, v10, v6, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/V;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/V;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v10, "org.eclipse.jdt.core.formatter.insert_space_after_shift_operator"

    invoke-direct {p0, p1, v10, v6, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/W;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/W;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v10, "org.eclipse.jdt.core.formatter.insert_space_after_relational_operator"

    invoke-direct {p0, p1, v10, v6, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/X;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/X;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v10, "org.eclipse.jdt.core.formatter.insert_space_after_bitwise_operator"

    invoke-direct {p0, p1, v10, v6, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/Y;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/Y;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v10, "org.eclipse.jdt.core.formatter.insert_space_after_logical_operator"

    invoke-direct {p0, p1, v10, v6, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_closing_angle_bracket_in_type_arguments"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_71

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_closing_angle_bracket_in_type_arguments:Z

    :cond_71
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_closing_angle_bracket_in_type_parameters"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_72

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_closing_angle_bracket_in_type_parameters:Z

    :cond_72
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_closing_paren_in_cast"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_73

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_closing_paren_in_cast:Z

    :cond_73
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_closing_brace_in_block"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_74

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_closing_brace_in_block:Z

    :cond_74
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_colon_in_assert"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_75

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_assert:Z

    :cond_75
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_colon_in_case"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_76

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_case:Z

    :cond_76
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_colon_in_conditional"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_77

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_conditional:Z

    :cond_77
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_colon_in_for"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_78

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_for:Z

    :cond_78
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_colon_in_labeled_statement"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_79

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_labeled_statement:Z

    :cond_79
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_allocation_expression"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7a

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_allocation_expression:Z

    :cond_7a
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_annotation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7b

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_annotation:Z

    :cond_7b
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_array_initializer"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7c

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_array_initializer:Z

    :cond_7c
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_constructor_declaration_parameters"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7d

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_constructor_declaration_parameters:Z

    :cond_7d
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_constructor_declaration_throws"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7e

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_constructor_declaration_throws:Z

    :cond_7e
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_enum_constant_arguments"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7f

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_enum_constant_arguments:Z

    :cond_7f
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_enum_declarations"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_80

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_enum_declarations:Z

    :cond_80
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_explicitconstructorcall_arguments"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_81

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_explicit_constructor_call_arguments:Z

    :cond_81
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_for_increments"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_82

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_for_increments:Z

    :cond_82
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_for_inits"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_83

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_for_inits:Z

    :cond_83
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_method_invocation_arguments"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_84

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_method_invocation_arguments:Z

    :cond_84
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_method_declaration_parameters"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_85

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_method_declaration_parameters:Z

    :cond_85
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_method_declaration_throws"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_86

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_method_declaration_throws:Z

    :cond_86
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_multiple_field_declarations"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_87

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_multiple_field_declarations:Z

    :cond_87
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_multiple_local_declarations"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_88

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_multiple_local_declarations:Z

    :cond_88
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_parameterized_type_reference"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_89

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_parameterized_type_reference:Z

    :cond_89
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_superinterfaces"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8a

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_superinterfaces:Z

    :cond_8a
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/Z;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/Z;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v10, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_switch_case_expressions"

    invoke-direct {p0, p1, v10, v6, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_type_arguments"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8b

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_type_arguments:Z

    :cond_8b
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_comma_in_type_parameters"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8c

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_type_parameters:Z

    :cond_8c
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_ellipsis"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8d

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_ellipsis:Z

    :cond_8d
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_lambda_arrow"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8e

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_lambda_arrow:Z

    :cond_8e
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_opening_angle_bracket_in_parameterized_type_reference"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8f

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_angle_bracket_in_parameterized_type_reference:Z

    :cond_8f
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_opening_angle_bracket_in_type_arguments"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_angle_bracket_in_type_arguments:Z

    :cond_90
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_opening_angle_bracket_in_type_parameters"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_91

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_angle_bracket_in_type_parameters:Z

    :cond_91
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_opening_bracket_in_array_allocation_expression"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_92

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_bracket_in_array_allocation_expression:Z

    :cond_92
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_opening_bracket_in_array_reference"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_93

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_bracket_in_array_reference:Z

    :cond_93
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_opening_brace_in_array_initializer"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_94

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_brace_in_array_initializer:Z

    :cond_94
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_annotation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_95

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_annotation:Z

    :cond_95
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_cast"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_96

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_cast:Z

    :cond_96
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_catch"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_97

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_catch:Z

    :cond_97
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_constructor_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_98

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_constructor_declaration:Z

    :cond_98
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_enum_constant"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_99

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_enum_constant:Z

    :cond_99
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_for"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9a

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_for:Z

    :cond_9a
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_if"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9b

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_if:Z

    :cond_9b
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_method_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9c

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_method_declaration:Z

    :cond_9c
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_method_invocation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9d

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_method_invocation:Z

    :cond_9d
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_parenthesized_expression"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9e

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_parenthesized_expression:Z

    :cond_9e
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_switch"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9f

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_switch:Z

    :cond_9f
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_synchronized"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_synchronized:Z

    :cond_a0
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_try"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_try:Z

    :cond_a1
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_while"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a2

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_while:Z

    :cond_a2
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_postfix_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_postfix_operator:Z

    :cond_a3
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_prefix_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a4

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_prefix_operator:Z

    :cond_a4
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_question_in_conditional"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a5

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_question_in_conditional:Z

    :cond_a5
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_question_in_wildcard"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_question_in_wilcard:Z

    :cond_a6
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_semicolon_in_for"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a7

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_semicolon_in_for:Z

    :cond_a7
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_semicolon_in_try_resources"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a8

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_semicolon_in_try_resources:Z

    :cond_a8
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_after_unary_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a9

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_unary_operator:Z

    :cond_a9
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_and_in_type_parameter"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_aa

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_and_in_type_parameter:Z

    :cond_aa
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/b0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/b0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v10, "org.eclipse.jdt.core.formatter.insert_space_before_arrow_in_switch_case"

    invoke-direct {p0, p1, v10, v6, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/c0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/c0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v10, "org.eclipse.jdt.core.formatter.insert_space_before_arrow_in_switch_default"

    invoke-direct {p0, p1, v10, v6, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_at_in_annotation_type_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ab

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_at_in_annotation_type_declaration:Z

    :cond_ab
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_assignment_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ac

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_assignment_operator:Z

    :cond_ac
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/d0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/d0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v10, "org.eclipse.jdt.core.formatter.insert_space_before_multiplicative_operator"

    invoke-direct {p0, p1, v10, v6, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/f0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/f0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v10, "org.eclipse.jdt.core.formatter.insert_space_before_additive_operator"

    invoke-direct {p0, p1, v10, v6, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/g0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/g0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v10, "org.eclipse.jdt.core.formatter.insert_space_before_string_concatenation"

    invoke-direct {p0, p1, v10, v6, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/h0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/h0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v10, "org.eclipse.jdt.core.formatter.insert_space_before_shift_operator"

    invoke-direct {p0, p1, v10, v6, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/i0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/i0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v10, "org.eclipse.jdt.core.formatter.insert_space_before_relational_operator"

    invoke-direct {p0, p1, v10, v6, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/j0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/j0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v10, "org.eclipse.jdt.core.formatter.insert_space_before_bitwise_operator"

    invoke-direct {p0, p1, v10, v6, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/k0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/k0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v10, "org.eclipse.jdt.core.formatter.insert_space_before_logical_operator"

    invoke-direct {p0, p1, v10, v6, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_closing_angle_bracket_in_parameterized_type_reference"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ad

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_angle_bracket_in_parameterized_type_reference:Z

    :cond_ad
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_closing_angle_bracket_in_type_arguments"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ae

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_angle_bracket_in_type_arguments:Z

    :cond_ae
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_closing_angle_bracket_in_type_parameters"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_af

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_angle_bracket_in_type_parameters:Z

    :cond_af
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_closing_brace_in_array_initializer"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_brace_in_array_initializer:Z

    :cond_b0
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_closing_bracket_in_array_allocation_expression"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_bracket_in_array_allocation_expression:Z

    :cond_b1
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_closing_bracket_in_array_reference"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b2

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_bracket_in_array_reference:Z

    :cond_b2
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_annotation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_annotation:Z

    :cond_b3
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_cast"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b4

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_cast:Z

    :cond_b4
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_catch"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b5

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_catch:Z

    :cond_b5
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_constructor_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_constructor_declaration:Z

    :cond_b6
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_enum_constant"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b7

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_enum_constant:Z

    :cond_b7
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_for"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b8

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_for:Z

    :cond_b8
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_if"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b9

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_if:Z

    :cond_b9
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_method_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ba

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_method_declaration:Z

    :cond_ba
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_method_invocation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_bb

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_method_invocation:Z

    :cond_bb
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_parenthesized_expression"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_bc

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_parenthesized_expression:Z

    :cond_bc
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_switch"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_bd

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_switch:Z

    :cond_bd
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_synchronized"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_be

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_synchronized:Z

    :cond_be
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_try"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_bf

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_try:Z

    :cond_bf
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_while"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_while:Z

    :cond_c0
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_colon_in_assert"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_assert:Z

    :cond_c1
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_colon_in_case"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c2

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_case:Z

    :cond_c2
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_colon_in_conditional"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_conditional:Z

    :cond_c3
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_colon_in_default"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c4

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_default:Z

    :cond_c4
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_colon_in_for"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c5

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_for:Z

    :cond_c5
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_colon_in_labeled_statement"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_labeled_statement:Z

    :cond_c6
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_allocation_expression"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c7

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_allocation_expression:Z

    :cond_c7
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_annotation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c8

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_annotation:Z

    :cond_c8
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_array_initializer"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c9

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_array_initializer:Z

    :cond_c9
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_constructor_declaration_parameters"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ca

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_constructor_declaration_parameters:Z

    :cond_ca
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_constructor_declaration_throws"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_cb

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_constructor_declaration_throws:Z

    :cond_cb
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_enum_constant_arguments"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_cc

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_enum_constant_arguments:Z

    :cond_cc
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_enum_declarations"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_cd

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_enum_declarations:Z

    :cond_cd
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_explicitconstructorcall_arguments"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ce

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_explicit_constructor_call_arguments:Z

    :cond_ce
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_for_increments"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_cf

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_for_increments:Z

    :cond_cf
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_for_inits"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_for_inits:Z

    :cond_d0
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_method_invocation_arguments"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_method_invocation_arguments:Z

    :cond_d1
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_method_declaration_parameters"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d2

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_method_declaration_parameters:Z

    :cond_d2
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_method_declaration_throws"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_method_declaration_throws:Z

    :cond_d3
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_multiple_field_declarations"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d4

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_multiple_field_declarations:Z

    :cond_d4
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_multiple_local_declarations"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d5

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_multiple_local_declarations:Z

    :cond_d5
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_parameterized_type_reference"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_parameterized_type_reference:Z

    :cond_d6
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_superinterfaces"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d7

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_superinterfaces:Z

    :cond_d7
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/l0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/l0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v10, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_switch_case_expressions"

    invoke-direct {p0, p1, v10, v6, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_type_arguments"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d8

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_type_arguments:Z

    :cond_d8
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_comma_in_type_parameters"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d9

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_type_parameters:Z

    :cond_d9
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_ellipsis"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_da

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_ellipsis:Z

    :cond_da
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_lambda_arrow"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_db

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_lambda_arrow:Z

    :cond_db
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_angle_bracket_in_parameterized_type_reference"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_dc

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_angle_bracket_in_parameterized_type_reference:Z

    :cond_dc
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_angle_bracket_in_type_arguments"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_dd

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_angle_bracket_in_type_arguments:Z

    :cond_dd
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_angle_bracket_in_type_parameters"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_de

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_angle_bracket_in_type_parameters:Z

    :cond_de
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_annotation_type_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_df

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_annotation_type_declaration:Z

    :cond_df
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_anonymous_type_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_anonymous_type_declaration:Z

    :cond_e0
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_array_initializer"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_array_initializer:Z

    :cond_e1
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_block"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e2

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_block:Z

    :cond_e2
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_constructor_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_constructor_declaration:Z

    :cond_e3
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_enum_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e4

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_enum_declaration:Z

    :cond_e4
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_enum_constant"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e5

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_enum_constant:Z

    :cond_e5
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_method_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_method_declaration:Z

    :cond_e6
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_type_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e7

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_type_declaration:Z

    :cond_e7
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_bracket_in_array_allocation_expression"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e8

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_bracket_in_array_allocation_expression:Z

    :cond_e8
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_bracket_in_array_reference"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e9

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_bracket_in_array_reference:Z

    :cond_e9
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_bracket_in_array_type_reference"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ea

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_bracket_in_array_type_reference:Z

    :cond_ea
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_annotation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_eb

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_annotation:Z

    :cond_eb
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_annotation_type_member_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ec

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_annotation_type_member_declaration:Z

    :cond_ec
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_catch"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ed

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_catch:Z

    :cond_ed
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_constructor_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ee

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_constructor_declaration:Z

    :cond_ee
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_enum_constant"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ef

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_enum_constant:Z

    :cond_ef
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_for"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_for:Z

    :cond_f0
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_if"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_if:Z

    :cond_f1
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_method_invocation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f2

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_method_invocation:Z

    :cond_f2
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_method_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_method_declaration:Z

    :cond_f3
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_switch"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f4

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_switch:Z

    :cond_f4
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_switch"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f5

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_switch:Z

    :cond_f5
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_synchronized"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_synchronized:Z

    :cond_f6
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_try"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f7

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_try:Z

    :cond_f7
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_parenthesized_expression"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f8

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_parenthesized_expression:Z

    :cond_f8
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_while"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f9

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_while:Z

    :cond_f9
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_parenthesized_expression_in_return"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_fa

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_parenthesized_expression_in_return:Z

    :cond_fa
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_parenthesized_expression_in_throw"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_fb

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_parenthesized_expression_in_throw:Z

    :cond_fb
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_postfix_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_fc

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_postfix_operator:Z

    :cond_fc
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_prefix_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_fd

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_prefix_operator:Z

    :cond_fd
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_question_in_conditional"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_fe

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_question_in_conditional:Z

    :cond_fe
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_question_in_wildcard"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ff

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_question_in_wilcard:Z

    :cond_ff
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_semicolon"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_100

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_semicolon:Z

    :cond_100
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_semicolon_in_for"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_101

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_semicolon_in_for:Z

    :cond_101
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_semicolon_in_try_resources"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_102

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_semicolon_in_try_resources:Z

    :cond_102
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_unary_operator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_103

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_unary_operator:Z

    :cond_103
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_between_brackets_in_array_type_reference"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_104

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_brackets_in_array_type_reference:Z

    :cond_104
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_between_empty_braces_in_array_initializer"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_105

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_braces_in_array_initializer:Z

    :cond_105
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_between_empty_brackets_in_array_allocation_expression"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_106

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_brackets_in_array_allocation_expression:Z

    :cond_106
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_constructor_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_107

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_constructor_declaration:Z

    :cond_107
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_annotation_type_member_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_108

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_annotation_type_member_declaration:Z

    :cond_108
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_enum_constant"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_109

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_enum_constant:Z

    :cond_109
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_method_declaration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10a

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_method_declaration:Z

    :cond_10a
    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_method_invocation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10b

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_method_invocation:Z

    :cond_10b
    const-string v0, "org.eclipse.jdt.core.formatter.compact_else_if"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10c

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->compact_else_if:Z

    :cond_10c
    const-string v0, "org.eclipse.jdt.core.formatter.format_guardian_clause_on_one_line"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10d

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_guardian_clause_on_one_line:Z

    :cond_10d
    const-string v0, "org.eclipse.jdt.core.formatter.keep_else_statement_on_same_line"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10e

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_else_statement_on_same_line:Z

    :cond_10e
    const-string v0, "org.eclipse.jdt.core.formatter.keep_empty_array_initializer_on_one_line"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10f

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_empty_array_initializer_on_one_line:Z

    :cond_10f
    const-string v0, "org.eclipse.jdt.core.formatter.keep_imple_if_on_one_line"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_110

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_if_on_one_line:Z

    :cond_110
    const-string v0, "org.eclipse.jdt.core.formatter.keep_then_statement_on_same_line"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_111

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_then_statement_on_same_line:Z

    :cond_111
    const-string v0, "org.eclipse.jdt.core.formatter.keep_simple_for_body_on_same_line"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_112

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_for_body_on_same_line:Z

    :cond_112
    const-string v0, "org.eclipse.jdt.core.formatter.keep_simple_while_body_on_same_line"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_113

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_while_body_on_same_line:Z

    :cond_113
    const-string v0, "org.eclipse.jdt.core.formatter.keep_simple_do_while_body_on_same_line"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_114

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_do_while_body_on_same_line:Z

    :cond_114
    const-string v0, "org.eclipse.jdt.core.formatter.never_indent_block_comments_on_first_column"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_115

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->never_indent_block_comments_on_first_column:Z

    :cond_115
    const-string v0, "org.eclipse.jdt.core.formatter.never_indent_line_comments_on_first_column"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_116

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->never_indent_line_comments_on_first_column:Z

    :cond_116
    const-string v0, "org.eclipse.jdt.core.formatter.number_of_empty_lines_to_preserve"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_117

    :try_start_34
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->number_of_empty_lines_to_preserve:I
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_34} :catch_5c
    .catch Ljava/lang/ClassCastException; {:try_start_34 .. :try_end_34} :catch_5b

    goto :goto_35

    :catch_5b
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->number_of_empty_lines_to_preserve:I

    goto :goto_35

    :catch_5c
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->number_of_empty_lines_to_preserve:I

    :cond_117
    :goto_35
    const-string v0, "org.eclipse.jdt.core.formatter.join_lines_in_comments"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_118

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->join_lines_in_comments:Z

    :cond_118
    const-string v0, "org.eclipse.jdt.core.formatter.join_wrapped_lines"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_119

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->join_wrapped_lines:Z

    :cond_119
    const-string v0, "org.eclipse.jdt.core.formatter.put_empty_statement_on_new_line"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11a

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->put_empty_statement_on_new_line:Z

    :cond_11a
    const-string v0, "org.eclipse.jdt.core.formatter.tabulation.size"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11c

    :try_start_35
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_35} :catch_5d
    .catch Ljava/lang/ClassCastException; {:try_start_35 .. :try_end_35} :catch_5d

    goto :goto_36

    :catch_5d
    move v0, v8

    :goto_36
    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11b

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_size:I

    :cond_11b
    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11c

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indentation_size:I

    :cond_11c
    const-string v0, "org.eclipse.jdt.core.formatter.use_tabs_only_for_leading_indentations"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11d

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->use_tabs_only_for_leading_indentations:Z

    :cond_11d
    const-string v0, "org.eclipse.jdt.core.formatter.lineSplit"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11e

    const/16 v3, 0x78

    :try_start_36
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->page_width:I
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_36} :catch_5f
    .catch Ljava/lang/ClassCastException; {:try_start_36 .. :try_end_36} :catch_5e

    goto :goto_37

    :catch_5e
    iput v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->page_width:I

    goto :goto_37

    :catch_5f
    iput v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->page_width:I

    :cond_11e
    :goto_37
    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_121

    const-string v3, "tab"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11f

    iput v5, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_char:I

    goto :goto_38

    :cond_11f
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_120

    iput v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_char:I

    goto :goto_38

    :cond_120
    iput v8, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_char:I

    :cond_121
    :goto_38
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/n0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/n0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v3, "org.eclipse.jdt.core.formatter.wrap_before_multiplicative_operator"

    invoke-direct {p0, p1, v3, v1, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/o0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/o0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v3, "org.eclipse.jdt.core.formatter.wrap_before_additive_operator"

    invoke-direct {p0, p1, v3, v1, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/q0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/q0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v3, "org.eclipse.jdt.core.formatter.wrap_before_string_concatenation"

    invoke-direct {p0, p1, v3, v1, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/r0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/r0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v3, "org.eclipse.jdt.core.formatter.wrap_before_shift_operator"

    invoke-direct {p0, p1, v3, v1, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/s0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/s0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v3, "org.eclipse.jdt.core.formatter.wrap_before_relational_operator"

    invoke-direct {p0, p1, v3, v1, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/t0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/t0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v3, "org.eclipse.jdt.core.formatter.wrap_before_bitwise_operator"

    invoke-direct {p0, p1, v3, v1, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/u0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/u0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v3, "org.eclipse.jdt.core.formatter.wrap_before_logical_operator"

    invoke-direct {p0, p1, v3, v1, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/v0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/v0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v3, "org.eclipse.jdt.core.formatter.wrap_before_or_operator_multicatch"

    invoke-direct {p0, p1, v3, v1, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/w0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/w0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v4, "org.eclipse.jdt.core.formatter.wrap_before_conditional_operator"

    invoke-direct {p0, p1, v4, v1, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/x0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/x0;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const-string v5, "org.eclipse.jdt.core.formatter.wrap_before_assignment_operator"

    invoke-direct {p0, p1, v5, v1, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_122

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_or_operator_multicatch:Z

    :cond_122
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_123

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_conditional_operator:Z

    :cond_123
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_124

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_assignment_operator:Z

    :cond_124
    const-string v0, "org.eclipse.jdt.core.formatter.use_on_off_tags"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_125

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->use_tags:Z

    :cond_125
    const-string v0, "org.eclipse.jdt.core.formatter.disabling_tag"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_129

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_129

    check-cast v0, Ljava/lang/String;

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-nez v4, :cond_126

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->disabling_tag:[C

    goto :goto_3b

    :cond_126
    if-gez v4, :cond_127

    :goto_39
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    :cond_127
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    :goto_3a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_128

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->disabling_tag:[C

    goto :goto_3b

    :cond_128
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->disabling_tag:[C

    :cond_129
    :goto_3b
    const-string v0, "org.eclipse.jdt.core.formatter.enabling_tag"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12d

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_12d

    check-cast v0, Ljava/lang/String;

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-nez v4, :cond_12a

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->enabling_tag:[C

    goto :goto_3e

    :cond_12a
    if-gez v4, :cond_12b

    :goto_3c
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    :cond_12b
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :goto_3d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_12c

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->enabling_tag:[C

    goto :goto_3e

    :cond_12c
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->enabling_tag:[C

    :cond_12d
    :goto_3e
    const-string v0, "org.eclipse.jdt.core.formatter.wrap_outer_expressions_when_nested"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_12e

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_outer_expressions_when_nested:Z

    :cond_12e
    return-void
.end method

.method public setDefaultSettings()V
    .locals 4

    const/16 v0, 0x10

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_allocation_expression:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_annotation:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_enum_constant:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_explicit_constructor_call:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_method_invocation:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_qualified_allocation_expression:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_assignment:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_multiplicative_operator:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_additive_operator:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_string_concatenation:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_shift_operator:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_relational_operator:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_bitwise_operator:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_logical_operator:I

    const/16 v2, 0x34

    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_compact_if:I

    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_compact_loop:I

    const/16 v2, 0x30

    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_conditional_expression:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_conditional_expression_chain:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_enum_constants:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_expressions_in_array_initializer:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_expressions_in_for_loop_header:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_method_declaration:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_module_statements:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_multiple_fields:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_parameterized_type_references:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_parameters_in_constructor_declaration:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_parameters_in_method_declaration:I

    const/16 v2, 0x50

    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_resources_in_try:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_selector_in_method_invocation:I

    const/16 v3, 0x40

    iput v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_superclass_in_type_declaration:I

    iput v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_superinterfaces_in_enum_declaration:I

    iput v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_superinterfaces_in_type_declaration:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_throws_clause_in_constructor_declaration:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_throws_clause_in_method_declaration:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_type_arguments:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_type_parameters:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_union_type_in_multicatch:I

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_type_members_on_columns:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_variable_declarations_on_columns:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_assignment_statements_on_columns:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_with_spaces:Z

    const v0, 0x7fffffff

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_fields_grouping_blank_lines:I

    const-string v0, "end_of_line"

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_annotation_type_declaration:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_anonymous_type_declaration:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_array_initializer:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_block:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_block_in_case:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_constructor_declaration:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_enum_constant:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_enum_declaration:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_lambda_body:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_method_declaration:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_type_declaration:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_switch:Ljava/lang/String;

    const-string v0, "common_lines"

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_method_declaration:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_method_invocation:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_enum_constant_declaration:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_if_while_statement:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_for_statement:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_switch_statement:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_try_clause:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_catch_clause:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_annotation:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_lambda_declaration:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_clear_blank_lines_in_block_comment:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_clear_blank_lines_in_javadoc_comment:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_block_comment:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_javadoc_comment:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_line_comment:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_line_comment_starting_on_first_column:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_header:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_html:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_source:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_indent_parameter_description:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_indent_tag_description:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_indent_root_tags:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_align_tags_names_descriptions:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_align_tags_descriptions_grouped:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_insert_empty_line_before_root_tags:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_insert_new_line_for_parameter:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_new_lines_at_block_boundaries:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_new_lines_at_javadoc_boundaries:Z

    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_line_length:I

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_count_line_length_from_starting_position:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_preserve_white_space_between_code_and_line_comments:Z

    const/4 v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->continuation_indentation:I

    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->continuation_indentation_for_array_initializer:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_after_imports:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_after_package:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_field:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_first_class_body_declaration:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_imports:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_member_type:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_method:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_new_chunk:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_package:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_between_import_groups:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_between_type_declarations:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_at_beginning_of_method_body:I

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_statements_compare_to_block:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_statements_compare_to_body:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_annotation_declaration_header:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_enum_constant_header:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_enum_declaration_header:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_type_header:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_breaks_compare_to_cases:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_empty_lines:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_switchstatements_compare_to_cases:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_switchstatements_compare_to_switch:Z

    const/4 v2, 0x4

    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indentation_size:I

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_type:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_type_annotation:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_enum_constant:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_field:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_method:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_package:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_parameter:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_local_variable:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_opening_brace_in_array_initializer:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_at_end_of_file_if_missing:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_catch_in_try_statement:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_closing_brace_in_array_initializer:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_else_in_if_statement:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_finally_in_try_statement:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_while_in_do_statement:Z

    const-string v3, "one_line_never"

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_annotation_declaration_on_one_line:Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_anonymous_type_declaration_on_one_line:Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_if_then_body_block_on_one_line:Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_lambda_body_block_on_one_line:Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_loop_body_block_on_one_line:Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_code_block_on_one_line:Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_enum_constant_declaration_on_one_line:Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_enum_declaration_on_one_line:Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_method_body_on_one_line:Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_type_declaration_on_one_line:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_getter_setter_on_one_line:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_and_in_type_parameter:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_arrow_in_switch_case:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_arrow_in_switch_default:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_assignment_operator:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_at_in_annotation:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_at_in_annotation_type_declaration:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_multiplicative_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_additive_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_string_concatenation:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_shift_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_relational_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_bitwise_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_logical_operator:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_closing_angle_bracket_in_type_arguments:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_closing_angle_bracket_in_type_parameters:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_closing_paren_in_cast:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_closing_brace_in_block:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_assert:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_case:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_conditional:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_for:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_labeled_statement:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_allocation_expression:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_annotation:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_array_initializer:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_constructor_declaration_parameters:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_constructor_declaration_throws:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_enum_constant_arguments:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_enum_declarations:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_explicit_constructor_call_arguments:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_for_increments:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_for_inits:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_method_invocation_arguments:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_method_declaration_parameters:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_method_declaration_throws:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_multiple_field_declarations:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_multiple_local_declarations:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_parameterized_type_reference:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_superinterfaces:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_switch_case_expressions:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_type_arguments:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_type_parameters:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_ellipsis:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_lambda_arrow:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_angle_bracket_in_parameterized_type_reference:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_angle_bracket_in_type_arguments:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_angle_bracket_in_type_parameters:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_bracket_in_array_allocation_expression:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_bracket_in_array_reference:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_brace_in_array_initializer:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_annotation:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_cast:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_catch:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_constructor_declaration:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_enum_constant:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_for:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_if:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_method_declaration:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_method_invocation:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_parenthesized_expression:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_switch:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_synchronized:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_try:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_while:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_postfix_operator:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_prefix_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_question_in_conditional:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_question_in_wilcard:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_semicolon_in_for:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_semicolon_in_try_resources:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_unary_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_and_in_type_parameter:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_arrow_in_switch_case:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_arrow_in_switch_default:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_at_in_annotation_type_declaration:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_assignment_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_multiplicative_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_additive_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_string_concatenation:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_shift_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_relational_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_bitwise_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_logical_operator:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_angle_bracket_in_parameterized_type_reference:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_angle_bracket_in_type_arguments:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_angle_bracket_in_type_parameters:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_brace_in_array_initializer:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_bracket_in_array_allocation_expression:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_bracket_in_array_reference:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_annotation:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_cast:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_catch:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_constructor_declaration:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_enum_constant:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_for:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_if:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_method_declaration:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_method_invocation:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_parenthesized_expression:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_switch:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_synchronized:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_try:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_while:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_assert:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_case:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_conditional:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_default:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_for:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_labeled_statement:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_allocation_expression:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_array_initializer:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_constructor_declaration_parameters:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_constructor_declaration_throws:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_enum_constant_arguments:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_enum_declarations:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_explicit_constructor_call_arguments:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_for_increments:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_for_inits:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_method_invocation_arguments:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_method_declaration_parameters:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_method_declaration_throws:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_multiple_field_declarations:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_multiple_local_declarations:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_parameterized_type_reference:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_superinterfaces:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_switch_case_expressions:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_type_arguments:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_type_parameters:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_ellipsis:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_lambda_arrow:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_parenthesized_expression_in_return:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_parenthesized_expression_in_throw:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_angle_bracket_in_parameterized_type_reference:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_angle_bracket_in_type_arguments:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_angle_bracket_in_type_parameters:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_annotation_type_declaration:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_anonymous_type_declaration:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_array_initializer:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_block:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_constructor_declaration:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_enum_constant:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_enum_declaration:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_method_declaration:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_switch:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_type_declaration:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_bracket_in_array_allocation_expression:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_bracket_in_array_reference:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_bracket_in_array_type_reference:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_annotation:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_annotation_type_member_declaration:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_catch:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_constructor_declaration:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_enum_constant:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_for:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_if:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_method_invocation:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_method_declaration:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_switch:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_synchronized:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_try:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_parenthesized_expression:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_while:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_postfix_operator:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_prefix_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_question_in_conditional:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_question_in_wilcard:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_semicolon:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_semicolon_in_for:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_semicolon_in_try_resources:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_unary_operator:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_brackets_in_array_type_reference:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_braces_in_array_initializer:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_brackets_in_array_allocation_expression:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_annotation_type_member_declaration:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_constructor_declaration:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_enum_constant:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_method_declaration:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_method_invocation:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->compact_else_if:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_guardian_clause_on_one_line:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_else_statement_on_same_line:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_empty_array_initializer_on_one_line:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_if_on_one_line:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_then_statement_on_same_line:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_for_body_on_same_line:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_while_body_on_same_line:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_do_while_body_on_same_line:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->never_indent_block_comments_on_first_column:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->never_indent_line_comments_on_first_column:Z

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->number_of_empty_lines_to_preserve:I

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->join_lines_in_comments:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->join_wrapped_lines:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->put_empty_statement_on_new_line:Z

    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_size:I

    const/16 v2, 0x78

    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->page_width:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_char:I

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->use_tabs_only_for_leading_indentations:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_multiplicative_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_additive_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_string_concatenation:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_shift_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_relational_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_bitwise_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_logical_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_or_operator_multicatch:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_conditional_operator:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_assignment_operator:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->use_tags:Z

    sget-object v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->DEFAULT_DISABLING_TAG:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->disabling_tag:[C

    sget-object v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->DEFAULT_ENABLING_TAG:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->enabling_tag:[C

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_outer_expressions_when_nested:Z

    return-void
.end method

.method public setEclipseDefaultSettings()V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->setJavaConventionsSettings()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_char:I

    const/4 v0, 0x4

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_size:I

    return-void
.end method

.method public setJavaConventionsSettings()V
    .locals 4

    const/16 v0, 0x10

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_allocation_expression:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_annotation:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_enum_constant:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_explicit_constructor_call:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_method_invocation:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_qualified_allocation_expression:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_assignment:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_multiplicative_operator:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_additive_operator:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_string_concatenation:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_shift_operator:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_relational_operator:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_bitwise_operator:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_logical_operator:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_compact_if:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_compact_loop:I

    const/16 v2, 0x50

    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_conditional_expression:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_conditional_expression_chain:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_enum_constants:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_expressions_in_array_initializer:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_expressions_in_for_loop_header:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_method_declaration:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_module_statements:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_multiple_fields:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_parameterized_type_references:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_parameters_in_constructor_declaration:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_parameters_in_method_declaration:I

    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_resources_in_try:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_selector_in_method_invocation:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_superclass_in_type_declaration:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_superinterfaces_in_enum_declaration:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_superinterfaces_in_type_declaration:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_throws_clause_in_constructor_declaration:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_throws_clause_in_method_declaration:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_type_arguments:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_type_parameters:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_union_type_in_multicatch:I

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_type_members_on_columns:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_variable_declarations_on_columns:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_assignment_statements_on_columns:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_with_spaces:Z

    const v0, 0x7fffffff

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_fields_grouping_blank_lines:I

    const-string v0, "end_of_line"

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_annotation_type_declaration:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_anonymous_type_declaration:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_array_initializer:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_block:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_block_in_case:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_constructor_declaration:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_enum_constant:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_enum_declaration:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_lambda_body:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_method_declaration:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_type_declaration:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_switch:Ljava/lang/String;

    const-string v0, "common_lines"

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_method_declaration:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_method_invocation:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_enum_constant_declaration:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_if_while_statement:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_for_statement:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_switch_statement:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_try_clause:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_catch_clause:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_annotation:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_lambda_declaration:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_clear_blank_lines_in_block_comment:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_clear_blank_lines_in_javadoc_comment:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_block_comment:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_javadoc_comment:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_line_comment:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_line_comment_starting_on_first_column:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_header:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_html:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_source:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_indent_parameter_description:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_indent_tag_description:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_indent_root_tags:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_align_tags_names_descriptions:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_align_tags_descriptions_grouped:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_insert_empty_line_before_root_tags:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_insert_new_line_for_parameter:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_new_lines_at_block_boundaries:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_new_lines_at_javadoc_boundaries:Z

    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_line_length:I

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_count_line_length_from_starting_position:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_preserve_white_space_between_code_and_line_comments:Z

    const/4 v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->continuation_indentation:I

    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->continuation_indentation_for_array_initializer:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_after_imports:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_after_package:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_field:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_first_class_body_declaration:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_imports:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_member_type:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_method:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_new_chunk:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_package:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_between_import_groups:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_between_type_declarations:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_at_beginning_of_method_body:I

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_statements_compare_to_block:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_statements_compare_to_body:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_annotation_declaration_header:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_enum_constant_header:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_enum_declaration_header:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_type_header:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_breaks_compare_to_cases:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_empty_lines:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_switchstatements_compare_to_cases:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_switchstatements_compare_to_switch:Z

    const/4 v2, 0x4

    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indentation_size:I

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_type:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_type_annotation:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_enum_constant:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_field:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_method:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_package:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_parameter:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_local_variable:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_opening_brace_in_array_initializer:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_at_end_of_file_if_missing:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_catch_in_try_statement:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_closing_brace_in_array_initializer:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_else_in_if_statement:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_finally_in_try_statement:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_while_in_do_statement:Z

    const-string v3, "one_line_never"

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_annotation_declaration_on_one_line:Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_anonymous_type_declaration_on_one_line:Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_if_then_body_block_on_one_line:Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_lambda_body_block_on_one_line:Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_loop_body_block_on_one_line:Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_code_block_on_one_line:Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_enum_constant_declaration_on_one_line:Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_enum_declaration_on_one_line:Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_method_body_on_one_line:Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_type_declaration_on_one_line:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_and_in_type_parameter:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_arrow_in_switch_case:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_arrow_in_switch_default:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_assignment_operator:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_at_in_annotation:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_at_in_annotation_type_declaration:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_multiplicative_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_additive_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_string_concatenation:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_shift_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_relational_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_bitwise_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_logical_operator:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_closing_angle_bracket_in_type_arguments:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_closing_angle_bracket_in_type_parameters:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_closing_paren_in_cast:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_closing_brace_in_block:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_assert:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_case:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_conditional:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_for:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_labeled_statement:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_allocation_expression:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_annotation:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_array_initializer:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_constructor_declaration_parameters:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_constructor_declaration_throws:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_enum_constant_arguments:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_enum_declarations:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_explicit_constructor_call_arguments:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_for_increments:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_for_inits:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_method_invocation_arguments:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_method_declaration_parameters:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_method_declaration_throws:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_multiple_field_declarations:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_multiple_local_declarations:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_parameterized_type_reference:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_superinterfaces:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_switch_case_expressions:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_type_arguments:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_type_parameters:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_ellipsis:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_lambda_arrow:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_angle_bracket_in_parameterized_type_reference:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_angle_bracket_in_type_arguments:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_angle_bracket_in_type_parameters:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_bracket_in_array_allocation_expression:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_bracket_in_array_reference:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_brace_in_array_initializer:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_annotation:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_cast:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_catch:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_constructor_declaration:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_enum_constant:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_for:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_if:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_method_declaration:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_method_invocation:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_parenthesized_expression:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_switch:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_synchronized:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_try:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_while:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_postfix_operator:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_prefix_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_question_in_conditional:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_question_in_wilcard:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_semicolon_in_for:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_semicolon_in_try_resources:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_unary_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_and_in_type_parameter:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_arrow_in_switch_case:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_arrow_in_switch_default:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_at_in_annotation_type_declaration:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_assignment_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_multiplicative_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_additive_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_string_concatenation:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_shift_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_relational_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_bitwise_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_logical_operator:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_angle_bracket_in_parameterized_type_reference:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_angle_bracket_in_type_arguments:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_angle_bracket_in_type_parameters:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_brace_in_array_initializer:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_bracket_in_array_allocation_expression:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_bracket_in_array_reference:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_annotation:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_cast:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_catch:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_constructor_declaration:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_enum_constant:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_for:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_if:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_method_declaration:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_method_invocation:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_parenthesized_expression:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_switch:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_synchronized:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_try:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_while:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_assert:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_case:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_conditional:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_default:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_for:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_labeled_statement:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_allocation_expression:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_array_initializer:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_constructor_declaration_parameters:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_constructor_declaration_throws:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_enum_constant_arguments:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_enum_declarations:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_explicit_constructor_call_arguments:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_for_increments:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_for_inits:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_method_invocation_arguments:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_method_declaration_parameters:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_method_declaration_throws:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_multiple_field_declarations:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_multiple_local_declarations:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_parameterized_type_reference:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_superinterfaces:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_switch_case_expressions:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_type_arguments:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_type_parameters:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_ellipsis:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_lambda_arrow:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_parenthesized_expression_in_return:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_parenthesized_expression_in_throw:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_angle_bracket_in_parameterized_type_reference:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_angle_bracket_in_type_arguments:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_angle_bracket_in_type_parameters:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_annotation_type_declaration:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_anonymous_type_declaration:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_array_initializer:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_block:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_constructor_declaration:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_enum_constant:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_enum_declaration:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_method_declaration:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_switch:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_type_declaration:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_bracket_in_array_allocation_expression:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_bracket_in_array_reference:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_bracket_in_array_type_reference:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_annotation:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_annotation_type_member_declaration:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_catch:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_constructor_declaration:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_enum_constant:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_for:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_if:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_method_invocation:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_method_declaration:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_switch:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_synchronized:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_try:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_parenthesized_expression:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_while:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_postfix_operator:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_prefix_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_question_in_conditional:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_question_in_wilcard:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_semicolon:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_semicolon_in_for:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_semicolon_in_try_resources:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_unary_operator:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_brackets_in_array_type_reference:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_braces_in_array_initializer:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_brackets_in_array_allocation_expression:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_annotation_type_member_declaration:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_constructor_declaration:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_enum_constant:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_method_declaration:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_method_invocation:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->compact_else_if:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_guardian_clause_on_one_line:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_else_statement_on_same_line:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_empty_array_initializer_on_one_line:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_if_on_one_line:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_then_statement_on_same_line:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_for_body_on_same_line:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_while_body_on_same_line:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_do_while_body_on_same_line:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->never_indent_block_comments_on_first_column:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->never_indent_line_comments_on_first_column:Z

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->number_of_empty_lines_to_preserve:I

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->join_lines_in_comments:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->join_wrapped_lines:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->put_empty_statement_on_new_line:Z

    const/16 v3, 0x8

    iput v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_size:I

    const/16 v3, 0x78

    iput v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->page_width:I

    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_char:I

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->use_tabs_only_for_leading_indentations:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_multiplicative_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_additive_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_string_concatenation:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_shift_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_relational_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_bitwise_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_logical_operator:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_or_operator_multicatch:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_conditional_operator:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_assignment_operator:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->use_tags:Z

    sget-object v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->DEFAULT_DISABLING_TAG:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->disabling_tag:[C

    sget-object v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->DEFAULT_ENABLING_TAG:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->enabling_tag:[C

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_outer_expressions_when_nested:Z

    return-void
.end method
