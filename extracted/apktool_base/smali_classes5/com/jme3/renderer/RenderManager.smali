.class public Lcom/jme3/renderer/RenderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final RESERVED_UNIFORMS_MAX:I = 0x10

.field private static final RESERVED_UNIFORM_FRACTION:I = 0x4

.field private static final VEC4_UNIFORMS_PER_LIGHT:I = 0x3

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final boundDrawBufferId:Lcom/jme3/material/MatParamOverride;

.field private final contexts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/renderer/pipeline/PipelineContext;",
            ">;",
            "Lcom/jme3/renderer/pipeline/PipelineContext;",
            ">;"
        }
    .end annotation
.end field

.field private defaultPipeline:Lcom/jme3/renderer/pipeline/RenderPipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/renderer/pipeline/RenderPipeline<",
            "+",
            "Lcom/jme3/renderer/pipeline/PipelineContext;",
            ">;"
        }
    .end annotation
.end field

.field private final filteredLightList:Lcom/jme3/light/LightList;

.field private forcedMaterial:Lcom/jme3/material/Material;

.field private final forcedOverrides:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/material/MatParamOverride;",
            ">;"
        }
    .end annotation
.end field

.field private forcedRenderState:Lcom/jme3/material/RenderState;

.field private forcedTechnique:Ljava/lang/String;

.field private handleTranslucentBucket:Z

.field private lightFilter:Lcom/jme3/light/LightFilter;

.field private maxSinglePassLightBatchSize:I

.field private final orthoMatrix:Lcom/jme3/math/Matrix4f;

.field private final postViewPorts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/renderer/ViewPort;",
            ">;"
        }
    .end annotation
.end field

.field private final preViewPorts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/renderer/ViewPort;",
            ">;"
        }
    .end annotation
.end field

.field private preferredLightMode:Lcom/jme3/material/TechniqueDef$LightMode;

.field private prevCam:Lcom/jme3/renderer/Camera;

.field private prof:Lcom/jme3/profile/AppProfiler;

.field private renderFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/jme3/scene/Geometry;",
            ">;"
        }
    .end annotation
.end field

.field private final renderer:Lcom/jme3/renderer/Renderer;

.field private singlePassLightBatchSize:I

.field private final uniformBindingManager:Lcom/jme3/shader/UniformBindingManager;

.field private final usedContexts:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/jme3/renderer/pipeline/PipelineContext;",
            ">;"
        }
    .end annotation
.end field

.field private final usedPipelines:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/jme3/renderer/pipeline/RenderPipeline<",
            "+",
            "Lcom/jme3/renderer/pipeline/PipelineContext;",
            ">;>;"
        }
    .end annotation
.end field

