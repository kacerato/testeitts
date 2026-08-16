.class public Lcom/jme3/asset/StreamAssetInfo;
.super Lcom/jme3/asset/AssetInfo;
.source "SourceFile"


# instance fields
.field private alreadyOpened:Z

.field private final inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/asset/AssetManager;",
            "Lcom/jme3/asset/AssetKey<",
            "*>;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/jme3/asset/AssetInfo;-><init>(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;)V

    iput-object p3, p0, Lcom/jme3/asset/StreamAssetInfo;->inputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public openStream()Ljava/io/InputStream;
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/asset/StreamAssetInfo;->alreadyOpened:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/asset/StreamAssetInfo;->alreadyOpened:Z

    iget-object v0, p0, Lcom/jme3/asset/StreamAssetInfo;->inputStream:Ljava/io/InputStream;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stream already opened"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
