.class public Lcom/jme3/shadow/PointLightShadowRenderer;
.super Lcom/jme3/shadow/AbstractShadowRenderer;
.source "SourceFile"


# static fields
.field public static final CAM_NUMBER:I = 0x6


# instance fields
.field protected final X_NEG:Lcom/jme3/math/Vector3f;

.field protected final Y_NEG:Lcom/jme3/math/Vector3f;

.field protected final Z_NEG:Lcom/jme3/math/Vector3f;

.field protected frustums:[Lcom/jme3/scene/Geometry;

.field protected light:Lcom/jme3/light/PointLight;

.field protected shadowCams:[Lcom/jme3/renderer/Camera;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/shadow/AbstractShadowRenderer;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->frustums:[Lcom/jme3/scene/Geometry;

    .line 3
    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_X:Lcom/jme3/math/Vector3f;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->X_NEG:Lcom/jme3/math/Vector3f;

    .line 4
    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->Y_NEG:Lcom/jme3/math/Vector3f;

    .line 5
    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->Z_NEG:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;I)V
    .locals 1

    const/4 v0, 0x6

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lcom/jme3/shadow/AbstractShadowRenderer;-><init>(Lcom/jme3/asset/AssetManager;II)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->frustums:[Lcom/jme3/scene/Geometry;

    .line 8
    sget-object p1, Lcom/jme3/math/Vector3f;->UNIT_X:Lcom/jme3/math/Vector3f;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->X_NEG:Lcom/jme3/math/Vector3f;

    .line 9
    sget-object p1, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->Y_NEG:Lcom/jme3/math/Vector3f;

    .line 10
    sget-object p1, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->Z_NEG:Lcom/jme3/math/Vector3f;

    .line 11
    invoke-direct {p0, p2}, Lcom/jme3/shadow/PointLightShadowRenderer;->init(I)V

    return-void
.end method

.method private init(I)V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/jme3/renderer/Camera;

    iput-object v0, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->shadowCams:[Lcom/jme3/renderer/Camera;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->shadowCams:[Lcom/jme3/renderer/Camera;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/jme3/renderer/Camera;

    invoke-direct {v2, p1, p1}, Lcom/jme3/renderer/Camera;-><init>(II)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public checkCulling(Lcom/jme3/renderer/Camera;)Z
    .locals 2

    iget-object v0, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->light:Lcom/jme3/light/PointLight;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->frustumCam:Lcom/jme3/renderer/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/Camera;->setLocation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/Camera;->setRotation(Lcom/jme3/math/Quaternion;)V

    move-object p1, v0

    :cond_1
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->light:Lcom/jme3/light/PointLight;

    invoke-virtual {v1, p1, v0}, Lcom/jme3/light/PointLight;->intersectsFrustum(Lcom/jme3/renderer/Camera;Lcom/jme3/util/TempVars;)Z

    move-result p1

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return p1
.end method

.method public clearMaterialParameters(Lcom/jme3/material/Material;)V
    .locals 1

    const-string v0, "LightPos"

    invoke-virtual {p1, v0}, Lcom/jme3/material/Material;->clearParam(Ljava/lang/String;)V

    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->light:Lcom/jme3/light/PointLight;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/PointLight;

    iput-object v0, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->light:Lcom/jme3/light/PointLight;

    iget v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapSize:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/jme3/shadow/PointLightShadowRenderer;->init(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->frustums:[Lcom/jme3/scene/Geometry;

    invoke-super {p0, p1, p2}, Lcom/jme3/shadow/AbstractShadowRenderer;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    return-void
.end method

.method public doDisplayFrustumDebug(I)V
    .locals 6

    iget-object v0, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->frustums:[Lcom/jme3/scene/Geometry;

    if-nez v0, :cond_1

    const/4 v0, 0x6

    new-array v1, v0, [Lcom/jme3/scene/Geometry;

    iput-object v1, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->frustums:[Lcom/jme3/scene/Geometry;

    const/16 v1, 0x8

    new-array v2, v1, [Lcom/jme3/math/Vector3f;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    new-instance v5, Lcom/jme3/math/Vector3f;

    invoke-direct {v5}, Lcom/jme3/math/Vector3f;-><init>()V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v0, :cond_1

    iget-object v1, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->shadowCams:[Lcom/jme3/renderer/Camera;

    aget-object v1, v1, v3

    invoke-static {v1, v2}, Lcom/jme3/shadow/ShadowUtil;->updateFrustumPoints2(Lcom/jme3/renderer/Camera;[Lcom/jme3/math/Vector3f;)V

    iget-object v1, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->frustums:[Lcom/jme3/scene/Geometry;

    invoke-virtual {p0, v2, v3}, Lcom/jme3/shadow/AbstractShadowRenderer;->createFrustum([Lcom/jme3/math/Vector3f;I)Lcom/jme3/scene/Geometry;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->frustums:[Lcom/jme3/scene/Geometry;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/jme3/shadow/AbstractShadowRenderer;->getSceneForDebug()Lcom/jme3/scene/Node;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    :cond_2
    return-void
.end method

.method public getLight()Lcom/jme3/light/PointLight;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->light:Lcom/jme3/light/PointLight;

    return-object v0
.end method

.method public getOccludersToRender(ILcom/jme3/renderer/queue/GeometryList;)Lcom/jme3/renderer/queue/GeometryList;
    .locals 4

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

    iget-object v2, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->shadowCams:[Lcom/jme3/renderer/Camera;

    aget-object v2, v2, p1

    sget-object v3, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Cast:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-static {v1, v2, v3, p2}, Lcom/jme3/shadow/ShadowUtil;->getGeometriesInCamFrustum(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/Camera;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;Lcom/jme3/renderer/queue/GeometryList;)V

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public getReceivers(Lcom/jme3/renderer/queue/GeometryList;)V
    .locals 5

    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->clear()V

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

    iget-object v3, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->shadowCams:[Lcom/jme3/renderer/Camera;

    sget-object v4, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Receive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-static {v1, v2, v3, v4, p1}, Lcom/jme3/shadow/ShadowUtil;->getLitGeometriesInViewPort(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/Camera;[Lcom/jme3/renderer/Camera;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;Lcom/jme3/renderer/queue/GeometryList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getShadowCam(I)Lcom/jme3/renderer/Camera;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->shadowCams:[Lcom/jme3/renderer/Camera;

    aget-object p1, v0, p1

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

    const-string v0, "light"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/light/PointLight;

    iput-object p1, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->light:Lcom/jme3/light/PointLight;

    iget p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapSize:F

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/jme3/shadow/PointLightShadowRenderer;->init(I)V

    return-void
.end method

.method public setLight(Lcom/jme3/light/PointLight;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->light:Lcom/jme3/light/PointLight;

    return-void
.end method

.method public setMaterialParameters(Lcom/jme3/material/Material;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->light:Lcom/jme3/light/PointLight;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/light/PointLight;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v0

    :goto_0
    const-string v1, "LightPos"

    invoke-virtual {p1, v1, v0}, Lcom/jme3/material/Material;->setVector3(Ljava/lang/String;Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public updateShadowCams(Lcom/jme3/renderer/Camera;)V
    .locals 7

    iget-object p1, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->light:Lcom/jme3/light/PointLight;

    if-nez p1, :cond_0

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
    iget-object p1, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->shadowCams:[Lcom/jme3/renderer/Camera;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v1, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->X_NEG:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->Z_NEG:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->Y_NEG:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1, v2, v3}, Lcom/jme3/renderer/Camera;->setAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->shadowCams:[Lcom/jme3/renderer/Camera;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    iget-object v1, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->X_NEG:Lcom/jme3/math/Vector3f;

    sget-object v2, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    sget-object v3, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1, v2, v3}, Lcom/jme3/renderer/Camera;->setAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->shadowCams:[Lcom/jme3/renderer/Camera;

    const/4 v1, 0x2

    aget-object p1, p1, v1

    iget-object v1, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->X_NEG:Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->Z_NEG:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1, v3, v4}, Lcom/jme3/renderer/Camera;->setAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->shadowCams:[Lcom/jme3/renderer/Camera;

    const/4 v1, 0x3

    aget-object p1, p1, v1

    sget-object v1, Lcom/jme3/math/Vector3f;->UNIT_X:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1, v3, v2}, Lcom/jme3/renderer/Camera;->setAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->shadowCams:[Lcom/jme3/renderer/Camera;

    const/4 v4, 0x4

    aget-object p1, p1, v4

    iget-object v4, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->X_NEG:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v2, v3, v4}, Lcom/jme3/renderer/Camera;->setAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->shadowCams:[Lcom/jme3/renderer/Camera;

    const/4 v2, 0x5

    aget-object p1, p1, v2

    iget-object v2, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->Z_NEG:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v2, v3, v1}, Lcom/jme3/renderer/Camera;->setAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->shadowCams:[Lcom/jme3/renderer/Camera;

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->light:Lcom/jme3/light/PointLight;

    invoke-virtual {v3}, Lcom/jme3/light/PointLight;->getRadius()F

    move-result v3

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v4, v5, v6, v3}, Lcom/jme3/renderer/Camera;->setFrustumPerspective(FFFF)V

    iget-object v3, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->light:Lcom/jme3/light/PointLight;

    invoke-virtual {v3}, Lcom/jme3/light/PointLight;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/renderer/Camera;->setLocation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v2}, Lcom/jme3/renderer/Camera;->update()V

    invoke-virtual {v2}, Lcom/jme3/renderer/Camera;->updateViewProjection()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/shadow/PointLightShadowRenderer;->light:Lcom/jme3/light/PointLight;

    const-string v1, "light"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
