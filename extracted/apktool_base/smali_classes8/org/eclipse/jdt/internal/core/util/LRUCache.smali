.class public Lorg/eclipse/jdt/internal/core/util/LRUCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;,
        Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_SPACELIMIT:I = 0x64


# instance fields
.field protected currentSpace:I

.field protected entryQueue:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field protected entryQueueTail:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field protected entryTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "TK;",
            "Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field protected spaceLimit:I

.field protected timestampCounter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x64

    .line 1
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->currentSpace:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->timestampCounter:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueueTail:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueue:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    .line 5
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, p1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryTable:Ljava/util/Hashtable;

    .line 6
    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->spaceLimit:I

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->lambda$0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
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
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->clone()Lorg/eclipse/jdt/internal/core/util/LRUCache;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/eclipse/jdt/internal/core/util/LRUCache;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/eclipse/jdt/internal/core/util/LRUCache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->spaceLimit:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->newInstance(I)Lorg/eclipse/jdt/internal/core/util/LRUCache;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueueTail:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->key:Ljava/lang/Object;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->value:Ljava/lang/Object;

    iget v4, v1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->space:I

    invoke-virtual {v0, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->privateAdd(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 5
    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->previous:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    goto :goto_0
.end method

.method public fillingRatio()D
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->currentSpace:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->spaceLimit:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public flush()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->currentSpace:I

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueueTail:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    .line 3
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryTable:Ljava/util/Hashtable;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueueTail:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueue:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    :goto_0
    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->previous:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    goto :goto_0
.end method

.method public flush(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->privateRemoveEntry(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;Z)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->updateTimestamp(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public getCurrentSpace()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->currentSpace:I

    return v0
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object p1, v0, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->key:Ljava/lang/Object;

    return-object p1
.end method

.method public getNewestTimestampCounter()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueue:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->timestamp:I

    :goto_0
    return v0
.end method

.method public getOldestElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueueTail:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->key:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public getOldestTimestampCounter()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueueTail:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->timestamp:I

    :goto_0
    return v0
.end method

.method public getSpaceLimit()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->spaceLimit:I

    return v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public keysAndValues()Lorg/eclipse/jdt/internal/core/util/ICacheEnumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/eclipse/jdt/internal/core/util/ICacheEnumeration<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/LRUCache$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/util/LRUCache$1;-><init>(Lorg/eclipse/jdt/internal/core/util/LRUCache;)V

    return-object v0
.end method

.method public makeSpace(I)Z
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->getSpaceLimit()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->currentSpace:I

    add-int/2addr v1, p1

    const/4 v2, 0x1

    if-gt v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    if-le p1, v0, :cond_1

    return v1

    :cond_1
    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->currentSpace:I

    add-int/2addr v3, p1

    if-le v3, v0, :cond_3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueueTail:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3, v1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->privateRemoveEntry(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;Z)V

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method

.method public newInstance(I)Lorg/eclipse/jdt/internal/core/util/LRUCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/eclipse/jdt/internal/core/util/LRUCache<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/LRUCache;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;-><init>(I)V

    return-object v0
.end method

.method public peek(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public privateAdd(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)V"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->privateAddEntry(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;Z)V

    return-void
.end method

.method public privateAddEntry(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryTable:Ljava/util/Hashtable;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->key:Ljava/lang/Object;

    invoke-virtual {p2, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->currentSpace:I

    iget v0, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->space:I

    add-int/2addr p2, v0

    iput p2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->currentSpace:I

    :cond_0
    iget p2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->timestampCounter:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->timestampCounter:I

    iput p2, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->timestamp:I

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueue:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    iput-object p2, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->next:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->previous:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    if-nez p2, :cond_1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueueTail:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    goto :goto_0

    :cond_1
    iput-object p1, p2, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->previous:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    :goto_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueue:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    return-void
.end method

.method public privateRemoveEntry(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->previous:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->next:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryTable:Ljava/util/Hashtable;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->key:Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->currentSpace:I

    iget p1, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->space:I

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->currentSpace:I

    :cond_0
    if-nez v0, :cond_1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueue:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    goto :goto_0

    :cond_1
    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->next:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    :goto_0
    if-nez v1, :cond_2

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueueTail:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    goto :goto_1

    :cond_2
    iput-object v0, v1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->previous:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    :goto_1
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->spaceFor(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    if-eqz v1, :cond_1

    iget v2, v1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->space:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->getCurrentSpace()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->getSpaceLimit()I

    move-result v2

    if-gt v3, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->updateTimestamp(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;)V

    iput-object p2, v1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->value:Ljava/lang/Object;

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->space:I

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->currentSpace:I

    return-object p2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->privateRemoveEntry(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;Z)V

    :cond_1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->makeSpace(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->privateAdd(Ljava/lang/Object;Ljava/lang/Object;I)V

    :cond_2
    return-object p2
.end method

.method public removeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->privateRemoveEntry(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;Z)V

    return-object v0
.end method

.method public setSpaceLimit(I)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->spaceLimit:I

    if-ge p1, v0, :cond_0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->makeSpace(I)Z

    :cond_0
    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->spaceLimit:I

    return-void
.end method

.method public spaceFor(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/util/ILRUCacheable;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/core/util/ILRUCacheable;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/core/util/ILRUCacheable;->getCacheFootprint()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LRUCache"

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

.method public toStringContents()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Lorg/eclipse/jdt/internal/core/util/ToStringSorter;

    new-instance v2, Lorg/eclipse/jdt/internal/core/util/a;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/core/util/a;-><init>()V

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/core/util/ToStringSorter;-><init>(Ljava/util/function/Function;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/util/ToStringSorter;->sort(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/util/ToStringSorter$Pair;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/util/ToStringSorter$Pair;->string:Ljava/lang/String;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/util/ToStringSorter$Pair;->object:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public toStringFillingRation(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x5b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->getSpaceLimit()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "]: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->fillingRatio()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "% full"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
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

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->timestampCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->timestampCounter:I

    iput v0, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->timestamp:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueue:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->privateRemoveEntry(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;Z)V

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->privateAddEntry(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;Z)V

    :cond_0
    return-void
.end method
