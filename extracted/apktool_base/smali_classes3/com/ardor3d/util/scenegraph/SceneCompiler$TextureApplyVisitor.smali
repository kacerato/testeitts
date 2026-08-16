.class Lcom/ardor3d/util/scenegraph/SceneCompiler$TextureApplyVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/scenegraph/visitor/Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/util/scenegraph/SceneCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureApplyVisitor"
.end annotation


# instance fields
.field private final _renderer:Lcom/ardor3d/renderer/Renderer;


# direct methods
.method public constructor <init>(Lcom/ardor3d/renderer/Renderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/util/scenegraph/SceneCompiler$TextureApplyVisitor;->_renderer:Lcom/ardor3d/renderer/Renderer;

    return-void
.end method


# virtual methods
.method public visit(Lcom/ardor3d/scenegraph/Spatial;)V
    .locals 2

    instance-of v0, p1, Lcom/ardor3d/scenegraph/Mesh;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ardor3d/scenegraph/Mesh;

    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->Texture:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {p1, v0}, Lcom/ardor3d/scenegraph/Mesh;->getWorldRenderState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/TextureState;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ardor3d/util/scenegraph/SceneCompiler$TextureApplyVisitor;->_renderer:Lcom/ardor3d/renderer/Renderer;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/state/TextureState;->getType()Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/ardor3d/renderer/Renderer;->applyState(Lcom/ardor3d/renderer/state/RenderState$StateType;Lcom/ardor3d/renderer/state/RenderState;)V

    :cond_0
    return-void
.end method
