.class public Lcom/jme3/renderer/pipeline/NullPipeline;
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

    iput-boolean v0, p0, Lcom/jme3/renderer/pipeline/NullPipeline;->rendered:Z

    return-void
.end method


# virtual methods
.method public endRenderFrame(Lcom/jme3/renderer/RenderManager;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/renderer/pipeline/NullPipeline;->rendered:Z

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

    iget-boolean v0, p0, Lcom/jme3/renderer/pipeline/NullPipeline;->rendered:Z

    return v0
.end method

.method public pipelineRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/pipeline/PipelineContext;Lcom/jme3/renderer/ViewPort;F)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/renderer/pipeline/NullPipeline;->rendered:Z

    return-void
.end method

.method public startRenderFrame(Lcom/jme3/renderer/RenderManager;)V
    .locals 0

    return-void
.end method
