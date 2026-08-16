.class public Lcom/jme3/shadow/SpotLightShadowRenderer;
.super Lcom/jme3/shadow/AbstractShadowRenderer;
.source "SourceFile"


# instance fields
.field protected light:Lcom/jme3/light/SpotLight;

.field protected final points:[Lcom/jme3/math/Vector3f;

.field protected shadowCam:Lcom/jme3/renderer/Camera;

.field protected final tempCams:[Lcom/jme3/renderer/Camera;

.field protected final tempVec:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/shadow/AbstractShadowRenderer;-><init>()V

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lcom/jme3/renderer/Camera;

    iput-object v0, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->tempCams:[Lcom/jme3/renderer/Camera;

    const/16 v0, 0x8

    .line 3
    new-array v0, v0, [Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    .line 4
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->tempVec:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;I)V
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/jme3/shadow/AbstractShadowRenderer;-><init>(Lcom/jme3/asset/AssetManager;II)V

    .line 6
    new-array p1, v0, [Lcom/jme3/renderer/Camera;

    iput-object p1, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->tempCams:[Lcom/jme3/renderer/Camera;

    const/16 p1, 0x8

    .line 7
    new-array p1, p1, [Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    .line 8
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p1, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->tempVec:Lcom/jme3/math/Vector3f;

    .line 9
    invoke-direct {p0, p2}, Lcom/jme3/shadow/SpotLightShadowRenderer;->init(I)V

    return-void
.end method

.method private init(I)V
    .locals 2

    new-instance v0, Lcom/jme3/renderer/Camera;

    invoke-direct {v0, p1, p1}, Lcom/jme3/renderer/Camera;-><init>(II)V

    iput-object v0, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public checkCulling(Lcom/jme3/renderer/Camera;)Z
    .locals 2

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->frustumCam:Lcom/jme3/renderer/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/Camera;->setLocation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/Camera;->setRotation(Lcom/jme3/math/Quaternion;)V

    move-object p1, v0

    :cond_0
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->light:Lcom/jme3/light/SpotLight;

    invoke-virtual {v1, p1, v0}, Lcom/jme3/light/SpotLight;->intersectsFrustum(Lcom/jme3/renderer/Camera;Lcom/jme3/util/TempVars;)Z

    move-result p1

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return p1
.end method

.method public clearMaterialParameters(Lcom/jme3/material/Material;)V
    .locals 1

    const-string v0, "LightPos"

    invoke-virtual {p1, v0}, Lcom/jme3/material/Material;->clearParam(Ljava/lang/String;)V

    const-string v0, "LightDir"

    invoke-virtual {p1, v0}, Lcom/jme3/material/Material;->clearParam(Ljava/lang/String;)V

    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->light:Lcom/jme3/light/SpotLight;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/SpotLight;

    iput-object v0, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->light:Lcom/jme3/light/SpotLight;

    iget v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapSize:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/jme3/shadow/SpotLightShadowRenderer;->init(I)V

    invoke-super {p0, p1, p2}, Lcom/jme3/shadow/AbstractShadowRenderer;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    return-void
.end method

.method public doDisplayFrustumDebug(I)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, [Lcom/jme3/math/Vector3f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/shadow/AbstractShadowRenderer;->getSceneForDebug()Lcom/jme3/scene/Node;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v2, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->createFrustum([Lcom/jme3/math/Vector3f;I)Lcom/jme3/scene/Geometry;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v1, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-static {v1, v0}, Lcom/jme3/shadow/ShadowUtil;->updateFrustumPoints2(Lcom/jme3/renderer/Camera;[Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0}, Lcom/jme3/shadow/AbstractShadowRenderer;->getSceneForDebug()Lcom/jme3/scene/Node;

    move-result-object v1

    invoke-virtual {p0, v0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->createFrustum([Lcom/jme3/math/Vector3f;I)Lcom/jme3/scene/Geometry;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    return-void
.end method

.method public getLight()Lcom/jme3/light/SpotLight;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->light:Lcom/jme3/light/SpotLight;

    return-object v0
.end method

.method public getOccludersToRender(ILcom/jme3/renderer/queue/GeometryList;)Lcom/jme3/renderer/queue/GeometryList;
    .locals 3

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

    iget-object v1, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    sget-object v2, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Cast:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-static {v0, v1, v2, p2}, Lcom/jme3/shadow/ShadowUtil;->getGeometriesInCamFrustum(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/Camera;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;Lcom/jme3/renderer/queue/GeometryList;)V

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public getReceivers(Lcom/jme3/renderer/queue/GeometryList;)V
    .locals 5

    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->clear()V

    iget-object v0, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->tempCams:[Lcom/jme3/renderer/Camera;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    aput-object v2, v0, v1

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

    iget-object v3, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->tempCams:[Lcom/jme3/renderer/Camera;

    sget-object v4, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Receive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-static {v1, v2, v3, v4, p1}, Lcom/jme3/shadow/ShadowUtil;->getLitGeometriesInViewPort(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/Camera;[Lcom/jme3/renderer/Camera;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;Lcom/jme3/renderer/queue/GeometryList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getShadowCam(I)Lcom/jme3/renderer/Camera;
    .locals 0

    iget-object p1, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    return-object p1
.end method

.method public initFrustumCam()V
    .locals 8

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->clone()Lcom/jme3/renderer/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->frustumCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getFrustumNear()F

    move-result v2

    iget v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->zFarOverride:F

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getFrustumLeft()F

    move-result v4

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getFrustumRight()F

    move-result v5

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getFrustumTop()F

    move-result v6

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getFrustumBottom()F

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lcom/jme3/renderer/Camera;->setFrustum(FFFFFF)V

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "zFarOverride"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->zFarOverride:F

    const-string v0, "light"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/SpotLight;

    iput-object v0, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->light:Lcom/jme3/light/SpotLight;

    const-string v0, "fadeInfo"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector2f;

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->fadeInfo:Lcom/jme3/math/Vector2f;

    const-string v0, "fadeLength"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->fadeLength:F

    iget p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapSize:F

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/jme3/shadow/SpotLightShadowRenderer;->init(I)V

    return-void
.end method

.method public setLight(Lcom/jme3/light/SpotLight;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->light:Lcom/jme3/light/SpotLight;

    return-void
.end method

.method public setMaterialParameters(Lcom/jme3/material/Material;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->light:Lcom/jme3/light/SpotLight;

    invoke-virtual {v0}, Lcom/jme3/light/SpotLight;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v0

    const-string v1, "LightPos"

    invoke-virtual {p1, v1, v0}, Lcom/jme3/material/Material;->setVector3(Ljava/lang/String;Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->light:Lcom/jme3/light/SpotLight;

    invoke-virtual {v0}, Lcom/jme3/light/SpotLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v0

    const-string v1, "LightDir"

    invoke-virtual {p1, v1, v0}, Lcom/jme3/material/Material;->setVector3(Ljava/lang/String;Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public updateShadowCams(Lcom/jme3/renderer/Camera;)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->light:Lcom/jme3/light/SpotLight;

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

    iget-object v2, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v0, v3, v2}, Lcom/jme3/shadow/ShadowUtil;->updateFrustumPoints(Lcom/jme3/renderer/Camera;FFF[Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    iget-object v0, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->light:Lcom/jme3/light/SpotLight;

    invoke-virtual {v0}, Lcom/jme3/light/SpotLight;->getSpotOuterAngle()F

    move-result v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->light:Lcom/jme3/light/SpotLight;

    invoke-virtual {v1}, Lcom/jme3/light/SpotLight;->getSpotRange()F

    move-result v1

    invoke-virtual {p1, v0, v3, v3, v1}, Lcom/jme3/renderer/Camera;->setFrustumPerspective(FFFF)V

    iget-object p1, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->light:Lcom/jme3/light/SpotLight;

    invoke-virtual {v0}, Lcom/jme3/light/SpotLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    iget-object v2, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->tempVec:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/renderer/Camera;->getUp(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/jme3/math/Quaternion;->lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    iget-object p1, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    iget-object v0, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->light:Lcom/jme3/light/SpotLight;

    invoke-virtual {v0}, Lcom/jme3/light/SpotLight;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/Camera;->setLocation(Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->update()V

    iget-object p1, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->updateViewProjection()V

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

    iget v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->zFarOverride:F

    const-string v1, "zFarOverride"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/shadow/SpotLightShadowRenderer;->light:Lcom/jme3/light/SpotLight;

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
