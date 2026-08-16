.class public Lorg/eclipse/jdt/internal/formatter/SpacePreparator;
.super Lorg/eclipse/jdt/core/dom/ASTVisitor;
.source "SourceFile"


# static fields
.field private static final SPACE_AFTER_OPERATOR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;",
            "Ljava/util/function/Predicate<",
            "Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SPACE_BEFORE_OPERATOR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;",
            "Ljava/util/function/Predicate<",
            "Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

.field tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->TIMES:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    sget-object v3, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->DIVIDE:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    sget-object v4, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->REMAINDER:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    filled-new-array {v2, v3, v4}, [Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v2, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->PLUS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    sget-object v3, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->MINUS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    filled-new-array {v2, v3}, [Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->LEFT_SHIFT:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    sget-object v3, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->RIGHT_SHIFT_SIGNED:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    sget-object v4, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->RIGHT_SHIFT_UNSIGNED:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    filled-new-array {v2, v3, v4}, [Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v4, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->LESS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    sget-object v5, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->GREATER:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    sget-object v6, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->LESS_EQUALS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    sget-object v7, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->GREATER_EQUALS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    sget-object v8, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->EQUALS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    sget-object v9, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->NOT_EQUALS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    filled-new-array/range {v4 .. v9}, [Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->AND:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    sget-object v3, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->XOR:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    sget-object v4, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->OR:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    filled-new-array {v2, v3, v4}, [Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v2, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->CONDITIONAL_AND:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    sget-object v3, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->CONDITIONAL_OR:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    filled-new-array {v2, v3}, [Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->SPACE_BEFORE_OPERATOR:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->SPACE_AFTER_OPERATOR:Ljava/util/Map;

    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v4, Lorg/eclipse/jdt/internal/formatter/N0;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/formatter/N0;-><init>()V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/eclipse/jdt/internal/formatter/O0;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/formatter/O0;-><init>()V

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v4, Lorg/eclipse/jdt/internal/formatter/L0;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/formatter/L0;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/eclipse/jdt/internal/formatter/M0;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/formatter/M0;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v4, Lorg/eclipse/jdt/internal/formatter/U0;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/formatter/U0;-><init>()V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/eclipse/jdt/internal/formatter/V0;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/formatter/V0;-><init>()V

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v4, Lorg/eclipse/jdt/internal/formatter/S0;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/formatter/S0;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/eclipse/jdt/internal/formatter/T0;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/formatter/T0;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v4, Lorg/eclipse/jdt/internal/formatter/Q0;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/formatter/Q0;-><init>()V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/eclipse/jdt/internal/formatter/R0;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/formatter/R0;-><init>()V

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v4, Lorg/eclipse/jdt/internal/formatter/K0;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/formatter/K0;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/eclipse/jdt/internal/formatter/P0;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/formatter/P0;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->lambda$5(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->lambda$1(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->lambda$6(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->lambda$7(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->lambda$3(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->lambda$8(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->lambda$10(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->lambda$9(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z

    move-result p0

    return p0
.end method

.method private handleAnnotation(Lorg/eclipse/jdt/core/dom/Annotation;Z)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_at_in_annotation:Z

    const/16 v1, 0x25

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, p2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_annotation:Z

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_annotation:Z

    const/16 v1, 0x17

    invoke-direct {p0, p1, v1, v0, p2}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_annotation:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v0, 0x19

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore()V

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p2

    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/Annotation;

    if-nez v0, :cond_2

    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/MemberValuePair;

    if-nez v0, :cond_2

    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->getDefault()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    if-eq v0, p1, :cond_2

    :cond_1
    instance-of p2, p2, Lorg/eclipse/jdt/core/dom/ArrayInitializer;

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceAfter()V

    :cond_2
    return-void
.end method

.method private handleCommas(Ljava/util/List;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/eclipse/jdt/core/dom/ASTNode;",
            ">;ZZ)V"
        }
    .end annotation

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/16 v2, 0x20

    invoke-direct {p0, v1, v2, p2, p3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private handleEmptyBrackets(Lorg/eclipse/jdt/core/dom/ASTNode;Z)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceAfter()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private handleEmptyParens(Lorg/eclipse/jdt/core/dom/ASTNode;Z)Z
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    const/16 v1, 0x17

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findIndex(IIZ)I

    move-result p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceAfter()V

    :cond_0
    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private handleInvocation(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleInvocation(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    return-void
.end method

.method private handleInvocation(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_method_invocation:Z

    .line 3
    invoke-direct {p0, p2, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleEmptyParens(Lorg/eclipse/jdt/core/dom/ASTNode;Z)Z

    move-result v0

    const/16 v1, 0x17

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_method_invocation:Z

    const/4 p3, 0x0

    .line 5
    invoke-direct {p0, p2, v1, p1, p3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_method_invocation:Z

    .line 7
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_method_invocation:Z

    .line 8
    invoke-direct {p0, p2, v1, v2, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 9
    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_method_invocation:Z

    if-eqz p2, :cond_2

    const/16 p2, 0x19

    if-nez p3, :cond_1

    .line 10
    iget-object p3, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p3, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1, p3, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    .line 12
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore()V

    :cond_2
    :goto_1
    return-void
.end method

.method private handleLoopBody(Lorg/eclipse/jdt/core/dom/Statement;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    instance-of v1, p1, Lorg/eclipse/jdt/core/dom/Block;

    if-nez v1, :cond_0

    instance-of p1, p1, Lorg/eclipse/jdt/core/dom/EmptyStatement;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->isComment()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore()V

    :cond_0
    return-void
.end method

.method private handleModuleStatementCommas(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/dom/Name;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_multiple_field_declarations:Z

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_multiple_field_declarations:Z

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    return-void
.end method

.method private handleOperator(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/ASTNode;ZZ)V
    .locals 2

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p2

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/internal/formatter/Token;ZZ)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0
.end method

.method private handleSemicolon(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/dom/ASTNode;",
            ">;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_semicolon:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 7
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleSemicolon(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private handleSemicolon(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_semicolon:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    .line 3
    iget v0, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore()V

    :cond_0
    return-void
.end method

.method private handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V
    .locals 2

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findIndex(IIZ)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/internal/formatter/Token;ZZ)V

    :cond_1
    return-void
.end method

.method private handleToken(Lorg/eclipse/jdt/internal/formatter/Token;ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore()V

    :cond_0
    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceAfter()V

    :cond_1
    return-void
.end method

.method private handleTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/16 v5, 0xf

    if-ne v2, v5, :cond_5

    iget-object v6, v0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v7, -0x1

    invoke-virtual {v6, v1, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v6

    move v7, v6

    :goto_0
    const/4 v8, 0x2

    add-int/lit8 v9, v6, 0x2

    if-lt v7, v9, :cond_0

    goto :goto_3

    :cond_0
    iget-object v9, v0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v9, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v9

    iget v10, v9, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v11, 0xe

    if-eq v10, v11, :cond_1

    const/16 v12, 0x10

    if-ne v10, v12, :cond_3

    :cond_1
    iget-object v10, v0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v10, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->remove(I)V

    const/4 v10, 0x0

    :goto_1
    iget v12, v9, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    if-ne v12, v11, :cond_2

    move v12, v8

    goto :goto_2

    :cond_2
    const/4 v12, 0x3

    :goto_2
    if-lt v10, v12, :cond_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    iget-object v12, v0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int v13, v7, v10

    new-instance v14, Lorg/eclipse/jdt/internal/formatter/Token;

    iget v15, v9, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    add-int v8, v15, v10

    add-int/2addr v15, v10

    invoke-direct {v14, v8, v15, v5}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(III)V

    invoke-virtual {v12, v13, v14}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->insert(ILorg/eclipse/jdt/internal/formatter/Token;)V

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x2

    goto :goto_1

    :cond_5
    :goto_3
    if-nez v3, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    iget-object v5, v0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v5, v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    invoke-direct {v0, v1, v3, v4}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/internal/formatter/Token;ZZ)V

    :cond_7
    return-void
.end method

.method private handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V
    .locals 1

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/internal/formatter/Token;ZZ)V

    :cond_1
    return-void
.end method

.method private handleTypeArguments(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/dom/Type;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_angle_bracket_in_type_arguments:Z

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_angle_bracket_in_type_arguments:Z

    const/16 v3, 0xb

    invoke-direct {p0, v0, v3, v2, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_angle_bracket_in_type_arguments:Z

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_closing_angle_bracket_in_type_arguments:Z

    const/16 v3, 0xf

    invoke-direct {p0, v0, v3, v2, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_type_arguments:Z

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_type_arguments:Z

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    return-void
.end method

.method private handleTypeParameters(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/dom/TypeParameter;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_angle_bracket_in_type_parameters:Z

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_angle_bracket_in_type_parameters:Z

    const/16 v3, 0xb

    invoke-direct {p0, v0, v3, v2, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_angle_bracket_in_type_parameters:Z

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_closing_angle_bracket_in_type_parameters:Z

    const/16 v3, 0xf

    invoke-direct {p0, v0, v3, v2, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_type_parameters:Z

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_type_parameters:Z

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    :cond_0
    return-void
.end method

.method public static synthetic i(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->lambda$0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->lambda$2(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->lambda$4(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->lambda$11(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_multiplicative_operator:Z

    return p0
.end method

.method private static synthetic lambda$1(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_multiplicative_operator:Z

    return p0
.end method

.method private static synthetic lambda$10(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_logical_operator:Z

    return p0
.end method

.method private static synthetic lambda$11(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_logical_operator:Z

    return p0
.end method

.method private static synthetic lambda$2(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_additive_operator:Z

    return p0
.end method

.method private static synthetic lambda$3(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_additive_operator:Z

    return p0
.end method

.method private static synthetic lambda$4(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_shift_operator:Z

    return p0
.end method

.method private static synthetic lambda$5(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_shift_operator:Z

    return p0
.end method

.method private static synthetic lambda$6(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_relational_operator:Z

    return p0
.end method

.method private static synthetic lambda$7(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_relational_operator:Z

    return p0
.end method

.method private static synthetic lambda$8(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_bitwise_operator:Z

    return p0
.end method

.method private static synthetic lambda$9(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_bitwise_operator:Z

    return p0
.end method


# virtual methods
.method public endVisit(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;)V
    .locals 6

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->isVarargs()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v4, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_ellipsis:Z

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_ellipsis:Z

    const/16 v5, 0x7a

    invoke-direct {p0, v0, v5, v4, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->varargsAnnotations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/16 v3, 0x25

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->clearSpaceAfter()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    const/16 v0, 0x16

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public finishUp()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    new-instance v1, Lorg/eclipse/jdt/internal/formatter/SpacePreparator$1;

    invoke-direct {v1, p0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator$1;-><init>(Lorg/eclipse/jdt/internal/formatter/SpacePreparator;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->traverse(ILorg/eclipse/jdt/internal/formatter/TokenTraverser;)I

    return-void
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

    .line 209
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_at_in_annotation_type_declaration:Z

    .line 210
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_at_in_annotation_type_declaration:Z

    const/16 v2, 0x25

    .line 211
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 212
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    .line 213
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_annotation_type_declaration:Z

    const/4 v1, 0x0

    const/16 v2, 0x31

    .line 214
    invoke-direct {p0, p1, v2, v0, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;)Z
    .locals 5

    .line 215
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    const/16 v1, 0x16

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 216
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_annotation_type_member_declaration:Z

    const/16 v4, 0x17

    .line 218
    invoke-direct {p0, v0, v4, v1, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 219
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_annotation_type_member_declaration:Z

    .line 221
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleEmptyParens(Lorg/eclipse/jdt/core/dom/ASTNode;Z)Z

    .line 222
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->getDefault()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->getDefault()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    const/16 v0, 0x49

    invoke-direct {p0, p1, v0, v2, v2}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    :cond_0
    return v2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;)Z
    .locals 3

    .line 45
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_anonymous_type_declaration:Z

    .line 46
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    instance-of v1, v1, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;

    if-eqz v1, :cond_0

    .line 47
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_enum_constant:Z

    :cond_0
    const/16 v1, 0x31

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ArrayAccess;)Z
    .locals 4

    .line 404
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayAccess;->getIndex()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    .line 405
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_bracket_in_array_reference:Z

    .line 406
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_bracket_in_array_reference:Z

    const/4 v3, 0x6

    .line 407
    invoke-direct {p0, v0, v3, v2, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 408
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayAccess;->getIndex()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    .line 409
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_bracket_in_array_reference:Z

    const/4 v1, 0x0

    const/16 v2, 0x42

    .line 410
    invoke-direct {p0, p1, v2, v0, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ArrayCreation;)Z
    .locals 4

    .line 411
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayCreation;->dimensions()Ljava/util/List;

    move-result-object p1

    .line 412
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Expression;

    .line 413
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_bracket_in_array_allocation_expression:Z

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 414
    invoke-direct {p0, v0, v2, v3, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 415
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_bracket_in_array_allocation_expression:Z

    const/16 v2, 0x42

    .line 416
    invoke-direct {p0, v0, v2, v1, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ArrayInitializer;)Z
    .locals 8

    .line 417
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v1, 0x31

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 418
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v3, 0x21

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v2

    .line 419
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v3

    .line 420
    iget v4, v3, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v1, :cond_1

    .line 421
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    .line 422
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_array_initializer:Z

    if-eqz v1, :cond_0

    .line 423
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    instance-of v1, v1, Lorg/eclipse/jdt/core/dom/ArrayInitializer;

    if-nez v1, :cond_0

    .line 424
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    instance-of p1, p1, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;

    if-nez p1, :cond_0

    move v5, v6

    .line 425
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_braces_in_array_initializer:Z

    .line 426
    invoke-direct {p0, v0, v5, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/internal/formatter/Token;ZZ)V

    goto/16 :goto_4

    :cond_1
    const/16 v1, 0x20

    if-ne v4, v1, :cond_2

    move v1, v6

    goto :goto_0

    :cond_2
    move v1, v5

    .line 427
    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    .line 428
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v4, v4, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_array_initializer:Z

    if-eqz v4, :cond_3

    .line 429
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v4

    instance-of v4, v4, Lorg/eclipse/jdt/core/dom/ArrayInitializer;

    if-nez v4, :cond_3

    .line 430
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v4

    instance-of v4, v4, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;

    if-nez v4, :cond_3

    move v4, v6

    goto :goto_1

    :cond_3
    move v4, v5

    .line 431
    :goto_1
    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v7, v7, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_brace_in_array_initializer:Z

    if-eqz v7, :cond_5

    if-eqz v1, :cond_4

    .line 432
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayInitializer;->expressions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    move v7, v6

    goto :goto_2

    :cond_5
    move v7, v5

    .line 433
    :goto_2
    invoke-direct {p0, v0, v4, v7}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/internal/formatter/Token;ZZ)V

    .line 434
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayInitializer;->expressions()Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v7, v4, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_array_initializer:Z

    .line 435
    iget-boolean v4, v4, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_array_initializer:Z

    .line 436
    invoke-direct {p0, v0, v7, v4}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    if-eqz v1, :cond_6

    .line 437
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_array_initializer:Z

    invoke-direct {p0, v3, v0, v5}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/internal/formatter/Token;ZZ)V

    .line 438
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    .line 439
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_brace_in_array_initializer:Z

    if-eqz v2, :cond_8

    if-eqz v1, :cond_7

    .line 440
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayInitializer;->expressions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    move p1, v6

    goto :goto_3

    :cond_8
    move p1, v5

    .line 441
    :goto_3
    invoke-direct {p0, v0, p1, v5}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/internal/formatter/Token;ZZ)V

    :goto_4
    return v6
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ArrayType;)Z
    .locals 5

    .line 394
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    .line 395
    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/ArrayCreation;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_bracket_in_array_allocation_expression:Z

    .line 397
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_brackets_in_array_allocation_expression:Z

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_bracket_in_array_type_reference:Z

    .line 399
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_brackets_in_array_type_reference:Z

    .line 400
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayType;->dimensions()Ljava/util/List;

    move-result-object p1

    .line 401
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/Dimension;

    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 402
    invoke-direct {p0, v2, v3, v1, v4}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 403
    invoke-direct {p0, v2, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleEmptyBrackets(Lorg/eclipse/jdt/core/dom/ASTNode;Z)Z

    goto :goto_1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AssertStatement;)Z
    .locals 3

    .line 192
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v1, 0x4c

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceAfter()V

    .line 193
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AssertStatement;->getMessage()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AssertStatement;->getMessage()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_assert:Z

    .line 195
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_assert:Z

    const/16 v2, 0x3e

    .line 196
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Assignment;)Z
    .locals 3

    .line 339
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Assignment;->getOperator()Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Assignment$Operator;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Assignment;->getRightHandSide()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    .line 340
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_assignment_operator:Z

    .line 341
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_assignment_operator:Z

    .line 342
    invoke-direct {p0, v0, p1, v2, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleOperator(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/ASTNode;ZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Block;)Z
    .locals 5

    .line 250
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Block;->statements()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleSemicolon(Ljava/util/List;)V

    .line 251
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 253
    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    if-eqz v1, :cond_1

    return v2

    .line 254
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_block:Z

    const/4 v3, 0x0

    const/16 v4, 0x31

    invoke-direct {p0, p1, v4, v1, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 255
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_closing_brace_in_block:Z

    if-eqz v1, :cond_3

    .line 256
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/Statement;

    if-nez v1, :cond_2

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/CatchClause;

    if-eqz v0, :cond_3

    .line 257
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v1, 0x21

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    .line 258
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceAfter()V

    :cond_3
    return v2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/BreakStatement;)Z
    .locals 2

    .line 149
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BreakStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BreakStatement;->isImplicit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v1, 0x4d

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceAfter()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CastExpression;)Z
    .locals 3

    .line 376
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_cast:Z

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 377
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CastExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    .line 378
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_cast:Z

    .line 379
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_closing_paren_in_cast:Z

    const/16 v2, 0x19

    .line 380
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CatchClause;)Z
    .locals 3

    .line 188
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_catch:Z

    .line 189
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_catch:Z

    const/16 v2, 0x17

    .line 190
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 191
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CatchClause;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_catch:Z

    const/4 v1, 0x0

    const/16 v2, 0x19

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;)Z
    .locals 4

    .line 319
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeArguments()Ljava/util/List;

    move-result-object v0

    .line 320
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTypeArguments(Ljava/util/List;)V

    .line 321
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleInvocation(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    .line 322
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 323
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v3, v1, v2}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 324
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->arguments()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_allocation_expression:Z

    .line 325
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_allocation_expression:Z

    .line 326
    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    return v2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ConditionalExpression;)Z
    .locals 4

    .line 386
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getThenExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_question_in_conditional:Z

    .line 388
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_question_in_conditional:Z

    const/16 v3, 0x1d

    .line 389
    invoke-direct {p0, v0, v3, v2, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 390
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getElseExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    .line 391
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_conditional:Z

    .line 392
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_conditional:Z

    const/16 v2, 0x3e

    .line 393
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ConstructorInvocation;)Z
    .locals 2

    .line 327
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTypeArguments(Ljava/util/List;)V

    .line 328
    invoke-direct {p0, p1, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleInvocation(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    .line 329
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->arguments()Ljava/util/List;

    move-result-object p1

    .line 330
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_explicit_constructor_call_arguments:Z

    .line 331
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_explicit_constructor_call_arguments:Z

    .line 332
    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CreationReference;)Z
    .locals 0

    .line 475
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CreationReference;->typeArguments()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTypeArguments(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Dimension;)Z
    .locals 3

    .line 469
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Dimension;->annotations()Ljava/util/List;

    move-result-object p1

    .line 470
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 471
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/16 v2, 0x25

    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    :cond_0
    return v1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/DoStatement;)Z
    .locals 5

    .line 151
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/DoStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_while:Z

    .line 153
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_while:Z

    const/16 v3, 0x17

    .line 154
    invoke-direct {p0, v0, v3, v2, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 155
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/DoStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    .line 156
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/DoStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v1

    instance-of v1, v1, Lorg/eclipse/jdt/core/dom/Block;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_closing_brace_in_block:Z

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v4, 0x4b

    .line 157
    invoke-direct {p0, v0, v4, v1, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 158
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/DoStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    .line 159
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_while:Z

    const/16 v1, 0x19

    .line 160
    invoke-direct {p0, p1, v1, v0, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    return v2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnhancedForStatement;)Z
    .locals 4

    .line 299
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_for:Z

    .line 300
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_for:Z

    const/16 v2, 0x17

    .line 301
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 302
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_for:Z

    const/4 v2, 0x0

    const/16 v3, 0x19

    .line 304
    invoke-direct {p0, v0, v3, v1, v2}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 305
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->getParameter()Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_for:Z

    .line 306
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_for:Z

    const/16 v3, 0x3e

    .line 307
    invoke-direct {p0, v0, v3, v2, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 308
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleLoopBody(Lorg/eclipse/jdt/core/dom/Statement;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;)Z
    .locals 6

    .line 24
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->arguments()Ljava/util/List;

    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 26
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    .line 27
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_enum_constant:Z

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceAfter()V

    .line 29
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 30
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_enum_constant:Z

    const/4 v4, 0x0

    const/16 v5, 0x19

    .line 31
    invoke-direct {p0, v1, v5, v2, v4}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    goto :goto_1

    .line 32
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v4

    const/16 v5, 0x16

    invoke-virtual {v1, v4, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    add-int/2addr v1, v3

    .line 33
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->getAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz v4, :cond_2

    .line 34
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1, v4, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    goto :goto_0

    .line 35
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, p1, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    :goto_0
    if-le v1, p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    .line 36
    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    iget v4, v4, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    if-ne v4, v2, :cond_6

    .line 37
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    .line 38
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_enum_constant:Z

    if-eqz v1, :cond_4

    .line 39
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceAfter()V

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    .line 40
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_enum_constant:Z

    if-eqz v1, :cond_5

    .line 41
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore()V

    .line 42
    :cond_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_enum_constant_arguments:Z

    .line 43
    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_enum_constant_arguments:Z

    .line 44
    invoke-direct {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    return v3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnumDeclaration;)Z
    .locals 4

    .line 15
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_enum_declaration:Z

    const/4 v2, 0x0

    const/16 v3, 0x31

    .line 17
    invoke-direct {p0, v0, v3, v1, v2}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 18
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->superInterfaceTypes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_superinterfaces:Z

    .line 19
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_superinterfaces:Z

    .line 20
    invoke-direct {p0, v0, v2, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    .line 21
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->enumConstants()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_enum_declarations:Z

    .line 22
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_enum_declarations:Z

    .line 23
    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ExportsDirective;)Z
    .locals 0

    .line 480
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->modules()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleModuleStatementCommas(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;)Z
    .locals 0

    .line 473
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;->typeArguments()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTypeArguments(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/FieldDeclaration;)Z
    .locals 4

    .line 100
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->fragments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/16 v2, 0x16

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 101
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->fragments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_multiple_field_declarations:Z

    .line 102
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_multiple_field_declarations:Z

    .line 103
    invoke-direct {p0, v0, v2, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    .line 104
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleSemicolon(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    return v3
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ForStatement;)Z
    .locals 8

    .line 266
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_for:Z

    .line 267
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_for:Z

    const/16 v2, 0x17

    .line 268
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 269
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_for:Z

    const/16 v2, 0x19

    const/4 v3, 0x0

    .line 271
    invoke-direct {p0, v0, v2, v1, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 272
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->initializers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_for_inits:Z

    .line 273
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_for_inits:Z

    .line 274
    invoke-direct {p0, v0, v2, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    .line 275
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->updaters()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_for_increments:Z

    .line 276
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_for_increments:Z

    .line 277
    invoke-direct {p0, v0, v2, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    .line 278
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->initializers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 279
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 280
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->updaters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    .line 281
    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v6, v5, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_semicolon_in_for:Z

    if-eqz v6, :cond_1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 282
    :goto_1
    iget-boolean v5, v5, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_semicolon_in_for:Z

    if-eqz v5, :cond_2

    if-nez v1, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    const/16 v6, 0x1a

    .line 283
    invoke-direct {p0, p1, v6, v0, v5}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 284
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v0

    .line 285
    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v7, v5, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_semicolon_in_for:Z

    if-eqz v7, :cond_3

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v3

    .line 286
    :goto_3
    iget-boolean v5, v5, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_semicolon_in_for:Z

    if-eqz v5, :cond_4

    if-nez v4, :cond_4

    move v3, v2

    .line 287
    :cond_4
    invoke-direct {p0, v0, v6, v1, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 288
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleLoopBody(Lorg/eclipse/jdt/core/dom/Statement;)V

    return v2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/IfStatement;)Z
    .locals 3

    .line 259
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_if:Z

    .line 260
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_if:Z

    const/16 v2, 0x17

    .line 261
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 262
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/IfStatement;->getThenStatement()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    .line 263
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_if:Z

    const/4 v1, 0x0

    const/16 v2, 0x19

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 264
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleLoopBody(Lorg/eclipse/jdt/core/dom/Statement;)V

    .line 265
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleSemicolon(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ImportDeclaration;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleSemicolon(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/InfixExpression;)Z
    .locals 6

    .line 343
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getOperator()Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v0

    .line 344
    sget-object v1, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->SPACE_BEFORE_OPERATOR:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Predicate;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    .line 345
    sget-object v2, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->SPACE_AFTER_OPERATOR:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Predicate;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-interface {v2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    .line 346
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->isStringConcatenation(Lorg/eclipse/jdt/core/dom/InfixExpression;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 347
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_string_concatenation:Z

    .line 348
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_string_concatenation:Z

    move v5, v2

    move v2, v1

    move v1, v5

    .line 349
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getRightOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1, v2}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleOperator(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/ASTNode;ZZ)V

    .line 350
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object p1

    .line 351
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/Expression;

    .line 352
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3, v1, v2}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleOperator(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/ASTNode;ZZ)V

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/InstanceofExpression;)Z
    .locals 2

    .line 476
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InstanceofExpression;->getLeftOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    const/16 v0, 0x11

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    return v1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/IntersectionType;)Z
    .locals 6

    .line 381
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/IntersectionType;->types()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    .line 382
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    return v0

    .line 383
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v4, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_bitwise_operator:Z

    .line 384
    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_bitwise_operator:Z

    const/16 v5, 0x15

    .line 385
    invoke-direct {p0, v2, v5, v4, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/LabeledStatement;)Z
    .locals 3

    .line 206
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_labeled_statement:Z

    .line 207
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_colon_in_labeled_statement:Z

    const/16 v2, 0x3e

    .line 208
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/LambdaExpression;)Z
    .locals 5

    .line 233
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_lambda_arrow:Z

    .line 234
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_lambda_arrow:Z

    const/16 v2, 0x62

    .line 235
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 236
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->parameters()Ljava/util/List;

    move-result-object v0

    .line 237
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->hasParentheses()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_method_declaration:Z

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleEmptyParens(Lorg/eclipse/jdt/core/dom/ASTNode;Z)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_method_declaration:Z

    .line 240
    invoke-direct {p0, p1, v3, v1, v2}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    goto :goto_0

    .line 241
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v4, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_method_declaration:Z

    .line 242
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_method_declaration:Z

    .line 243
    invoke-direct {p0, p1, v3, v4, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 244
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->getBody()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    .line 245
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_method_declaration:Z

    const/16 v3, 0x19

    .line 246
    invoke-direct {p0, p1, v3, v1, v2}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 247
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_method_declaration_parameters:Z

    .line 248
    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_method_declaration_parameters:Z

    .line 249
    invoke-direct {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MarkerAnnotation;)Z
    .locals 1

    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleAnnotation(Lorg/eclipse/jdt/core/dom/Annotation;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MemberValuePair;)Z
    .locals 3

    .line 228
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_assignment_operator:Z

    .line 229
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_assignment_operator:Z

    const/16 v2, 0x48

    .line 230
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MethodDeclaration;)Z
    .locals 6

    .line 49
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    const/16 v1, 0x16

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 50
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_constructor_declaration:Z

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_method_declaration:Z

    .line 53
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_constructor_declaration:Z

    goto :goto_1

    .line 55
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_method_declaration:Z

    .line 56
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 57
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v4, v4, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_constructor_declaration:Z

    goto :goto_2

    .line 58
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v4, v4, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_between_empty_parens_in_method_declaration:Z

    .line 59
    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleEmptyParens(Lorg/eclipse/jdt/core/dom/ASTNode;Z)Z

    move-result v4

    const/16 v5, 0x17

    if-eqz v4, :cond_3

    .line 60
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    invoke-direct {p0, v1, v5, v0, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    goto :goto_5

    .line 61
    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v4

    invoke-direct {p0, v4, v5, v0, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 62
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_constructor_declaration:Z

    goto :goto_3

    .line 64
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_method_declaration:Z

    :goto_3
    if-eqz v0, :cond_6

    .line 65
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters()Ljava/util/List;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    goto :goto_4

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    :goto_4
    const/16 v1, 0x19

    .line 67
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 68
    :cond_6
    :goto_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_constructor_declaration:Z

    if-eqz v0, :cond_8

    goto :goto_6

    .line 69
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_method_declaration:Z

    if-eqz v0, :cond_8

    :goto_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 70
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v1

    const/16 v4, 0x31

    invoke-virtual {v0, v1, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore()V

    .line 71
    :cond_8
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReceiverType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 72
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReceiverType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceAfter()V

    .line 73
    :cond_9
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 74
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_constructor_declaration_parameters:Z

    goto :goto_7

    .line 75
    :cond_a
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_method_declaration_parameters:Z

    .line 76
    :goto_7
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 77
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_constructor_declaration_parameters:Z

    goto :goto_8

    .line 78
    :cond_b
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_method_declaration_parameters:Z

    .line 79
    :goto_8
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters()Ljava/util/List;

    move-result-object v4

    .line 80
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReceiverType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 81
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    .line 82
    invoke-interface {v5, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v4, v5

    .line 83
    :cond_c
    invoke-direct {p0, v4, v0, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    .line 84
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptionTypes()Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 86
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/16 v5, 0x78

    invoke-virtual {v1, v4, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore()V

    .line 87
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 88
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_constructor_declaration_throws:Z

    goto :goto_9

    .line 89
    :cond_d
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_method_declaration_throws:Z

    .line 90
    :goto_9
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 91
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v4, v4, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_constructor_declaration_throws:Z

    goto :goto_a

    .line 92
    :cond_e
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v4, v4, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_method_declaration_throws:Z

    .line 93
    :goto_a
    invoke-direct {p0, v0, v1, v4}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    .line 94
    :cond_f
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->typeParameters()Ljava/util/List;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 96
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTypeParameters(Ljava/util/List;)V

    .line 97
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/16 v4, 0xb

    invoke-direct {p0, v1, v4, v2, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 99
    :cond_10
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleSemicolon(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    return v2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MethodInvocation;)Z
    .locals 2

    .line 309
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTypeArguments(Ljava/util/List;)V

    .line 310
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleInvocation(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    .line 311
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->arguments()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_method_invocation_arguments:Z

    .line 312
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_method_invocation_arguments:Z

    .line 313
    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;)Z
    .locals 3

    .line 477
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    .line 478
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_type_declaration:Z

    const/4 v1, 0x0

    const/16 v2, 0x31

    .line 479
    invoke-direct {p0, p1, v2, v0, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/NormalAnnotation;)Z
    .locals 3

    const/4 v0, 0x1

    .line 224
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleAnnotation(Lorg/eclipse/jdt/core/dom/Annotation;Z)V

    .line 225
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/NormalAnnotation;->values()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_annotation:Z

    .line 226
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_annotation:Z

    .line 227
    invoke-direct {p0, p1, v2, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    return v0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/OpensDirective;)Z
    .locals 0

    .line 481
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->modules()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleModuleStatementCommas(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/PackageDeclaration;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleSemicolon(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ParameterizedType;)Z
    .locals 8

    .line 442
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->typeArguments()Ljava/util/List;

    move-result-object v0

    .line 443
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .line 444
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    .line 445
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v4, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_angle_bracket_in_parameterized_type_reference:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v1, :cond_0

    .line 446
    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_angle_bracket_in_parameterized_type_reference:Z

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    const/16 v7, 0xb

    .line 447
    invoke-direct {p0, v2, v7, v4, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    if-nez v1, :cond_1

    .line 448
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 449
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_angle_bracket_in_parameterized_type_reference:Z

    const/16 v2, 0xf

    .line 450
    invoke-direct {p0, v0, v2, v1, v5}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 451
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->typeArguments()Ljava/util/List;

    move-result-object p1

    .line 452
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_parameterized_type_reference:Z

    .line 453
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_parameterized_type_reference:Z

    .line 454
    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    :cond_1
    return v6
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;)Z
    .locals 3

    .line 370
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_parenthesized_expression:Z

    .line 371
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_parenthesized_expression:Z

    const/16 v2, 0x17

    .line 372
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 373
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    .line 374
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_parenthesized_expression:Z

    const/4 v1, 0x0

    const/16 v2, 0x19

    .line 375
    invoke-direct {p0, p1, v2, v0, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/PostfixExpression;)Z
    .locals 3

    .line 363
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_postfix_operator:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_postfix_operator:Z

    if-eqz v0, :cond_1

    .line 364
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PostfixExpression;->getOperator()Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PostfixExpression;->getOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    .line 366
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 367
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_postfix_operator:Z

    .line 368
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_postfix_operator:Z

    .line 369
    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/internal/formatter/Token;ZZ)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/PrefixExpression;)Z
    .locals 3

    .line 353
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PrefixExpression;->getOperator()Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    move-result-object v0

    .line 354
    sget-object v1, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->INCREMENT:Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 355
    sget-object v1, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->DECREMENT:Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PrefixExpression;->getOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_unary_operator:Z

    .line 357
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_unary_operator:Z

    .line 358
    invoke-direct {p0, v0, p1, v2, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleOperator(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/ASTNode;ZZ)V

    goto :goto_1

    .line 359
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PrefixExpression;->getOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    .line 360
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_prefix_operator:Z

    .line 361
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_prefix_operator:Z

    .line 362
    invoke-direct {p0, v0, p1, v2, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleOperator(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/ASTNode;ZZ)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ProvidesDirective;)Z
    .locals 0

    .line 482
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ProvidesDirective;->implementations()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleModuleStatementCommas(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ReturnStatement;)Z
    .locals 2

    .line 197
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ReturnStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v1, 0x52

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 199
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ReturnStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    instance-of p1, p1, Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_parenthesized_expression_in_return:Z

    if-eqz p1, :cond_1

    .line 201
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceAfter()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;)Z
    .locals 1

    const/4 v0, 0x1

    .line 231
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleAnnotation(Lorg/eclipse/jdt/core/dom/Annotation;Z)V

    return v0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;)Z
    .locals 2

    .line 333
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTypeArguments(Ljava/util/List;)V

    .line 334
    invoke-direct {p0, p1, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleInvocation(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    .line 335
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->arguments()Ljava/util/List;

    move-result-object p1

    .line 336
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_explicit_constructor_call_arguments:Z

    .line 337
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_explicit_constructor_call_arguments:Z

    .line 338
    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;)Z
    .locals 2

    .line 314
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTypeArguments(Ljava/util/List;)V

    .line 315
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleInvocation(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    .line 316
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->arguments()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_method_invocation_arguments:Z

    .line 317
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_method_invocation_arguments:Z

    .line 318
    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SuperMethodReference;)Z
    .locals 0

    .line 474
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->typeArguments()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTypeArguments(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SwitchCase;)Z
    .locals 4

    .line 133
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchCase;->isSwitchLabeledRule()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v2, 0x62

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    .line 135
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchCase;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_arrow_in_switch_default:Z

    goto :goto_0

    .line 136
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_arrow_in_switch_case:Z

    .line 137
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchCase;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_arrow_in_switch_default:Z

    goto :goto_1

    .line 138
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_arrow_in_switch_case:Z

    .line 139
    :goto_1
    invoke-direct {p0, v0, v2, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/internal/formatter/Token;ZZ)V

    goto :goto_3

    .line 140
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v2, 0x3e

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchCase;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_default:Z

    goto :goto_2

    .line 142
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_colon_in_case:Z

    .line 143
    :goto_2
    invoke-direct {p0, v0, v2, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/internal/formatter/Token;ZZ)V

    .line 144
    :goto_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchCase;->isDefault()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    const/16 v0, 0x65

    .line 145
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 146
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchCase;->expressions()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_switch_case_expressions:Z

    .line 147
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_switch_case_expressions:Z

    .line 148
    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    :cond_4
    return v2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SwitchExpression;)Z
    .locals 4

    .line 123
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_switch:Z

    .line 124
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_switch:Z

    const/16 v2, 0x17

    .line 125
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 126
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_switch:Z

    const/16 v2, 0x19

    const/4 v3, 0x0

    .line 128
    invoke-direct {p0, v0, v2, v1, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 129
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_switch:Z

    const/16 v2, 0x31

    .line 131
    invoke-direct {p0, v0, v2, v1, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 132
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchExpression;->statements()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleSemicolon(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SwitchStatement;)Z
    .locals 4

    .line 113
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_switch:Z

    .line 114
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_switch:Z

    const/16 v2, 0x17

    .line 115
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 116
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_switch:Z

    const/16 v2, 0x19

    const/4 v3, 0x0

    .line 118
    invoke-direct {p0, v0, v2, v1, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 119
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_switch:Z

    const/16 v2, 0x31

    .line 121
    invoke-direct {p0, v0, v2, v1, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 122
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchStatement;->statements()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleSemicolon(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SynchronizedStatement;)Z
    .locals 3

    .line 166
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_synchronized:Z

    .line 167
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_synchronized:Z

    const/16 v2, 0x17

    .line 168
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 169
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SynchronizedStatement;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p1

    .line 170
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_synchronized:Z

    const/4 v1, 0x0

    const/16 v2, 0x19

    .line 171
    invoke-direct {p0, p1, v2, v0, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ThrowStatement;)Z
    .locals 2

    .line 202
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v1, 0x4a

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    .line 203
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_parenthesized_expression_in_throw:Z

    if-eqz v0, :cond_1

    .line 205
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceAfter()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TryStatement;)Z
    .locals 8

    .line 172
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TryStatement;->resources()Ljava/util/List;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 174
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v3, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_try:Z

    .line 175
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_try:Z

    const/16 v4, 0x17

    .line 176
    invoke-direct {p0, p1, v4, v3, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 177
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TryStatement;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_try:Z

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-direct {p0, p1, v3, v1, v4}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    move p1, v2

    .line 178
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v5, 0x1a

    if-lt p1, v1, :cond_3

    .line 179
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    .line 180
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_3

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    .line 182
    iget v0, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    if-ne v0, v5, :cond_1

    .line 183
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_semicolon_in_try_resources:Z

    invoke-direct {p0, p1, v0, v4}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/internal/formatter/Token;ZZ)V

    goto :goto_2

    :cond_1
    if-ne v0, v3, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    move p1, v1

    goto :goto_1

    .line 184
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 185
    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v7, v6, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_semicolon_in_try_resources:Z

    .line 186
    iget-boolean v6, v6, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_semicolon_in_try_resources:Z

    .line 187
    invoke-direct {p0, v1, v5, v7, v6}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return v2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)Z
    .locals 5

    .line 3
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    const/16 v1, 0x16

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 5
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->typeParameters()Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTypeParameters(Ljava/util/List;)V

    .line 7
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 9
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_brace_in_type_declaration:Z

    const/16 v4, 0x31

    .line 11
    invoke-direct {p0, v0, v4, v1, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 12
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceTypes()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_superinterfaces:Z

    .line 13
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_superinterfaces:Z

    .line 14
    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    return v2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeMethodReference;)Z
    .locals 0

    .line 472
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeMethodReference;->typeArguments()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTypeArguments(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeParameter;)Z
    .locals 6

    .line 455
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeParameter;->typeBounds()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    .line 456
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    return v0

    .line 457
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 458
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v4, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_and_in_type_parameter:Z

    .line 459
    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_and_in_type_parameter:Z

    const/16 v5, 0x15

    .line 460
    invoke-direct {p0, v2, v5, v4, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/UnionType;)Z
    .locals 6

    .line 464
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/UnionType;->types()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    .line 465
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    return v0

    .line 466
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v4, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_bitwise_operator:Z

    .line 467
    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_bitwise_operator:Z

    const/16 v5, 0x1c

    .line 468
    invoke-direct {p0, v2, v5, v4, v3}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;)Z
    .locals 3

    .line 289
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    .line 290
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/ForStatement;

    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->fragments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_for_inits:Z

    .line 292
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_for_inits:Z

    .line 293
    invoke-direct {p0, v0, v2, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    goto :goto_0

    .line 294
    :cond_0
    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/ExpressionStatement;

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->fragments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_multiple_local_declarations:Z

    .line 296
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_multiple_local_declarations:Z

    .line 297
    invoke-direct {p0, v0, v2, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    .line 298
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceBefore()V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;)Z
    .locals 3

    .line 109
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getInitializer()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_assignment_operator:Z

    .line 111
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_assignment_operator:Z

    const/16 v2, 0x48

    .line 112
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;)Z
    .locals 4

    .line 105
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->fragments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/16 v2, 0x16

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3, v1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 106
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->fragments()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_comma_in_multiple_local_declarations:Z

    .line 107
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_comma_in_multiple_local_declarations:Z

    .line 108
    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleCommas(Ljava/util/List;ZZ)V

    return v3
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/WhileStatement;)Z
    .locals 4

    .line 161
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_opening_paren_in_while:Z

    .line 162
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_opening_paren_in_while:Z

    const/16 v2, 0x17

    .line 163
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 164
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/WhileStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_closing_paren_in_while:Z

    const/4 v2, 0x0

    const/16 v3, 0x19

    invoke-direct {p0, v0, v3, v1, v2}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    .line 165
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/WhileStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleLoopBody(Lorg/eclipse/jdt/core/dom/Statement;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/WildcardType;)Z
    .locals 4

    .line 461
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_before_question_in_wilcard:Z

    .line 462
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_space_after_question_in_wilcard:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/WildcardType;->getBound()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v3, 0x1d

    .line 463
    invoke-direct {p0, p1, v3, v1, v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->handleToken(Lorg/eclipse/jdt/core/dom/ASTNode;IZZ)V

    return v2
.end method
