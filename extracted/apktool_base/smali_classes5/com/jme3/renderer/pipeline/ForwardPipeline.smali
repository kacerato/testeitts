.class public Lcom/jme3/renderer/pipeline/ForwardPipeline;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/renderer/pipeline/RenderPipeline;


# instance fields
.field private rendered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/renderer/pipeline/ForwardPipeline;->rendered:Z

    return-void
.end method


# virtual methods
.method public endRenderFrame(Lcom/jme3/renderer/RenderManager;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/renderer/pipeline/ForwardPipeline;->rendered:Z

    return-void
.end method

.method public fetchPipelineContext(Lcom/jme3/renderer/RenderManager;)Lcom/jme3/renderer/pipeline/PipelineContext;
    .locals 0

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getDefaultContext()Lcom/jme3/renderer/pipeline/PipelineContext;

    move-result-object p1

    return-object p1
.end method

.method public hasRenderedThisFrame()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/renderer/pipeline/ForwardPipeline;->rendered:Z

    return v0
.end method

.method public pipelineRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/pipeline/PipelineContext;Lcom/jme3/renderer/ViewPort;F)V
    .locals 9

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getProfiler()Lcom/jme3/profile/AppProfiler;

    move-result-object p2

    invoke-virtual {p3}, Lcom/jme3/renderer/ViewPort;->getProcessors()Lcom/jme3/util/SafeArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_1

    sget-object v3, Lcom/jme3/profile/VpStep;->PreFrame:Lcom/jme3/profile/VpStep;

    invoke-interface {p2, v3, p3, v2}, Lcom/jme3/profile/AppProfiler;->vpStep(Lcom/jme3/profile/VpStep;Lcom/jme3/renderer/ViewPort;Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    :cond_1
    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/jme3/post/SceneProcessor;

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    invoke-interface {v6}, Lcom/jme3/post/SceneProcessor;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v6, p1, p3}, Lcom/jme3/post/SceneProcessor;->initialize(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V

    :cond_2
    invoke-interface {v6, p2}, Lcom/jme3/post/SceneProcessor;->setProfiler(Lcom/jme3/profile/AppProfiler;)V

    if-eqz p2, :cond_3

    sget-object v7, Lcom/jme3/profile/SpStep;->ProcPreFrame:Lcom/jme3/profile/SpStep;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Lcom/jme3/profile/AppProfiler;->spStep(Lcom/jme3/profile/SpStep;[Ljava/lang/String;)V

    :cond_3
    invoke-interface {v6, p4}, Lcom/jme3/post/SceneProcessor;->preFrame(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p3}, Lcom/jme3/renderer/RenderManager;->applyViewPort(Lcom/jme3/renderer/ViewPort;)V

    if-eqz p2, :cond_5

    sget-object p4, Lcom/jme3/profile/VpStep;->RenderScene:Lcom/jme3/profile/VpStep;

    invoke-interface {p2, p4, p3, v2}, Lcom/jme3/profile/AppProfiler;->vpStep(Lcom/jme3/profile/VpStep;Lcom/jme3/renderer/ViewPort;Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    :cond_5
    invoke-virtual {p3}, Lcom/jme3/renderer/ViewPort;->getScenes()Lcom/jme3/util/SafeArrayList;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_1
    if-ltz v3, :cond_6

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, v5, p3}, Lcom/jme3/renderer/RenderManager;->renderScene(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/ViewPort;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_9

    if-eqz p2, :cond_7

    sget-object p4, Lcom/jme3/profile/VpStep;->PostQueue:Lcom/jme3/profile/VpStep;

    invoke-interface {p2, p4, p3, v2}, Lcom/jme3/profile/AppProfiler;->vpStep(Lcom/jme3/profile/VpStep;Lcom/jme3/renderer/ViewPort;Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    :cond_7
    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lcom/jme3/post/SceneProcessor;

    array-length v3, p4

    move v5, v1

    :goto_2
    if-ge v5, v3, :cond_9

    aget-object v6, p4, v5

    if-eqz p2, :cond_8

    sget-object v7, Lcom/jme3/profile/SpStep;->ProcPostQueue:Lcom/jme3/profile/SpStep;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Lcom/jme3/profile/AppProfiler;->spStep(Lcom/jme3/profile/SpStep;[Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p3}, Lcom/jme3/renderer/ViewPort;->getQueue()Lcom/jme3/renderer/queue/RenderQueue;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/jme3/post/SceneProcessor;->postQueue(Lcom/jme3/renderer/queue/RenderQueue;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    if-eqz p2, :cond_a

    sget-object p4, Lcom/jme3/profile/VpStep;->FlushQueue:Lcom/jme3/profile/VpStep;

    invoke-interface {p2, p4, p3, v2}, Lcom/jme3/profile/AppProfiler;->vpStep(Lcom/jme3/profile/VpStep;Lcom/jme3/renderer/ViewPort;Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    :cond_a
    invoke-virtual {p1, p3}, Lcom/jme3/renderer/RenderManager;->flushQueue(Lcom/jme3/renderer/ViewPort;)V

    if-eqz v0, :cond_e

    if-eqz p2, :cond_b

    sget-object p4, Lcom/jme3/profile/VpStep;->PostFrame:Lcom/jme3/profile/VpStep;

    invoke-interface {p2, p4, p3, v2}, Lcom/jme3/profile/AppProfiler;->vpStep(Lcom/jme3/profile/VpStep;Lcom/jme3/renderer/ViewPort;Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    :cond_b
    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lcom/jme3/post/SceneProcessor;

    array-length v0, p4

    :goto_3
    if-ge v1, v0, :cond_d

    aget-object v3, p4, v1

    if-eqz p2, :cond_c

    sget-object v5, Lcom/jme3/profile/SpStep;->ProcPostFrame:Lcom/jme3/profile/SpStep;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Lcom/jme3/profile/AppProfiler;->spStep(Lcom/jme3/profile/SpStep;[Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p3}, Lcom/jme3/renderer/ViewPort;->getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/jme3/post/SceneProcessor;->postFrame(Lcom/jme3/texture/FrameBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    if-eqz p2, :cond_e

    sget-object p4, Lcom/jme3/profile/VpStep;->ProcEndRender:Lcom/jme3/profile/VpStep;

    invoke-interface {p2, p4, p3, v2}, Lcom/jme3/profile/AppProfiler;->vpStep(Lcom/jme3/profile/VpStep;Lcom/jme3/renderer/ViewPort;Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    :cond_e
    invoke-virtual {p1, p3}, Lcom/jme3/renderer/RenderManager;->renderTranslucentQueue(Lcom/jme3/renderer/ViewPort;)V

    invoke-virtual {p1, p3}, Lcom/jme3/renderer/RenderManager;->clearQueue(Lcom/jme3/renderer/ViewPort;)V

    iput-boolean v4, p0, Lcom/jme3/renderer/pipeline/ForwardPipeline;->rendered:Z

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object p1

    invoke-interface {p1}, Lcom/jme3/renderer/Renderer;->clearClipRect()V

    if-eqz p2, :cond_f

    sget-object p1, Lcom/jme3/profile/VpStep;->EndRender:Lcom/jme3/profile/VpStep;

    invoke-interface {p2, p1, p3, v2}, Lcom/jme3/profile/AppProfiler;->vpStep(Lcom/jme3/profile/VpStep;Lcom/jme3/renderer/ViewPort;Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    :cond_f
    return-void
.end method

.method public startRenderFrame(Lcom/jme3/renderer/RenderManager;)V
    .locals 0

    return-void
.end method
