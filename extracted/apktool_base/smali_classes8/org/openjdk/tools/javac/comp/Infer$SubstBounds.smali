.class Lorg/openjdk/tools/javac/comp/Infer$SubstBounds;
.super Lorg/openjdk/tools/javac/comp/Infer$CheckInst;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubstBounds"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Infer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;)V
    .locals 3

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$SubstBounds;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    sget-object v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->LOWER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    sget-object v1, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->EQ:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    sget-object v2, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->UPPER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    filled-new-array {v1, v2}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/openjdk/tools/javac/comp/Infer$CheckInst;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;[Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    return-void
.end method


# virtual methods
.method public apply(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/Warner;)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->uv:Lorg/openjdk/tools/javac/code/Type$UndetVar;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->uv:Lorg/openjdk/tools/javac/code/Type$UndetVar;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getInst()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Infer$SubstBounds;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v4, v4, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v2, v3, v4}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->substBounds(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Types;)V

    invoke-virtual {p0, v1, p1}, Lorg/openjdk/tools/javac/comp/Infer$SubstBounds;->checkCompatibleUpperBounds(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->apply(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/Warner;)V

    return-void
.end method

.method public checkCompatibleUpperBounds(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->UPPER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    filled-new-array {v0}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/javac/comp/Infer$BoundFilter;

    invoke-direct {v2, p2}, Lorg/openjdk/tools/javac/comp/Infer$BoundFilter;-><init>(Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    invoke-static {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->filter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Infer$SubstBounds;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Infer;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$SubstBounds;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/code/Types;->glb(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Infer$SubstBounds;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-virtual {p2, p1, v0}, Lorg/openjdk/tools/javac/comp/Infer;->reportBoundError(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    :cond_3
    return-void
.end method

.method public dup(Lorg/openjdk/tools/javac/code/Type$UndetVar;)Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/comp/Infer$SubstBounds;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$SubstBounds;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/Infer$SubstBounds;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;)V

    return-object v0
.end method
