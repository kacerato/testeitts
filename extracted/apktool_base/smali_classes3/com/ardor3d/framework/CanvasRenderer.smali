.class public interface abstract Lcom/ardor3d/framework/CanvasRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract draw()Z
    .annotation runtime Lcom/ardor3d/annotation/MainThread;
    .end annotation
.end method

.method public abstract getCamera()Lcom/ardor3d/renderer/Camera;
.end method

.method public abstract getFrameClear()I
.end method

.method public abstract getRenderContext()Lcom/ardor3d/renderer/RenderContext;
.end method

.method public abstract getRenderer()Lcom/ardor3d/renderer/Renderer;
.end method

.method public abstract getScene()Lcom/ardor3d/framework/Scene;
.end method

.method public abstract init(Lcom/ardor3d/framework/DisplaySettings;Z)V
.end method

.method public abstract makeCurrentContext()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ardor3d/util/Ardor3dException;
        }
    .end annotation
.end method

.method public abstract releaseCurrentContext()V
.end method

.method public abstract setCamera(Lcom/ardor3d/renderer/Camera;)V
.end method

.method public abstract setFrameClear(I)V
.end method

.method public abstract setScene(Lcom/ardor3d/framework/Scene;)V
.end method
