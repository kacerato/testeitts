.class public Lcom/jme3/shadow/DirectionalLightShadowRenderer;
.super Lcom/jme3/shadow/AbstractShadowRenderer;
.source "SourceFile"


# instance fields
.field protected lambda:F

.field protected light:Lcom/jme3/light/DirectionalLight;

.field protected points:[Lcom/jme3/math/Vector3f;

.field protected shadowCam:Lcom/jme3/renderer/Camera;

.field protected splits:Lcom/jme3/math/ColorRGBA;

.field protected splitsArray:[F

.field private stabilize:Z

.field protected final tempVec:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/shadow/AbstractShadowRenderer;-><init>()V

    const v0, 0x3f266666    # 0.65f

    .line 2
    iput v0, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->lambda:F

    const/16 v0, 0x8

    .line 3
    new-array v0, v0, [Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    .line 4
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->tempVec:Lcom/jme3/math/Vector3f;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->stabilize:Z

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;II)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/shadow/AbstractShadowRenderer;-><init>(Lcom/jme3/asset/AssetManager;II)V

    const p1, 0x3f266666    # 0.65f

    .line 7
    iput p1, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->lambda:F

    const/16 p1, 0x8

    .line 8
    new-array p1, p1, [Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    .line 9
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p1, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->tempVec:Lcom/jme3/math/Vector3f;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->stabilize:Z

    .line 11
    invoke-direct {p0, p3, p2}, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->init(II)V

    return-void
.end method

.method private init(II)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v1, 0x4

    if-gt p1, v1, :cond_1

    iput p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    new-instance v1, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v1}, Lcom/jme3/math/ColorRGBA;-><init>()V

    iput-object v1, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->splits:Lcom/jme3/math/ColorRGBA;

    add-int/2addr p1, v0

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->splitsArray:[F

    new-instance p1, Lcom/jme3/renderer/Camera;

    invoke-direct {p1, p2, p2}, Lcom/jme3/renderer/Camera;-><init>(II)V

    iput-object p1, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/Camera;->setParallelProjection(Z)V

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    array-length v0, p2

    if-ge p1, v0, :cond_0

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number of splits must be between 1 and 4. Given value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public checkCulling(Lcom/jme3/renderer/Camera;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public clearMaterialParameters(Lcom/jme3/material/Material;)V
    .locals 1

    const-string v0, "Splits"

    invoke-virtual {p1, v0}, Lcom/jme3/material/Material;->clearParam(Ljava/lang/String;)V

    const-string v0, "FadeInfo"

    invoke-virtual {p1, v0}, Lcom/jme3/material/Material;->clearParam(Ljava/lang/String;)V

    const-string v0, "LightDir"

    invoke-virtual {p1, v0}, Lcom/jme3/material/Material;->clearParam(Ljava/lang/String;)V

    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->light:Lcom/jme3/light/DirectionalLight;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/DirectionalLight;

    iput-object v0, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->light:Lcom/jme3/light/DirectionalLight;

    iget v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    iget v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapSize:F

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->init(II)V

    invoke-super {p0, p1, p2}, Lcom/jme3/shadow/AbstractShadowRenderer;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    return-void
.end method

.method public doDisplayFrustumDebug(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/shadow/AbstractShadowRenderer;->getSceneForDebug()Lcom/jme3/scene/Node;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v1, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->createFrustum([Lcom/jme3/math/Vector3f;I)Lcom/jme3/scene/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v0, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    iget-object v1, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    invoke-static {v0, v1}, Lcom/jme3/shadow/ShadowUtil;->updateFrustumPoints2(Lcom/jme3/renderer/Camera;[Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0}, Lcom/jme3/shadow/AbstractShadowRenderer;->getSceneForDebug()Lcom/jme3/scene/Node;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v1, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->createFrustum([Lcom/jme3/math/Vector3f;I)Lcom/jme3/scene/Geometry;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    return-void
.end method

.method public getLambda()F
    .locals 1

    iget v0, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->lambda:F

    return v0
.end method

.method public getLight()Lcom/jme3/light/DirectionalLight;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->light:Lcom/jme3/light/DirectionalLight;

    return-object v0
.end method

.method public getOccludersToRender(ILcom/jme3/renderer/queue/GeometryList;)Lcom/jme3/renderer/queue/GeometryList;
    .locals 10

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->splitsArray:[F

    aget v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    aget p1, v1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    invoke-static {v0, v2, p1, v1, v3}, Lcom/jme3/shadow/ShadowUtil;->updateFrustumPoints(Lcom/jme3/renderer/Camera;FFF[Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->lightReceivers:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getScenes()Lcom/jme3/util/SafeArrayList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    iget-object v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v1

    sget-object v2, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Receive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    iget-object v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->lightReceivers:Lcom/jme3/renderer/queue/GeometryList;

    invoke-static {v0, v1, v2, v3}, Lcom/jme3/shadow/ShadowUtil;->getGeometriesInCamFrustum(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/Camera;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;Lcom/jme3/renderer/queue/GeometryList;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    iget-object v5, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->lightReceivers:Lcom/jme3/renderer/queue/GeometryList;

    iget-object v6, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    iget-object v7, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    iget-boolean p1, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->stabilize:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapSize:F

    :goto_1
    move v9, p1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :goto_2
    move-object v8, p2

    invoke-static/range {v4 .. v9}, Lcom/jme3/shadow/ShadowUtil;->updateShadowCamera(Lcom/jme3/renderer/ViewPort;Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/Camera;[Lcom/jme3/math/Vector3f;Lcom/jme3/renderer/queue/GeometryList;F)V

    return-object p2
.end method

.method public getReceivers(Lcom/jme3/renderer/queue/GeometryList;)V
    .locals 4

    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getScenes()Lcom/jme3/util/SafeArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v2

    sget-object v3, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Receive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-static {v1, v2, v3, p1}, Lcom/jme3/shadow/ShadowUtil;->getGeometriesInCamFrustum(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/Camera;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;Lcom/jme3/renderer/queue/GeometryList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getShadowCam(I)Lcom/jme3/renderer/Camera;
    .locals 0

    iget-object p1, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    return-object p1
.end method

.method public initFrustumCam()V
    .locals 0

    return-void
.end method

.method public isEnabledStabilization()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->stabilize:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "lambda"

    const v1, 0x3f266666    # 0.65f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->lambda:F

    const-string v0, "zFarOverride"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->zFarOverride:F

    const-string v0, "light"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/DirectionalLight;

    iput-object v0, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->light:Lcom/jme3/light/DirectionalLight;

    const-string v0, "fadeInfo"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector2f;

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->fadeInfo:Lcom/jme3/math/Vector2f;

    const-string v0, "fadeLength"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->fadeLength:F

    iget p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    iget v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapSize:F

    float-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->init(II)V

    return-void
.end method

.method public setEnabledStabilization(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->stabilize:Z

    return-void
.end method

.method public setLambda(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->lambda:F

    return-void
.end method

.method public setLight(Lcom/jme3/light/DirectionalLight;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->light:Lcom/jme3/light/DirectionalLight;

    return-void
.end method

.method public setMaterialParameters(Lcom/jme3/material/Material;)V
    .locals 2

    const-string v0, "Splits"

    iget-object v1, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->splits:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    iget-object v0, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->light:Lcom/jme3/light/DirectionalLight;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/light/DirectionalLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v0

    :goto_0
    const-string v1, "LightDir"

    invoke-virtual {p1, v1, v0}, Lcom/jme3/material/Material;->setVector3(Ljava/lang/String;Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->fadeInfo:Lcom/jme3/math/Vector2f;

    if-eqz v0, :cond_1

    const-string v1, "FadeInfo"

    invoke-virtual {p1, v1, v0}, Lcom/jme3/material/Material;->setVector2(Ljava/lang/String;Lcom/jme3/math/Vector2f;)V

    :cond_1
    return-void
.end method

.method public updateShadowCams(Lcom/jme3/renderer/Camera;)V
    .locals 6

    iget-object v0, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->light:Lcom/jme3/light/DirectionalLight;

    if-nez v0, :cond_0

    sget-object p1, Lcom/jme3/shadow/AbstractShadowRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The light can\'t be null for a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->zFarOverride:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getFrustumFar()F

    move-result v0

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getFrustumNear()F

    move-result v1

    const v2, 0x3a83126f    # 0.001f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    invoke-static {p1, v1, v0, v2, v3}, Lcom/jme3/shadow/ShadowUtil;->updateFrustumPoints(Lcom/jme3/renderer/Camera;FFF[Lcom/jme3/math/Vector3f;)V

    iget-object v2, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v2, v0}, Lcom/jme3/renderer/Camera;->setFrustumFar(F)V

    iget-object v2, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v2}, Lcom/jme3/renderer/Camera;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->light:Lcom/jme3/light/DirectionalLight;

    invoke-virtual {v3}, Lcom/jme3/light/DirectionalLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v3

    iget-object v4, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    iget-object v5, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->tempVec:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v5}, Lcom/jme3/renderer/Camera;->getUp(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jme3/math/Quaternion;->lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    iget-object v2, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v2}, Lcom/jme3/renderer/Camera;->update()V

    iget-object v2, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v2}, Lcom/jme3/renderer/Camera;->updateViewProjection()V

    iget-object v2, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->splitsArray:[F

    iget v3, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->lambda:F

    invoke-static {v2, v1, v0, v3}, Lcom/jme3/shadow/PssmShadowUtil;->updateFrustumSplits([FFFF)V

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->isParallelProjection()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    :goto_0
    iget v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->splitsArray:[F

    aget v3, v2, p1

    sub-float v4, v0, v1

    div-float/2addr v3, v4

    aput v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->splitsArray:[F

    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v4, 0x4

    if-eq v0, v4, :cond_4

    const/4 v5, 0x5

    if-eq v0, v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->splits:Lcom/jme3/math/ColorRGBA;

    aget v4, p1, v4

    iput v4, v0, Lcom/jme3/math/ColorRGBA;->a:F

    :cond_4
    iget-object v0, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->splits:Lcom/jme3/math/ColorRGBA;

    aget v3, p1, v3

    iput v3, v0, Lcom/jme3/math/ColorRGBA;->b:F

    :cond_5
    iget-object v0, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->splits:Lcom/jme3/math/ColorRGBA;

    aget v2, p1, v2

    iput v2, v0, Lcom/jme3/math/ColorRGBA;->g:F

    :cond_6
    iget-object v0, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->splits:Lcom/jme3/math/ColorRGBA;

    aget p1, p1, v1

    iput p1, v0, Lcom/jme3/math/ColorRGBA;->r:F

    :goto_1
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->lambda:F

    const-string v1, "lambda"

    const v2, 0x3f266666    # 0.65f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->zFarOverride:F

    const-string v1, "zFarOverride"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/shadow/DirectionalLightShadowRenderer;->light:Lcom/jme3/light/DirectionalLight;

    const-string v1, "light"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->fadeInfo:Lcom/jme3/math/Vector2f;

    const-string v1, "fadeInfo"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->fadeLength:F

    const-string v1, "fadeLength"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
