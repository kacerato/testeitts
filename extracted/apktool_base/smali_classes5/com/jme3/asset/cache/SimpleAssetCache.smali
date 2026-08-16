.class public Lcom/jme3/asset/cache/SimpleAssetCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/asset/cache/AssetCache;


# instance fields
.field private final keyToAssetMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/jme3/asset/AssetKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/asset/cache/SimpleAssetCache;->keyToAssetMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public addToCache(Lcom/jme3/asset/AssetKey;Ljava/lang/Object;)V
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

    iget-object v0, p0, Lcom/jme3/asset/cache/SimpleAssetCache;->keyToAssetMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/asset/cache/SimpleAssetCache;->keyToAssetMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public deleteFromCache(Lcom/jme3/asset/AssetKey;)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/asset/cache/SimpleAssetCache;->keyToAssetMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getFromCache(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/asset/cache/SimpleAssetCache;->keyToAssetMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public notifyNoAssetClone()V
    .locals 0

    return-void
.end method

.method public registerAssetClone(Lcom/jme3/asset/AssetKey;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    return-void
.end method
