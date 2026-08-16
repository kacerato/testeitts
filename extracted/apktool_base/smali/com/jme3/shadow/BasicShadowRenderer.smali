.class public Lcom/jme3/shadow/BasicShadowRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/post/SceneProcessor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final NULL_LIGHT_FILTER:Lcom/jme3/light/LightFilter;


# instance fields
.field private final direction:Lcom/jme3/math/Vector3f;

.field private final dispPic:Lcom/jme3/ui/Picture;

.field protected dummyTex:Lcom/jme3/texture/Texture2D;

.field protected lightReceivers:Lcom/jme3/renderer/queue/GeometryList;

.field private noOccluders:Z

.field private final points:[Lcom/jme3/math/Vector3f;

.field private final postshadowMat:Lcom/jme3/material/Material;

.field private final preshadowMat:Lcom/jme3/material/Material;

.field private renderManager:Lcom/jme3/renderer/RenderManager;

.field private final shadowCam:Lcom/jme3/renderer/Camera;

.field private final shadowFB:Lcom/jme3/texture/FrameBuffer;

.field private final shadowMap:Lcom/jme3/texture/Texture2D;

.field private final shadowMapSize:F

.field protected shadowOccluders:Lcom/jme3/renderer/queue/GeometryList;

.field private viewPort:Lcom/jme3/renderer/ViewPort;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jme3/light/NullLightFilter;

    invoke-direct {v0}, Lcom/jme3/light/NullLightFilter;-><init>()V

    sput-object v0, Lcom/jme3/shadow/BasicShadowRenderer;->NULL_LIGHT_FILTER:Lcom/jme3/light/LightFilter;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/ui/Picture;

    const-string v1, "Picture"

    invoke-direct {v0, v1}, Lcom/jme3/ui/Picture;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/shadow/BasicShadowRenderer;->dispPic:Lcom/jme3/ui/Picture;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->noOccluders:Z

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/jme3/math/Vector3f;

    iput-object v2, p0, Lcom/jme3/shadow/BasicShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v2, p0, Lcom/jme3/shadow/BasicShadowRenderer;->direction:Lcom/jme3/math/Vector3f;

    new-instance v2, Lcom/jme3/renderer/queue/GeometryList;

    new-instance v3, Lcom/jme3/renderer/queue/OpaqueComparator;

    invoke-direct {v3}, Lcom/jme3/renderer/queue/OpaqueComparator;-><init>()V

    invoke-direct {v2, v3}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object v2, p0, Lcom/jme3/shadow/BasicShadowRenderer;->lightReceivers:Lcom/jme3/renderer/queue/GeometryList;

    new-instance v2, Lcom/jme3/renderer/queue/GeometryList;

    new-instance v3, Lcom/jme3/renderer/queue/OpaqueComparator;

    invoke-direct {v3}, Lcom/jme3/renderer/queue/OpaqueComparator;-><init>()V

    invoke-direct {v2, v3}, Lcom/jme3/renderer/queue/GeometryList;-><init>(Lcom/jme3/renderer/queue/GeometryComparator;)V

    iput-object v2, p0, Lcom/jme3/shadow/BasicShadowRenderer;->shadowOccluders:Lcom/jme3/renderer/queue/GeometryList;

    new-instance v2, Lcom/jme3/texture/FrameBuffer;

    const/4 v3, 0x1

    invoke-direct {v2, p2, p2, v3}, Lcom/jme3/texture/FrameBuffer;-><init>(III)V

    iput-object v2, p0, Lcom/jme3/shadow/BasicShadowRenderer;->shadowFB:Lcom/jme3/texture/FrameBuffer;

    new-instance v3, Lcom/jme3/texture/Texture2D;

    sget-object v4, Lcom/jme3/texture/Image$Format;->Depth:Lcom/jme3/texture/Image$Format;

    invoke-direct {v3, p2, p2, v4}, Lcom/jme3/texture/Texture2D;-><init>(IILcom/jme3/texture/Image$Format;)V

    iput-object v3, p0, Lcom/jme3/shadow/BasicShadowRenderer;->shadowMap:Lcom/jme3/texture/Texture2D;

    invoke-virtual {v2, v3}, Lcom/jme3/texture/FrameBuffer;->setDepthTexture(Lcom/jme3/texture/Texture2D;)V

    new-instance v4, Lcom/jme3/renderer/Camera;

    invoke-direct {v4, p2, p2}, Lcom/jme3/renderer/Camera;-><init>(II)V

    iput-object v4, p0, Lcom/jme3/shadow/BasicShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    new-instance v4, Lcom/jme3/texture/Texture2D;

    sget-object v5, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    invoke-direct {v4, p2, p2, v5}, Lcom/jme3/texture/Texture2D;-><init>(IILcom/jme3/texture/Image$Format;)V

    iput-object v4, p0, Lcom/jme3/shadow/BasicShadowRenderer;->dummyTex:Lcom/jme3/texture/Texture2D;

    invoke-virtual {v2, v4}, Lcom/jme3/texture/FrameBuffer;->setColorTexture(Lcom/jme3/texture/Texture2D;)V

    int-to-float p2, p2

    iput p2, p0, Lcom/jme3/shadow/BasicShadowRenderer;->shadowMapSize:F

    new-instance p2, Lcom/jme3/material/Material;

    const-string v2, "Common/MatDefs/Shadow/PreShadow.j3md"

    invoke-direct {p2, p1, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/jme3/shadow/BasicShadowRenderer;->preshadowMat:Lcom/jme3/material/Material;

    new-instance p2, Lcom/jme3/material/Material;

    const-string v2, "Common/MatDefs/Shadow/BasicPostShadow.j3md"

    invoke-direct {p2, p1, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/jme3/shadow/BasicShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    const-string v2, "ShadowMap"

    invoke-virtual {p2, v2, v3}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    invoke-virtual {v0, p1, v3, v1}, Lcom/jme3/ui/Picture;->setTexture(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture2D;Z)V

    :goto_0
    iget-object p1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    array-length p2, p1

    if-ge v1, p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    return-void
.end method

.method public getDirection()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/BasicShadowRenderer;->direction:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getDisplayPicture()Lcom/jme3/ui/Picture;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/BasicShadowRenderer;->dispPic:Lcom/jme3/ui/Picture;

    return-object v0
.end method

.method public getPoints()[Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/BasicShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getShadowCamera()Lcom/jme3/renderer/Camera;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/BasicShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    return-object v0
.end method

.method public initialize(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 1

    iput-object p1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iput-object p2, p0, Lcom/jme3/shadow/BasicShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/jme3/shadow/BasicShadowRenderer;->reshape(Lcom/jme3/renderer/ViewPort;II)V

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/BasicShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public postFrame(Lcom/jme3/texture/FrameBuffer;)V
    .locals 4

    iget-boolean p1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->noOccluders:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    iget-object v0, p0, Lcom/jme3/shadow/BasicShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getViewProjectionMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v0

    const-string v1, "LightViewProjectionMatrix"

    invoke-virtual {p1, v1, v0}, Lcom/jme3/material/Material;->setMatrix4(Ljava/lang/String;Lcom/jme3/math/Matrix4f;)V

    iget-object p1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v0, p0, Lcom/jme3/shadow/BasicShadowRenderer;->postshadowMat:Lcom/jme3/material/Material;

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/RenderManager;->setForcedMaterial(Lcom/jme3/material/Material;)V

    iget-object p1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getQueue()Lcom/jme3/renderer/queue/RenderQueue;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/shadow/BasicShadowRenderer;->lightReceivers:Lcom/jme3/renderer/queue/GeometryList;

    iget-object v1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v2, p0, Lcom/jme3/shadow/BasicShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/jme3/renderer/queue/RenderQueue;->renderShadowQueue(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    iget-object p1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/RenderManager;->setForcedMaterial(Lcom/jme3/material/Material;)V

    :cond_0
    return-void
.end method

.method public postQueue(Lcom/jme3/renderer/queue/RenderQueue;)V
    .locals 11

    iget-object p1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

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

    iget-object v1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v1

    sget-object v2, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Receive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    iget-object v3, p0, Lcom/jme3/shadow/BasicShadowRenderer;->lightReceivers:Lcom/jme3/renderer/queue/GeometryList;

    invoke-static {v0, v1, v2, v3}, Lcom/jme3/shadow/ShadowUtil;->getGeometriesInCamFrustum(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/Camera;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;Lcom/jme3/renderer/queue/GeometryList;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getFrustumNear()F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getFrustumFar()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/jme3/shadow/BasicShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/jme3/shadow/ShadowUtil;->updateFrustumPoints(Lcom/jme3/renderer/Camera;FFF[Lcom/jme3/math/Vector3f;)V

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iget-object v1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3e000000    # 0.125f

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jme3/renderer/Camera;->setProjectionMatrix(Lcom/jme3/math/Matrix4f;)V

    iget-object v1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/jme3/renderer/Camera;->setParallelProjection(Z)V

    iget-object v1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    iget-object v5, p0, Lcom/jme3/shadow/BasicShadowRenderer;->direction:Lcom/jme3/math/Vector3f;

    sget-object v6, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v5, v6}, Lcom/jme3/renderer/Camera;->lookAtDirection(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    iget-object v1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v1}, Lcom/jme3/renderer/Camera;->update()V

    iget-object v1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v1, v0}, Lcom/jme3/renderer/Camera;->setLocation(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/shadow/BasicShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->update()V

    iget-object v0, p0, Lcom/jme3/shadow/BasicShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->updateViewProjection()V

    iget-object v5, p0, Lcom/jme3/shadow/BasicShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    iget-object v6, p0, Lcom/jme3/shadow/BasicShadowRenderer;->lightReceivers:Lcom/jme3/renderer/queue/GeometryList;

    iget-object v7, p0, Lcom/jme3/shadow/BasicShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    iget-object v8, p0, Lcom/jme3/shadow/BasicShadowRenderer;->points:[Lcom/jme3/math/Vector3f;

    iget-object v9, p0, Lcom/jme3/shadow/BasicShadowRenderer;->shadowOccluders:Lcom/jme3/renderer/queue/GeometryList;

    iget v10, p0, Lcom/jme3/shadow/BasicShadowRenderer;->shadowMapSize:F

    invoke-static/range {v5 .. v10}, Lcom/jme3/shadow/ShadowUtil;->updateShadowCamera(Lcom/jme3/renderer/ViewPort;Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/Camera;[Lcom/jme3/math/Vector3f;Lcom/jme3/renderer/queue/GeometryList;F)V

    iget-object v0, p0, Lcom/jme3/shadow/BasicShadowRenderer;->shadowOccluders:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v0}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v4, p0, Lcom/jme3/shadow/BasicShadowRenderer;->noOccluders:Z

    return-void

    :cond_2
    iput-boolean v3, p0, Lcom/jme3/shadow/BasicShadowRenderer;->noOccluders:Z

    iget-object v0, p0, Lcom/jme3/shadow/BasicShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v5, p0, Lcom/jme3/shadow/BasicShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v1, v5, v3}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    iget-object v1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v5, p0, Lcom/jme3/shadow/BasicShadowRenderer;->preshadowMat:Lcom/jme3/material/Material;

    invoke-virtual {v1, v5}, Lcom/jme3/renderer/RenderManager;->setForcedMaterial(Lcom/jme3/material/Material;)V

    iget-object v1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->shadowFB:Lcom/jme3/texture/FrameBuffer;

    invoke-interface {v0, v1}, Lcom/jme3/renderer/Renderer;->setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    invoke-interface {v0, v4, v4, v4}, Lcom/jme3/renderer/Renderer;->clearBuffers(ZZZ)V

    iget-object v1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v1}, Lcom/jme3/renderer/RenderManager;->getLightFilter()Lcom/jme3/light/LightFilter;

    move-result-object v1

    iget-object v5, p0, Lcom/jme3/shadow/BasicShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    sget-object v6, Lcom/jme3/shadow/BasicShadowRenderer;->NULL_LIGHT_FILTER:Lcom/jme3/light/LightFilter;

    invoke-virtual {v5, v6}, Lcom/jme3/renderer/RenderManager;->setLightFilter(Lcom/jme3/light/LightFilter;)V

    iget-object v5, p0, Lcom/jme3/shadow/BasicShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v5}, Lcom/jme3/renderer/ViewPort;->getQueue()Lcom/jme3/renderer/queue/RenderQueue;

    move-result-object v5

    iget-object v6, p0, Lcom/jme3/shadow/BasicShadowRenderer;->shadowOccluders:Lcom/jme3/renderer/queue/GeometryList;

    iget-object v7, p0, Lcom/jme3/shadow/BasicShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v8, p0, Lcom/jme3/shadow/BasicShadowRenderer;->shadowCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/jme3/renderer/queue/RenderQueue;->renderShadowQueue(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    iget-object v4, p0, Lcom/jme3/shadow/BasicShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v4, v1}, Lcom/jme3/renderer/RenderManager;->setLightFilter(Lcom/jme3/light/LightFilter;)V

    iget-object v1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v1}, Lcom/jme3/renderer/ViewPort;->getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jme3/renderer/Renderer;->setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    iget-object v0, p0, Lcom/jme3/shadow/BasicShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0, v2}, Lcom/jme3/renderer/RenderManager;->setForcedMaterial(Lcom/jme3/material/Material;)V

    iget-object v0, p0, Lcom/jme3/shadow/BasicShadowRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0, p1, v3}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    return-void
.end method

.method public preFrame(F)V
    .locals 0

    return-void
.end method

.method public reshape(Lcom/jme3/renderer/ViewPort;II)V
    .locals 2

    iget-object p1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->dispPic:Lcom/jme3/ui/Picture;

    int-to-float p2, p2

    const/high16 v0, 0x41a00000    # 20.0f

    div-float v1, p2, v0

    int-to-float p3, p3

    div-float v0, p3, v0

    invoke-virtual {p1, v1, v0}, Lcom/jme3/ui/Picture;->setPosition(FF)V

    iget-object p1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->dispPic:Lcom/jme3/ui/Picture;

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/jme3/ui/Picture;->setWidth(F)V

    iget-object p1, p0, Lcom/jme3/shadow/BasicShadowRenderer;->dispPic:Lcom/jme3/ui/Picture;

    div-float/2addr p3, v0

    invoke-virtual {p1, p3}, Lcom/jme3/ui/Picture;->setHeight(F)V

    return-void
.end method

.method public setDirection(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/BasicShadowRenderer;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setProfiler(Lcom/jme3/profile/AppProfiler;)V
    .locals 0

    return-void
.end method
