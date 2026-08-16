.class Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;
.super Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckBounds"
.end annotation


# instance fields
.field from:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

.field optFilter:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Lorg/openjdk/tools/javac/comp/InferenceContext;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Infer;

.field typeFunc:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Lorg/openjdk/tools/javac/comp/InferenceContext;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;Ljava/util/function/BiFunction;Ljava/util/function/BiPredicate;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$UndetVar;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Ljava/util/function/BiFunction<",
            "Lorg/openjdk/tools/javac/comp/InferenceContext;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Ljava/util/function/BiPredicate<",
            "Lorg/openjdk/tools/javac/comp/InferenceContext;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;",
            ")V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;)V

    .line 4
    iput-object p6, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->from:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    .line 5
    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->typeFunc:Ljava/util/function/BiFunction;

    .line 6
    iput-object p5, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->optFilter:Ljava/util/function/BiPredicate;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V
    .locals 7

    .line 1
    new-instance v4, Lorg/openjdk/tools/javac/comp/j0;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/comp/j0;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;Ljava/util/function/BiFunction;Ljava/util/function/BiPredicate;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    return-void
.end method


# virtual methods
.method public apply(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/Warner;)V
    .locals 9

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->typeFunc:Ljava/util/function/BiFunction;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->t:Lorg/openjdk/tools/javac/code/Type;

    invoke-interface {v0, p1, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->t:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->optFilter:Ljava/util/function/BiPredicate;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, v0}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->boundsToCheck()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->uv:Lorg/openjdk/tools/javac/code/Type$UndetVar;

    filled-new-array {v1}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->typeFunc:Ljava/util/function/BiFunction;

    invoke-interface {v3, p1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->optFilter:Ljava/util/function/BiPredicate;

    if-eqz v2, :cond_3

    invoke-interface {v2, p1, v4}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->t:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->from:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-object v2, p0

    move-object v6, v1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->checkBound(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->from:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    invoke-virtual {p0, v2, v1}, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->report(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public boundsToCheck()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->from:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    sget-object v1, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->EQ:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    if-ne v0, v1, :cond_0

    const-class v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public checkBound(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/util/Warner;)Z
    .locals 1

    invoke-virtual {p3, p4}, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->lessThan(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p5}, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p4, p3}, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->lessThan(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0, p2, p1, p5}, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method

.method public dup(Lorg/openjdk/tools/javac/code/Type$UndetVar;)Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;
    .locals 8

    new-instance v7, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->t:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->typeFunc:Ljava/util/function/BiFunction;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->optFilter:Ljava/util/function/BiPredicate;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->from:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;Ljava/util/function/BiFunction;Ljava/util/function/BiPredicate;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    return-object v7
.end method

.method public report(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V
    .locals 2

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->uv:Lorg/openjdk/tools/javac/code/Type$UndetVar;

    invoke-virtual {p2, v0, p1}, Lorg/openjdk/tools/javac/comp/Infer;->reportBoundError(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->LOWER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    if-eq p1, v0, :cond_2

    sget-object v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->EQ:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->uv:Lorg/openjdk/tools/javac/code/Type$UndetVar;

    invoke-virtual {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/comp/Infer;->reportBoundError(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->uv:Lorg/openjdk/tools/javac/code/Type$UndetVar;

    invoke-virtual {v0, v1, p2, p1}, Lorg/openjdk/tools/javac/comp/Infer;->reportBoundError(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->uv:Lorg/openjdk/tools/javac/code/Type$UndetVar;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->t:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->from:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s[undet=%s,t=%s,bound=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
