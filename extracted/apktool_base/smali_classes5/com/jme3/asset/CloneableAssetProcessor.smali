.class public Lcom/jme3/asset/CloneableAssetProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/asset/AssetProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/jme3/asset/CloneableSmartAsset;

    invoke-interface {p1}, Lcom/jme3/asset/CloneableSmartAsset;->clone()Lcom/jme3/asset/CloneableSmartAsset;

    move-result-object p1

    return-object p1
.end method

.method public postProcess(Lcom/jme3/asset/AssetKey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p2
.end method
