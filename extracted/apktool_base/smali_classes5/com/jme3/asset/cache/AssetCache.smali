.class public interface abstract Lcom/jme3/asset/cache/AssetCache;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addToCache(Lcom/jme3/asset/AssetKey;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract clearCache()V
.end method

.method public abstract deleteFromCache(Lcom/jme3/asset/AssetKey;)Z
.end method

.method public abstract getFromCache(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract notifyNoAssetClone()V
.end method

.method public abstract registerAssetClone(Lcom/jme3/asset/AssetKey;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method
