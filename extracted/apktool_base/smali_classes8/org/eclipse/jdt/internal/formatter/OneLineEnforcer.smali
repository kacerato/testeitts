.class public Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;
.super Lorg/eclipse/jdt/core/dom/ASTVisitor;
.source "SourceFile"


# instance fields
.field private final options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

.field private final tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->lambda$0(Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$0(Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private tryKeepOnOneLine(IIILjava/util/List;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "+",
            "Lorg/eclipse/jdt/core/dom/ASTNode;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    const-string v0, "one_line_never"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    const-string v0, "one_line_if_empty"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 7
    :cond_1
    const-string v0, "one_line_if_single_item"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    return-void

    .line 8
    :cond_2
    const-string v0, "one_line_preserve"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3

    .line 9
    iget-object p5, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p5, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, p3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v2

    invoke-virtual {p5, v0, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result p5

    if-lez p5, :cond_3

    return-void

    .line 10
    :cond_3
    invoke-interface {p4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p5

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/J0;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/J0;-><init>(Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;)V

    invoke-interface {p5, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p5

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Set;

    add-int/lit8 v0, p1, 0x1

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v2

    .line 14
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getPositionInLine(I)I

    move-result p1

    .line 15
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v3, v2, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getLength(Lorg/eclipse/jdt/internal/formatter/Token;I)I

    move-result v3

    add-int/2addr v3, p1

    move v4, v0

    :goto_0
    const/4 v5, 0x0

    if-le v4, p3, :cond_8

    .line 16
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 17
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p2

    instance-of p2, p2, Lorg/eclipse/jdt/core/dom/LambdaExpression;

    if-eqz p2, :cond_4

    sub-int/2addr v3, p1

    .line 18
    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->page_width:I

    if-le v3, p1, :cond_5

    return-void

    .line 19
    :cond_5
    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 20
    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p2

    .line 21
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/formatter/Token;->clearLineBreaksAfter()V

    .line 22
    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->clearLineBreaksBefore()V

    .line 24
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    .line 25
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore()V

    goto :goto_1

    .line 26
    :cond_8
    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v6, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v6

    .line 27
    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v7, v2, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v7

    .line 28
    iget-object v8, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v8, v8, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->number_of_empty_lines_to_preserve:I

    if-lez v8, :cond_9

    if-le v7, v1, :cond_9

    return-void

    .line 29
    :cond_9
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->isSpaceAfter()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/formatter/Token;->isSpaceBefore()Z

    move-result v8

    if-nez v8, :cond_a

    move v8, v5

    goto :goto_2

    :cond_a
    move v8, v1

    .line 30
    :goto_2
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->isComment()Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/formatter/Token;->isComment()Z

    move-result v9

    if-eqz v9, :cond_e

    :cond_b
    if-lez v7, :cond_c

    return-void

    .line 31
    :cond_c
    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v9, v6, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    sub-int/2addr v9, v1

    invoke-virtual {v7, v9}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v7

    if-nez v8, :cond_d

    const/16 v8, 0x20

    if-eq v7, v8, :cond_d

    const/16 v8, 0x9

    if-eq v7, v8, :cond_d

    move v8, v5

    goto :goto_3

    :cond_d
    move v8, v1

    .line 32
    :cond_e
    :goto_3
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksAfter()I

    move-result v2

    if-gtz v2, :cond_f

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v2

    if-lez v2, :cond_12

    .line 33
    :cond_f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    :cond_10
    if-nez v8, :cond_11

    if-ne v4, p2, :cond_11

    if-ne v4, v0, :cond_11

    goto :goto_4

    :cond_11
    move v5, v1

    :goto_4
    move v8, v5

    :cond_12
    if-eqz v8, :cond_13

    add-int/lit8 v3, v3, 0x1

    .line 34
    :cond_13
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, v6, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getLength(Lorg/eclipse/jdt/internal/formatter/Token;I)I

    move-result v2

    add-int/2addr v3, v2

    add-int/lit8 v4, v4, 0x1

    move-object v2, v6

    goto/16 :goto_0
.end method

.method private tryKeepOnOneLine(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/dom/ASTNode;",
            "Lorg/eclipse/jdt/core/dom/ASTNode;",
            "Ljava/util/List<",
            "+",
            "Lorg/eclipse/jdt/core/dom/ASTNode;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x31

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p2

    :goto_0
    move v1, p2

    goto :goto_1

    .line 2
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p2, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p2

    goto :goto_0

    .line 3
    :goto_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v0, 0x21

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v3

    move-object v0, p0

    move v2, v3

    move-object v4, p3

    move-object v5, p4

    .line 4
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tryKeepOnOneLine(IIILjava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public endVisit(Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;)V
    .locals 3

    .line 7
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_annotation_declaration_on_one_line:Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tryKeepOnOneLine(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;)V
    .locals 3

    .line 10
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v0

    .line 12
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_enum_constant_declaration_on_one_line:Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tryKeepOnOneLine(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v0

    .line 15
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_anonymous_type_declaration_on_one_line:Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tryKeepOnOneLine(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/util/List;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/core/dom/Block;)V
    .locals 10

    .line 17
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Block;->statements()Ljava/util/List;

    move-result-object v5

    .line 19
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 20
    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    const-string v2, "one_line_always"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    .line 21
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v6, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_method_body_on_one_line:Ljava/lang/String;

    .line 22
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_getter_setter_on_one_line:Z

    if-eqz v1, :cond_4

    .line 23
    check-cast v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    .line 24
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReturnType2()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v7

    .line 26
    instance-of v8, v7, Lorg/eclipse/jdt/core/dom/PrimitiveType;

    if-eqz v8, :cond_1

    .line 27
    check-cast v7, Lorg/eclipse/jdt/core/dom/PrimitiveType;

    invoke-virtual {v7}, Lorg/eclipse/jdt/core/dom/PrimitiveType;->getPrimitiveTypeCode()Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    move-result-object v7

    sget-object v8, Lorg/eclipse/jdt/core/dom/PrimitiveType;->VOID:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    if-ne v7, v8, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    move v7, v3

    .line 28
    :goto_0
    const-string v8, "(is|get)\\p{Lu}.*"

    invoke-virtual {v1, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 29
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result v8

    if-nez v8, :cond_2

    if-nez v7, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 30
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v4, :cond_2

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lorg/eclipse/jdt/core/dom/ReturnStatement;

    if-eqz v8, :cond_2

    move v8, v4

    goto :goto_1

    :cond_2
    move v8, v3

    .line 31
    :goto_1
    const-string v9, "set\\p{Lu}.*"

    invoke-virtual {v1, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 33
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/ExpressionStatement;

    if-eqz v0, :cond_3

    .line 34
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ExpressionStatement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ExpressionStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/Assignment;

    if-eqz v0, :cond_3

    move v3, v4

    :cond_3
    if-nez v8, :cond_f

    if-eqz v3, :cond_4

    goto/16 :goto_4

    :cond_4
    move-object v2, v6

    goto/16 :goto_4

    .line 35
    :cond_5
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/IfStatement;

    const/16 v6, 0x31

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/core/dom/IfStatement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/IfStatement;->getElseStatement()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v1

    if-nez v1, :cond_9

    .line 36
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_if_then_body_block_on_one_line:Ljava/lang/String;

    .line 37
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_guardian_clause_on_one_line:Z

    if-eqz v0, :cond_8

    .line 38
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_7

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/ReturnStatement;

    if-nez v0, :cond_6

    .line 39
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/ThrowStatement;

    if-eqz v0, :cond_7

    :cond_6
    move v3, v4

    .line 40
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    if-eqz v3, :cond_8

    .line 41
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->isComment()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    move-object v2, v1

    goto :goto_4

    .line 42
    :cond_9
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/LambdaExpression;

    if-eqz v1, :cond_a

    .line 43
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_lambda_body_block_on_one_line:Ljava/lang/String;

    goto :goto_4

    .line 44
    :cond_a
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/ForStatement;

    if-nez v1, :cond_e

    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;

    if-nez v1, :cond_e

    .line 45
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/WhileStatement;

    if-eqz v1, :cond_b

    goto :goto_3

    .line 46
    :cond_b
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/DoStatement;

    if-eqz v1, :cond_d

    .line 47
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v7, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_loop_body_block_on_one_line:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p1, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v2

    .line 49
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v3, 0x21

    invoke-virtual {v1, p1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v3

    .line 50
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v4, 0x4b

    invoke-virtual {v1, p1, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    move v4, p1

    goto :goto_2

    :cond_c
    move v4, v3

    :goto_2
    move-object v1, p0

    move-object v6, v7

    .line 52
    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tryKeepOnOneLine(IIILjava/util/List;Ljava/lang/String;)V

    return-void

    .line 53
    :cond_d
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_code_block_on_one_line:Ljava/lang/String;

    goto :goto_4

    .line 54
    :cond_e
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_loop_body_block_on_one_line:Ljava/lang/String;

    :cond_f
    :goto_4
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0, v5, v2}, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tryKeepOnOneLine(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/core/dom/EnumDeclaration;)V
    .locals 3

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->enumConstants()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_enum_declaration_on_one_line:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tryKeepOnOneLine(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;)V
    .locals 3

    .line 56
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->moduleStatements()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_type_declaration_on_one_line:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tryKeepOnOneLine(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_type_declaration_on_one_line:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->tryKeepOnOneLine(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
