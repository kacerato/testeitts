.class public Lcom/jme3/shadow/SdsmDirectionalLightShadowFilter;
.super Lcom/jme3/shadow/AbstractShadowFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/shadow/AbstractShadowFilter<",
        "Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;",
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
    new-instance v0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;

    invoke-direct {v0, p1, p2, p3}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;-><init>(Lcom/jme3/asset/AssetManager;II)V

    invoke-direct {p0, p1, p2, v0}, Lcom/jme3/shadow/AbstractShadowFilter;-><init>(Lcom/jme3/asset/AssetManager;ILcom/jme3/shadow/AbstractShadowRenderer;)V

    return-void
.end method


# virtual methods
.method public cleanUpFilter(Lcom/jme3/renderer/Renderer;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jme3/post/Filter;->cleanUpFilter(Lcom/jme3/renderer/Renderer;)V

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;

    invoke-virtual {p1}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->cleanup()V

    :cond_0
    return-void
.end method

.method public displayAllFrustums()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    check-cast v0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->displayAllDebugFrustums()V

    return-void
.end method

.method public getFitExpansionFactor()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    check-cast v0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->getFitExpansionFactor()F

    move-result v0

    return v0
.end method

.method public getFitFrameDelayTolerance()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    check-cast v0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->getFitFrameDelayTolerance()F

    move-result v0

    return v0
.end method

.method public getLight()Lcom/jme3/light/DirectionalLight;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    check-cast v0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->getLight()Lcom/jme3/light/DirectionalLight;

    move-result-object v0

    return-object v0
.end method

.method public initFilter(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;II)V
    .locals 0

    iget-object p4, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    check-cast p4, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;

    const/4 p5, 0x1

    iput-boolean p5, p4, Lcom/jme3/shadow/AbstractShadowRenderer;->needsfallBackMaterial:Z

    new-instance p4, Lcom/jme3/material/Material;

    const-string p5, "Common/MatDefs/Shadow/Sdsm/SdsmPostShadow.j3md"

    invoke-direct {p4, p1, p5}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/jme3/post/Filter;->material:Lcom/jme3/material/Material;

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    check-cast p1, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;

    invoke-virtual {p1, p4}, Lcom/jme3/shadow/AbstractShadowRenderer;->setPostShadowMaterial(Lcom/jme3/material/Material;)V

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    check-cast p1, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;

    invoke-virtual {p1, p2, p3}, Lcom/jme3/shadow/AbstractShadowRenderer;->initialize(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V

    iput-object p3, p0, Lcom/jme3/shadow/AbstractShadowFilter;->viewPort:Lcom/jme3/renderer/ViewPort;

    return-void
.end method

.method public postFrame(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/jme3/shadow/AbstractShadowFilter;->postQueue(Lcom/jme3/renderer/queue/RenderQueue;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/jme3/shadow/AbstractShadowFilter;->postFrame(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer;)V

    return-void
.end method

.method public postQueue(Lcom/jme3/renderer/queue/RenderQueue;)V
    .locals 0

    return-void
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

    check-cast p1, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;

    iput-object p1, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    return-void
.end method

.method public setDepthTexture(Lcom/jme3/texture/Texture;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/post/Filter;->setDepthTexture(Lcom/jme3/texture/Texture;)V

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    check-cast v0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->setDepthTexture(Lcom/jme3/texture/Texture;)V

    return-void
.end method

.method public setFitExpansionFactor(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    check-cast v0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->setFitExpansionFactor(F)V

    return-void
.end method

.method public setFitFrameDelayTolerance(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    check-cast v0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->setFitFrameDelayTolerance(F)V

    return-void
.end method

.method public setLight(Lcom/jme3/light/DirectionalLight;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    check-cast v0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->setLight(Lcom/jme3/light/DirectionalLight;)V

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
