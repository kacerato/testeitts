.class public Lcom/jme3/asset/FilterKey;
.super Lcom/jme3/asset/AssetKey;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/asset/AssetKey<",
        "Lcom/jme3/post/FilterPostProcessor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jme3/asset/AssetKey;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCacheType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/asset/cache/AssetCache;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
