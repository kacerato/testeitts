.class Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeferredAttrContext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext$StuckNode;
    }
.end annotation


# instance fields
.field deferredAttrNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;",
            ">;"
        }
    .end annotation
.end field

.field final inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

.field final mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

.field final msym:Lorg/openjdk/tools/javac/code/Symbol;

.field final parent:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

.field final phase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

.field final warn:Lorg/openjdk/tools/javac/util/Warner;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->deferredAttrNodes:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->msym:Lorg/openjdk/tools/javac/code/Symbol;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->phase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    iput-object p6, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->parent:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    iput-object p7, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->warn:Lorg/openjdk/tools/javac/util/Warner;

    iput-object p5, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;)Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext$StuckNode;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->lambda$pickDeferredNode$0(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;)Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext$StuckNode;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$pickDeferredNode$0(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;)Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext$StuckNode;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext$StuckNode;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext$StuckNode;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;)V

    return-object v0
.end method


# virtual methods
.method public addDeferredAttrNode(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->deferredAttrNodes:Ljava/util/ArrayList;

    new-instance v1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-direct {v1, v2, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public complete()V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->deferredAttrNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->deferredAttrNodes:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->from(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    invoke-virtual {v2, p0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->process(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->deferredAttrNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->insideOverloadPhase()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->deferredAttrNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->dt:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v2, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    iput-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->pickDeferredNode()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->deferredStuckPolicy:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;->stuckVars()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->from(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->warn:Lorg/openjdk/tools/javac/util/Warner;

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->solveAny(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->notifyChange()V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/comp/Infer$GraphStrategy$NodeNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_5
    return-void
.end method

.method public insideOverloadPhase()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->emptyDeferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    sget-object v1, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->SPECULATIVE:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->parent:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->insideOverloadPhase()Z

    move-result v0

    return v0
.end method

.method public pickDeferredNode()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;
    .locals 8

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->deferredAttrNodes:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/comp/a0;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/comp/a0;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->collector()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext$StuckNode;

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->deferredStuckPolicy:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;

    invoke-interface {v3}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;->stuckVars()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext$StuckNode;

    if-eq v2, v6, :cond_2

    iget-object v7, v6, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    check-cast v7, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v7, v7, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->deferredStuckPolicy:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;

    invoke-interface {v7}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;->depVars()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext$StuckNode;->deps:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/GraphUtils;->tarjan(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext$StuckNode;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    :goto_1
    check-cast v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->deferredAttrNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :goto_2
    return-object v0
.end method
