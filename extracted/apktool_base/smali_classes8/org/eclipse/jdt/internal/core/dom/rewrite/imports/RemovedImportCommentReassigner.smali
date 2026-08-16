.class final Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RemovedImportCommentReassigner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final originalImportsWithComments:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RemovedImportCommentReassigner;->retainImportsWithComments(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RemovedImportCommentReassigner;->originalImportsWithComments:Ljava/util/Collection;

    return-void
.end method

.method private assignRemovedImports(Ljava/util/Collection;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;",
            ">;)",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RemovedImportCommentReassigner;->identifyRemovedImportsWithComments(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RemovedImportCommentReassigner;->identifyFirstSingleForEachOnDemand(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RemovedImportCommentReassigner;->identifyFirstOccurrenceOfEachImportName(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return-object v3

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->importName:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->isOnDemand()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->getContainerOnDemand()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;

    :goto_2
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static hasFloatingComment(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;)Z
    .locals 2

    iget-object p0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->comments:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;->succeedingLineDelimiters:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1
.end method

.method private identifyFirstOccurrenceOfEachImportName(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;",
            ">;)",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

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

    check-cast v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->importName:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->importName:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private identifyFirstSingleForEachOnDemand(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;",
            ">;)",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

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

    check-cast v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->importName:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->isOnDemand()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->importName:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->getContainerOnDemand()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private identifyRemovedImportsWithComments(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RemovedImportCommentReassigner;->originalImportsWithComments:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private static retainImportsWithComments(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->comments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public reassignComments(Ljava/util/Collection;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;",
            ">;)",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RemovedImportCommentReassigner;->assignRemovedImports(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

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

    check-cast v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    iget-object v5, v5, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->comments:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    if-eqz v6, :cond_3

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RemovedImportCommentReassigner;->hasFloatingComment(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;

    new-instance v6, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;->region:Lorg/eclipse/jface/text/IRegion;

    const/4 v7, 0x2

    invoke-direct {v6, v5, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;-><init>(Lorg/eclipse/jface/text/IRegion;I)V

    invoke-interface {v3, v6}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
