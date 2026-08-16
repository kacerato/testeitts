.class final Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OrderPreservingImportAdder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportAdder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OrderPreservingImportAdder$AdjacentImports;
    }
.end annotation


# instance fields
.field private final importComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OrderPreservingImportAdder;->importComparator:Ljava/util/Comparator;

    return-void
.end method

.method private static countMatchingPrefixSegments(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    move v0, v1

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v0, v3, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x2e

    const/4 v5, 0x1

    if-eq v0, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v0, v6, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v4, :cond_3

    move v5, v1

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    if-nez v3, :cond_7

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    return v2

    :cond_8
    :goto_4
    return v1
.end method

.method private determineAdjacentNewImports(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;)",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OrderPreservingImportAdder$AdjacentImports;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OrderPreservingImportAdder;->importComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-direct {p0, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OrderPreservingImportAdder;->shouldGroupWithSucceeding(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OrderPreservingImportAdder$AdjacentImports;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OrderPreservingImportAdder$AdjacentImports;->importsBefore:Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OrderPreservingImportAdder$AdjacentImports;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OrderPreservingImportAdder$AdjacentImports;->importsAfter:Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    new-instance v3, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OrderPreservingImportAdder$AdjacentImports;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OrderPreservingImportAdder$AdjacentImports;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private shouldGroupWithSucceeding(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p3, :cond_1

    return v1

    :cond_1
    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->containerName:Ljava/lang/String;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->containerName:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OrderPreservingImportAdder;->countMatchingPrefixSegments(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    iget-object p3, p3, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->containerName:Ljava/lang/String;

    invoke-static {p1, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OrderPreservingImportAdder;->countMatchingPrefixSegments(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-le p1, p2, :cond_2

    return v0

    :cond_2
    return v1
.end method


# virtual methods
.method public addImports(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OrderPreservingImportAdder;->importComparator:Ljava/util/Comparator;

    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v0

    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OrderPreservingImportAdder;->determineAdjacentNewImports(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OrderPreservingImportAdder$AdjacentImports;

    if-eqz v2, :cond_4

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OrderPreservingImportAdder$AdjacentImports;->importsBefore:Ljava/util/Collection;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_2

    iget-object v0, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OrderPreservingImportAdder$AdjacentImports;->importsAfter:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
