.class final Lcom/jme3/asset/cache/WeakRefCloneAssetCache$KeyRef;
.super Ljava/lang/ref/PhantomReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/asset/cache/WeakRefCloneAssetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Lcom/jme3/asset/AssetKey;",
        ">;"
    }
.end annotation


# instance fields
.field clonedKey:Lcom/jme3/asset/AssetKey;


# direct methods
.method public constructor <init>(Lcom/jme3/asset/AssetKey;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/asset/AssetKey;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/jme3/asset/AssetKey;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->clone()Lcom/jme3/asset/AssetKey;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache$KeyRef;->clonedKey:Lcom/jme3/asset/AssetKey;

    return-void
.end method