.field private final viewPorts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/renderer/ViewPort;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/renderer/RenderManager;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/renderer/Renderer;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/shader/UniformBindingManager;

    invoke-direct {v0}, Lcom/jme3/shader/UniformBindingManager;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/RenderManager;->uniformBindingManager:Lcom/jme3/shader/UniformBindingManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/RenderManager;->preViewPorts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/RenderManager;->viewPorts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/RenderManager;->postViewPorts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/RenderManager;->contexts:Ljava/util/HashMap;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/jme3/renderer/RenderManager;->usedContexts:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/jme3/renderer/RenderManager;->usedPipelines:Ljava/util/LinkedList;

    new-instance v1, Lcom/jme3/renderer/pipeline/ForwardPipeline;

    invoke-direct {v1}, Lcom/jme3/renderer/pipeline/ForwardPipeline;-><init>()V

    iput-object v1, p0, Lcom/jme3/renderer/RenderManager;->defaultPipeline:Lcom/jme3/renderer/pipeline/RenderPipeline;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jme3/renderer/RenderManager;->prevCam:Lcom/jme3/renderer/Camera;

    iput-object v1, p0, Lcom/jme3/renderer/RenderManager;->forcedMaterial:Lcom/jme3/material/Material;

    iput-object v1, p0, Lcom/jme3/renderer/RenderManager;->forcedTechnique:Ljava/lang/String;

    iput-object v1, p0, Lcom/jme3/renderer/RenderManager;->forcedRenderState:Lcom/jme3/material/RenderState;

    new-instance v2, Lcom/jme3/util/SafeArrayList;

    const-class v3, Lcom/jme3/material/MatParamOverride;

    invoke-direct {v2, v3}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/jme3/renderer/RenderManager;->forcedOverrides:Lcom/jme3/util/SafeArrayList;

    new-instance v3, Lcom/jme3/math/Matrix4f;

    invoke-direct {v3}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v3, p0, Lcom/jme3/renderer/RenderManager;->orthoMatrix:Lcom/jme3/math/Matrix4f;

    new-instance v3, Lcom/jme3/light/LightList;

    invoke-direct {v3, v1}, Lcom/jme3/light/LightList;-><init>(Lcom/jme3/scene/Spatial;)V

    iput-object v3, p0, Lcom/jme3/renderer/RenderManager;->filteredLightList:Lcom/jme3/light/LightList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jme3/renderer/RenderManager;->handleTranslucentBucket:Z

    new-instance v3, Lcom/jme3/light/DefaultLightFilter;

    invoke-direct {v3}, Lcom/jme3/light/DefaultLightFilter;-><init>()V

    iput-object v3, p0, Lcom/jme3/renderer/RenderManager;->lightFilter:Lcom/jme3/light/LightFilter;

    sget-object v3, Lcom/jme3/material/TechniqueDef$LightMode;->SinglePass:Lcom/jme3/material/TechniqueDef$LightMode;

    iput-object v3, p0, Lcom/jme3/renderer/RenderManager;->preferredLightMode:Lcom/jme3/material/TechniqueDef$LightMode;

    iput v1, p0, Lcom/jme3/renderer/RenderManager;->singlePassLightBatchSize:I

    const/16 v1, 0x10

    iput v1, p0, Lcom/jme3/renderer/RenderManager;->maxSinglePassLightBatchSize:I

    new-instance v1, Lcom/jme3/material/MatParamOverride;

    sget-object v3, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "BoundDrawBuffer"

    invoke-direct {v1, v3, v5, v4}, Lcom/jme3/material/MatParamOverride;-><init>(Lcom/jme3/shader/VarType;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/jme3/renderer/RenderManager;->boundDrawBufferId:Lcom/jme3/material/MatParamOverride;

    iput-object p1, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-virtual {v2, v1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/jme3/renderer/pipeline/DefaultPipelineContext;

    invoke-direct {p1}, Lcom/jme3/renderer/pipeline/DefaultPipelineContext;-><init>()V

    const-class v1, Lcom/jme3/renderer/pipeline/PipelineContext;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/jme3/renderer/RenderManager;->maxSinglePassLightBatchSize:I

    invoke-virtual {p0, p1}, Lcom/jme3/renderer/RenderManager;->setMaxSinglePassLightBatchSize(I)V

    return-void
.end method

.method private maybeResizeLightBatch(Lcom/jme3/material/TechniqueDef;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/material/TechniqueDef;->getLightMode()Lcom/jme3/material/TechniqueDef$LightMode;

    move-result-object v0

    sget-object v1, Lcom/jme3/material/TechniqueDef$LightMode;->SinglePass:Lcom/jme3/material/TechniqueDef$LightMode;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/material/TechniqueDef;->getLightMode()Lcom/jme3/material/TechniqueDef$LightMode;

    move-result-object p1

    sget-object v0, Lcom/jme3/material/TechniqueDef$LightMode;->SinglePassAndImageBased:Lcom/jme3/material/TechniqueDef$LightMode;

    if-ne p1, v0, :cond_1

    :cond_0
    iget p1, p0, Lcom/jme3/renderer/RenderManager;->singlePassLightBatchSize:I

    if-le p2, p1, :cond_1

    iget v0, p0, Lcom/jme3/renderer/RenderManager;->maxSinglePassLightBatchSize:I

    if-ge p1, v0, :cond_1

    invoke-static {p2}, Lcom/jme3/math/FastMath;->nearestPowerOfTwo(I)I

    move-result p1

    iget p2, p0, Lcom/jme3/renderer/RenderManager;->maxSinglePassLightBatchSize:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/jme3/renderer/RenderManager;->singlePassLightBatchSize:I

    :cond_1
    return-void
.end method

.method private notifyRescale(Lcom/jme3/renderer/ViewPort;FF)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getProcessors()Lcom/jme3/util/SafeArrayList;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/post/SceneProcessor;

    .line 3
    invoke-interface {v1}, Lcom/jme3/post/SceneProcessor;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-interface {v1, p0, p1}, Lcom/jme3/post/SceneProcessor;->initialize(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v1, p1, p2, p3}, Lcom/jme3/post/SceneProcessor;->rescale(Lcom/jme3/renderer/ViewPort;FF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyReshape(Lcom/jme3/renderer/ViewPort;II)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getProcessors()Lcom/jme3/util/SafeArrayList;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/post/SceneProcessor;

    .line 3
    invoke-interface {v1}, Lcom/jme3/post/SceneProcessor;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-interface {v1, p0, p1}, Lcom/jme3/post/SceneProcessor;->initialize(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v1, p1, p2, p3}, Lcom/jme3/post/SceneProcessor;->reshape(Lcom/jme3/renderer/ViewPort;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private renderSubScene(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/ViewPort;)V
    .locals 3

    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->checkCulling(Lcom/jme3/renderer/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0, p2}, Lcom/jme3/scene/Spatial;->runControlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V

    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getPlaneState()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jme3/renderer/Camera;->setPlaneState(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Spatial;

    invoke-direct {p0, v2, p2}, Lcom/jme3/renderer/RenderManager;->renderSubScene(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/ViewPort;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getQueue()Lcom/jme3/renderer/queue/RenderQueue;

    move-result-object p2

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getQueueBucket()Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/jme3/renderer/queue/RenderQueue;->addToQueue(Lcom/jme3/scene/Geometry;Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No material is set for Geometry: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method private setViewPort(Lcom/jme3/renderer/Camera;)V
    .locals 5

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->prevCam:Lcom/jme3/renderer/Camera;

    if-ne p1, v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->isViewportChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortLeft()F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortBottom()F

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortTop()F

    move-result v3

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v0

    sub-int/2addr v3, v1

    iget-object v4, p0, Lcom/jme3/renderer/RenderManager;->uniformBindingManager:Lcom/jme3/shader/UniformBindingManager;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/jme3/shader/UniformBindingManager;->setViewPort(IIII)V

    iget-object v4, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/jme3/renderer/Renderer;->setViewPort(IIII)V

    iget-object v4, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/jme3/renderer/Renderer;->setClipRect(IIII)V

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->clearViewportChanged()V

    iput-object p1, p0, Lcom/jme3/renderer/RenderManager;->prevCam:Lcom/jme3/renderer/Camera;

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->orthoMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0}, Lcom/jme3/math/Matrix4f;->loadIdentity()V

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->orthoMatrix:Lcom/jme3/math/Matrix4f;

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Lcom/jme3/math/Matrix4f;->setTranslation(FFF)V

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->orthoMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v1, v3, v1

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v3, p1

    invoke-virtual {v0, v1, v3, v2}, Lcom/jme3/math/Matrix4f;->setScale(FFF)V

    :cond_1
    return-void
.end method

.method private setViewProjection(Lcom/jme3/renderer/Camera;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/jme3/renderer/RenderManager;->uniformBindingManager:Lcom/jme3/shader/UniformBindingManager;

    sget-object v0, Lcom/jme3/math/Matrix4f;->IDENTITY:Lcom/jme3/math/Matrix4f;

    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->orthoMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p2, p1, v0, v1, v1}, Lcom/jme3/shader/UniformBindingManager;->setCamera(Lcom/jme3/renderer/Camera;Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/jme3/renderer/RenderManager;->uniformBindingManager:Lcom/jme3/shader/UniformBindingManager;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getProjectionMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewProjectionMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v2

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/jme3/shader/UniformBindingManager;->setCamera(Lcom/jme3/renderer/Camera;Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addForcedMatParam(Lcom/jme3/material/MatParamOverride;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->forcedOverrides:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyViewPort(Lcom/jme3/renderer/ViewPort;)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jme3/renderer/Renderer;->setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->isClearDepth()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->isClearColor()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->isClearStencil()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->isClearColor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getBackgroundColor()Lcom/jme3/math/ColorRGBA;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jme3/renderer/Renderer;->setBackgroundColor(Lcom/jme3/math/ColorRGBA;)V

    :cond_1
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->isClearColor()Z

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->isClearDepth()Z

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->isClearStencil()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/jme3/renderer/Renderer;->clearBuffers(ZZZ)V

    :cond_2
    return-void
.end method

.method public clearQueue(Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getQueue()Lcom/jme3/renderer/queue/RenderQueue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/renderer/queue/RenderQueue;->clear()V

    return-void
.end method

.method public createMainView(Ljava/lang/String;Lcom/jme3/renderer/Camera;)Lcom/jme3/renderer/ViewPort;
    .locals 1

    new-instance v0, Lcom/jme3/renderer/ViewPort;

    invoke-direct {v0, p1, p2}, Lcom/jme3/renderer/ViewPort;-><init>(Ljava/lang/String;Lcom/jme3/renderer/Camera;)V

    iget-object p1, p0, Lcom/jme3/renderer/RenderManager;->viewPorts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createPostView(Ljava/lang/String;Lcom/jme3/renderer/Camera;)Lcom/jme3/renderer/ViewPort;
    .locals 1

    new-instance v0, Lcom/jme3/renderer/ViewPort;

    invoke-direct {v0, p1, p2}, Lcom/jme3/renderer/ViewPort;-><init>(Ljava/lang/String;Lcom/jme3/renderer/Camera;)V

    iget-object p1, p0, Lcom/jme3/renderer/RenderManager;->postViewPorts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createPreView(Ljava/lang/String;Lcom/jme3/renderer/Camera;)Lcom/jme3/renderer/ViewPort;
    .locals 1

    new-instance v0, Lcom/jme3/renderer/ViewPort;

    invoke-direct {v0, p1, p2}, Lcom/jme3/renderer/ViewPort;-><init>(Ljava/lang/String;Lcom/jme3/renderer/Camera;)V

    iget-object p1, p0, Lcom/jme3/renderer/RenderManager;->preViewPorts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public flushQueue(Lcom/jme3/renderer/ViewPort;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/jme3/renderer/RenderManager;->renderViewPortQueues(Lcom/jme3/renderer/ViewPort;Z)V

    return-void
.end method

.method public getContext(Ljava/lang/Class;)Lcom/jme3/renderer/pipeline/PipelineContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jme3/renderer/pipeline/PipelineContext;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->contexts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/renderer/pipeline/PipelineContext;

    return-object p1
.end method

.method public getCurrentCamera()Lcom/jme3/renderer/Camera;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->prevCam:Lcom/jme3/renderer/Camera;

    return-object v0
.end method

.method public getDefaultContext()Lcom/jme3/renderer/pipeline/PipelineContext;
    .locals 1

    const-class v0, Lcom/jme3/renderer/pipeline/PipelineContext;

    invoke-virtual {p0, v0}, Lcom/jme3/renderer/RenderManager;->getContext(Ljava/lang/Class;)Lcom/jme3/renderer/pipeline/PipelineContext;

    move-result-object v0

    return-object v0
.end method

.method public getForcedMatParams()Lcom/jme3/util/SafeArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/material/MatParamOverride;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->forcedOverrides:Lcom/jme3/util/SafeArrayList;

    return-object v0
.end method

.method public getForcedMaterial()Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->forcedMaterial:Lcom/jme3/material/Material;

    return-object v0
.end method

.method public getForcedRenderState()Lcom/jme3/material/RenderState;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->forcedRenderState:Lcom/jme3/material/RenderState;

    return-object v0
.end method

.method public getForcedTechnique()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->forcedTechnique:Ljava/lang/String;

    return-object v0
.end method

.method public getLightFilter()Lcom/jme3/light/LightFilter;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->lightFilter:Lcom/jme3/light/LightFilter;

    return-object v0
.end method

.method public getMainView(Ljava/lang/String;)Lcom/jme3/renderer/ViewPort;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->viewPorts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->viewPorts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v1}, Lcom/jme3/renderer/ViewPort;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/jme3/renderer/RenderManager;->viewPorts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/renderer/ViewPort;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMainViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/renderer/ViewPort;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->viewPorts:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSinglePassLightBatchSize()I
    .locals 1

    iget v0, p0, Lcom/jme3/renderer/RenderManager;->maxSinglePassLightBatchSize:I

    return v0
.end method

.method public getOrCreateContext(Ljava/lang/Class;Ljava/util/function/Function;)Lcom/jme3/renderer/pipeline/PipelineContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jme3/renderer/pipeline/PipelineContext;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Lcom/jme3/renderer/RenderManager;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/renderer/RenderManager;->getContext(Ljava/lang/Class;)Lcom/jme3/renderer/pipeline/PipelineContext;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/jme3/renderer/pipeline/PipelineContext;

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/jme3/renderer/RenderManager;->registerContext(Ljava/lang/Class;Lcom/jme3/renderer/pipeline/PipelineContext;)V

    :cond_0
    return-object v0
.end method

.method public getOrCreateContext(Ljava/lang/Class;Ljava/util/function/Supplier;)Lcom/jme3/renderer/pipeline/PipelineContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jme3/renderer/pipeline/PipelineContext;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/jme3/renderer/RenderManager;->getContext(Ljava/lang/Class;)Lcom/jme3/renderer/pipeline/PipelineContext;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/jme3/renderer/pipeline/PipelineContext;

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/jme3/renderer/RenderManager;->registerContext(Ljava/lang/Class;Lcom/jme3/renderer/pipeline/PipelineContext;)V

    :cond_0
    return-object v0
.end method

.method public getPassDrawBufferTargetIdToShaders()Z
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->forcedOverrides:Lcom/jme3/util/SafeArrayList;

    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->boundDrawBufferId:Lcom/jme3/material/MatParamOverride;

    invoke-virtual {v0, v1}, Lcom/jme3/util/SafeArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPipeline()Lcom/jme3/renderer/pipeline/RenderPipeline;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/renderer/pipeline/RenderPipeline<",
            "+",
            "Lcom/jme3/renderer/pipeline/PipelineContext;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->defaultPipeline:Lcom/jme3/renderer/pipeline/RenderPipeline;

    return-object v0
.end method

.method public getPostView(Ljava/lang/String;)Lcom/jme3/renderer/ViewPort;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->postViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->postViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v1}, Lcom/jme3/renderer/ViewPort;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/jme3/renderer/RenderManager;->postViewPorts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/renderer/ViewPort;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPostViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/renderer/ViewPort;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->postViewPorts:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPreView(Ljava/lang/String;)Lcom/jme3/renderer/ViewPort;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->preViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->preViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v1}, Lcom/jme3/renderer/ViewPort;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/jme3/renderer/RenderManager;->preViewPorts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/renderer/ViewPort;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPreViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/renderer/ViewPort;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->preViewPorts:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredLightMode()Lcom/jme3/material/TechniqueDef$LightMode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->preferredLightMode:Lcom/jme3/material/TechniqueDef$LightMode;

    return-object v0
.end method

.method public getProfiler()Lcom/jme3/profile/AppProfiler;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->prof:Lcom/jme3/profile/AppProfiler;

    return-object v0
.end method

.method public getRenderFilter()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Lcom/jme3/scene/Geometry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->renderFilter:Ljava/util/function/Predicate;

    return-object v0
.end method

.method public getRenderer()Lcom/jme3/renderer/Renderer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    return-object v0
.end method

.method public getSinglePassLightBatchSize()I
    .locals 1

    iget v0, p0, Lcom/jme3/renderer/RenderManager;->singlePassLightBatchSize:I

    return v0
.end method

.method public isHandleTranslucentBucket()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/renderer/RenderManager;->handleTranslucentBucket:Z

    return v0
.end method

.method public notifyRescale(FF)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->preViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/renderer/ViewPort;

    .line 7
    invoke-direct {p0, v1, p1, p2}, Lcom/jme3/renderer/RenderManager;->notifyRescale(Lcom/jme3/renderer/ViewPort;FF)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->viewPorts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/renderer/ViewPort;

    .line 9
    invoke-direct {p0, v1, p1, p2}, Lcom/jme3/renderer/RenderManager;->notifyRescale(Lcom/jme3/renderer/ViewPort;FF)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->postViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/renderer/ViewPort;

    .line 11
    invoke-direct {p0, v1, p1, p2}, Lcom/jme3/renderer/RenderManager;->notifyRescale(Lcom/jme3/renderer/ViewPort;FF)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public notifyReshape(II)V
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->preViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/renderer/ViewPort;

    .line 7
    invoke-virtual {v1}, Lcom/jme3/renderer/ViewPort;->getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v3

    if-nez v3, :cond_0

    .line 8
    invoke-virtual {v1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v3

    .line 9
    invoke-virtual {v3, p1, p2, v2}, Lcom/jme3/renderer/Camera;->resize(IIZ)V

    .line 10
    :cond_0
    invoke-direct {p0, v1, p1, p2}, Lcom/jme3/renderer/RenderManager;->notifyReshape(Lcom/jme3/renderer/ViewPort;II)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->viewPorts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/renderer/ViewPort;

    .line 12
    invoke-virtual {v1}, Lcom/jme3/renderer/ViewPort;->getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v3

    if-nez v3, :cond_2

    .line 13
    invoke-virtual {v1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v3

    .line 14
    invoke-virtual {v3, p1, p2, v2}, Lcom/jme3/renderer/Camera;->resize(IIZ)V

    .line 15
    :cond_2
    invoke-direct {p0, v1, p1, p2}, Lcom/jme3/renderer/RenderManager;->notifyReshape(Lcom/jme3/renderer/ViewPort;II)V

    goto :goto_1

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->postViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/renderer/ViewPort;

    .line 17
    invoke-virtual {v1}, Lcom/jme3/renderer/ViewPort;->getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v3

    if-nez v3, :cond_4

    .line 18
    invoke-virtual {v1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v3

    .line 19
    invoke-virtual {v3, p1, p2, v2}, Lcom/jme3/renderer/Camera;->resize(IIZ)V

    .line 20
    :cond_4
    invoke-direct {p0, v1, p1, p2}, Lcom/jme3/renderer/RenderManager;->notifyReshape(Lcom/jme3/renderer/ViewPort;II)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public preloadScene(Lcom/jme3/scene/Spatial;)V
    .locals 5

    instance-of v0, p1, Lcom/jme3/scene/Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-virtual {p0, v0}, Lcom/jme3/renderer/RenderManager;->preloadScene(Lcom/jme3/scene/Spatial;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/jme3/scene/Geometry;

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/jme3/material/Material;->preload(Lcom/jme3/renderer/RenderManager;Lcom/jme3/scene/Geometry;)V

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getTriangleCount()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/jme3/scene/VertexBuffer;

    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getUsage()Lcom/jme3/scene/VertexBuffer$Usage;

    move-result-object v3

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Usage;->CpuOnly:Lcom/jme3/scene/VertexBuffer$Usage;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v3, v2}, Lcom/jme3/renderer/Renderer;->updateBufferData(Lcom/jme3/scene/VertexBuffer;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No material is set for Geometry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public registerContext(Ljava/lang/Class;Lcom/jme3/renderer/pipeline/PipelineContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jme3/renderer/pipeline/PipelineContext;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->contexts:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context to register cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeForcedMatParam(Lcom/jme3/material/MatParamOverride;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->forcedOverrides:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeMainView(Lcom/jme3/renderer/ViewPort;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->viewPorts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeMainView(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->viewPorts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->viewPorts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v2}, Lcom/jme3/renderer/ViewPort;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/jme3/renderer/RenderManager;->viewPorts:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public removePostView(Lcom/jme3/renderer/ViewPort;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->postViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removePostView(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->postViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->postViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v2}, Lcom/jme3/renderer/ViewPort;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/jme3/renderer/RenderManager;->postViewPorts:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public removePreView(Lcom/jme3/renderer/ViewPort;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->preViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removePreView(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->preViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->preViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v2}, Lcom/jme3/renderer/ViewPort;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/jme3/renderer/RenderManager;->preViewPorts:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public render(FZ)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    instance-of v0, v0, Lcom/jme3/system/NullRenderer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->uniformBindingManager:Lcom/jme3/shader/UniformBindingManager;

    invoke-virtual {v0}, Lcom/jme3/shader/UniformBindingManager;->newFrame()V

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/jme3/profile/AppStep;->RenderPreviewViewPorts:Lcom/jme3/profile/AppStep;

    invoke-interface {v0, v1}, Lcom/jme3/profile/AppProfiler;->appStep(Lcom/jme3/profile/AppStep;)V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->preViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->preViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v2}, Lcom/jme3/renderer/ViewPort;->getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v3

    if-nez v3, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    invoke-virtual {p0, v2, p1}, Lcom/jme3/renderer/RenderManager;->renderViewPort(Lcom/jme3/renderer/ViewPort;F)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v1, :cond_5

    sget-object v2, Lcom/jme3/profile/AppStep;->RenderMainViewPorts:Lcom/jme3/profile/AppStep;

    invoke-interface {v1, v2}, Lcom/jme3/profile/AppProfiler;->appStep(Lcom/jme3/profile/AppStep;)V

    :cond_5
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->viewPorts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->viewPorts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v2}, Lcom/jme3/renderer/ViewPort;->getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v3

    if-nez v3, :cond_6

    if-eqz p2, :cond_7

    :cond_6
    invoke-virtual {p0, v2, p1}, Lcom/jme3/renderer/RenderManager;->renderViewPort(Lcom/jme3/renderer/ViewPort;F)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v1, :cond_9

    sget-object v2, Lcom/jme3/profile/AppStep;->RenderPostViewPorts:Lcom/jme3/profile/AppStep;

    invoke-interface {v1, v2}, Lcom/jme3/profile/AppProfiler;->appStep(Lcom/jme3/profile/AppStep;)V

    :cond_9
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->postViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->postViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v2}, Lcom/jme3/renderer/ViewPort;->getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v3

    if-nez v3, :cond_a

    if-eqz p2, :cond_b

    :cond_a
    invoke-virtual {p0, v2, p1}, Lcom/jme3/renderer/RenderManager;->renderViewPort(Lcom/jme3/renderer/ViewPort;F)V

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/jme3/renderer/RenderManager;->usedContexts:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-ge v0, p1, :cond_d

    iget-object p1, p0, Lcom/jme3/renderer/RenderManager;->usedContexts:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/renderer/pipeline/PipelineContext;

    invoke-interface {p1, p0}, Lcom/jme3/renderer/pipeline/PipelineContext;->endContextRenderFrame(Lcom/jme3/renderer/RenderManager;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    iget-object p1, p0, Lcom/jme3/renderer/RenderManager;->usedPipelines:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/renderer/pipeline/RenderPipeline;

    invoke-interface {p2, p0}, Lcom/jme3/renderer/pipeline/RenderPipeline;->endRenderFrame(Lcom/jme3/renderer/RenderManager;)V

    goto :goto_4

    :cond_e
    iget-object p1, p0, Lcom/jme3/renderer/RenderManager;->usedContexts:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    iget-object p1, p0, Lcom/jme3/renderer/RenderManager;->usedPipelines:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public renderGeometry(Lcom/jme3/scene/Geometry;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->renderFilter:Ljava/util/function/Predicate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldLightList()Lcom/jme3/light/LightList;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->lightFilter:Lcom/jme3/light/LightFilter;

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->filteredLightList:Lcom/jme3/light/LightList;

    invoke-virtual {v0}, Lcom/jme3/light/LightList;->clear()V

    .line 5
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->lightFilter:Lcom/jme3/light/LightFilter;

    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->filteredLightList:Lcom/jme3/light/LightList;

    invoke-interface {v0, p1, v1}, Lcom/jme3/light/LightFilter;->filterLights(Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;)V

    .line 6
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->filteredLightList:Lcom/jme3/light/LightList;

    .line 7
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/renderer/RenderManager;->renderGeometry(Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;)V

    return-void
.end method

.method public renderGeometry(Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;)V
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->renderFilter:Ljava/util/function/Predicate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jme3/renderer/Renderer;->pushDebugGroup(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->isIgnoreTransform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    sget-object v0, Lcom/jme3/math/Matrix4f;->IDENTITY:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p0, v0}, Lcom/jme3/renderer/RenderManager;->setWorldMatrix(Lcom/jme3/math/Matrix4f;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getWorldMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/renderer/RenderManager;->setWorldMatrix(Lcom/jme3/math/Matrix4f;)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v0}, Lcom/jme3/renderer/Renderer;->getCurrentFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/jme3/texture/FrameBuffer;->isMultiTarget()Z

    move-result v1

    if-nez v1, :cond_2

    .line 15
    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->boundDrawBufferId:Lcom/jme3/material/MatParamOverride;

    invoke-virtual {v0}, Lcom/jme3/texture/FrameBuffer;->getTargetIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jme3/material/MatParam;->setValue(Ljava/lang/Object;)V

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->forcedTechnique:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 18
    invoke-virtual {v0}, Lcom/jme3/material/Material;->getMaterialDef()Lcom/jme3/material/MaterialDef;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->forcedTechnique:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jme3/material/MaterialDef;->getTechniqueDefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 20
    invoke-virtual {v0}, Lcom/jme3/material/Material;->getActiveTechnique()Lcom/jme3/material/Technique;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 21
    invoke-virtual {v1}, Lcom/jme3/material/Technique;->getDef()Lcom/jme3/material/TechniqueDef;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/material/TechniqueDef;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 22
    :cond_3
    const-string v1, "Default"

    .line 23
    :goto_1
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/renderer/RenderManager;->forcedTechnique:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Lcom/jme3/material/Material;->selectTechnique(Ljava/lang/String;Lcom/jme3/renderer/RenderManager;)V

    .line 24
    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->forcedRenderState:Lcom/jme3/material/RenderState;

    .line 25
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/material/Material;->getActiveTechnique()Lcom/jme3/material/Technique;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/material/Technique;->getDef()Lcom/jme3/material/TechniqueDef;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/material/TechniqueDef;->getForcedRenderState()Lcom/jme3/material/RenderState;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 26
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/material/Material;->getActiveTechnique()Lcom/jme3/material/Technique;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/material/Technique;->getDef()Lcom/jme3/material/TechniqueDef;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/material/TechniqueDef;->getForcedRenderState()Lcom/jme3/material/RenderState;

    move-result-object v3

    iput-object v3, p0, Lcom/jme3/renderer/RenderManager;->forcedRenderState:Lcom/jme3/material/RenderState;

    .line 27
    :cond_4
    invoke-virtual {v0, p1, p2, p0}, Lcom/jme3/material/Material;->render(Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;Lcom/jme3/renderer/RenderManager;)V

    .line 28
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/material/Material;->getActiveTechnique()Lcom/jme3/material/Technique;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/material/Technique;->getDef()Lcom/jme3/material/TechniqueDef;

    move-result-object p1

    invoke-virtual {p2}, Lcom/jme3/light/LightList;->size()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/jme3/renderer/RenderManager;->maybeResizeLightBatch(Lcom/jme3/material/TechniqueDef;I)V

    .line 29
    invoke-virtual {v0, v1, p0}, Lcom/jme3/material/Material;->selectTechnique(Ljava/lang/String;Lcom/jme3/renderer/RenderManager;)V

    .line 30
    iput-object v2, p0, Lcom/jme3/renderer/RenderManager;->forcedRenderState:Lcom/jme3/material/RenderState;

    goto :goto_2

    .line 31
    :cond_5
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->forcedMaterial:Lcom/jme3/material/Material;

    if-eqz v0, :cond_8

    .line 32
    invoke-virtual {v0, p1, p2, p0}, Lcom/jme3/material/Material;->render(Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;Lcom/jme3/renderer/RenderManager;)V

    .line 33
    iget-object p1, p0, Lcom/jme3/renderer/RenderManager;->forcedMaterial:Lcom/jme3/material/Material;

    invoke-virtual {p1}, Lcom/jme3/material/Material;->getActiveTechnique()Lcom/jme3/material/Technique;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/material/Technique;->getDef()Lcom/jme3/material/TechniqueDef;

    move-result-object p1

    invoke-virtual {p2}, Lcom/jme3/light/LightList;->size()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/jme3/renderer/RenderManager;->maybeResizeLightBatch(Lcom/jme3/material/TechniqueDef;I)V

    goto :goto_2

    .line 34
    :cond_6
    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->forcedMaterial:Lcom/jme3/material/Material;

    if-eqz v1, :cond_7

    .line 35
    invoke-virtual {v1, p1, p2, p0}, Lcom/jme3/material/Material;->render(Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;Lcom/jme3/renderer/RenderManager;)V

    .line 36
    iget-object p1, p0, Lcom/jme3/renderer/RenderManager;->forcedMaterial:Lcom/jme3/material/Material;

    invoke-virtual {p1}, Lcom/jme3/material/Material;->getActiveTechnique()Lcom/jme3/material/Technique;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/material/Technique;->getDef()Lcom/jme3/material/TechniqueDef;

    move-result-object p1

    invoke-virtual {p2}, Lcom/jme3/light/LightList;->size()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/jme3/renderer/RenderManager;->maybeResizeLightBatch(Lcom/jme3/material/TechniqueDef;I)V

    goto :goto_2

    .line 37
    :cond_7
    invoke-virtual {v0, p1, p2, p0}, Lcom/jme3/material/Material;->render(Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;Lcom/jme3/renderer/RenderManager;)V

    .line 38
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/material/Material;->getActiveTechnique()Lcom/jme3/material/Technique;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/material/Technique;->getDef()Lcom/jme3/material/TechniqueDef;

    move-result-object p1

    invoke-virtual {p2}, Lcom/jme3/light/LightList;->size()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/jme3/renderer/RenderManager;->maybeResizeLightBatch(Lcom/jme3/material/TechniqueDef;I)V

    .line 39
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {p1}, Lcom/jme3/renderer/Renderer;->popDebugGroup()V

    return-void
.end method

.method public renderGeometryList(Lcom/jme3/renderer/queue/GeometryList;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/queue/GeometryList;->get(I)Lcom/jme3/scene/Geometry;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jme3/renderer/RenderManager;->renderGeometry(Lcom/jme3/scene/Geometry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public renderScene(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/ViewPort;)V
    .locals 2

    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/Camera;->setPlaneState(I)V

    invoke-direct {p0, p1, p2}, Lcom/jme3/renderer/RenderManager;->renderSubScene(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/ViewPort;)V

    return-void
.end method

.method public renderTranslucentQueue(Lcom/jme3/renderer/ViewPort;)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/jme3/profile/VpStep;->RenderBucket:Lcom/jme3/profile/VpStep;

    sget-object v2, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Translucent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-interface {v0, v1, p1, v2}, Lcom/jme3/profile/AppProfiler;->vpStep(Lcom/jme3/profile/VpStep;Lcom/jme3/renderer/ViewPort;Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getQueue()Lcom/jme3/renderer/queue/RenderQueue;

    move-result-object v0

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Translucent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/queue/RenderQueue;->isQueueEmpty(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/jme3/renderer/RenderManager;->handleTranslucentBucket:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/jme3/renderer/queue/RenderQueue;->renderQueue(Lcom/jme3/renderer/queue/RenderQueue$Bucket;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    :cond_1
    return-void
.end method

.method public renderViewPort(Lcom/jme3/renderer/ViewPort;F)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getPipeline()Lcom/jme3/renderer/pipeline/RenderPipeline;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->defaultPipeline:Lcom/jme3/renderer/pipeline/RenderPipeline;

    :cond_1
    invoke-interface {v0, p0}, Lcom/jme3/renderer/pipeline/RenderPipeline;->fetchPipelineContext(Lcom/jme3/renderer/RenderManager;)Lcom/jme3/renderer/pipeline/PipelineContext;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p0, p1}, Lcom/jme3/renderer/pipeline/PipelineContext;->startViewPortRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->usedContexts:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v0}, Lcom/jme3/renderer/pipeline/RenderPipeline;->hasRenderedThisFrame()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->usedPipelines:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p0}, Lcom/jme3/renderer/pipeline/RenderPipeline;->startRenderFrame(Lcom/jme3/renderer/RenderManager;)V

    :cond_3
    invoke-interface {v0, p0, v1, p1, p2}, Lcom/jme3/renderer/pipeline/RenderPipeline;->pipelineRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/pipeline/PipelineContext;Lcom/jme3/renderer/ViewPort;F)V

    invoke-interface {v1, p0, p1}, Lcom/jme3/renderer/pipeline/PipelineContext;->endViewPortRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Failed to fetch pipeline context."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public renderViewPortQueues(Lcom/jme3/renderer/ViewPort;Z)V
    .locals 10

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getQueue()Lcom/jme3/renderer/queue/RenderQueue;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v2, :cond_0

    sget-object v3, Lcom/jme3/profile/VpStep;->RenderBucket:Lcom/jme3/profile/VpStep;

    sget-object v4, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Opaque:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-interface {v2, v3, p1, v4}, Lcom/jme3/profile/AppProfiler;->vpStep(Lcom/jme3/profile/VpStep;Lcom/jme3/renderer/ViewPort;Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    :cond_0
    sget-object v2, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Opaque:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v0, v2, p0, v1, p2}, Lcom/jme3/renderer/queue/RenderQueue;->renderQueue(Lcom/jme3/renderer/queue/RenderQueue$Bucket;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    sget-object v2, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Sky:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v0, v2}, Lcom/jme3/renderer/queue/RenderQueue;->isQueueEmpty(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)Z

    move-result v3

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/jme3/renderer/RenderManager;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v3, :cond_1

    sget-object v7, Lcom/jme3/profile/VpStep;->RenderBucket:Lcom/jme3/profile/VpStep;

    invoke-interface {v3, v7, p1, v2}, Lcom/jme3/profile/AppProfiler;->vpStep(Lcom/jme3/profile/VpStep;Lcom/jme3/renderer/ViewPort;Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    :cond_1
    iget-object v3, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v3, v5, v5}, Lcom/jme3/renderer/Renderer;->setDepthRange(FF)V

    invoke-virtual {v0, v2, p0, v1, p2}, Lcom/jme3/renderer/queue/RenderQueue;->renderQueue(Lcom/jme3/renderer/queue/RenderQueue$Bucket;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v6

    :goto_0
    sget-object v3, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Transparent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v0, v3}, Lcom/jme3/renderer/queue/RenderQueue;->isQueueEmpty(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/jme3/renderer/RenderManager;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v7, :cond_3

    sget-object v9, Lcom/jme3/profile/VpStep;->RenderBucket:Lcom/jme3/profile/VpStep;

    invoke-interface {v7, v9, p1, v3}, Lcom/jme3/profile/AppProfiler;->vpStep(Lcom/jme3/profile/VpStep;Lcom/jme3/renderer/ViewPort;Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    :cond_3
    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v2, v8, v5}, Lcom/jme3/renderer/Renderer;->setDepthRange(FF)V

    move v2, v6

    :cond_4
    invoke-virtual {v0, v3, p0, v1, p2}, Lcom/jme3/renderer/queue/RenderQueue;->renderQueue(Lcom/jme3/renderer/queue/RenderQueue$Bucket;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    :cond_5
    sget-object v3, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Gui:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v0, v3}, Lcom/jme3/renderer/queue/RenderQueue;->isQueueEmpty(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v2, :cond_6

    sget-object v7, Lcom/jme3/profile/VpStep;->RenderBucket:Lcom/jme3/profile/VpStep;

    invoke-interface {v2, v7, p1, v3}, Lcom/jme3/profile/AppProfiler;->vpStep(Lcom/jme3/profile/VpStep;Lcom/jme3/renderer/ViewPort;Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    :cond_6
    iget-object p1, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {p1, v8, v8}, Lcom/jme3/renderer/Renderer;->setDepthRange(FF)V

    invoke-virtual {p0, v1, v4}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    invoke-virtual {v0, v3, p0, v1, p2}, Lcom/jme3/renderer/queue/RenderQueue;->renderQueue(Lcom/jme3/renderer/queue/RenderQueue$Bucket;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    invoke-virtual {p0, v1, v6}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    goto :goto_1

    :cond_7
    move v4, v2

    :goto_1
    if-eqz v4, :cond_8

    iget-object p1, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {p1, v8, v5}, Lcom/jme3/renderer/Renderer;->setDepthRange(FF)V

    :cond_8
    return-void
.end method

.method public renderViewPortRaw(Lcom/jme3/renderer/ViewPort;)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getScenes()Lcom/jme3/util/SafeArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Spatial;

    invoke-virtual {p0, v2, p1}, Lcom/jme3/renderer/RenderManager;->renderScene(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/ViewPort;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/renderer/RenderManager;->flushQueue(Lcom/jme3/renderer/ViewPort;)V

    return-void
.end method

.method public setAlphaToCoverage(Z)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v0, p1}, Lcom/jme3/renderer/Renderer;->setAlphaToCoverage(Z)V

    return-void
.end method

.method public setAppProfiler(Lcom/jme3/profile/AppProfiler;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/renderer/RenderManager;->prof:Lcom/jme3/profile/AppProfiler;

    return-void
.end method

.method public setCamera(Lcom/jme3/renderer/Camera;Z)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->lightFilter:Lcom/jme3/light/LightFilter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/jme3/light/LightFilter;->setCamera(Lcom/jme3/renderer/Camera;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/jme3/renderer/RenderManager;->setViewPort(Lcom/jme3/renderer/Camera;)V

    invoke-direct {p0, p1, p2}, Lcom/jme3/renderer/RenderManager;->setViewProjection(Lcom/jme3/renderer/Camera;Z)V

    return-void
.end method

.method public setForcedMaterial(Lcom/jme3/material/Material;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/renderer/RenderManager;->forcedMaterial:Lcom/jme3/material/Material;

    return-void
.end method

.method public setForcedRenderState(Lcom/jme3/material/RenderState;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/renderer/RenderManager;->forcedRenderState:Lcom/jme3/material/RenderState;

    return-void
.end method

.method public setForcedTechnique(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/renderer/RenderManager;->forcedTechnique:Ljava/lang/String;

    return-void
.end method

.method public setHandleTranslucentBucket(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/renderer/RenderManager;->handleTranslucentBucket:Z

    return-void
.end method

.method public setLightFilter(Lcom/jme3/light/LightFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/renderer/RenderManager;->lightFilter:Lcom/jme3/light/LightFilter;

    return-void
.end method

.method public setMaxSinglePassLightBatchSize(I)V
    .locals 5

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/jme3/renderer/RenderManager;->maxSinglePassLightBatchSize:I

    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v1}, Lcom/jme3/renderer/Renderer;->getLimits()Ljava/util/EnumMap;

    move-result-object v1

    sget-object v2, Lcom/jme3/renderer/Limits;->FragmentUniformVectors:Lcom/jme3/renderer/Limits;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x3

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lcom/jme3/renderer/RenderManager;->maxSinglePassLightBatchSize:I

    if-le v2, v3, :cond_0

    if-ge v0, v3, :cond_0

    sget-object v2, Lcom/jme3/renderer/RenderManager;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {p1, v4, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "setMaxSinglePassLightBatchSize({0}) was requested but hardware only supports {1} lights per pass (FragmentUniformVectors={2}); clamping to {1}."

    invoke-virtual {v2, v3, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget p1, p0, Lcom/jme3/renderer/RenderManager;->maxSinglePassLightBatchSize:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/jme3/renderer/RenderManager;->maxSinglePassLightBatchSize:I

    :cond_1
    iget p1, p0, Lcom/jme3/renderer/RenderManager;->singlePassLightBatchSize:I

    iget v0, p0, Lcom/jme3/renderer/RenderManager;->maxSinglePassLightBatchSize:I

    if-le p1, v0, :cond_2

    iput v0, p0, Lcom/jme3/renderer/RenderManager;->singlePassLightBatchSize:I

    :cond_2
    return-void
.end method

.method public setPassDrawBufferTargetIdToShaders(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jme3/renderer/RenderManager;->forcedOverrides:Lcom/jme3/util/SafeArrayList;

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->boundDrawBufferId:Lcom/jme3/material/MatParamOverride;

    invoke-virtual {p1, v0}, Lcom/jme3/util/SafeArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/jme3/renderer/RenderManager;->forcedOverrides:Lcom/jme3/util/SafeArrayList;

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->boundDrawBufferId:Lcom/jme3/material/MatParamOverride;

    invoke-virtual {p1, v0}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/renderer/RenderManager;->forcedOverrides:Lcom/jme3/util/SafeArrayList;

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->boundDrawBufferId:Lcom/jme3/material/MatParamOverride;

    invoke-virtual {p1, v0}, Lcom/jme3/util/SafeArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setPipeline(Lcom/jme3/renderer/pipeline/RenderPipeline;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/renderer/pipeline/RenderPipeline<",
            "+",
            "Lcom/jme3/renderer/pipeline/PipelineContext;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/renderer/RenderManager;->defaultPipeline:Lcom/jme3/renderer/pipeline/RenderPipeline;

    return-void
.end method

.method public setPreferredLightMode(Lcom/jme3/material/TechniqueDef$LightMode;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/renderer/RenderManager;->preferredLightMode:Lcom/jme3/material/TechniqueDef$LightMode;

    return-void
.end method

.method public setRenderFilter(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/jme3/scene/Geometry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/renderer/RenderManager;->renderFilter:Ljava/util/function/Predicate;

    return-void
.end method

.method public setSinglePassLightBatchSize(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/jme3/renderer/RenderManager;->singlePassLightBatchSize:I

    iput p1, p0, Lcom/jme3/renderer/RenderManager;->maxSinglePassLightBatchSize:I

    return-void
.end method

.method public setTimer(Lcom/jme3/system/Timer;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->uniformBindingManager:Lcom/jme3/shader/UniformBindingManager;

    invoke-virtual {v0, p1}, Lcom/jme3/shader/UniformBindingManager;->setTimer(Lcom/jme3/system/Timer;)V

    return-void
.end method

.method public setWorldMatrix(Lcom/jme3/math/Matrix4f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->uniformBindingManager:Lcom/jme3/shader/UniformBindingManager;

    invoke-virtual {v0, p1}, Lcom/jme3/shader/UniformBindingManager;->setWorldMatrix(Lcom/jme3/math/Matrix4f;)V

    return-void
.end method

.method public updateUniformBindings(Lcom/jme3/shader/Shader;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->uniformBindingManager:Lcom/jme3/shader/UniformBindingManager;

    invoke-virtual {v0, p1}, Lcom/jme3/shader/UniformBindingManager;->updateUniformBindings(Lcom/jme3/shader/Shader;)V

    return-void
.end method
