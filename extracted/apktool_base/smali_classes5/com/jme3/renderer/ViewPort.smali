.class public Lcom/jme3/renderer/ViewPort;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final backColor:Lcom/jme3/math/ColorRGBA;

.field protected final cam:Lcom/jme3/renderer/Camera;

.field protected clearColor:Z

.field protected clearDepth:Z

.field protected clearStencil:Z

.field private enabled:Z

.field protected final name:Ljava/lang/String;

.field protected out:Lcom/jme3/texture/FrameBuffer;

.field protected pipeline:Lcom/jme3/renderer/pipeline/RenderPipeline;

.field protected final processors:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/post/SceneProcessor;",
            ">;"
        }
    .end annotation
.end field

.field protected final queue:Lcom/jme3/renderer/queue/RenderQueue;

.field protected final sceneList:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/scene/Spatial;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/jme3/renderer/Camera;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue;

    invoke-direct {v0}, Lcom/jme3/renderer/queue/RenderQueue;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/ViewPort;->queue:Lcom/jme3/renderer/queue/RenderQueue;

    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/scene/Spatial;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/renderer/ViewPort;->sceneList:Lcom/jme3/util/SafeArrayList;

    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/post/SceneProcessor;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/renderer/ViewPort;->processors:Lcom/jme3/util/SafeArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/renderer/ViewPort;->out:Lcom/jme3/texture/FrameBuffer;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    iput-object v0, p0, Lcom/jme3/renderer/ViewPort;->backColor:Lcom/jme3/math/ColorRGBA;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/renderer/ViewPort;->clearDepth:Z

    iput-boolean v0, p0, Lcom/jme3/renderer/ViewPort;->clearColor:Z

    iput-boolean v0, p0, Lcom/jme3/renderer/ViewPort;->clearStencil:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/renderer/ViewPort;->enabled:Z

    iput-object p1, p0, Lcom/jme3/renderer/ViewPort;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/jme3/renderer/ViewPort;->cam:Lcom/jme3/renderer/Camera;

    return-void
.end method


# virtual methods
.method public addProcessor(Lcom/jme3/post/SceneProcessor;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->processors:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Processor cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public attachScene(Lcom/jme3/scene/Spatial;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->sceneList:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    instance-of v0, p1, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0, v1}, Lcom/jme3/scene/Spatial;->forceRefresh(ZZZ)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Scene cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearProcessors()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->processors:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/post/SceneProcessor;

    invoke-interface {v1}, Lcom/jme3/post/SceneProcessor;->cleanup()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->processors:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->clear()V

    return-void
.end method

.method public clearScenes()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->sceneList:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->clear()V

    return-void
.end method

.method public detachScene(Lcom/jme3/scene/Spatial;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->sceneList:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->remove(Ljava/lang/Object;)Z

    instance-of v0, p1, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0, v1}, Lcom/jme3/scene/Spatial;->forceRefresh(ZZZ)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Scene cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBackgroundColor()Lcom/jme3/math/ColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->backColor:Lcom/jme3/math/ColorRGBA;

    return-object v0
.end method

.method public getCamera()Lcom/jme3/renderer/Camera;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->cam:Lcom/jme3/renderer/Camera;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->out:Lcom/jme3/texture/FrameBuffer;

    return-object v0
.end method

.method public getPipeline()Lcom/jme3/renderer/pipeline/RenderPipeline;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->pipeline:Lcom/jme3/renderer/pipeline/RenderPipeline;

    return-object v0
.end method

.method public getProcessors()Lcom/jme3/util/SafeArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/post/SceneProcessor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->processors:Lcom/jme3/util/SafeArrayList;

    return-object v0
.end method

.method public getQueue()Lcom/jme3/renderer/queue/RenderQueue;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->queue:Lcom/jme3/renderer/queue/RenderQueue;

    return-object v0
.end method

.method public getScenes()Lcom/jme3/util/SafeArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/scene/Spatial;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->sceneList:Lcom/jme3/util/SafeArrayList;

    return-object v0
.end method

.method public isClearColor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/renderer/ViewPort;->clearColor:Z

    return v0
.end method

.method public isClearDepth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/renderer/ViewPort;->clearDepth:Z

    return v0
.end method

.method public isClearStencil()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/renderer/ViewPort;->clearStencil:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/renderer/ViewPort;->enabled:Z

    return v0
.end method

.method public removeProcessor(Lcom/jme3/post/SceneProcessor;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->processors:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/jme3/post/SceneProcessor;->cleanup()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Processor cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBackgroundColor(Lcom/jme3/math/ColorRGBA;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->backColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    return-void
.end method

.method public setClearColor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/renderer/ViewPort;->clearColor:Z

    return-void
.end method

.method public setClearDepth(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/renderer/ViewPort;->clearDepth:Z

    return-void
.end method

.method public setClearFlags(ZZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/renderer/ViewPort;->clearColor:Z

    iput-boolean p2, p0, Lcom/jme3/renderer/ViewPort;->clearDepth:Z

    iput-boolean p3, p0, Lcom/jme3/renderer/ViewPort;->clearStencil:Z

    return-void
.end method

.method public setClearStencil(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/renderer/ViewPort;->clearStencil:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/renderer/ViewPort;->enabled:Z

    return-void
.end method

.method public setOutputFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/renderer/ViewPort;->out:Lcom/jme3/texture/FrameBuffer;

    return-void
.end method

.method public setPipeline(Lcom/jme3/renderer/pipeline/RenderPipeline;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/renderer/ViewPort;->pipeline:Lcom/jme3/renderer/pipeline/RenderPipeline;

    return-void
.end method
