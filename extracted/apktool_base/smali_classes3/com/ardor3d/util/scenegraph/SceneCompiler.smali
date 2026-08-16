.class public Lcom/ardor3d/util/scenegraph/SceneCompiler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/util/scenegraph/SceneCompiler$TextureApplyVisitor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compile(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/Renderer;Lcom/ardor3d/util/scenegraph/CompileOptions;)V
    .locals 3

    invoke-virtual {p2}, Lcom/ardor3d/util/scenegraph/CompileOptions;->isDisplayList()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ardor3d/renderer/RenderContext;->getCurrentCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v0

    new-instance v1, Lcom/ardor3d/util/scenegraph/SceneCompiler$1;

    invoke-direct {v1, v0}, Lcom/ardor3d/util/scenegraph/SceneCompiler$1;-><init>(Lcom/ardor3d/renderer/Camera;)V

    invoke-virtual {p2, v1}, Lcom/ardor3d/renderer/RenderContext;->setCurrentCamera(Lcom/ardor3d/renderer/Camera;)V

    new-instance v1, Lcom/ardor3d/util/scenegraph/SceneCompiler$TextureApplyVisitor;

    invoke-direct {v1, p1}, Lcom/ardor3d/util/scenegraph/SceneCompiler$TextureApplyVisitor;-><init>(Lcom/ardor3d/renderer/Renderer;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/ardor3d/scenegraph/Spatial;->acceptVisitor(Lcom/ardor3d/scenegraph/visitor/Visitor;Z)V

    invoke-virtual {p2}, Lcom/ardor3d/renderer/RenderContext;->invalidateStates()V

    invoke-interface {p1}, Lcom/ardor3d/renderer/Renderer;->startDisplayList()I

    move-result v1

    invoke-interface {p1}, Lcom/ardor3d/renderer/Renderer;->getQueue()Lcom/ardor3d/renderer/queue/RenderQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/renderer/queue/RenderQueue;->pushBuckets()V

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->draw(Lcom/ardor3d/renderer/Renderer;)V

    invoke-interface {p1}, Lcom/ardor3d/renderer/Renderer;->renderBuckets()V

    invoke-interface {p1}, Lcom/ardor3d/renderer/Renderer;->getQueue()Lcom/ardor3d/renderer/queue/RenderQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/renderer/queue/RenderQueue;->popBuckets()V

    invoke-interface {p1}, Lcom/ardor3d/renderer/Renderer;->endDisplayList()V

    invoke-virtual {p2, v0}, Lcom/ardor3d/renderer/RenderContext;->setCurrentCamera(Lcom/ardor3d/renderer/Camera;)V

    new-instance p1, Lcom/ardor3d/util/scenegraph/DisplayListDelegate;

    invoke-virtual {p2}, Lcom/ardor3d/renderer/RenderContext;->getGlContextRep()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/ardor3d/util/scenegraph/DisplayListDelegate;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/ardor3d/renderer/RenderContext;->getGlContextRep()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/scenegraph/Spatial;->setRenderDelegate(Lcom/ardor3d/util/scenegraph/RenderDelegate;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
