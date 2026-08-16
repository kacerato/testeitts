.class public abstract Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;
.super Lorg/eclipse/jdt/internal/core/util/LRUCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/eclipse/jdt/internal/core/util/LRUCache<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field protected loadFactor:D

.field protected overflow:I

.field protected timestampsOn:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;-><init>(I)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->timestampsOn:Z

    const-wide v0, 0x3fd54fdf3b645a1dL    # 0.333

    .line 4
    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->loadFactor:D

    .line 5
    iput p2, p0, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->overflow:I

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->clone()Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/eclipse/jdt/internal/core/OverflowingLRUCache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->spaceLimit:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->overflow:I

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->newInstance(II)Lorg/eclipse/jdt/internal/core/util/LRUCache;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;

    .line 4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueueTail:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->key:Ljava/lang/Object;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->value:Ljava/lang/Object;

    iget v4, v1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->space:I

    invoke-virtual {v0, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->privateAdd(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 6
    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->previous:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    goto :goto_0
.end method

.method public bridge synthetic clone()Lorg/eclipse/jdt/internal/core/util/LRUCache;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->clone()Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;

    move-result-object v0

    return-object v0
.end method

.method public abstract close(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry<",
            "TK;TV;>;)Z"
        }
    .end annotation
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueue:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator;-><init>(Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator$LRUEnumeratorElement;)V

    return-object v0

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator$LRUEnumeratorElement;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->value:Ljava/lang/Object;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator$LRUEnumeratorElement;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueue:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->next:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    move-object v2, v1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator;-><init>(Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator$LRUEnumeratorElement;)V

    return-object v0

    :cond_1
    new-instance v3, Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator$LRUEnumeratorElement;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->value:Ljava/lang/Object;

    invoke-direct {v3, v4}, Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator$LRUEnumeratorElement;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator$LRUEnumeratorElement;->next:Lorg/eclipse/jdt/internal/core/LRUCacheEnumerator$LRUEnumeratorElement;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->next:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    move-object v2, v3

    goto :goto_0
.end method

.method public fillingRatio()D
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->currentSpace:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->overflow:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->spaceLimit:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getEntryTable()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "TK;",
            "Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getLoadFactor()D
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->loadFactor:D

    return-wide v0
.end method

.method public getOverflow()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->overflow:I

    return v0
.end method

.method public makeSpace(I)Z
    .locals 7

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->spaceLimit:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->overflow:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->currentSpace:I

    add-int/2addr v1, p1

    if-gt v1, v0, :cond_0

    return v2

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->loadFactor:D

    sub-double/2addr v3, v5

    int-to-double v5, v0

    mul-double/2addr v3, v5

    double-to-int v1, v3

    if-le v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueueTail:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->timestampsOn:Z

    :goto_1
    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->currentSpace:I

    add-int v6, v5, v1

    if-le v6, v0, :cond_3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3, v4, v4}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->privateRemoveEntry(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;ZZ)V

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->previous:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->timestampsOn:Z

    add-int v1, v5, p1

    if-gt v1, v0, :cond_4

    iput v4, p0, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->overflow:I

    return v2

    :cond_4
    add-int/2addr v5, p1

    sub-int/2addr v5, v0

    iput v5, p0, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->overflow:I

    return v4

    :goto_3
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->timestampsOn:Z

    throw p1
.end method

.method public abstract newInstance(II)Lorg/eclipse/jdt/internal/core/util/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/eclipse/jdt/internal/core/util/LRUCache<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public printStats()V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueue:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Forward length: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueueTail:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    :goto_1
    if-nez v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Backward length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache$1Temp;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache$1Temp;

    if-nez v1, :cond_2

    new-instance v1, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache$1Temp;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache$1Temp;-><init>(Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;Ljava/lang/Class;)V

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget v0, v1, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache$1Temp;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache$1Temp;->count:I

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->previous:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->next:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    goto/16 :goto_0
.end method

.method public privateRemoveEntry(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->privateRemoveEntry(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;ZZ)V

    return-void
.end method

.method public privateRemoveEntry(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry<",
            "TK;TV;>;ZZ)V"
        }
    .end annotation

    if-nez p2, :cond_3

    if-eqz p3, :cond_0

    .line 2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryTable:Ljava/util/Hashtable;

    iget-object p3, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->key:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget p2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->currentSpace:I

    iget p3, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->space:I

    sub-int/2addr p2, p3

    iput p2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->currentSpace:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->close(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryTable:Ljava/util/Hashtable;

    iget-object p3, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->key:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryTable:Ljava/util/Hashtable;

    iget-object p3, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->key:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget p2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->currentSpace:I

    iget p3, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->space:I

    sub-int/2addr p2, p3

    iput p2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->currentSpace:I

    .line 8
    :cond_3
    :goto_0
    iget-object p2, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->previous:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    .line 9
    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->next:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    if-nez p2, :cond_4

    .line 10
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueue:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    goto :goto_1

    .line 11
    :cond_4
    iput-object p1, p2, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->next:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    :goto_1
    if-nez p1, :cond_5

    .line 12
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueueTail:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    goto :goto_2

    .line 13
    :cond_5
    iput-object p2, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->previous:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    :goto_2
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->overflow:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->shrink()Z

    :cond_0
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->spaceFor(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    if-eqz v1, :cond_2

    iget v2, v1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->space:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->currentSpace:I

    sub-int/2addr v3, v2

    add-int/2addr v3, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->spaceLimit:I

    const/4 v4, 0x0

    if-gt v3, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->updateTimestamp(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;)V

    iput-object p2, v1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->value:Ljava/lang/Object;

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->space:I

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->currentSpace:I

    iput v4, p0, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->overflow:I

    return-object p2

    :cond_1
    invoke-virtual {p0, v1, v4, v4}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->privateRemoveEntry(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;ZZ)V

    :cond_2
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->makeSpace(I)Z

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->privateAdd(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object p2
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setLoadFactor(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->loadFactor:D

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->cache_invalidLoadFactor:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSpaceLimit(I)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->spaceLimit:I

    if-ge p1, v0, :cond_0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->makeSpace(I)Z

    :cond_0
    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->spaceLimit:I

    return-void
.end method

.method public shrink()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->overflow:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->makeSpace(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OverflowingLRUCache "

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->toStringFillingRation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->toStringContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTimestamp(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->timestampsOn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->timestampCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->timestampCounter:I

    iput v0, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->timestamp:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueue:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->privateRemoveEntry(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;Z)V

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->privateAddEntry(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;Z)V

    :cond_0
    return-void
.end method
