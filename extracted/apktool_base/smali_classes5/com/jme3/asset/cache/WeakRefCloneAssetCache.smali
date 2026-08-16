.class public Lcom/jme3/asset/cache/WeakRefCloneAssetCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/asset/cache/AssetCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/asset/cache/WeakRefCloneAssetCache$KeyRef;,
        Lcom/jme3/asset/cache/WeakRefCloneAssetCache$AssetRef;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final assetLoadStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lcom/jme3/asset/AssetKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private final refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/jme3/asset/AssetKey;",
            ">;"
        }
    .end annotation
.end field

.field private final smartCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/jme3/asset/AssetKey;",
            "Lcom/jme3/asset/cache/WeakRefCloneAssetCache$AssetRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/asset/cache/WeakRefAssetCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache;->refQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache;->smartCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache$1;

    invoke-direct {v0, p0}, Lcom/jme3/asset/cache/WeakRefCloneAssetCache$1;-><init>(Lcom/jme3/asset/cache/WeakRefCloneAssetCache;)V

    iput-object v0, p0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache;->assetLoadStack:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private removeCollectedAssets()V
    .locals 4

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lcom/jme3/asset/cache/WeakRefCloneAssetCache$KeyRef;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/jme3/asset/cache/WeakRefCloneAssetCache$KeyRef;->clonedKey:Lcom/jme3/asset/AssetKey;

    iget-object v2, p0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache;->smartCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    sget-object v1, Lcom/jme3/asset/cache/WeakRefCloneAssetCache;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "WeakRefCloneAssetCache: {0} assets were purged from the cache."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addToCache(Lcom/jme3/asset/AssetKey;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/jme3/asset/cache/WeakRefCloneAssetCache;->removeCollectedAssets()V

    check-cast p2, Lcom/jme3/asset/CloneableSmartAsset;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/jme3/asset/CloneableSmartAsset;->setKey(Lcom/jme3/asset/AssetKey;)V

    new-instance v0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache$KeyRef;

    iget-object v1, p0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Lcom/jme3/asset/cache/WeakRefCloneAssetCache$KeyRef;-><init>(Lcom/jme3/asset/AssetKey;Ljava/lang/ref/ReferenceQueue;)V

    iget-object v1, p0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache;->smartCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, v0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache$KeyRef;->clonedKey:Lcom/jme3/asset/AssetKey;

    new-instance v2, Lcom/jme3/asset/cache/WeakRefCloneAssetCache$AssetRef;

    invoke-direct {v2, p2, p1}, Lcom/jme3/asset/cache/WeakRefCloneAssetCache$AssetRef;-><init>(Lcom/jme3/asset/CloneableSmartAsset;Lcom/jme3/asset/AssetKey;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache;->assetLoadStack:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearCache()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache;->assetLoadStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache;->smartCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cache cannot be modifiedwhile assets are being loaded"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteFromCache(Lcom/jme3/asset/AssetKey;)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache;->assetLoadStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache;->smartCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cache cannot be modifiedwhile assets are being loaded"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFromCache(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache;->smartCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/asset/cache/WeakRefCloneAssetCache$AssetRef;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/asset/AssetKey;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache;->assetLoadStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lcom/jme3/asset/cache/WeakRefCloneAssetCache$AssetRef;->asset:Lcom/jme3/asset/CloneableSmartAsset;

    return-object p1
.end method

.method public notifyNoAssetClone()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache;->assetLoadStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public registerAssetClone(Lcom/jme3/asset/AssetKey;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache;->assetLoadStack:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    check-cast p2, Lcom/jme3/asset/CloneableSmartAsset;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/asset/AssetKey;

    invoke-interface {p2, p1}, Lcom/jme3/asset/CloneableSmartAsset;->setKey(Lcom/jme3/asset/AssetKey;)V

    return-void
.end method
