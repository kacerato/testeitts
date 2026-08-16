.class public Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;
.super Lcom/jme3/shadow/AbstractShadowRenderer;
.source "SourceFile"


# instance fields
.field private cameraFrustumDebug:Lcom/jme3/scene/Spatial;

.field private depthTexture:Lcom/jme3/texture/Texture;

.field private fitExpansionFactor:F

.field private fitFrameDelayTolerance:F

.field private glInitialized:Z

.field private lastFit:Lcom/jme3/shadow/SdsmFitter$SplitFitResult;

.field private light:Lcom/jme3/light/DirectionalLight;

.field private final lightViewMatrix:Lcom/jme3/math/Matrix4f;

.field private sdsmFitter:Lcom/jme3/shadow/SdsmFitter;

.field private shadowCameraEnabled:[Z

.field private shadowCameras:[Lcom/jme3/renderer/Camera;

.field private shadowMapFrustumDebug:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/scene/Spatial;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/shadow/AbstractShadowRenderer;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->lightViewMatrix:Lcom/jme3/math/Matrix4f;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->glInitialized:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->fitExpansionFactor:F

    const v0, 0x3d4ccccd    # 0.05f

    .line 5
    iput v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->fitFrameDelayTolerance:F

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->cameraFrustumDebug:Lcom/jme3/scene/Spatial;

    .line 7
    iput-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->shadowMapFrustumDebug:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;II)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/shadow/AbstractShadowRenderer;-><init>(Lcom/jme3/asset/AssetManager;II)V

    .line 9
    new-instance p1, Lcom/jme3/math/Matrix4f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object p1, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->lightViewMatrix:Lcom/jme3/math/Matrix4f;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->glInitialized:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 11
    iput p1, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->fitExpansionFactor:F

    const p1, 0x3d4ccccd    # 0.05f

    .line 12
    iput p1, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->fitFrameDelayTolerance:F

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->cameraFrustumDebug:Lcom/jme3/scene/Spatial;

    .line 14
    iput-object p1, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->shadowMapFrustumDebug:Ljava/util/List;

    .line 15
    invoke-direct {p0, p3, p2}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->init(II)V

    return-void
.end method

.method private createDebugFrustum(Lcom/jme3/renderer/Camera;I)Lcom/jme3/scene/Geometry;
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [Lcom/jme3/math/Vector3f;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4}, Lcom/jme3/math/Vector3f;-><init>()V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Lcom/jme3/shadow/ShadowUtil;->updateFrustumPoints2(Lcom/jme3/renderer/Camera;[Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0, v1, p2}, Lcom/jme3/shadow/AbstractShadowRenderer;->createFrustum([Lcom/jme3/math/Vector3f;I)Lcom/jme3/scene/Geometry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p2

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p2, v0}, Lcom/jme3/material/RenderState;->setLineWidth(F)V

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/jme3/material/RenderState;->setDepthWrite(Z)V

    iget-object p2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getScenes()Lcom/jme3/util/SafeArrayList;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/Node;

    invoke-virtual {p2, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    return-object p1
.end method

.method private generateLightViewMatrix()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->light:Lcom/jme3/light/DirectionalLight;

    invoke-virtual {v1}, Lcom/jme3/light/DirectionalLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v2, v1, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3f666666    # 0.9f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    sget-object v2, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/jme3/math/Vector3f;->UNIT_X:Lcom/jme3/math/Vector3f;

    :goto_0
    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object v3

    iget-object v4, v0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->lightViewMatrix:Lcom/jme3/math/Matrix4f;

    iget v5, v2, Lcom/jme3/math/Vector3f;->x:F

    iget v6, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v7, v2, Lcom/jme3/math/Vector3f;->z:F

    iget v9, v3, Lcom/jme3/math/Vector3f;->x:F

    iget v10, v3, Lcom/jme3/math/Vector3f;->y:F

    iget v11, v3, Lcom/jme3/math/Vector3f;->z:F

    iget v13, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v14, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v15, v1, Lcom/jme3/math/Vector3f;->z:F

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v4 .. v20}, Lcom/jme3/math/Matrix4f;->set(FFFFFFFFFFFFFFFF)V

    return-void
.end method

.method private getSplits()[Lcom/jme3/math/Vector2f;
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/jme3/math/Vector2f;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    new-instance v4, Lcom/jme3/math/Vector2f;

    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v4, v5, v5}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->lastFit:Lcom/jme3/shadow/SdsmFitter$SplitFitResult;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/jme3/shadow/SdsmFitter$SplitFitResult;->result:Lcom/jme3/shadow/SdsmFitter$SplitFit;

    if-eqz v0, :cond_2

    :goto_1
    iget v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->lastFit:Lcom/jme3/shadow/SdsmFitter$SplitFitResult;

    iget-object v0, v0, Lcom/jme3/shadow/SdsmFitter$SplitFitResult;->result:Lcom/jme3/shadow/SdsmFitter$SplitFit;

    iget-object v0, v0, Lcom/jme3/shadow/SdsmFitter$SplitFit;->cascadeStarts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->lastFit:Lcom/jme3/shadow/SdsmFitter$SplitFitResult;

    iget-object v0, v0, Lcom/jme3/shadow/SdsmFitter$SplitFitResult;->result:Lcom/jme3/shadow/SdsmFitter$SplitFit;

    iget-object v0, v0, Lcom/jme3/shadow/SdsmFitter$SplitFit;->cascadeStarts:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shadow/SdsmFitter$SplitInfo;

    aget-object v3, v1, v2

    iget v4, v0, Lcom/jme3/shadow/SdsmFitter$SplitInfo;->start:F

    iget v0, v0, Lcom/jme3/shadow/SdsmFitter$SplitInfo;->end:F

    invoke-virtual {v3, v4, v0}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private init(II)V
    .locals 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v1, 0x4

    if-gt p1, v1, :cond_1

    iput p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    new-array v1, p1, [Lcom/jme3/renderer/Camera;

    iput-object v1, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->shadowCameras:[Lcom/jme3/renderer/Camera;

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->shadowCameraEnabled:[Z

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    iget v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->shadowCameras:[Lcom/jme3/renderer/Camera;

    new-instance v3, Lcom/jme3/renderer/Camera;

    invoke-direct {v3, p2, p2}, Lcom/jme3/renderer/Camera;-><init>(II)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->shadowCameras:[Lcom/jme3/renderer/Camera;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/jme3/renderer/Camera;->setParallelProjection(Z)V

    iget-object v2, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->shadowCameraEnabled:[Z

    aput-boolean p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->needsfallBackMaterial:Z

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

.method private initGL()V
    .locals 4

    iget-boolean v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->glInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v0

    instance-of v1, v0, Lcom/jme3/renderer/opengl/GLRenderer;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/jme3/renderer/opengl/GLRenderer;

    invoke-virtual {v1}, Lcom/jme3/renderer/opengl/GLRenderer;->getGl4()Lcom/jme3/renderer/opengl/GL4;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/jme3/shadow/SdsmFitter;

    iget-object v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-direct {v2, v1, v0, v3}, Lcom/jme3/shadow/SdsmFitter;-><init>(Lcom/jme3/renderer/opengl/GL4;Lcom/jme3/renderer/Renderer;Lcom/jme3/asset/AssetManager;)V

    iput-object v2, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->sdsmFitter:Lcom/jme3/shadow/SdsmFitter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->glInitialized:Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SDSM shadows require OpenGL 4.3 or higher"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SdsmDirectionalLightShadowRenderer requires GLRenderer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isOldFitAcceptable(Lcom/jme3/shadow/SdsmFitter$SplitFitResult;Lcom/jme3/math/Matrix4f;)Z
    .locals 1

    iget-object p1, p1, Lcom/jme3/shadow/SdsmFitter$SplitFitResult;->parameters:Lcom/jme3/shadow/SdsmFitter$FitParameters;

    iget-object p1, p1, Lcom/jme3/shadow/SdsmFitter$FitParameters;->cameraToLight:Lcom/jme3/math/Matrix4f;

    iget v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->fitFrameDelayTolerance:F

    invoke-virtual {p1, p2, v0}, Lcom/jme3/math/Matrix4f;->isSimilar(Lcom/jme3/math/Matrix4f;F)Z

    move-result p1

    return p1
.end method

.method private tryFitShadowCams(Lcom/jme3/renderer/Camera;)Z
    .locals 12

    iget-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->depthTexture:Lcom/jme3/texture/Texture;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->light:Lcom/jme3/light/DirectionalLight;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/light/DirectionalLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v2, v0, Lcom/jme3/math/Vector3f;->x:F

    iget-object v3, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->lightViewMatrix:Lcom/jme3/math/Matrix4f;

    iget v4, v3, Lcom/jme3/math/Matrix4f;->m30:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    iget v2, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v4, v3, Lcom/jme3/math/Matrix4f;->m31:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    iget v2, v3, Lcom/jme3/math/Matrix4f;->m32:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->generateLightViewMatrix()V

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewProjectionMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Matrix4f;->invert()Lcom/jme3/math/Matrix4f;

    move-result-object v0

    iget-object v2, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->lightViewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2, v0, v0}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    move-result-object v0

    iget-object v3, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->sdsmFitter:Lcom/jme3/shadow/SdsmFitter;

    iget-object v4, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->depthTexture:Lcom/jme3/texture/Texture;

    iget v5, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getFrustumNear()F

    move-result v7

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getFrustumFar()F

    move-result v8

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Lcom/jme3/shadow/SdsmFitter;->fit(Lcom/jme3/texture/Texture;ILcom/jme3/math/Matrix4f;FF)V

    iget-object p1, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->sdsmFitter:Lcom/jme3/shadow/SdsmFitter;

    invoke-virtual {p1, v1}, Lcom/jme3/shadow/SdsmFitter;->getResult(Z)Lcom/jme3/shadow/SdsmFitter$SplitFitResult;

    move-result-object p1

    const/4 v2, 0x1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->lastFit:Lcom/jme3/shadow/SdsmFitter$SplitFitResult;

    :goto_0
    if-eqz p1, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->isOldFitAcceptable(Lcom/jme3/shadow/SdsmFitter$SplitFitResult;Lcom/jme3/math/Matrix4f;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->sdsmFitter:Lcom/jme3/shadow/SdsmFitter;

    invoke-virtual {p1, v2}, Lcom/jme3/shadow/SdsmFitter;->getResult(Z)Lcom/jme3/shadow/SdsmFitter$SplitFitResult;

    move-result-object p1

    goto :goto_0

    :cond_4
    iput-object p1, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->lastFit:Lcom/jme3/shadow/SdsmFitter$SplitFitResult;

    iget-object p1, p1, Lcom/jme3/shadow/SdsmFitter$SplitFitResult;->result:Lcom/jme3/shadow/SdsmFitter$SplitFit;

    if-eqz p1, :cond_a

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->shadowCameraEnabled:[Z

    aput-boolean v1, v3, v0

    iget-object v3, p1, Lcom/jme3/shadow/SdsmFitter$SplitFit;->splits:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/shadow/SdsmFitter$SplitBounds;

    if-nez v3, :cond_5

    goto/16 :goto_2

    :cond_5
    iget-object v4, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->shadowCameras:[Lcom/jme3/renderer/Camera;

    aget-object v4, v4, v0

    iget v5, v3, Lcom/jme3/shadow/SdsmFitter$SplitBounds;->minX:F

    iget v6, v3, Lcom/jme3/shadow/SdsmFitter$SplitBounds;->maxX:F

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v7, v3, Lcom/jme3/shadow/SdsmFitter$SplitBounds;->minY:F

    iget v8, v3, Lcom/jme3/shadow/SdsmFitter$SplitBounds;->maxY:F

    add-float/2addr v7, v8

    div-float/2addr v7, v6

    new-instance v8, Lcom/jme3/math/Vector3f;

    iget v9, v3, Lcom/jme3/shadow/SdsmFitter$SplitBounds;->minZ:F

    invoke-direct {v8, v5, v7, v9}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iget-object v5, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->lightViewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v5}, Lcom/jme3/math/Matrix4f;->invert()Lcom/jme3/math/Matrix4f;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jme3/renderer/Camera;->setLocation(Lcom/jme3/math/Vector3f;)V

    new-instance v5, Lcom/jme3/math/Vector3f;

    iget-object v7, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->lightViewMatrix:Lcom/jme3/math/Matrix4f;

    iget v8, v7, Lcom/jme3/math/Matrix4f;->m10:F

    iget v9, v7, Lcom/jme3/math/Matrix4f;->m11:F

    iget v7, v7, Lcom/jme3/math/Matrix4f;->m12:F

    invoke-direct {v5, v8, v9, v7}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iget-object v7, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->light:Lcom/jme3/light/DirectionalLight;

    invoke-virtual {v7}, Lcom/jme3/light/DirectionalLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-virtual {v4, v7, v5}, Lcom/jme3/renderer/Camera;->lookAtDirection(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    iget v5, v3, Lcom/jme3/shadow/SdsmFitter$SplitBounds;->maxX:F

    iget v7, v3, Lcom/jme3/shadow/SdsmFitter$SplitBounds;->minX:F

    sub-float/2addr v5, v7

    iget v7, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->fitExpansionFactor:F

    mul-float/2addr v5, v7

    iget v8, v3, Lcom/jme3/shadow/SdsmFitter$SplitBounds;->maxY:F

    iget v9, v3, Lcom/jme3/shadow/SdsmFitter$SplitBounds;->minY:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v7

    iget v9, v3, Lcom/jme3/shadow/SdsmFitter$SplitBounds;->maxZ:F

    iget v3, v3, Lcom/jme3/shadow/SdsmFitter$SplitBounds;->minZ:F

    sub-float/2addr v9, v3

    mul-float/2addr v7, v9

    const/4 v3, 0x0

    cmpg-float v9, v5, v3

    if-lez v9, :cond_8

    cmpg-float v9, v8, v3

    if-lez v9, :cond_8

    cmpg-float v3, v7, v3

    if-gtz v3, :cond_6

    goto :goto_2

    :cond_6
    neg-float v3, v5

    div-float/2addr v3, v6

    div-float v9, v5, v6

    div-float v10, v8, v6

    neg-float v5, v8

    div-float v11, v5, v6

    const/high16 v6, -0x3d380000    # -100.0f

    move-object v5, v4

    move v8, v3

    invoke-virtual/range {v5 .. v11}, Lcom/jme3/renderer/Camera;->setFrustum(FFFFFF)V

    iget-object v3, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->shadowCameraEnabled:[Z

    aput-boolean v2, v3, v0

    invoke-virtual {v4}, Lcom/jme3/renderer/Camera;->getViewProjectionMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v3

    iget v3, v3, Lcom/jme3/math/Matrix4f;->m00:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid shadow projection detected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_9
    return v2

    :cond_a
    :goto_3
    return v1
.end method


# virtual methods
.method public checkCulling(Lcom/jme3/renderer/Camera;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public cleanup()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->sdsmFitter:Lcom/jme3/shadow/SdsmFitter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/shadow/SdsmFitter;->cleanup()V

    :cond_0
    return-void
.end method

.method public clearMaterialParameters(Lcom/jme3/material/Material;)V
    .locals 1

    const-string v0, "Splits"

    invoke-virtual {p1, v0}, Lcom/jme3/material/Material;->clearParam(Ljava/lang/String;)V

    const-string v0, "LightDir"

    invoke-virtual {p1, v0}, Lcom/jme3/material/Material;->clearParam(Ljava/lang/String;)V

    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->light:Lcom/jme3/light/DirectionalLight;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/DirectionalLight;

    iput-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->light:Lcom/jme3/light/DirectionalLight;

    iget v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    iget v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapSize:F

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->init(II)V

    invoke-super {p0, p1, p2}, Lcom/jme3/shadow/AbstractShadowRenderer;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    return-void
.end method

.method public displayAllDebugFrustums()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->cameraFrustumDebug:Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->removeFromParent()Z

    :cond_0
    iget-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->shadowMapFrustumDebug:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->removeFromParent()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->createDebugFrustum(Lcom/jme3/renderer/Camera;I)Lcom/jme3/scene/Geometry;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->cameraFrustumDebug:Lcom/jme3/scene/Spatial;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->shadowMapFrustumDebug:Ljava/util/List;

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->shadowCameraEnabled:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->shadowMapFrustumDebug:Ljava/util/List;

    iget-object v2, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->shadowCameras:[Lcom/jme3/renderer/Camera;

    aget-object v2, v2, v0

    invoke-direct {p0, v2, v0}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->createDebugFrustum(Lcom/jme3/renderer/Camera;I)Lcom/jme3/scene/Geometry;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public doDisplayFrustumDebug(I)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->shadowCameraEnabled:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->shadowCameras:[Lcom/jme3/renderer/Camera;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->createDebugFrustum(Lcom/jme3/renderer/Camera;I)Lcom/jme3/scene/Geometry;

    :cond_0
    return-void
.end method

.method public getFitExpansionFactor()F
    .locals 1

    iget v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->fitExpansionFactor:F

    return v0
.end method

.method public getFitFrameDelayTolerance()F
    .locals 1

    iget v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->fitFrameDelayTolerance:F

    return v0
.end method

.method public getLight()Lcom/jme3/light/DirectionalLight;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->light:Lcom/jme3/light/DirectionalLight;

    return-object v0
.end method

.method public getOccludersToRender(ILcom/jme3/renderer/queue/GeometryList;)Lcom/jme3/renderer/queue/GeometryList;
    .locals 3

    iget-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->shadowCameraEnabled:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->shadowCameras:[Lcom/jme3/renderer/Camera;

    aget-object p1, v0, p1

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

    sget-object v2, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Cast:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-static {v1, p1, v2, p2}, Lcom/jme3/shadow/ShadowUtil;->getGeometriesInCamFrustum(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/Camera;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;Lcom/jme3/renderer/queue/GeometryList;)V

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public getReceivers(Lcom/jme3/renderer/queue/GeometryList;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Only filter mode is implemented for SDSM"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getShadowCam(I)Lcom/jme3/renderer/Camera;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->shadowCameras:[Lcom/jme3/renderer/Camera;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public initFrustumCam()V
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

    invoke-super {p0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "light"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/DirectionalLight;

    iput-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->light:Lcom/jme3/light/DirectionalLight;

    const-string v0, "fitExpansionFactor"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->fitExpansionFactor:F

    const-string v0, "fitFrameDelayTolerance"

    const v1, 0x3d4ccccd    # 0.05f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->fitFrameDelayTolerance:F

    iget p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    iget v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapSize:F

    float-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->init(II)V

    return-void
.end method

.method public setDepthTexture(Lcom/jme3/texture/Texture;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->depthTexture:Lcom/jme3/texture/Texture;

    return-void
.end method

.method public setFitExpansionFactor(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->fitExpansionFactor:F

    return-void
.end method

.method public setFitFrameDelayTolerance(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->fitFrameDelayTolerance:F

    return-void
.end method

.method public setLight(Lcom/jme3/light/DirectionalLight;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->light:Lcom/jme3/light/DirectionalLight;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->generateLightViewMatrix()V

    :cond_0
    return-void
.end method

.method public setMaterialParameters(Lcom/jme3/material/Material;)V
    .locals 3

    invoke-direct {p0}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->getSplits()[Lcom/jme3/math/Vector2f;

    move-result-object v0

    const-string v1, "Splits"

    sget-object v2, Lcom/jme3/shader/VarType;->Vector2Array:Lcom/jme3/shader/VarType;

    invoke-virtual {p1, v1, v2, v0}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->light:Lcom/jme3/light/DirectionalLight;

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

    return-void
.end method

.method public setPostShadowParams()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    invoke-virtual {p0, v0}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->setMaterialParameters(Lcom/jme3/material/Material;)V

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    sget-object v1, Lcom/jme3/shader/VarType;->Matrix4Array:Lcom/jme3/shader/VarType;

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->lightViewProjectionsMatrices:[Lcom/jme3/math/Matrix4f;

    const-string v3, "LightViewProjectionMatrices"

    invoke-virtual {v0, v3, v1, v2}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->nbShadowMaps:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    iget-object v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMapStringCache:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->shadowMaps:[Lcom/jme3/texture/Texture2D;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->fadeInfo:Lcom/jme3/math/Vector2f;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    const-string v2, "FadeInfo"

    invoke-virtual {v1, v2, v0}, Lcom/jme3/material/Material;->setVector2(Ljava/lang/String;Lcom/jme3/math/Vector2f;)V

    :cond_1
    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    const-string v1, "BackfaceShadows"

    iget-boolean v2, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->renderBackFacesShadows:Z

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateShadowCams(Lcom/jme3/renderer/Camera;)V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->glInitialized:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->initGL()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->tryFitShadowCams(Lcom/jme3/renderer/Camera;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/shadow/AbstractShadowRenderer;->skipPostPass:Z

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

    iget-object v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->light:Lcom/jme3/light/DirectionalLight;

    const-string v1, "light"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->fitExpansionFactor:F

    const-string v1, "fitExpansionFactor"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/shadow/SdsmDirectionalLightShadowRenderer;->fitFrameDelayTolerance:F

    const-string v1, "fitFrameDelayTolerance"

    const v2, 0x3d4ccccd    # 0.05f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
