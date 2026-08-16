.class Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandComputer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private staticOnDemandThreshold:I

.field private typeOnDemandThreshold:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandComputer;->typeOnDemandThreshold:I

    iput p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandComputer;->staticOnDemandThreshold:I

    return-void
.end method

.method private mapByContainer(Ljava/util/Collection;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;)",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->getContainerOnDemand()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private maybeReduce(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;Ljava/util/Collection;ILjava/util/Set;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandReduction;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandReduction;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p2

    if-lt p2, p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_1
    new-instance p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandReduction;

    invoke-direct {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandReduction;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;Ljava/util/Collection;)V

    return-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->isOnDemand()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->simpleName:Ljava/lang/String;

    invoke-interface {p4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public identifyPossibleReductions(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandReduction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandComputer;->mapByContainer(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->containerName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iget-boolean v3, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->isStatic:Z

    if-eqz v3, :cond_2

    move-object v4, p4

    goto :goto_1

    :cond_2
    move-object v4, p3

    :goto_1
    if-eqz v3, :cond_3

    iget v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandComputer;->staticOnDemandThreshold:I

    goto :goto_2

    :cond_3
    iget v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandComputer;->typeOnDemandThreshold:I

    :goto_2
    invoke-direct {p0, v2, v1, v3, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandComputer;->maybeReduce(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;Ljava/util/Collection;ILjava/util/Set;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandReduction;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
