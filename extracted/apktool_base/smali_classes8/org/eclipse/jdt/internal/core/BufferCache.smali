.class public Lorg/eclipse/jdt/internal/core/BufferCache;
.super Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/eclipse/jdt/internal/core/OverflowingLRUCache<",
        "TK;",
        "Lorg/eclipse/jdt/core/IBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private buffersToClose:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/IBuffer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;-><init>(I)V

    .line 2
    new-instance p1, Ljava/lang/ThreadLocal;

    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/BufferCache;->buffersToClose:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;-><init>(II)V

    .line 4
    new-instance p1, Ljava/lang/ThreadLocal;

    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/BufferCache;->buffersToClose:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public close(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry<",
            "TK;",
            "Lorg/eclipse/jdt/core/IBuffer;",
            ">;)Z"
        }
    .end annotation

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->value:Ljava/lang/Object;

    check-cast p1, Lorg/eclipse/jdt/core/IBuffer;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IBuffer;->getOwner()Lorg/eclipse/jdt/core/IOpenable;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/Openable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/Openable;->canBufferBeRemovedFromCache(Lorg/eclipse/jdt/core/IBuffer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BufferCache;->buffersToClose:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/BufferCache;->buffersToClose:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public closeBuffers()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BufferCache;->buffersToClose:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/BufferCache;->buffersToClose:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/IBuffer;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IBuffer;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public newInstance(II)Lorg/eclipse/jdt/internal/core/util/LRUCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/eclipse/jdt/internal/core/util/LRUCache<",
            "TK;",
            "Lorg/eclipse/jdt/core/IBuffer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/BufferCache;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/BufferCache;-><init>(II)V

    return-object v0
.end method
