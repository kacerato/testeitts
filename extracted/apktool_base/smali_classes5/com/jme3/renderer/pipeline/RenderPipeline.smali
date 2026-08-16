.class public interface abstract Lcom/jme3/renderer/pipeline/RenderPipeline;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/jme3/renderer/pipeline/PipelineContext;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract endRenderFrame(Lcom/jme3/renderer/RenderManager;)V
.end method

.method public abstract fetchPipelineContext(Lcom/jme3/renderer/RenderManager;)Lcom/jme3/renderer/pipeline/PipelineContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/renderer/RenderManager;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract hasRenderedThisFrame()Z
.end method

.method public abstract pipelineRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/pipeline/PipelineContext;Lcom/jme3/renderer/ViewPort;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/renderer/RenderManager;",
            "TT;",
            "Lcom/jme3/renderer/ViewPort;",
            "F)V"
        }
    .end annotation
.end method

.method public abstract startRenderFrame(Lcom/jme3/renderer/RenderManager;)V
.end method
