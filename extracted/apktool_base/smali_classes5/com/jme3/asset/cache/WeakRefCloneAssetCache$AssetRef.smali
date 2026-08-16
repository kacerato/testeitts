.class final Lcom/jme3/asset/cache/WeakRefCloneAssetCache$AssetRef;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/asset/cache/WeakRefCloneAssetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lcom/jme3/asset/AssetKey;",
        ">;"
    }
.end annotation


# instance fields
.field asset:Lcom/jme3/asset/CloneableSmartAsset;


# direct methods
.method public constructor <init>(Lcom/jme3/asset/CloneableSmartAsset;Lcom/jme3/asset/AssetKey;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache$AssetRef;->asset:Lcom/jme3/asset/CloneableSmartAsset;

    return-void
.end method
