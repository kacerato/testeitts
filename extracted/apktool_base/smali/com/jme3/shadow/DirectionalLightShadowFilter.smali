.class public Lcom/jme3/shadow/DirectionalLightShadowFilter;
.super Lcom/jme3/shadow/AbstractShadowFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/shadow/AbstractShadowFilter<",
        "Lcom/jme3/shadow/DirectionalLightShadowRenderer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/shadow/AbstractShadowFilter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;II)V
    .locals 1

    .line 2
    new-instance v0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;

    invoke-direct {v0, p1, p2, p3}, Lcom/jme3/shadow/DirectionalLightShadowRenderer;-><init>(Lcom/jme3/asset/AssetManager;II)V

    invoke-direct {p0, p1, p2, v0}, Lcom/jme3/shadow/AbstractShadowFilter;-><init>(Lcom/jme3/asset/AssetManager;ILcom/jme3/shadow/AbstractShadowRenderer;)V

    return-void
.end method


# virtual methods
.method public getLambda()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    check-cast v0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->getLambda()F

    move-result v0

    return v0
.end method

.method public getLight()Lcom/jme3/light/DirectionalLight;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    check-cast v0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->getLight()Lcom/jme3/light/DirectionalLight;

    move-result-object v0

    return-object v0
.end method

.method public isEnabledStabilization()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    check-cast v0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->isEnabledStabilization()Z

    move-result v0

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/post/Filter;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "shadowRenderer"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/shadow/DirectionalLightShadowRenderer;

    iput-object p1, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    return-void
.end method

.method public setEnabledStabilization(Z)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    check-cast v0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->setEnabledStabilization(Z)V

    return-void
.end method

.method public setLambda(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    check-cast v0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->setLambda(F)V

    return-void
.end method

.method public setLight(Lcom/jme3/light/DirectionalLight;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    check-cast v0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->setLight(Lcom/jme3/light/DirectionalLight;)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/post/Filter;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    const-string v1, "shadowRenderer"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
