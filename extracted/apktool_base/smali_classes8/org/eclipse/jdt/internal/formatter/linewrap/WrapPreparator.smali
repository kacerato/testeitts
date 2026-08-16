.class public Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;
.super Lorg/eclipse/jdt/core/dom/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$FieldAccessAdapter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final OPERATOR_PRECEDENCE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPERATOR_WRAPPING_OPTION:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;",
            "Ljava/util/function/ToIntFunction<",
            "Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final OPERATOR_WRAP_BEFORE_OPTION:Ljava/util/Map;
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

.field private static final PREFERRED:F = 0.875f


# instance fields
.field final aligner:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

.field private currentDepth:I

.field importsEnd:I

.field importsStart:I

.field final kind:I

.field final options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

.field private secondaryWrapIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

.field private wrapGroupEnd:I

.field private wrapIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private wrapParentIndex:I

.field private wrapPenalties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->TIMES:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    sget-object v4, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->DIVIDE:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    sget-object v5, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->REMAINDER:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    filled-new-array {v3, v4, v5}, [Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v3, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->PLUS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    sget-object v4, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->MINUS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    filled-new-array {v3, v4}, [Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->LEFT_SHIFT:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    sget-object v4, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->RIGHT_SHIFT_SIGNED:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    sget-object v5, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->RIGHT_SHIFT_UNSIGNED:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    filled-new-array {v3, v4, v5}, [Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v3, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->LESS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    sget-object v4, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->GREATER:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    sget-object v5, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->LESS_EQUALS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    sget-object v6, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->GREATER_EQUALS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    filled-new-array {v3, v4, v5, v6}, [Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->EQUALS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    sget-object v4, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->NOT_EQUALS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    filled-new-array {v3, v4}, [Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v3, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->AND:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->XOR:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->OR:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v3, v4, v5}, [Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->CONDITIONAL_AND:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->CONDITIONAL_OR:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v3, v4}, [Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->OPERATOR_PRECEDENCE:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->OPERATOR_WRAPPING_OPTION:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->OPERATOR_WRAP_BEFORE_OPTION:Ljava/util/Map;

    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v5, Lorg/eclipse/jdt/internal/formatter/linewrap/J;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/J;-><init>()V

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/eclipse/jdt/internal/formatter/linewrap/K;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/K;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    new-instance v5, Lorg/eclipse/jdt/internal/formatter/linewrap/H;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/H;-><init>()V

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/eclipse/jdt/internal/formatter/linewrap/I;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/I;-><init>()V

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/eclipse/jdt/internal/formatter/linewrap/E;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/E;-><init>()V

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/eclipse/jdt/internal/formatter/linewrap/F;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/F;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/eclipse/jdt/internal/formatter/linewrap/C;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/C;-><init>()V

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/eclipse/jdt/internal/formatter/linewrap/D;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/D;-><init>()V

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/eclipse/jdt/internal/formatter/linewrap/O;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/O;-><init>()V

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/eclipse/jdt/internal/formatter/linewrap/B;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/B;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/eclipse/jdt/internal/formatter/linewrap/M;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/M;-><init>()V

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/eclipse/jdt/internal/formatter/linewrap/N;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/N;-><init>()V

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/eclipse/jdt/internal/formatter/linewrap/G;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/G;-><init>()V

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/eclipse/jdt/internal/formatter/linewrap/L;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/L;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;I)V
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->importsStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->importsEnd:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->secondaryWrapIndexes:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapPenalties:Ljava/util/List;

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->currentDepth:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iput p3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->kind:I

    new-instance p3, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    invoke-direct {p3, p1, p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;-><init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->aligner:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->lambda$9(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z

    move-result p0

    return p0
.end method

.method private applyBreaksOutsideRegions(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jface/text/IRegion;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jface/text/IRegion;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findIndex(IIZ)I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v7, v4, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    invoke-interface {v2}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v6, v0, v1, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Ljava/lang/String;II)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->size()I

    move-result v1

    if-lt v3, v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    iget v6, v1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    invoke-interface {v2}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v7

    if-le v6, v7, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v4, v4, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    invoke-interface {v2}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v6

    invoke-virtual {v3, v0, v4, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Ljava/lang/String;II)I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    :cond_3
    :goto_2
    invoke-interface {v2}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v1

    invoke-interface {v2}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v5

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v6, v4, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move-object v4, v1

    goto :goto_1
.end method

.method public static synthetic b(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)I
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->lambda$12(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->lambda$3(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->lambda$5(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z

    move-result p0

    return p0
.end method

.method private doHandleWrap(IZLorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    :goto_0
    iget-object v3, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v4, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->isComment()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v3, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapPenalties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    iget-object v3, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapPenalties:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_2
    const/4 v6, 0x1

    invoke-direct {v0, v1, v3, v6, v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->getWrapPolicy(IFZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v3

    iget-object v7, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget-object v8, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v8, v7, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapMode:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    sget-object v10, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->TOP_PRIORITY:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    if-ne v8, v10, :cond_4

    iget v7, v7, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->groupEndIndex:I

    iput v7, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    new-instance v7, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    iget v11, v3, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapParentIndex:I

    iget v12, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    iget v13, v3, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->extraIndent:I

    iget v14, v3, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->structureDepth:I

    iget v15, v3, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->penaltyMultiplier:F

    const/16 v16, 0x1

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->indentOnColumn:Z

    move-object v9, v7

    move/from16 v17, v3

    invoke-direct/range {v9 .. v17}, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;-><init>(Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;IIIIFZZ)V

    move-object v3, v7

    :cond_4
    invoke-direct {v0, v5, v3, v6}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->setTokenWrapPolicy(ILorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;Z)V

    move v7, v6

    :goto_3
    iget-object v8, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v7, v8, :cond_8

    iget-object v3, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->secondaryWrapIndexes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    and-int/lit8 v1, v1, -0x71

    invoke-direct {v0, v1, v4, v5, v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->getWrapPolicy(IFZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->secondaryWrapIndexes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    goto :goto_4

    :cond_7
    :goto_5
    return-void

    :cond_8
    iget-object v8, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapPenalties:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v7, :cond_9

    iget-object v8, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapPenalties:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_6

    :cond_9
    move v8, v4

    :goto_6
    iget v9, v3, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->penaltyMultiplier:F

    cmpl-float v9, v8, v9

    if-nez v9, :cond_b

    if-ne v7, v6, :cond_a

    goto :goto_8

    :cond_a
    :goto_7
    move/from16 v8, p2

    goto :goto_9

    :cond_b
    :goto_8
    invoke-direct {v0, v1, v8, v5, v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->getWrapPolicy(IFZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v3

    goto :goto_7

    :goto_9
    invoke-direct {v0, v7, v3, v8}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->setTokenWrapPolicy(ILorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3
.end method

.method public static synthetic e(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->lambda$7(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->lambda$13(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z

    move-result p0

    return p0
.end method

.method private findTokensToWrap(Lorg/eclipse/jdt/core/dom/InfixExpression;ZI)V
    .locals 9

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getLeftOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/InfixExpression;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/core/dom/InfixExpression;

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->samePrecedence(Lorg/eclipse/jdt/core/dom/InfixExpression;Lorg/eclipse/jdt/core/dom/InfixExpression;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, p3, 0x1

    invoke-direct {p0, v1, p2, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->findTokensToWrap(Lorg/eclipse/jdt/core/dom/InfixExpression;ZI)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v3, v0, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getRightOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v1

    move v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_3

    return-void

    :cond_3
    if-ne v3, v2, :cond_4

    move-object v4, v0

    goto :goto_2

    :cond_4
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/Expression;

    :goto_2
    instance-of v5, v4, Lorg/eclipse/jdt/core/dom/InfixExpression;

    if-eqz v5, :cond_5

    move-object v5, v4

    check-cast v5, Lorg/eclipse/jdt/core/dom/InfixExpression;

    invoke-direct {p0, p1, v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->samePrecedence(Lorg/eclipse/jdt/core/dom/InfixExpression;Lorg/eclipse/jdt/core/dom/InfixExpression;)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v6, p3, 0x1

    invoke-direct {p0, v5, p2, v6}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->findTokensToWrap(Lorg/eclipse/jdt/core/dom/InfixExpression;ZI)V

    :cond_5
    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v5, v4, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v5

    :goto_3
    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/formatter/Token;->isComment()Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v6, v4, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v4

    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    if-eqz p2, :cond_6

    move v7, v5

    goto :goto_4

    :cond_6
    move v7, v4

    :goto_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->secondaryWrapIndexes:Ljava/util/List;

    if-eqz p2, :cond_7

    move v7, v4

    goto :goto_5

    :cond_7
    move v7, v5

    :goto_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v6, v6, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->join_wrapped_lines:Z

    if-nez v6, :cond_9

    if-eqz p2, :cond_8

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v7, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v5

    if-lez v5, :cond_9

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v4

    if-lez v4, :cond_9

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v5, v5, -0x1

    goto :goto_3
.end method

.method private fixEnumConstantIndents(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->use_tabs_only_for_leading_indentations:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$3;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$3;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;)V

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_0
    return-void
.end method

.method public static synthetic g(Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;Lorg/eclipse/jdt/core/dom/Statement;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->lambda$14(Lorg/eclipse/jdt/core/dom/Statement;)Z

    move-result p0

    return p0
.end method

.method private getWrapPolicy(IFZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;
    .locals 10

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->continuation_indentation:I

    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v8, v5

    goto :goto_0

    :cond_0
    move v8, v4

    :goto_0
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v8, :cond_2

    :goto_2
    move v0, v4

    move v2, v0

    goto/16 :goto_6

    :cond_2
    instance-of v6, p4, Lorg/eclipse/jdt/core/dom/EnumDeclaration;

    if-eqz v6, :cond_5

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_3

    :cond_3
    move v0, v5

    :goto_3
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indent_body_declarations_compare_to_enum_declaration_header:Z

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    :cond_4
    move v2, v0

    move v0, p3

    goto :goto_6

    :cond_5
    instance-of v6, p4, Lorg/eclipse/jdt/core/dom/IfStatement;

    const/4 v7, -0x1

    if-nez v6, :cond_b

    instance-of v6, p4, Lorg/eclipse/jdt/core/dom/ForStatement;

    if-nez v6, :cond_b

    instance-of v6, p4, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;

    if-nez v6, :cond_b

    instance-of v6, p4, Lorg/eclipse/jdt/core/dom/WhileStatement;

    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    instance-of v6, p4, Lorg/eclipse/jdt/core/dom/DoStatement;

    if-eqz v6, :cond_7

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p4, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    goto :goto_2

    :cond_7
    instance-of v6, p4, Lorg/eclipse/jdt/core/dom/LambdaExpression;

    if-eqz v6, :cond_8

    :goto_4
    move v0, v4

    move v2, v5

    goto :goto_6

    :cond_8
    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_9

    goto :goto_4

    :cond_9
    instance-of v0, p4, Lorg/eclipse/jdt/core/dom/ArrayInitializer;

    if-eqz v0, :cond_a

    iget v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->continuation_indentation_for_array_initializer:I

    if-eqz p3, :cond_a

    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_after_opening_brace_in_array_initializer:Z

    if-eqz v0, :cond_a

    move v0, v5

    goto :goto_6

    :cond_a
    move v0, v4

    goto :goto_6

    :cond_b
    :goto_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p4, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    goto :goto_4

    :goto_6
    sget-object v1, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->WHERE_NECESSARY:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    and-int/lit8 v6, p1, 0x70

    if-eqz v6, :cond_10

    const/16 v7, 0x20

    if-eq v6, v7, :cond_f

    const/16 v7, 0x30

    if-eq v6, v7, :cond_c

    const/16 v7, 0x40

    if-eq v6, v7, :cond_e

    const/16 v5, 0x50

    if-eq v6, v5, :cond_d

    :goto_7
    move v5, v4

    :cond_c
    :goto_8
    move v4, v3

    goto :goto_9

    :cond_d
    xor-int/lit8 v4, p3, 0x1

    xor-int/lit8 v5, p3, 0x1

    and-int/2addr v3, v5

    goto :goto_7

    :cond_e
    if-nez p3, :cond_c

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_f
    and-int v4, v3, p3

    move v5, p3

    goto :goto_9

    :cond_10
    sget-object v1, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->DISABLED:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    move v5, v4

    :goto_9
    if-eqz v4, :cond_11

    sget-object v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->FORCE:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    :goto_a
    move-object v1, v0

    goto :goto_b

    :cond_11
    if-eqz v0, :cond_12

    sget-object v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->DISABLED:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    goto :goto_a

    :cond_12
    if-eqz v5, :cond_13

    sget-object v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->TOP_PRIORITY:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    goto :goto_a

    :cond_13
    :goto_b
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indentation_size:I

    mul-int v4, v2, v0

    new-instance v9, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    iget v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    iget v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    iget v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->currentDepth:I

    move-object v0, v9

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;-><init>(Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;IIIIFZZ)V

    return-object v9
.end method

.method public static synthetic h(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)I
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->lambda$4(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)I

    move-result p0

    return p0
.end method

.method private handleArguments(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/eclipse/jdt/core/dom/ASTNode;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapPenalties:Ljava/util/List;

    const v1, 0x3f924925

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x20

    const/16 v1, 0x17

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->prepareElementsList(Ljava/util/List;II)V

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(I)V

    return-void
.end method

.method private handleFieldAccess(Lorg/eclipse/jdt/core/dom/Expression;)V
    .locals 7

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$FieldAccessAdapter;->isFieldAccess(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move-object v1, p1

    :goto_0
    invoke-static {v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$FieldAccessAdapter;->isFieldAccess(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$FieldAccessAdapter;->accessExpression:Lorg/eclipse/jdt/core/dom/Expression;

    :goto_1
    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/MethodInvocation;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLocationInParent()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/core/dom/MethodInvocation;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    goto :goto_2

    :cond_2
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$FieldAccessAdapter;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$FieldAccessAdapter;-><init>(Lorg/eclipse/jdt/core/dom/Expression;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$FieldAccessAdapter;->getIdentifierIndex(Lorg/eclipse/jdt/internal/formatter/TokenManager;)I

    move-result p1

    :goto_2
    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(I)V

    return-void

    :cond_3
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$FieldAccessAdapter;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$FieldAccessAdapter;-><init>(Lorg/eclipse/jdt/core/dom/Expression;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$FieldAccessAdapter;->getIdentifierIndex(Lorg/eclipse/jdt/internal/formatter/TokenManager;)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, p1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v4

    if-gt v2, v4, :cond_4

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    iget v5, v4, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->secondaryWrapIndexes:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/Token;->isComment()Z

    move-result v5

    if-nez v5, :cond_6

    iget v4, v4, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v5, 0x22

    if-eq v4, v5, :cond_6

    :goto_4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$FieldAccessAdapter;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_3
.end method

.method private handleModuleStatement(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/dom/Name;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0, v2, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p2, 0x20

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->prepareElementsList(Ljava/util/List;II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_module_statements:I

    const/high16 p2, 0x3f600000    # 0.875f

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(IF)V

    return-void
.end method

.method private handleParenthesesPositions(IILjava/lang/String;)V
    .locals 11

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "preserve_positions"

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v1, "separate_lines_if_wrapped"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v3, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p3, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p3

    new-instance v9, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    sget-object v10, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->TOP_PRIORITY:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v4, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indentation_size:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, v9

    move-object v1, v10

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;-><init>(Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;IIIIFZZ)V

    invoke-virtual {p3, v9}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p3, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p3

    new-instance v9, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;-><init>(Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;IIIIFZZ)V

    invoke-virtual {p3, v9}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    goto/16 :goto_2

    :sswitch_1
    const-string p1, "common_lines"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :sswitch_2
    const-string v4, "separate_lines_if_not_empty"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v3, :cond_2

    goto :goto_2

    :sswitch_3
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    :sswitch_4
    const-string v3, "separate_lines"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_2
    :goto_1
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    if-eqz p3, :cond_3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v3

    if-lez v3, :cond_4

    :cond_3
    new-instance v3, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    sget-object v4, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->WHERE_NECESSARY:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v5, v5, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indentation_size:I

    invoke-direct {v3, v4, p1, v5}, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;-><init>(Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;II)V

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    if-eqz p3, :cond_5

    iget-object p3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    sub-int/2addr p2, v2

    invoke-virtual {p3, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p2

    invoke-virtual {p3, p2, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result p2

    if-lez p2, :cond_6

    :cond_5
    new-instance p2, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    sget-object p3, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->WHERE_NECESSARY:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    invoke-direct {p2, p3, p1, v1}, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;-><init>(Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;II)V

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unrecognized parentheses positions setting: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x178cf11d -> :sswitch_4
        -0xe7339c9 -> :sswitch_3
        0x1835d41b -> :sswitch_2
        0x1b147fab -> :sswitch_1
        0x5d28f63f -> :sswitch_0
    .end sparse-switch
.end method

.method private handleSimpleLoop(Lorg/eclipse/jdt/core/dom/Statement;I)V
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/Block;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v1, 0x19

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(ILorg/eclipse/jdt/core/dom/ASTNode;)V

    new-instance p2, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$1;

    invoke-direct {p2, p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$1;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;)V

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_0
    return-void
.end method

.method private handleTypeArguments(Ljava/util/List;)V
    .locals 2
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
    const/16 v0, 0x20

    const/16 v1, 0xb

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->prepareElementsList(Ljava/util/List;II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_type_arguments:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(I)V

    return-void
.end method

.method private handleVariableDeclarations(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0, v3}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->prepareElementsList(Ljava/util/List;II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_multiple_fields:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(I)V

    :cond_0
    return-void
.end method

.method private handleWrap(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(ILorg/eclipse/jdt/core/dom/ASTNode;)V

    return-void
.end method

.method private handleWrap(IF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapPenalties:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(ILorg/eclipse/jdt/core/dom/ASTNode;)V

    return-void
.end method

.method private handleWrap(ILorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(IZLorg/eclipse/jdt/core/dom/ASTNode;)V

    return-void
.end method

.method private handleWrap(IZLorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->doHandleWrap(IZLorg/eclipse/jdt/core/dom/ASTNode;)V

    .line 6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->secondaryWrapIndexes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapPenalties:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    return-void
.end method

.method public static synthetic i(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->lambda$1(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)I
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->lambda$2(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)I

    move-result p0

    return p0
.end method

.method public static synthetic k(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)I
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->lambda$10(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)I

    move-result p0

    return p0
.end method

.method public static synthetic l(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->lambda$11(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)I
    .locals 0

    iget p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_multiplicative_operator:I

    return p0
.end method

.method private static synthetic lambda$1(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_multiplicative_operator:Z

    return p0
.end method

.method private static synthetic lambda$10(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)I
    .locals 0

    iget p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_bitwise_operator:I

    return p0
.end method

.method private static synthetic lambda$11(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_bitwise_operator:Z

    return p0
.end method

.method private static synthetic lambda$12(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)I
    .locals 0

    iget p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_logical_operator:I

    return p0
.end method

.method private static synthetic lambda$13(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_logical_operator:Z

    return p0
.end method

.method private synthetic lambda$14(Lorg/eclipse/jdt/core/dom/Statement;)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static synthetic lambda$2(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)I
    .locals 0

    iget p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_additive_operator:I

    return p0
.end method

.method private static synthetic lambda$3(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_additive_operator:Z

    return p0
.end method

.method private static synthetic lambda$4(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)I
    .locals 0

    iget p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_shift_operator:I

    return p0
.end method

.method private static synthetic lambda$5(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_shift_operator:Z

    return p0
.end method

.method private static synthetic lambda$6(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)I
    .locals 0

    iget p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_relational_operator:I

    return p0
.end method

.method private static synthetic lambda$7(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_relational_operator:Z

    return p0
.end method

.method private static synthetic lambda$8(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)I
    .locals 0

    iget p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_relational_operator:I

    return p0
.end method

.method private static synthetic lambda$9(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_relational_operator:Z

    return p0
.end method

.method public static synthetic m(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)I
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->lambda$0(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)I

    move-result p0

    return p0
.end method

.method public static synthetic n(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)I
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->lambda$6(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)I

    move-result p0

    return p0
.end method

.method public static synthetic o(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)I
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->lambda$8(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)I

    move-result p0

    return p0
.end method

.method private prepareElementsList(Ljava/util/List;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/eclipse/jdt/core/dom/ASTNode;",
            ">;II)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, -0x1

    if-lt v1, v2, :cond_2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p2

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    if-gez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget p2, p2, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v1, p2, p3, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findIndex(IIZ)I

    move-result p2

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    if-gez p2, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p2, p1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    :cond_1
    return-void

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v5, v2, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v1, :cond_3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->secondaryWrapIndexes:Ljava/util/List;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v2, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private preserveExistingLineBreaks()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->clearLineBreaksBefore()V

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksBefore(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    new-instance v2, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$2;

    invoke-direct {v2, p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$2;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->traverse(ILorg/eclipse/jdt/internal/formatter/TokenTraverser;)I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->clearLineBreaksAfter()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->getLineBreaksToPreserve(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;Z)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/formatter/Token;->putLineBreaksAfter(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->kind:I

    and-int/lit16 v1, v1, 0x88

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_at_end_of_file_if_missing:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->breakAfter()V

    :cond_1
    :goto_0
    return-void
.end method

.method private samePrecedence(Lorg/eclipse/jdt/core/dom/InfixExpression;Lorg/eclipse/jdt/core/dom/InfixExpression;)Z
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->OPERATOR_PRECEDENCE:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getOperator()Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getOperator()Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private setTokenWrapPolicy(ILorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;Z)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p3, :cond_5

    add-int/lit8 p3, v0, -0x1

    :goto_0
    if-gez p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->isComment()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v2

    sget-object v3, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->FORCE_FIRST_COLUMN:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    if-ne v2, v3, :cond_2

    :goto_1
    iget-object p3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksAfter()I

    move-result v2

    if-nez v2, :cond_3

    add-int/lit8 v2, v0, -0x1

    if-ne p3, v2, :cond_3

    move v0, p3

    :cond_3
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    :cond_4
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object p3

    sget-object v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->DISABLE_WRAP:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    if-ne p3, v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    iget-object p2, p2, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapMode:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    sget-object p3, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->FORCE:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    if-ne p2, p3, :cond_7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    goto :goto_3

    :cond_7
    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->join_wrapped_lines:Z

    if-eqz p2, :cond_8

    iget p2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 p3, 0x3ea

    if-ne p2, p3, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->clearLineBreaksBefore()V

    :cond_8
    :goto_3
    return-void
.end method

.method private wrapComments()V
    .locals 8

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;-><init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v5

    if-gtz v5, :cond_1

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksAfter()I

    move-result v5

    if-lez v5, :cond_2

    :cond_1
    move v3, v1

    :cond_2
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/Token;->hasNLSTag()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/Token;->getInternalStructure()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v3, :cond_5

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v5, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getPositionInLine(I)I

    move-result v5

    iget v6, v4, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v7, 0x3e9

    if-ne v6, v7, :cond_4

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->wrapLineComment(Lorg/eclipse/jdt/internal/formatter/Token;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v4, v5, v1, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->wrapMultiLineComment(Lorg/eclipse/jdt/internal/formatter/Token;IZZ)I

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public endVisit(Lorg/eclipse/jdt/core/dom/DoStatement;)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_do_while_body_on_same_line:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/DoStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/Block;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/DoStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v1

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/DoStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_compact_loop:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v2

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_1

    invoke-direct {p0, v1, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(ILorg/eclipse/jdt/core/dom/ASTNode;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v4

    if-gtz v4, :cond_2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksAfter()I

    move-result v3

    if-lez v3, :cond_0

    :cond_2
    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public finishUp(Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/dom/ASTNode;",
            "Ljava/util/List<",
            "Lorg/eclipse/jface/text/IRegion;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->preserveExistingLineBreaks()V

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->applyBreaksOutsideRegions(Ljava/util/List;)V

    new-instance p2, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-direct {p2, v0, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;-><init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->executeWraps()V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->aligner:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->alignComments()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapComments()V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->fixEnumConstantIndents(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    return-void
.end method

.method public forceContinuousWrapping(Lorg/eclipse/jdt/core/dom/ASTNode;I)V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v0

    neg-int v1, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findFirstTokenInLine(I)I

    move-result v2

    move v3, p2

    :goto_0
    if-ge v3, v2, :cond_0

    :goto_1
    move v4, v1

    goto :goto_2

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/Token;->getAlign()I

    move-result v4

    if-lez v4, :cond_5

    mul-int/lit8 v1, v0, -0x2

    add-int/2addr v1, v4

    goto :goto_1

    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v3, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v5

    const/4 p1, 0x0

    :goto_3
    if-le v1, v5, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v3

    if-gtz v3, :cond_2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksAfter()I

    move-result p1

    if-lez p1, :cond_4

    :cond_2
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapMode:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    sget-object v3, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->BLOCK_INDENT:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    if-ne p1, v3, :cond_4

    :cond_3
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result p1

    add-int/2addr p1, v4

    new-instance v3, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    sget-object v6, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->BLOCK_INDENT:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    invoke-direct {v3, v6, p2, p1}, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;-><init>(Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;II)V

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    add-int/2addr p1, v0

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/formatter/Token;->setIndent(I)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    move-object p1, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method public getLineBreaksToPreserve(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;Z)I
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getInternalStructure()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/formatter/Token;

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/formatter/Token;->getInternalStructure()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/formatter/Token;

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v2

    if-eqz p3, :cond_3

    if-le v2, v0, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->blank_lines_between_import_groups:I

    add-int/lit8 v1, p1, 0x1

    :cond_2
    return v1

    :cond_3
    iget-object p3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget p3, p3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->number_of_empty_lines_to_preserve:I

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    add-int/lit8 p3, p3, 0x1

    :cond_4
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public postVisit(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 0

    iget p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->currentDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->currentDepth:I

    return-void
.end method

.method public preVisit2(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->currentDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->currentDepth:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v5, p1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {v2, v4, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->addDisableFormatTokenPair(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)V

    :cond_1
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;)Z
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->aligner:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->handleAlign(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;)Z
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->aligner:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->handleAlign(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ArrayInitializer;)Z
    .locals 12

    .line 207
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayInitializer;->expressions()Ljava/util/List;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v2, 0x31

    if-nez v1, :cond_0

    const/16 v1, 0x20

    .line 209
    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->prepareElementsList(Ljava/util/List;II)V

    .line 210
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_expressions_in_array_initializer:I

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(ILorg/eclipse/jdt/core/dom/ASTNode;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v5

    .line 212
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->isNextLineOnWrap()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v1

    if-nez v1, :cond_1

    if-lez v5, :cond_1

    .line 214
    new-instance v1, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    sget-object v2, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->DISABLED:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    add-int/lit8 v3, v5, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;-><init>(Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;II)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    .line 215
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->join_wrapped_lines:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 216
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->insert_new_line_before_closing_brace_in_array_initializer:Z

    if-nez v0, :cond_2

    .line 217
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v1, 0x21

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v6

    .line 218
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    .line 219
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 220
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    sget-object v4, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->WHERE_NECESSARY:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    .line 221
    iget v8, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->currentDepth:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;-><init>(Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;IIIIFZZ)V

    .line 222
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    :cond_2
    return v2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Assignment;)Z
    .locals 6

    .line 223
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Assignment;->getRightHandSide()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 224
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v1

    const/4 v3, 0x1

    if-lez v1, :cond_0

    return v3

    .line 225
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Assignment;->getRightHandSide()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    .line 226
    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/Token;->isComment()Z

    move-result v4

    if-nez v4, :cond_3

    .line 227
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v5, v5, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_assignment_operator:Z

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->secondaryWrapIndexes:Ljava/util/List;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v5, v5, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_assignment_operator:Z

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr v1, v3

    .line 229
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    .line 230
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Assignment;->getRightHandSide()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    .line 231
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_assignment:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(I)V

    return v3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Block;)Z
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->aligner:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->handleAlign(Lorg/eclipse/jdt/core/dom/Block;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CatchClause;)Z
    .locals 3

    .line 336
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v1, 0x17

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 337
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CatchClause;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p1

    const/16 v2, 0x19

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    .line 338
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_catch_clause:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleParenthesesPositions(IILjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;)Z
    .locals 4

    .line 128
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 129
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    move-result-object v1

    const/16 v2, 0x19

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    goto :goto_0

    .line 130
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    .line 131
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_method_invocation:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleParenthesesPositions(IILjava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v2, 0x24

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->forceContinuousWrapping(Lorg/eclipse/jdt/core/dom/ASTNode;I)V

    .line 134
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_qualified_allocation_expression:I

    goto :goto_1

    .line 136
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_allocation_expression:I

    .line 137
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->arguments()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleArguments(Ljava/util/List;I)V

    .line 138
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeArguments()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleTypeArguments(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->imports()Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->importsStart:I

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0, p1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->importsEnd:I

    :cond_0
    return v1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ConditionalExpression;)Z
    .locals 11

    .line 172
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_conditional_expression_chain:I

    and-int/lit8 v0, v0, 0x70

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 173
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v3

    instance-of v3, v3, Lorg/eclipse/jdt/core/dom/ConditionalExpression;

    if-eqz v3, :cond_1

    .line 174
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/ConditionalExpression;

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getElseExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v3

    if-ne p1, v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 175
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getElseExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v4

    instance-of v4, v4, Lorg/eclipse/jdt/core/dom/ConditionalExpression;

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    move v1, v2

    .line 176
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v4, v4, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_conditional_operator:Z

    if-eqz v4, :cond_3

    .line 177
    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->secondaryWrapIndexes:Ljava/util/List;

    :goto_2
    if-eqz v4, :cond_4

    .line 178
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->secondaryWrapIndexes:Ljava/util/List;

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    :goto_3
    const/16 v6, 0x3e

    const/16 v7, 0x1d

    const/4 v8, -0x1

    if-eqz v0, :cond_9

    if-nez v1, :cond_5

    if-nez v3, :cond_5

    goto/16 :goto_7

    :cond_5
    if-eqz v1, :cond_a

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, p1

    .line 181
    :goto_4
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getElseExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v3

    instance-of v3, v3, Lorg/eclipse/jdt/core/dom/ConditionalExpression;

    if-nez v3, :cond_8

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    .line 183
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v3

    invoke-virtual {v1, v3, v8}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    .line 184
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p1, v8}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    .line 185
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_conditional_expression_chain:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(I)V

    .line 186
    iget p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->currentDepth:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->currentDepth:I

    .line 187
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_6

    .line 188
    iget p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->currentDepth:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->currentDepth:I

    goto/16 :goto_8

    .line 189
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ConditionalExpression;

    .line 190
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getThenExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v3

    invoke-virtual {v0, v3, v8}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v3

    invoke-virtual {v0, v3, v8}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    .line 193
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getThenExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {v0, p1, v8}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    .line 194
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_conditional_expression:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(I)V

    goto :goto_6

    .line 195
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ConditionalExpression;

    .line 196
    iget-object v9, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getThenExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v9, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getElseExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v9, v1, v8}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 198
    :cond_8
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getElseExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ConditionalExpression;

    .line 199
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 200
    :cond_9
    :goto_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getThenExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getThenExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getElseExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    .line 205
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1, v8}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    .line 206
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_conditional_expression:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(I)V

    :cond_a
    :goto_8
    return v2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ConstructorInvocation;)Z
    .locals 4

    .line 139
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->arguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x17

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->arguments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 141
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v2, 0x19

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    .line 142
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_method_invocation:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleParenthesesPositions(IILjava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->arguments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_explicit_constructor_call:I

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleArguments(Ljava/util/List;I)V

    .line 144
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->typeArguments()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleTypeArguments(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CreationReference;)Z
    .locals 0

    .line 332
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CreationReference;->typeArguments()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleTypeArguments(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/DoStatement;)Z
    .locals 3

    .line 345
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/DoStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 346
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/DoStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    const/16 v2, 0x19

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    .line 347
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_if_while_statement:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleParenthesesPositions(IILjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnhancedForStatement;)Z
    .locals 4

    .line 267
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v1, 0x17

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 268
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    .line 269
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_for_statement:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleParenthesesPositions(IILjava/lang/String;)V

    .line 270
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_for_body_on_same_line:Z

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_compact_loop:I

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleSimpleLoop(Lorg/eclipse/jdt/core/dom/Statement;I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;)Z
    .locals 5

    .line 95
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 96
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->isComment()Z

    move-result v1

    if-nez v1, :cond_3

    .line 97
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    iget v1, v1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v3, 0x17

    if-ne v1, v3, :cond_1

    .line 98
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->getAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    move-result-object v1

    const/16 v3, 0x19

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    goto :goto_1

    .line 99
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->getAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    .line 100
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_enum_constant_declaration:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleParenthesesPositions(IILjava/lang/String;)V

    .line 101
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->arguments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_enum_constant:I

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleArguments(Ljava/util/List;I)V

    .line 102
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->getAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->forceContinuousWrapping(Lorg/eclipse/jdt/core/dom/ASTNode;I)V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnumDeclaration;)Z
    .locals 9

    .line 69
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->enumConstants()Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-nez v1, :cond_2

    .line 71
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 72
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_enum_constants:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    .line 73
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v1, v6, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    goto :goto_1

    .line 74
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v6, 0x47

    invoke-virtual {v1, p1, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    .line 75
    :goto_1
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    .line 76
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v1, v0, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    .line 77
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_enum_constants:I

    invoke-direct {p0, v1, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(ILorg/eclipse/jdt/core/dom/ASTNode;)V

    goto :goto_2

    .line 78
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;

    .line 79
    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v8, v6, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v0, v5

    .line 80
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->join_wrapped_lines:Z

    const/16 v6, 0x20

    if-nez v1, :cond_7

    if-lez v0, :cond_3

    goto :goto_3

    .line 81
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    :goto_3
    move v1, v5

    :goto_4
    add-int/2addr v0, v4

    .line 82
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->size()I

    move-result v2

    if-lt v0, v2, :cond_4

    goto :goto_5

    .line 83
    :cond_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->isComment()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_4

    .line 85
    :cond_5
    iget v7, v2, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    if-ne v7, v6, :cond_6

    move v1, v0

    goto :goto_4

    :cond_6
    const/16 v0, 0x1a

    if-ne v7, v0, :cond_7

    if-ltz v1, :cond_7

    .line 86
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v7

    invoke-virtual {v0, v7, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 87
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    sget-object v7, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->WHERE_NECESSARY:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    invoke-direct {v0, v7, v1, v3}, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;-><init>(Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;II)V

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    .line 88
    :cond_7
    :goto_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->superInterfaceTypes()Ljava/util/List;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 90
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    .line 91
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/16 v7, 0x7b

    invoke-virtual {v2, v3, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-direct {p0, v0, v6, v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->prepareElementsList(Ljava/util/List;II)V

    .line 93
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_superinterfaces_in_enum_declaration:I

    const/high16 v1, 0x3f600000    # 0.875f

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(IF)V

    .line 94
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->aligner:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->handleAlign(Ljava/util/List;)V

    return v4
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ExportsDirective;)Z
    .locals 1

    .line 333
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->modules()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0x7c

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleModuleStatement(Ljava/util/List;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;)Z
    .locals 0

    .line 330
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;->typeArguments()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleTypeArguments(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/FieldAccess;)Z
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleFieldAccess(Lorg/eclipse/jdt/core/dom/Expression;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/FieldDeclaration;)Z
    .locals 0

    .line 325
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->fragments()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleVariableDeclarations(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ForStatement;)Z
    .locals 7

    .line 250
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v1, 0x17

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 251
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    .line 252
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_for_statement:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleParenthesesPositions(IILjava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->initializers()Ljava/util/List;

    move-result-object v2

    .line 254
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-nez v3, :cond_0

    .line 255
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v6, v2, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 257
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->updaters()Ljava/util/List;

    move-result-object v2

    .line 259
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 260
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v6, v2, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 262
    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    .line 263
    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    .line 264
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_expressions_in_for_loop_header:I

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(I)V

    .line 265
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_for_body_on_same_line:Z

    if-eqz v0, :cond_4

    .line 266
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_compact_loop:I

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleSimpleLoop(Lorg/eclipse/jdt/core/dom/Statement;I)V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/IfStatement;)Z
    .locals 4

    .line 241
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v1, 0x17

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 242
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/IfStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    .line 243
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_if_while_statement:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleParenthesesPositions(IILjava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/IfStatement;->getElseStatement()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_then_statement_on_same_line:Z

    if-nez v2, :cond_0

    .line 246
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_if_on_one_line:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/IfStatement;->getThenStatement()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_compact_if:I

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleSimpleLoop(Lorg/eclipse/jdt/core/dom/Statement;I)V

    .line 248
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_else_statement_on_same_line:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 249
    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_compact_if:I

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleSimpleLoop(Lorg/eclipse/jdt/core/dom/Statement;I)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/InfixExpression;)Z
    .locals 6

    .line 155
    sget-object v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->OPERATOR_PRECEDENCE:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getOperator()Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 156
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    .line 157
    instance-of v2, v0, Lorg/eclipse/jdt/core/dom/InfixExpression;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/eclipse/jdt/core/dom/InfixExpression;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->samePrecedence(Lorg/eclipse/jdt/core/dom/InfixExpression;Lorg/eclipse/jdt/core/dom/InfixExpression;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 158
    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->OPERATOR_WRAPPING_OPTION:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getOperator()Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/ToIntFunction;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-interface {v0, v2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    .line 159
    sget-object v2, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->OPERATOR_WRAP_BEFORE_OPTION:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getOperator()Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Predicate;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-interface {v2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    .line 160
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->isStringConcatenation(Lorg/eclipse/jdt/core/dom/InfixExpression;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v2, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_string_concatenation:I

    .line 162
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_string_concatenation:Z

    move v5, v2

    move v2, v0

    move v0, v5

    :cond_2
    const/4 v3, 0x0

    .line 163
    invoke-direct {p0, p1, v2, v3}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->findTokensToWrap(Lorg/eclipse/jdt/core/dom/InfixExpression;ZI)V

    .line 164
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    .line 165
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v4, -0x1

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v3

    iput v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    .line 166
    iget v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    if-lez v3, :cond_3

    sub-int/2addr v3, v1

    .line 167
    iput v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    .line 168
    :cond_3
    iget v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    :goto_0
    if-gez v3, :cond_4

    goto :goto_1

    .line 169
    :cond_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/Token;->isComment()Z

    move-result v4

    if-nez v4, :cond_5

    .line 170
    iput v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    :goto_1
    xor-int/2addr v2, v1

    .line 171
    invoke-direct {p0, v0, v2, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(IZLorg/eclipse/jdt/core/dom/ASTNode;)V

    return v1

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/LambdaExpression;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 299
    iget-object v2, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v2

    .line 300
    iget-object v4, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    iget v4, v4, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v5, 0x17

    if-ne v4, v5, :cond_0

    .line 301
    iget-object v4, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->getBody()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v5

    const/16 v6, 0x19

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v4

    .line 302
    iget-object v5, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_lambda_declaration:Ljava/lang/String;

    invoke-direct {v0, v2, v4, v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleParenthesesPositions(IILjava/lang/String;)V

    .line 303
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->getBody()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v2

    instance-of v2, v2, Lorg/eclipse/jdt/core/dom/Block;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 304
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->getBody()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v2

    iget-object v5, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v5, v1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v5

    invoke-virtual {v0, v2, v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->forceContinuousWrapping(Lorg/eclipse/jdt/core/dom/ASTNode;I)V

    .line 305
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->getBody()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/Block;

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/Block;->statements()Ljava/util/List;

    move-result-object v2

    .line 306
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 307
    iget-object v5, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/16 v7, 0x31

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v10

    .line 308
    iget-object v5, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/16 v7, 0x21

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v11

    .line 309
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    .line 310
    new-instance v6, Lorg/eclipse/jdt/internal/formatter/linewrap/A;

    invoke-direct {v6, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/A;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 311
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 312
    iput v10, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    .line 313
    iput v11, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    const/16 v2, 0x30

    .line 314
    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(ILorg/eclipse/jdt/core/dom/ASTNode;)V

    .line 315
    iget-object v2, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, v11}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v2

    new-instance v3, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    sget-object v9, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->TOP_PRIORITY:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    .line 316
    iget v13, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->currentDepth:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;-><init>(Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;IIIIFZZ)V

    .line 317
    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    goto :goto_1

    .line 318
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/core/dom/Statement;

    .line 319
    iget-object v6, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v7, v5, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 320
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->hasParentheses()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 321
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->parameters()Ljava/util/List;

    move-result-object v1

    .line 322
    iget v2, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->currentDepth:I

    add-int/2addr v2, v4

    iput v2, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->currentDepth:I

    .line 323
    iget-object v2, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_parameters_in_method_declaration:I

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleArguments(Ljava/util/List;I)V

    .line 324
    iget v1, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->currentDepth:I

    sub-int/2addr v1, v4

    iput v1, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->currentDepth:I

    :cond_3
    return v4
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MethodDeclaration;)Z
    .locals 9

    .line 30
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 31
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v1

    const/16 v2, 0x19

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    .line 33
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_method_declaration:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleParenthesesPositions(IILjava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters()Ljava/util/List;

    move-result-object v1

    .line 35
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReceiverType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v3

    .line 36
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eqz v4, :cond_1

    if-eqz v3, :cond_5

    :cond_1
    if-eqz v3, :cond_2

    .line 37
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v7, v3, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v4, v4, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_parameters_in_constructor_declaration:I

    goto :goto_1

    .line 39
    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v4, v4, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_parameters_in_method_declaration:I

    .line 40
    :goto_1
    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    .line 41
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 42
    :goto_2
    invoke-virtual {v7, v3, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v3

    iput v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    .line 43
    invoke-direct {p0, v1, v4}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleArguments(Ljava/util/List;I)V

    .line 44
    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptionTypes()Ljava/util/List;

    move-result-object v1

    .line 45
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/16 v4, 0x20

    const/4 v7, 0x0

    if-nez v3, :cond_8

    .line 46
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 47
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_throws_clause_in_constructor_declaration:I

    goto :goto_3

    .line 48
    :cond_6
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_throws_clause_in_method_declaration:I

    :goto_3
    and-int/lit8 v8, v3, 0x2

    if-nez v8, :cond_7

    .line 49
    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    .line 50
    :cond_7
    invoke-direct {p0, v1, v4, v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->prepareElementsList(Ljava/util/List;II)V

    .line 51
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/16 v8, 0x78

    invoke-virtual {v2, v1, v8}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 52
    invoke-direct {p0, v3, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(IF)V

    .line 53
    :cond_8
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_c

    .line 54
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findFirstTokenInLine(I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    .line 55
    :goto_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->isComment()Z

    move-result v0

    if-nez v0, :cond_b

    .line 56
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->typeParameters()Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 58
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v2, v0, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_9
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReturnType2()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 60
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReturnType2()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 61
    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    if-eq v0, v1, :cond_a

    .line 62
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_a
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    .line 65
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_method_declaration:I

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(I)V

    goto :goto_5

    .line 66
    :cond_b
    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    add-int/2addr v0, v5

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    goto :goto_4

    .line 67
    :cond_c
    :goto_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->typeParameters()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0xb

    invoke-direct {p0, p1, v4, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->prepareElementsList(Ljava/util/List;II)V

    .line 68
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_type_parameters:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(I)V

    return v5
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MethodInvocation;)Z
    .locals 7

    .line 105
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 106
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v2, 0x19

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    .line 107
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_method_invocation:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleParenthesesPositions(IILjava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->arguments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_method_invocation:I

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleArguments(Ljava/util/List;I)V

    .line 109
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleTypeArguments(Ljava/util/List;)V

    .line 110
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/MethodInvocation;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLocationInParent()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object v0

    sget-object v2, Lorg/eclipse/jdt/core/dom/MethodInvocation;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    move-object v0, p1

    move-object v2, v0

    .line 112
    :cond_1
    :goto_0
    instance-of v3, v0, Lorg/eclipse/jdt/core/dom/MethodInvocation;

    if-nez v3, :cond_3

    .line 113
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    .line 114
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, v0, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    goto :goto_1

    .line 115
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 116
    :goto_1
    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    .line 117
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    .line 118
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_selector_in_method_invocation:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(I)V

    :goto_2
    return v1

    .line 119
    :cond_3
    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/core/dom/MethodInvocation;

    .line 120
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->secondaryWrapIndexes:Ljava/util/List;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v5

    const/16 v6, 0x16

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/NormalAnnotation;)Z
    .locals 3

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Annotation;->getTypeName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 6
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v2, 0x19

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    .line 7
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_annotation:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleParenthesesPositions(IILjava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/NormalAnnotation;->values()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_annotation:I

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleArguments(Ljava/util/List;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/OpensDirective;)Z
    .locals 1

    .line 334
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->modules()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0x7c

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleModuleStatement(Ljava/util/List;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ParameterizedType;)Z
    .locals 2

    .line 327
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->typeArguments()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0x20

    const/16 v1, 0xb

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->prepareElementsList(Ljava/util/List;II)V

    .line 328
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_parameterized_type_references:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ProvidesDirective;)Z
    .locals 1

    .line 335
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ProvidesDirective;->implementations()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0x7d

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleModuleStatement(Ljava/util/List;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/QualifiedName;)Z
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleFieldAccess(Lorg/eclipse/jdt/core/dom/Expression;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;)Z
    .locals 3

    .line 9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Annotation;->getTypeName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 10
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v2, 0x19

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    .line 11
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_annotation:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleParenthesesPositions(IILjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;)Z
    .locals 4

    .line 145
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->arguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x17

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->arguments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 147
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v2, 0x19

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    .line 148
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_method_invocation:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleParenthesesPositions(IILjava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->arguments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_explicit_constructor_call:I

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleArguments(Ljava/util/List;I)V

    .line 150
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->typeArguments()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleTypeArguments(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SuperFieldAccess;)Z
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleFieldAccess(Lorg/eclipse/jdt/core/dom/Expression;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;)Z
    .locals 3

    .line 123
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 124
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v2, 0x19

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    .line 125
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_method_invocation:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleParenthesesPositions(IILjava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->arguments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_arguments_in_method_invocation:I

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleArguments(Ljava/util/List;I)V

    .line 127
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->typeArguments()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleTypeArguments(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SuperMethodReference;)Z
    .locals 0

    .line 331
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->typeArguments()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleTypeArguments(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SwitchExpression;)Z
    .locals 3

    .line 342
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v1, 0x17

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 343
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    const/16 v2, 0x19

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    .line 344
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_switch_statement:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleParenthesesPositions(IILjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SwitchStatement;)Z
    .locals 3

    .line 339
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v1, 0x17

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 340
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    const/16 v2, 0x19

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    .line 341
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_switch_statement:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleParenthesesPositions(IILjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ThisExpression;)Z
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleFieldAccess(Lorg/eclipse/jdt/core/dom/Expression;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TryStatement;)Z
    .locals 5

    .line 277
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TryStatement;->resources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x17

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 279
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TryStatement;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v3

    const/16 v4, 0x19

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v2

    .line 280
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_try_clause:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleParenthesesPositions(IILjava/lang/String;)V

    .line 281
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TryStatement;->resources()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->prepareElementsList(Ljava/util/List;II)V

    .line 282
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_resources_in_try:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)Z
    .locals 8

    .line 12
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->getSuperclassType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    const/high16 v1, 0x3f600000    # 0.875f

    const/16 v2, 0x56

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    .line 13
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v4

    iput v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    .line 14
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v0, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v4

    iput v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    .line 15
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v5, v0, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v5, v0, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_superclass_in_type_declaration:I

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(IF)V

    .line 18
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceTypes()Ljava/util/List;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/16 v5, 0x20

    if-nez v4, :cond_2

    .line 20
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x7b

    .line 21
    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v4

    iput v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    .line 22
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v6, v7, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-direct {p0, v0, v5, v3}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->prepareElementsList(Ljava/util/List;II)V

    .line 24
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_superinterfaces_in_type_declaration:I

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(IF)V

    .line 25
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->typeParameters()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {p0, v0, v5, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->prepareElementsList(Ljava/util/List;II)V

    .line 26
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_type_parameters:I

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(I)V

    .line 27
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->aligner:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->handleAlign(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeMethodReference;)Z
    .locals 0

    .line 329
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeMethodReference;->typeArguments()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleTypeArguments(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/UnionType;)Z
    .locals 8

    .line 283
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/UnionType;->types()Ljava/util/List;

    move-result-object v0

    .line 284
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 285
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_or_operator_multicatch:Z

    const/16 v3, 0x1c

    if-eqz v1, :cond_4

    .line 286
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-nez v4, :cond_2

    .line 287
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p1, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    .line 288
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->isComment()Z

    move-result p1

    if-nez p1, :cond_1

    .line 289
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p1, v0, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    .line 290
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_union_type_in_multicatch:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(I)V

    goto :goto_2

    .line 291
    :cond_1
    iget p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    goto :goto_1

    .line 292
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/Type;

    .line 293
    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 294
    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v7, v4, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 295
    :cond_3
    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v7, v4, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v6, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->secondaryWrapIndexes:Ljava/util/List;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v7, v4, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/16 p1, 0x17

    .line 297
    invoke-direct {p0, v0, v3, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->prepareElementsList(Ljava/util/List;II)V

    .line 298
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_union_type_in_multicatch:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(I)V

    :goto_2
    return v2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;)Z
    .locals 6

    .line 232
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getInitializer()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 233
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getInitializer()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 234
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v2

    if-lez v2, :cond_1

    return v1

    .line 235
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getInitializer()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v4

    const/16 v5, 0x48

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v2

    .line 236
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapIndexes:Ljava/util/List;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v5, v5, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_assignment_operator:Z

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    move v5, v0

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->secondaryWrapIndexes:Ljava/util/List;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v5, v5, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_before_assignment_operator:Z

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr v2, v1

    .line 238
    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapParentIndex:I

    .line 239
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getInitializer()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->wrapGroupEnd:I

    .line 240
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_assignment:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleWrap(I)V

    return v1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;)Z
    .locals 0

    .line 326
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->fragments()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleVariableDeclarations(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/WhileStatement;)Z
    .locals 4

    .line 272
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v1, 0x17

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 273
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/WhileStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    .line 274
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->parenthesis_positions_in_if_while_statement:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleParenthesesPositions(IILjava/lang/String;)V

    .line 275
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->keep_simple_while_body_on_same_line:Z

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/WhileStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->alignment_for_compact_loop:I

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleSimpleLoop(Lorg/eclipse/jdt/core/dom/Statement;I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
