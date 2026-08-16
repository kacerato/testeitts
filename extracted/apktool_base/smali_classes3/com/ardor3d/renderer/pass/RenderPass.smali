.class public Lcom/ardor3d/renderer/pass/RenderPass;
.super Lcom/ardor3d/renderer/pass/Pass;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ardor3d/renderer/pass/Pass;-><init>()V

    return-void
.end method


# virtual methods
.method public doRender(Lcom/ardor3d/renderer/Renderer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_spatials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/ardor3d/renderer/pass/Pass;->_spatials:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/scenegraph/Spatial;

    .line 3
    invoke-interface {p1, v2}, Lcom/ardor3d/renderer/Renderer;->draw(Lcom/ardor3d/scenegraph/Spatial;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lcom/ardor3d/renderer/Renderer;->renderBuckets()V

    return-void
.end method

.method public doRender(Lcom/ardor3d/renderer/TextureRenderer;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/renderer/TextureRenderer;",
            "I",
            "Ljava/util/List<",
            "Lcom/ardor3d/image/Texture;",
            ">;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_spatials:Ljava/util/List;

    invoke-interface {p1, v0, p3, p2}, Lcom/ardor3d/renderer/TextureRenderer;->render(Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method
