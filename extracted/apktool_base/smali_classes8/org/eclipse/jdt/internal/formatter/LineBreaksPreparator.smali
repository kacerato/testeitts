.class public Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;
.super Lorg/eclipse/jdt/core/dom/ASTVisitor;
.source "SourceFile"


# instance fields
.field private declarationModifierVisited:Z

.field private final options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

.field private final tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/core/dom/Statement;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->lambda$0(Lorg/eclipse/jdt/core/dom/Statement;)Z

    move-result p0

    return p0
.end method

.method private adjustEmptyLineAfter(II)V
    .locals 2

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result p1

    const/4 v1, 0x2

    if-lt p1, v1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_empty_lines:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indentation_size:I

    mul-int/2addr p2, p1

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/formatter/Token;->setEmptyLineIndentAdjustment(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic b(Lorg/eclipse/jdt/core/dom/Statement;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->lambda$1(Lorg/eclipse/jdt/core/dom/Statement;)Z

    move-result p0

    return p0
.end method

.method private breakLineBefore(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    return-void
.end method

.method private handleAnnotation(Lorg/eclipse/jdt/core/dom/Annotation;)V
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->declarationModifierVisited:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_type_annotation:Z

    goto/16 :goto_1

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_package:Z

    goto/16 :goto_1

    :cond_1
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_type:Z

    goto :goto_1

    :cond_2
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_enum_constant:Z

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_field:Z

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_method:Z

    goto :goto_1

    :cond_5
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_method:Z

    if-eqz v1, :cond_9

    check-cast v0, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->getDefault()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    if-eq v0, p1, :cond_9

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;

    if-nez v1, :cond_a

    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_parameter:Z

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_local_variable:Z

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_1

    :cond_a
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_annotation_on_local_variable:Z

    :goto_1
    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->breakAfter()V

    :cond_b
    return-void
.end method

.method private handleBodyDeclarations(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/dom/BodyDeclaration;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/BodyDeclaration;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_first_class_body_declaration:I

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->putBlankLinesBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)V

    goto :goto_3

    :cond_1
    instance-of v2, v1, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_field:I

    goto :goto_2

    :cond_2
    instance-of v2, v1, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_member_type:I

    goto :goto_2

    :cond_3
    instance-of v2, v1, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    if-nez v2, :cond_5

    instance-of v2, v1, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_method:I

    :goto_2
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->sameChunk(Lorg/eclipse/jdt/core/dom/BodyDeclaration;Lorg/eclipse/jdt/core/dom/BodyDeclaration;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_new_chunk:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_6
    invoke-direct {p0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->putBlankLinesBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)V

    :goto_3
    move-object v0, v1

    goto :goto_0
.end method

.method private handleBracePosition(Lorg/eclipse/jdt/internal/formatter/Token;ILjava/lang/String;)V
    .locals 1

    const-string v0, "next_line"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    goto :goto_0

    :cond_0
    const-string v0, "next_line_shifted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->indent()V

    add-int/lit8 p2, p2, 0x1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->size()I

    move-result p1

    if-ge p2, p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->unindent()V

    goto :goto_0

    :cond_1
    const-string p2, "next_line_on_wrap"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->setNextLineOnWrap()V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleBracedCode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/lang/String;Z)V
    .locals 2

    const/16 v0, 0x31

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p2, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p2

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v1, 0x21

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    invoke-direct {p0, v0, p1, p3}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleBracePosition(Lorg/eclipse/jdt/internal/formatter/Token;ILjava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->breakAfter()V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    if-eqz p4, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->adjustEmptyLineAfter(II)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/2addr p2, p1

    invoke-virtual {p3, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->indent()V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->unindent()V

    :cond_1
    return-void
.end method

.method private handleLoopBody(Lorg/eclipse/jdt/core/dom/Statement;)V
    .locals 2

    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/Block;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/EmptyStatement;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->put_empty_statement_on_new_line:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/IfStatement;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->breakLineBefore(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->adjustEmptyLineAfter(II)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->indent(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    return-void
.end method

.method private indent(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->isComment()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->indent()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->unindent()V

    :cond_2
    return-void
.end method

.method private static synthetic lambda$0(Lorg/eclipse/jdt/core/dom/Statement;)Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/SwitchCase;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/eclipse/jdt/core/dom/SwitchCase;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SwitchCase;->isSwitchLabeledRule()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$1(Lorg/eclipse/jdt/core/dom/Statement;)Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/SwitchCase;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/eclipse/jdt/core/dom/SwitchCase;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SwitchCase;->isSwitchLabeledRule()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private putBlankLinesBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    :goto_0
    if-lez p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksBefore(I)V

    return-void
.end method

.method private sameChunk(Lorg/eclipse/jdt/core/dom/BodyDeclaration;Lorg/eclipse/jdt/core/dom/BodyDeclaration;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    if-nez v0, :cond_2

    instance-of p1, p1, Lorg/eclipse/jdt/core/dom/Initializer;

    if-eqz p1, :cond_3

    :cond_2
    instance-of p1, p2, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    if-nez p1, :cond_4

    instance-of p1, p2, Lorg/eclipse/jdt/core/dom/Initializer;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public finishUp()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->initial_indentation_level:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indentation_size:I

    mul-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/formatter/Token;->setIndent(I)V

    goto :goto_0
.end method

.method public preVisit2(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;)Z
    .locals 3

    .line 44
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_annotation_type_declaration:Ljava/lang/String;

    .line 45
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_annotation_declaration_header:Z

    .line 46
    invoke-direct {p0, p1, v0, v2, v1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleBracedCode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/lang/String;Z)V

    .line 47
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleBodyDeclarations(Ljava/util/List;)V

    .line 48
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getModifiers()I

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    const/16 v1, 0x25

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    :cond_0
    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->declarationModifierVisited:Z

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;)Z
    .locals 0

    const/4 p1, 0x0

    .line 179
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->declarationModifierVisited:Z

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;)Z
    .locals 3

    .line 51
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_enum_constant:Ljava/lang/String;

    .line 53
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_enum_constant_header:Z

    .line 54
    invoke-direct {p0, p1, v1, v2, v0}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleBracedCode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/lang/String;Z)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_anonymous_type_declaration:Ljava/lang/String;

    .line 56
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_type_header:Z

    .line 57
    invoke-direct {p0, p1, v1, v2, v0}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleBracedCode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/lang/String;Z)V

    .line 58
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleBodyDeclarations(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ArrayInitializer;)Z
    .locals 7

    .line 153
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v1, 0x31

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 154
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v2, 0x21

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v1, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    if-eqz v6, :cond_1

    .line 155
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->continuation_indentation_for_array_initializer:I

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->adjustEmptyLineAfter(II)V

    .line 156
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    .line 157
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    .line 158
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v2

    .line 159
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    instance-of p1, p1, Lorg/eclipse/jdt/core/dom/ArrayInitializer;

    if-nez p1, :cond_3

    .line 160
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    .line 161
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->continuation_indentation_for_array_initializer:I

    if-lt v4, v3, :cond_2

    goto :goto_2

    .line 162
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->indent()V

    .line 163
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->unindent()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    .line 164
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_empty_array_initializer_on_one_line:Z

    if-nez p1, :cond_5

    .line 165
    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_array_initializer:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleBracePosition(Lorg/eclipse/jdt/internal/formatter/Token;ILjava/lang/String;)V

    :cond_5
    if-nez v6, :cond_7

    .line 166
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_opening_brace_in_array_initializer:Z

    if-eqz p1, :cond_6

    .line 167
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->breakAfter()V

    .line 168
    :cond_6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_closing_brace_in_array_initializer:Z

    if-eqz p1, :cond_7

    .line 169
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    :cond_7
    return v5
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Block;)Z
    .locals 5

    .line 67
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Block;->statements()Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 69
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 71
    :cond_1
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    if-eqz v1, :cond_2

    return v2

    .line 72
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_block:Ljava/lang/String;

    .line 73
    instance-of v4, v0, Lorg/eclipse/jdt/core/dom/SwitchStatement;

    if-eqz v4, :cond_3

    .line 74
    check-cast v0, Lorg/eclipse/jdt/core/dom/SwitchStatement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/SwitchStatement;->statements()Ljava/util/List;

    move-result-object v0

    .line 75
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_4

    sub-int/2addr v1, v2

    .line 76
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/SwitchCase;

    if-eqz v0, :cond_4

    .line 77
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_block_in_case:Ljava/lang/String;

    goto :goto_1

    .line 78
    :cond_3
    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/LambdaExpression;

    if-eqz v0, :cond_4

    .line 79
    iget-object v3, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_lambda_body:Ljava/lang/String;

    .line 80
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_statements_compare_to_block:Z

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v3, v0}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleBracedCode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/lang/String;Z)V

    return v2

    .line 81
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Statement;

    .line 82
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->put_empty_statement_on_new_line:Z

    if-nez v2, :cond_6

    instance-of v2, v1, Lorg/eclipse/jdt/core/dom/EmptyStatement;

    if-nez v2, :cond_0

    .line 83
    :cond_6
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->breakLineBefore(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CatchClause;)Z
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_catch_in_try_statement:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->breakLineBefore(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->imports()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v4, v4, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_imports:I

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksBefore(I)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->types()Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_after_imports:I

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->putBlankLinesBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)V

    :cond_1
    move v0, v3

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_between_type_declarations:I

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->putBlankLinesBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v3
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/DoStatement;)Z
    .locals 3

    .line 144
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/DoStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_do_while_body_on_same_line:Z

    if-nez v1, :cond_0

    .line 146
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleLoopBody(Lorg/eclipse/jdt/core/dom/Statement;)V

    .line 147
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_while_in_do_statement:Z

    if-nez v2, :cond_1

    .line 148
    instance-of v2, v0, Lorg/eclipse/jdt/core/dom/Block;

    if-nez v2, :cond_2

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/EmptyStatement;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 149
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/DoStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    const/16 v1, 0x4b

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnhancedForStatement;)Z
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_for_body_on_same_line:Z

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleLoopBody(Lorg/eclipse/jdt/core/dom/Statement;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;)Z
    .locals 0

    const/4 p1, 0x0

    .line 180
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->declarationModifierVisited:Z

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnumDeclaration;)Z
    .locals 7

    .line 26
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_enum_declaration:Ljava/lang/String;

    .line 27
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_enum_declaration_header:Z

    .line 28
    invoke-direct {p0, p1, v0, v2, v1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleBracedCode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/lang/String;Z)V

    .line 29
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleBodyDeclarations(Ljava/util/List;)V

    .line 30
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->enumConstants()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v2, v3, :cond_3

    .line 32
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    const/16 v2, 0x31

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    add-int/2addr p1, v4

    goto :goto_1

    .line 33
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    .line 34
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->isComment()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 36
    :cond_1
    iget v2, v0, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_2

    .line 37
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->breakAfter()V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 38
    :cond_2
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->declarationModifierVisited:Z

    return v4

    .line 39
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;

    .line 40
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 41
    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v6, 0x3eb

    invoke-virtual {v5, v3, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    .line 42
    :cond_4
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->getAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-ge v2, v5, :cond_5

    .line 43
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v5, 0x20

    invoke-virtual {v4, v3, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->breakAfter()V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/FieldDeclaration;)Z
    .locals 0

    const/4 p1, 0x0

    .line 178
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->declarationModifierVisited:Z

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ForStatement;)Z
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_for_body_on_same_line:Z

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleLoopBody(Lorg/eclipse/jdt/core/dom/Statement;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/IfStatement;)Z
    .locals 3

    .line 188
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/IfStatement;->getElseStatement()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v0

    .line 189
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/IfStatement;->getThenStatement()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    if-eqz v0, :cond_3

    .line 190
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_else_in_if_statement:Z

    if-nez v1, :cond_0

    instance-of v1, p1, Lorg/eclipse/jdt/core/dom/Block;

    if-nez v1, :cond_1

    .line 191
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v2, 0x70

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    .line 192
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_else_statement_on_same_line:Z

    if-nez v2, :cond_3

    .line 193
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->compact_else_if:Z

    if-eqz v1, :cond_2

    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/IfStatement;

    if-nez v1, :cond_3

    .line 194
    :cond_2
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleLoopBody(Lorg/eclipse/jdt/core/dom/Statement;)V

    .line 195
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_then_statement_on_same_line:Z

    if-nez v2, :cond_5

    .line 196
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_if_on_one_line:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_5

    .line 197
    :cond_4
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleLoopBody(Lorg/eclipse/jdt/core/dom/Statement;)V

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ImportDeclaration;)Z
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->breakLineBefore(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/LabeledStatement;)Z
    .locals 2

    .line 151
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_label:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v1, 0x3e

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->breakAfter()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MarkerAnnotation;)Z
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleAnnotation(Lorg/eclipse/jdt/core/dom/Annotation;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MethodDeclaration;)Z
    .locals 5

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->declarationModifierVisited:Z

    .line 60
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 61
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_constructor_declaration:Ljava/lang/String;

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_method_declaration:Ljava/lang/String;

    .line 63
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_statements_compare_to_body:Z

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4, v0, v3}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleBracedCode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/lang/String;Z)V

    .line 64
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p1

    const/16 v2, 0x31

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksAfter()I

    move-result v0

    if-lez v0, :cond_2

    .line 66
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_at_beginning_of_method_body:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksAfter(I)V

    :cond_2
    return v1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Modifier;)Z
    .locals 0

    const/4 p1, 0x1

    .line 181
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->declarationModifierVisited:Z

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;)Z
    .locals 3

    .line 202
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->breakLineBefore(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    .line 203
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_type_declaration:Ljava/lang/String;

    .line 204
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_type_header:Z

    .line 205
    invoke-direct {p0, p1, v0, v2, v1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleBracedCode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/lang/String;Z)V

    .line 206
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->moduleStatements()Ljava/util/List;

    move-result-object p1

    .line 207
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 208
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->declarationModifierVisited:Z

    const/4 p1, 0x1

    return p1

    .line 209
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ModuleDirective;

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_first_class_body_declaration:I

    goto :goto_1

    .line 211
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_field:I

    goto :goto_1

    .line 212
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_new_chunk:I

    .line 213
    :goto_1
    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->putBlankLinesBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)V

    move-object v0, v1

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/NormalAnnotation;)Z
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleAnnotation(Lorg/eclipse/jdt/core/dom/Annotation;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/PackageDeclaration;)Z
    .locals 6

    .line 11
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_before_package:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->annotations()Ljava/util/List;

    move-result-object v3

    .line 13
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v4

    const/16 v5, 0x55

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v3

    goto :goto_0

    .line 14
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v3

    .line 15
    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v3

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksBefore(I)V

    .line 16
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v3, 0x1a

    invoke-virtual {v0, p1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_after_package:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksAfter(I)V

    .line 17
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->declarationModifierVisited:Z

    return v2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;)Z
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleAnnotation(Lorg/eclipse/jdt/core/dom/Annotation;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;)Z
    .locals 3

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->declarationModifierVisited:Z

    .line 175
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    instance-of v1, v1, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->getModifiers()I

    move-result p1

    if-nez p1, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->declarationModifierVisited:Z

    :cond_1
    return v2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SwitchExpression;)Z
    .locals 9

    .line 114
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_switch:Ljava/lang/String;

    .line 115
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_switchstatements_compare_to_switch:Z

    .line 116
    invoke-direct {p0, p1, v0, v2, v1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleBracedCode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/lang/String;Z)V

    .line 117
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchExpression;->statements()Ljava/util/List;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_switchstatements_compare_to_cases:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, -0x1

    :goto_0
    move v4, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    if-ltz v4, :cond_6

    .line 120
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->indent()V

    .line 121
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v3, 0x21

    invoke-virtual {v1, p1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->unindent()V

    goto :goto_4

    .line 122
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/core/dom/Statement;

    .line 123
    instance-of v6, v5, Lorg/eclipse/jdt/core/dom/BreakStatement;

    if-nez v6, :cond_1

    instance-of v7, v5, Lorg/eclipse/jdt/core/dom/ReturnStatement;

    if-nez v7, :cond_1

    .line 124
    instance-of v7, v5, Lorg/eclipse/jdt/core/dom/ContinueStatement;

    if-nez v7, :cond_1

    instance-of v7, v5, Lorg/eclipse/jdt/core/dom/Block;

    if-nez v7, :cond_1

    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    move v7, v2

    :goto_2
    if-eqz v7, :cond_2

    .line 125
    instance-of v8, v5, Lorg/eclipse/jdt/core/dom/Block;

    if-nez v8, :cond_2

    .line 126
    iget-object v8, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v8, v5, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v8

    invoke-direct {p0, v8, v3}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->adjustEmptyLineAfter(II)V

    .line 127
    :cond_2
    instance-of v8, v5, Lorg/eclipse/jdt/core/dom/SwitchCase;

    if-eqz v8, :cond_3

    if-ltz v4, :cond_4

    .line 128
    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/Token;->indent()V

    .line 129
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v5, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/Token;->unindent()V

    goto :goto_3

    :cond_3
    if-nez v6, :cond_4

    .line 130
    instance-of v4, v5, Lorg/eclipse/jdt/core/dom/Block;

    if-nez v4, :cond_4

    .line 131
    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->indent(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :cond_4
    :goto_3
    if-eqz v7, :cond_5

    goto :goto_0

    .line 132
    :cond_5
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v5, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v4

    goto :goto_1

    .line 133
    :cond_6
    :goto_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_breaks_compare_to_cases:Z

    if-eqz p1, :cond_9

    .line 134
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Statement;

    .line 135
    instance-of v3, v1, Lorg/eclipse/jdt/core/dom/BreakStatement;

    if-eqz v3, :cond_7

    .line 136
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->indent(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    goto :goto_5

    .line 137
    :cond_9
    :goto_6
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    .line 138
    new-instance v1, Lorg/eclipse/jdt/internal/formatter/H0;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/formatter/H0;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Statement;

    .line 140
    instance-of v3, v1, Lorg/eclipse/jdt/core/dom/Block;

    if-eqz v3, :cond_c

    goto :goto_7

    :cond_c
    if-eqz p1, :cond_d

    .line 141
    instance-of v3, v1, Lorg/eclipse/jdt/core/dom/SwitchCase;

    if-nez v3, :cond_d

    goto :goto_7

    .line 142
    :cond_d
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->put_empty_statement_on_new_line:Z

    if-nez v3, :cond_e

    instance-of v3, v1, Lorg/eclipse/jdt/core/dom/EmptyStatement;

    if-nez v3, :cond_a

    .line 143
    :cond_e
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->breakLineBefore(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    goto :goto_7
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SwitchStatement;)Z
    .locals 9

    .line 84
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_switch:Ljava/lang/String;

    .line 85
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_switchstatements_compare_to_switch:Z

    .line 86
    invoke-direct {p0, p1, v0, v2, v1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleBracedCode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/lang/String;Z)V

    .line 87
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchStatement;->statements()Ljava/util/List;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_switchstatements_compare_to_cases:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 89
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, -0x1

    :goto_0
    move v4, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    if-ltz v4, :cond_6

    .line 90
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->indent()V

    .line 91
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v3, 0x21

    invoke-virtual {v1, p1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->unindent()V

    goto :goto_4

    .line 92
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/core/dom/Statement;

    .line 93
    instance-of v6, v5, Lorg/eclipse/jdt/core/dom/BreakStatement;

    if-nez v6, :cond_1

    instance-of v7, v5, Lorg/eclipse/jdt/core/dom/ReturnStatement;

    if-nez v7, :cond_1

    .line 94
    instance-of v7, v5, Lorg/eclipse/jdt/core/dom/ContinueStatement;

    if-nez v7, :cond_1

    instance-of v7, v5, Lorg/eclipse/jdt/core/dom/Block;

    if-nez v7, :cond_1

    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    move v7, v2

    :goto_2
    if-eqz v7, :cond_2

    .line 95
    instance-of v8, v5, Lorg/eclipse/jdt/core/dom/Block;

    if-nez v8, :cond_2

    .line 96
    iget-object v8, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v8, v5, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v8

    invoke-direct {p0, v8, v3}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->adjustEmptyLineAfter(II)V

    .line 97
    :cond_2
    instance-of v8, v5, Lorg/eclipse/jdt/core/dom/SwitchCase;

    if-eqz v8, :cond_3

    if-ltz v4, :cond_4

    .line 98
    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/Token;->indent()V

    .line 99
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v5, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/Token;->unindent()V

    goto :goto_3

    :cond_3
    if-nez v6, :cond_4

    .line 100
    instance-of v4, v5, Lorg/eclipse/jdt/core/dom/Block;

    if-nez v4, :cond_4

    .line 101
    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->indent(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :cond_4
    :goto_3
    if-eqz v7, :cond_5

    goto :goto_0

    .line 102
    :cond_5
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v5, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v4

    goto :goto_1

    .line 103
    :cond_6
    :goto_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_breaks_compare_to_cases:Z

    if-eqz p1, :cond_9

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Statement;

    .line 105
    instance-of v3, v1, Lorg/eclipse/jdt/core/dom/BreakStatement;

    if-eqz v3, :cond_7

    .line 106
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->indent(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    goto :goto_5

    .line 107
    :cond_9
    :goto_6
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    .line 108
    new-instance v1, Lorg/eclipse/jdt/internal/formatter/I0;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/formatter/I0;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Statement;

    .line 110
    instance-of v3, v1, Lorg/eclipse/jdt/core/dom/Block;

    if-eqz v3, :cond_c

    goto :goto_7

    :cond_c
    if-eqz p1, :cond_d

    .line 111
    instance-of v3, v1, Lorg/eclipse/jdt/core/dom/SwitchCase;

    if-nez v3, :cond_d

    goto :goto_7

    .line 112
    :cond_d
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->put_empty_statement_on_new_line:Z

    if-nez v3, :cond_e

    instance-of v3, v1, Lorg/eclipse/jdt/core/dom/EmptyStatement;

    if-nez v3, :cond_a

    .line 113
    :cond_e
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->breakLineBefore(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    goto :goto_7
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TryStatement;)Z
    .locals 2

    .line 198
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TryStatement;->getFinally()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_finally_in_try_statement:Z

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TryStatement;->getFinally()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p1

    const/16 v1, 0x6f

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)Z
    .locals 4

    .line 19
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleBodyDeclarations(Ljava/util/List;)V

    .line 20
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 21
    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->breakLineBefore(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    .line 22
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->brace_position_for_type_declaration:Ljava/lang/String;

    .line 23
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_type_header:Z

    .line 24
    invoke-direct {p0, p1, v0, v3, v1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleBracedCode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->declarationModifierVisited:Z

    return v2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;)Z
    .locals 0

    const/4 p1, 0x0

    .line 177
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->declarationModifierVisited:Z

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;)Z
    .locals 0

    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->declarationModifierVisited:Z

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/WhileStatement;)Z
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_while_body_on_same_line:Z

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/WhileStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->handleLoopBody(Lorg/eclipse/jdt/core/dom/Statement;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
