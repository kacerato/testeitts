.class public Lorg/eclipse/jdt/internal/formatter/old/CodeFormatter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/parser/TerminalTokens;
.implements Lorg/eclipse/jdt/core/ICodeFormatter;


# instance fields
.field private options:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getOptions()Ljava/util/Hashtable;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/old/CodeFormatter;->options:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/old/CodeFormatter;->options:Ljava/util/Map;

    :goto_0
    return-void
.end method


# virtual methods
.method public format(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;
    .locals 11

    invoke-static {}, Lorg/eclipse/jdt/core/formatter/DefaultCodeFormatterConstants;->getEclipse21Settings()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/old/CodeFormatter;->options:Ljava/util/Map;

    const-string v2, "org.eclipse.jdt.core.formatter.newline.openingBrace"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "end_of_line"

    const-string v3, "insert"

    if-eqz v1, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "org.eclipse.jdt.core.formatter.brace_position_for_type_declaration"

    const-string v5, "org.eclipse.jdt.core.formatter.brace_position_for_switch"

    const-string v6, "org.eclipse.jdt.core.formatter.brace_position_for_method_declaration"

    const-string v7, "org.eclipse.jdt.core.formatter.brace_position_for_constructor_declaration"

    const-string v8, "org.eclipse.jdt.core.formatter.brace_position_for_block"

    const-string v9, "org.eclipse.jdt.core.formatter.brace_position_for_anonymous_type_declaration"

    if-eqz v1, :cond_0

    const-string v1, "next_line"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/old/CodeFormatter;->options:Ljava/util/Map;

    const-string v4, "org.eclipse.jdt.core.formatter.newline.controlStatement"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "do not insert"

    if-eqz v1, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "org.eclipse.jdt.core.formatter.insert_new_line_before_while_in_do_statement"

    const-string v6, "org.eclipse.jdt.core.formatter.insert_new_line_before_finally_in_try_statement"

    const-string v7, "org.eclipse.jdt.core.formatter.insert_new_line_before_else_in_if_statement"

    const-string v8, "org.eclipse.jdt.core.formatter.insert_new_line_before_catch_in_try_statement"

    if-eqz v1, :cond_2

    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/old/CodeFormatter;->options:Ljava/util/Map;

    const-string v5, "org.eclipse.jdt.core.formatter.newline.clearAll"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v5, "1"

    if-eqz v1, :cond_5

    const-string v6, "preserve one"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "org.eclipse.jdt.core.formatter.number_of_empty_lines_to_preserve"

    if-eqz v1, :cond_4

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    const-string v1, "0"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/old/CodeFormatter;->options:Ljava/util/Map;

    const-string v6, "org.eclipse.jdt.core.formatter.newline.elseIf"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "org.eclipse.jdt.core.formatter.compact_else_if"

    if-eqz v1, :cond_6

    const-string v1, "false"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    const-string v1, "true"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/old/CodeFormatter;->options:Ljava/util/Map;

    const-string v6, "org.eclipse.jdt.core.formatter.newline.emptyBlock"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "org.eclipse.jdt.core.formatter.insert_new_line_in_empty_block"

    if-eqz v1, :cond_8

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/old/CodeFormatter;->options:Ljava/util/Map;

    const-string v6, "org.eclipse.jdt.core.formatter.style.assignment"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v6, "compact"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "org.eclipse.jdt.core.formatter.insert_space_before_assignment_operator"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_a
    const-string v1, "org.eclipse.jdt.core.formatter.insert_space_before_assignment_operator"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/old/CodeFormatter;->options:Ljava/util/Map;

    const-string v6, "org.eclipse.jdt.core.formatter.space.castexpression"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/old/CodeFormatter;->options:Ljava/util/Map;

    const-string v6, "org.eclipse.jdt.core.formatter.space.castexpression"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "org.eclipse.jdt.core.formatter.insert_space_after_closing_paren_in_cast"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_c
    const-string v1, "org.eclipse.jdt.core.formatter.insert_space_after_closing_paren_in_cast"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    :goto_6
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/old/CodeFormatter;->options:Ljava/util/Map;

    const-string v4, "org.eclipse.jdt.core.formatter.tabulation.char"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "org.eclipse.jdt.core.formatter.tabulation.char"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/old/CodeFormatter;->options:Ljava/util/Map;

    const-string v4, "org.eclipse.jdt.core.formatter.tabulation.size"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "org.eclipse.jdt.core.formatter.tabulation.size"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/old/CodeFormatter;->options:Ljava/util/Map;

    const-string v4, "org.eclipse.jdt.core.formatter.lineSplit"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "org.eclipse.jdt.core.formatter.lineSplit"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.brace_position_for_array_initializer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.continuation_indentation"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.alignment_for_parameters_in_method_declaration"

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    invoke-static {v2, v4, v5}, Lorg/eclipse/jdt/core/formatter/DefaultCodeFormatterConstants;->createAlignmentValue(ZII)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.alignment_for_parameters_in_constructor_declaration"

    invoke-static {v2, v4, v5}, Lorg/eclipse/jdt/core/formatter/DefaultCodeFormatterConstants;->createAlignmentValue(ZII)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.alignment_for_arguments_in_allocation_expression"

    invoke-static {v2, v4, v5}, Lorg/eclipse/jdt/core/formatter/DefaultCodeFormatterConstants;->createAlignmentValue(ZII)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.alignment_for_arguments_in_explicit_constructor_call"

    invoke-static {v2, v4, v5}, Lorg/eclipse/jdt/core/formatter/DefaultCodeFormatterConstants;->createAlignmentValue(ZII)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.alignment_for_arguments_in_method_invocation"

    invoke-static {v2, v4, v5}, Lorg/eclipse/jdt/core/formatter/DefaultCodeFormatterConstants;->createAlignmentValue(ZII)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.alignment_for_arguments_in_qualified_allocation_expression"

    invoke-static {v2, v4, v5}, Lorg/eclipse/jdt/core/formatter/DefaultCodeFormatterConstants;->createAlignmentValue(ZII)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.alignment_for_throws_clause_in_method_declaration"

    invoke-static {v2, v4, v5}, Lorg/eclipse/jdt/core/formatter/DefaultCodeFormatterConstants;->createAlignmentValue(ZII)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.alignment_for_multiple_fields"

    invoke-static {v2, v4, v5}, Lorg/eclipse/jdt/core/formatter/DefaultCodeFormatterConstants;->createAlignmentValue(ZII)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.alignment_for_binary_expression"

    invoke-static {v2, v4, v5}, Lorg/eclipse/jdt/core/formatter/DefaultCodeFormatterConstants;->createAlignmentValue(ZII)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_array_initializer"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.insert_space_after_opening_brace_in_array_initializer"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.insert_space_before_closing_brace_in_array_initializer"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;

    invoke-direct {v4, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, p1

    move v9, p2

    move-object v10, p4

    invoke-virtual/range {v4 .. v10}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->format(ILjava/lang/String;IIILjava/lang/String;)Lorg/eclipse/text/edits/TextEdit;

    move-result-object p2

    if-eqz p3, :cond_12

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Lorg/eclipse/text/edits/TextEdit;->getChildren()[Lorg/eclipse/text/edits/TextEdit;

    move-result-object p4

    array-length v0, p4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eqz v0, :cond_12

    array-length v3, p3

    move v4, v2

    move v5, v4

    :goto_7
    if-lt v2, v3, :cond_e

    goto :goto_a

    :cond_e
    aget v6, p3, v2

    if-le v6, v1, :cond_f

    move v6, v1

    :cond_f
    aget-object v7, p4, v4

    check-cast v7, Lorg/eclipse/text/edits/ReplaceEdit;

    :goto_8
    invoke-virtual {v7}, Lorg/eclipse/text/edits/ReplaceEdit;->getOffset()I

    move-result v8

    if-le v8, v6, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {v7}, Lorg/eclipse/text/edits/ReplaceEdit;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7}, Lorg/eclipse/text/edits/ReplaceEdit;->getLength()I

    move-result v7

    sub-int/2addr v8, v7

    add-int/2addr v5, v8

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_11

    aget-object v7, p4, v4

    check-cast v7, Lorg/eclipse/text/edits/ReplaceEdit;

    goto :goto_8

    :cond_11
    :goto_9
    add-int/2addr v6, v5

    aput v6, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    :goto_a
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->editedString(Ljava/lang/String;Lorg/eclipse/text/edits/TextEdit;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
