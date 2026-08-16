.class Lcom/jme3/asset/cache/WeakRefAssetCache$AssetRef;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/asset/cache/WeakRefAssetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssetRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final assetKey:Lcom/jme3/asset/AssetKey;


# direct methods
.method public constructor <init>(Lcom/jme3/asset/AssetKey;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/asset/AssetKey;",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p1, p0, Lcom/jme3/asset/cache/WeakRefAssetCache$AssetRef;->assetKey:Lcom/jme3/asset/AssetKey;

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/asset/cache/WeakRefAssetCache$AssetRef;)Lcom/jme3/asset/AssetKey;
    .locals 0

    iget-object p0, p0, Lcom/jme3/asset/cache/WeakRefAssetCache$AssetRef;->assetKey:Lcom/jme3/asset/AssetKey;

    return-object p0
.end method
