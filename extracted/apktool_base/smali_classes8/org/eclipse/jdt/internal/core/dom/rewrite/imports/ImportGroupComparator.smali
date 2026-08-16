.class final Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$IndexedImportGroups;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
        ">;"
    }
.end annotation


# static fields
.field private static final MATCH_ALL:Ljava/lang/String; = ""

.field private static final STATIC_MATCH_ALL:Ljava/lang/String; = "#"

.field private static final STATIC_PREFIX:Ljava/lang/String; = "#"

.field private static memoizedImportOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static memoizedIndexedImportGroups:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$IndexedImportGroups;


# instance fields
.field private final indexedImportGroups:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$IndexedImportGroups;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;->includeMatchAllImportGroups(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;->indexImportOrder(Ljava/util/List;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$IndexedImportGroups;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;->indexedImportGroups:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$IndexedImportGroups;

    return-void
.end method

.method private determineSortPosition(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;)I
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->isOnDemand()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->containerName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->qualifiedName:Ljava/lang/String;

    :goto_0
    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->isStatic:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;->indexedImportGroups:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$IndexedImportGroups;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$IndexedImportGroups;->staticImportGroupByName:Ljava/util/NavigableMap;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;->indexedImportGroups:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$IndexedImportGroups;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$IndexedImportGroups;->typeImportGroupsByName:Ljava/util/NavigableMap;

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;

    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;->isWholeSegmentPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;->getIndex()I

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;->getPrefix()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;

    move-result-object p1

    goto :goto_2
.end method

.method private static includeMatchAllImportGroups(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "#"

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    return-object p0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    if-nez v3, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v4, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-nez v1, :cond_2

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v4
.end method

.method private static declared-synchronized indexImportOrder(Ljava/util/List;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$IndexedImportGroups;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$IndexedImportGroups;"
        }
    .end annotation

    const-class v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;->memoizedImportOrder:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;->memoizedIndexedImportGroups:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$IndexedImportGroups;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    sput-object p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;->memoizedImportOrder:Ljava/util/List;

    new-instance p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$IndexedImportGroups;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;->mapImportGroups(Ljava/util/Map;)Ljava/util/NavigableMap;

    move-result-object v1

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;->mapImportGroups(Ljava/util/Map;)Ljava/util/NavigableMap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$IndexedImportGroups;-><init>(Ljava/util/NavigableMap;Ljava/util/NavigableMap;)V

    sput-object p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;->memoizedIndexedImportGroups:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$IndexedImportGroups;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    goto :goto_1

    :cond_2
    move-object v5, v1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static isWholeSegmentPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x2e

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static mapImportGroups(Ljava/util/Map;)Ljava/util/NavigableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, ""

    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_1

    return-object v3

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_2
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v2}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;->isWholeSegmentPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    goto :goto_2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;

    new-instance v5, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v3, v6, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;-><init>(Ljava/lang/String;ILorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator$ImportGroup;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v5}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    check-cast p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;->compare(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;->determineSortPosition(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;)I

    move-result p1

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;->determineSortPosition(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
