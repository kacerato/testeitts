.class public Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;
.super Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/ast/IPolyExpression;


# static fields
.field private static type_map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            "[",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field private expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

.field private finalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field private isPolyExpression:Z

.field private nullStatus:I

.field private originalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public resolveAll:Z

.field resultExpressionNullStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public resultExpressions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/ast/Expression;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->type_map:Ljava/util/Map;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    const/4 v4, 0x3

    new-array v5, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v7, 0x1

    aput-object v2, v5, v7

    const/4 v8, 0x2

    aput-object v3, v5, v8

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->type_map:Ljava/util/Map;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    aput-object v3, v4, v8

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->type_map:Ljava/util/Map;

    new-array v1, v8, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v2, v1, v6

    aput-object v3, v1, v7

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;-><init>()V

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->VANILLA_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->isPolyExpression:Z

    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->nullStatus:I

    return-void
.end method

.method private areAllIntegerResultExpressionsConvertibleToTargetType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->originalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v2

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v4, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isConstantValueOfTypeAssignableToType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private check_csb(Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            ">;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            ")",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->type_map:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->areAllIntegerResultExpressionsConvertibleToTargetType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, v1

    :goto_0
    return-object p2
.end method

.method private check_nonconstant_int()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->originalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne v2, v3, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private computeConversionsResultExpressions(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z
    .locals 1

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p4, p3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isConstantValueOfTypeAssignableToType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3, p2, p4, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isBoxingCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p4, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    instance-of p3, p4, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz p3, :cond_4

    iget p3, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p3, p3, 0x4020

    if-nez p3, :cond_4

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    invoke-static {p1, p2, p4}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->checkNeedForAssignedCast(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, p4, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeMismatchError(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    invoke-virtual {p4, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->needsUncheckedConversion(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p4, p3, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unsafeTypeConversion(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_3
    instance-of p3, p4, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz p3, :cond_4

    iget p3, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p3, p3, 0x4020

    if-nez p3, :cond_4

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    invoke-static {p1, p2, p4}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->checkNeedForAssignedCast(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method private computeNullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)V
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressionNullStatus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressionNullStatus:Ljava/util/List;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v5, v2

    move v6, v5

    move v7, v3

    :goto_1
    if-lt v5, v4, :cond_4

    if-eqz v6, :cond_2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->nullStatus:I

    return-void

    :cond_2
    invoke-static {v1, v7}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeNullStatus(II)I

    move-result p1

    if-lez p1, :cond_3

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->nullStatus:I

    :cond_3
    return-void

    :cond_4
    if-nez v0, :cond_5

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressionNullStatus:Ljava/util/List;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v9, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v8, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result v8

    if-ne v3, v8, :cond_6

    move v9, v2

    goto :goto_2

    :cond_6
    move v9, v1

    :goto_2
    and-int/2addr v6, v9

    or-int/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private getResultNumeric(Ljava/util/Set;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            ">;[",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            ")",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;"
        }
    .end annotation

    const/4 p2, 0x3

    new-array v0, p2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    :goto_0
    if-lt v2, p2, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :cond_0
    aget-object v1, v0, v2

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->check_csb(Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/2addr v2, v3

    goto :goto_0
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressionNullStatus:Ljava/util/List;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p1

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->enableSyntacticNullAnalysisForFields:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

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

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressionNullStatus:Ljava/util/List;

    invoke-virtual {v0, p3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->expireNullCheckedFieldInfo()V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, p3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->computeNullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)V

    return-object p3
.end method

.method public checkNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)Z
    .locals 0

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->nullStatus:I

    and-int/lit8 p3, p2, 0x2

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->expressionNullReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_0

    :cond_0
    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->expressionPotentialNullReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public completeNormallyCheck(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 6

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->switchLabeledRules:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_1

    array-length v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    :goto_1
    if-gez v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v4, v4, v0

    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-eqz v5, :cond_4

    add-int/lit8 v2, v2, -0x1

    move-object v3, v4

    goto :goto_1

    :cond_4
    move-object v1, v4

    :goto_2
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->doesNotCompleteNormally()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->switchExpressionLastStatementCompletesNormally(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)V

    goto :goto_3

    :cond_5
    instance-of v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ContinueStatement;

    if-nez v0, :cond_6

    instance-of v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->switchExpressionIllegalLastStatement(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)V

    :cond_7
    :goto_3
    if-eqz v3, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->switchExpressionTrailingSwitchLabels(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)V

    :cond_8
    return-void
.end method

.method public computeConversions(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->originalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-direct {p0, p1, p2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->computeConversionsResultExpressions(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result v3

    and-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public expectedType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    if-nez p3, :cond_1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->postConversionType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 p3, 0x6

    if-eq p1, p3, :cond_1

    const/4 p3, 0x7

    if-eq p1, p3, :cond_0

    const/16 p3, 0x8

    if-eq p1, p3, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop2()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getExpressionContext()Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    return-object v0
.end method

.method public getFallThroughState(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)I
    .locals 2

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ThrowStatement;

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->switchLabeledRules:Z

    if-eqz v0, :cond_4

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->doesNotCompleteNormally()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->switchExpressionSwitchLabeledBlockCompletesNormally(Lorg/eclipse/jdt/internal/compiler/ast/Block;)V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public getPolyExpressions()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->getPolyExpressions()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public ignoreMissingDefaultCase(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)Z
    .locals 0

    return p2
.end method

.method public isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->isPolyExpression()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1
.end method

.method public isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->isPolyExpression()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1
.end method

.method public isFunctionalType()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isFunctionalType()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public isPolyExpression()Z
    .locals 3

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->isPolyExpression:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->ASSIGNMENT_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    if-eq v0, v2, :cond_1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->INVOCATION_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    if-eq v0, v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->isPolyExpression:Z

    return v1
.end method

.method public isPotentiallyCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPotentiallyCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public isTrulyExpression()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needToCheckFlowInAbsenceOfDefaultBranch()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->switchLabeledRules:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I
    .locals 0

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->nullStatus:I

    return p1
.end method

.method public reportMissingEnumConstantCase(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V
    .locals 0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingEnumConstantCase(Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    return-void
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v4, v5, :cond_10

    iput-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->ASSIGNMENT_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    if-eq v4, v5, :cond_0

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->INVOCATION_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    if-ne v4, v5, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1d

    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_f

    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v4, :cond_d

    array-length v4, v4

    if-nez v4, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    if-nez v4, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->switchExpressionNoResultExpressions(Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz p1, :cond_4

    iput-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    :cond_4
    return-object v3

    :cond_5
    :try_start_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->originalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez p1, :cond_7

    new-array p1, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->originalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    new-array p1, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->finalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move p1, v1

    :goto_3
    if-lt p1, v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->finalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->originalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v7, v6, p1

    aput-object v7, v5, p1

    add-int/2addr p1, v2

    goto :goto_3

    :cond_7
    :goto_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->isPolyExpression()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_6

    :cond_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->computeConversions(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_5

    :cond_9
    move-object p1, v3

    :goto_5
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v0, :cond_a

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    :cond_a
    return-object p1

    :cond_b
    :goto_6
    :try_start_2
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v0, :cond_c

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    :cond_c
    return-object p1

    :cond_d
    :goto_7
    :try_start_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->switchExpressionEmptySwitchBlock(Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz p1, :cond_e

    iput-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    :cond_e
    return-object v3

    :cond_f
    :try_start_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_1

    :cond_10
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    if-eqz v4, :cond_11

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_8

    :cond_11
    move v4, v1

    :goto_8
    move v5, v1

    :goto_9
    if-lt v5, v4, :cond_33

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1, v5}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->computeConversions(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_a

    :cond_12
    move-object p1, v3

    :goto_a
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_13
    if-ne v4, v2, :cond_15

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->originalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object p1, p1, v1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v0, :cond_14

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    :cond_14
    return-object p1

    :cond_15
    :try_start_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->originalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v5, p1, v1

    array-length p1, p1

    move v6, v2

    :goto_b
    if-lt v6, p1, :cond_19

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->originalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object p1, p1, v1

    move v0, v2

    :goto_c
    if-lt v0, v4, :cond_17

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v0, :cond_16

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    :cond_16
    return-object p1

    :cond_17
    :try_start_6
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->originalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v1, v1, v0

    if-eqz v1, :cond_18

    invoke-static {p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->moreDangerousType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    :cond_18
    add-int/2addr v0, v2

    goto :goto_c

    :cond_19
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->originalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v7, v7, v6

    if-eqz v7, :cond_32

    invoke-static {v5, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_32

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->originalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v5, p1

    move v6, v1

    move v7, v2

    :goto_d
    const/4 v8, 0x5

    if-lt v6, v5, :cond_2f

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    if-eqz v7, :cond_1d

    :goto_e
    if-lt v1, v4, :cond_1b

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v0, :cond_1a

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    :cond_1a
    return-object p1

    :cond_1b
    :try_start_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->originalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v0, v0, v1

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v5, v8, :cond_1c

    goto :goto_f

    :cond_1c
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->finalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    aput-object v0, v5, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->finalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v6, v6, v1

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->originalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v7, v7, v1

    invoke-virtual {v0, v5, v6, v7}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_f
    add-int/2addr v1, v2

    goto :goto_e

    :cond_1d
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move v6, v1

    :goto_10
    if-lt v6, v4, :cond_24

    new-array p1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    aput-object v6, p1, v1

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    aput-object v6, p1, v2

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    const/4 v7, 0x2

    aput-object v6, p1, v7

    move v6, v1

    :goto_11
    if-lt v6, v0, :cond_1e

    move-object v7, v3

    goto :goto_12

    :cond_1e
    aget-object v7, p1, v6

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    :goto_12
    if-eqz v7, :cond_1f

    goto :goto_13

    :cond_1f
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->check_nonconstant_int()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    :goto_13
    if-eqz v7, :cond_20

    goto :goto_14

    :cond_20
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->originalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p0, v5, p1}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->getResultNumeric(Ljava/util/Set;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    :goto_14
    if-lt v1, v4, :cond_22

    iput-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz p1, :cond_21

    iput-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    :cond_21
    return-object v7

    :cond_22
    :try_start_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->originalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v5, v5, v1

    invoke-virtual {p1, v0, v7, v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->finalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v7, p1, v1

    add-int/2addr v1, v2

    goto :goto_14

    :cond_23
    add-int/2addr v6, v2

    goto :goto_11

    :cond_24
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->originalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v7, v7, v6

    if-nez v7, :cond_25

    goto/16 :goto_19

    :cond_25
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNumericType()Z

    move-result v8

    if-eqz v8, :cond_26

    goto :goto_15

    :cond_26
    invoke-virtual {p1, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    :goto_15
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNumericType()Z

    move-result v8

    if-nez v8, :cond_2e

    move v0, v1

    :goto_16
    if-lt v0, v4, :cond_2c

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->finalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->lowerUpperBound([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    if-eqz p1, :cond_2a

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_17
    if-lt v1, v0, :cond_28

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v0, :cond_27

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    :cond_27
    return-object p1

    :cond_28
    :try_start_9
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->originalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v1

    if-nez v4, :cond_29

    goto :goto_18

    :cond_29
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->originalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v6, v6, v1

    invoke-virtual {v4, v5, p1, v6}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->finalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object p1, v4, v1

    :goto_18
    add-int/2addr v1, v2

    goto :goto_17

    :cond_2a
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->switchExpressionIncompatibleResultExpressions(Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz p1, :cond_2b

    iput-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    :cond_2b
    return-object v3

    :cond_2c
    :try_start_a
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->finalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v5, v5, v0

    if-eqz v5, :cond_2d

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v6

    if-eqz v6, :cond_2d

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->finalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    aput-object v5, v6, v0

    :cond_2d
    add-int/2addr v0, v2

    goto :goto_16

    :cond_2e
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-static {v8, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->wellKnownType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_19
    add-int/2addr v6, v2

    goto/16 :goto_10

    :cond_2f
    aget-object v9, p1, v6

    if-eqz v9, :cond_31

    iget v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v9, v8, :cond_30

    const/16 v8, 0x21

    if-eq v9, v8, :cond_30

    move v8, v1

    goto :goto_1a

    :cond_30
    move v8, v2

    :goto_1a
    and-int/2addr v7, v8

    :cond_31
    add-int/2addr v6, v2

    goto/16 :goto_d

    :cond_32
    add-int/2addr v6, v2

    goto/16 :goto_b

    :cond_33
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v7, :cond_34

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v7

    const v8, 0x10004

    if-ne v7, v8, :cond_35

    :cond_34
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->finalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->originalValueResultExpressionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v6, p1, v9}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    aput-object v9, v8, v5

    aput-object v9, v7, v5

    :cond_35
    iget-boolean v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resolveAll:Z

    if-eqz v7, :cond_36

    goto :goto_1b

    :cond_36
    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v6, :cond_38

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v6

    if-nez v6, :cond_37

    goto :goto_1c

    :cond_37
    :goto_1b
    add-int/2addr v5, v2

    goto/16 :goto_9

    :cond_38
    :goto_1c
    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz p1, :cond_39

    iput-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    :cond_39
    return-object v3

    :goto_1d
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v0, :cond_3a

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    :cond_3a
    throw p1
.end method

.method public sIsMoreSpecific(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->sIsMoreSpecific(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->isPolyExpression()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v3, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->sIsMoreSpecific(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2
.end method

.method public setExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    return-void
.end method

.method public statementGenerateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/Statement;)V
    .locals 2

    instance-of v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p3, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    if-nez v1, :cond_1

    instance-of v1, p3, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    if-nez v1, :cond_1

    instance-of v1, p3, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;

    if-eqz v1, :cond_0

    instance-of v1, p3, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statementGenerateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/Statement;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 4

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
