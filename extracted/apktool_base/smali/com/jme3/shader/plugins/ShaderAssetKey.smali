.class public Lcom/jme3/shader/plugins/ShaderAssetKey;
.super Lcom/jme3/asset/AssetKey;
.source "SourceFile"


# instance fields
.field private injectDependencies:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/jme3/shader/plugins/ShaderAssetKey;->injectDependencies:Z

    return-void
.end method


# virtual methods
.method public isInjectDependencies()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/shader/plugins/ShaderAssetKey;->injectDependencies:Z

    return v0
.end method

.method public setInjectDependencies(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/shader/plugins/ShaderAssetKey;->injectDependencies:Z

    return-void
.end method
