.class public Lcom/ardor3d/renderer/pass/BasicPassManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected _passes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/renderer/pass/Pass;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/pass/BasicPassManager;->_passes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/ardor3d/renderer/pass/Pass;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/BasicPassManager;->_passes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public cleanUp()V
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/BasicPassManager;->_passes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/ardor3d/renderer/pass/BasicPassManager;->_passes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/renderer/pass/Pass;

    invoke-virtual {v2}, Lcom/ardor3d/renderer/pass/Pass;->cleanUp()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearAll()V
    .locals 1

    invoke-virtual {p0}, Lcom/ardor3d/renderer/pass/BasicPassManager;->cleanUp()V

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/BasicPassManager;->_passes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public contains(Lcom/ardor3d/renderer/pass/Pass;)Z
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/BasicPassManager;->_passes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Lcom/ardor3d/renderer/pass/Pass;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/BasicPassManager;->_passes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/pass/Pass;

    return-object p1
.end method

.method public insert(Lcom/ardor3d/renderer/pass/Pass;I)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/BasicPassManager;->_passes:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public passes()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/BasicPassManager;->_passes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public remove(Lcom/ardor3d/renderer/pass/Pass;)Z
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/BasicPassManager;->_passes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public renderPasses(Lcom/ardor3d/renderer/Renderer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ardor3d/renderer/pass/BasicPassManager;->_passes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/ardor3d/renderer/pass/BasicPassManager;->_passes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/renderer/pass/Pass;

    .line 3
    invoke-virtual {v2, p1}, Lcom/ardor3d/renderer/pass/Pass;->renderPass(Lcom/ardor3d/renderer/Renderer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public renderPasses(Lcom/ardor3d/renderer/TextureRenderer;ILjava/util/List;)V
    .locals 3
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

    .line 4
    iget-object v0, p0, Lcom/ardor3d/renderer/pass/BasicPassManager;->_passes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    iget-object v2, p0, Lcom/ardor3d/renderer/pass/BasicPassManager;->_passes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/renderer/pass/Pass;

    .line 6
    invoke-virtual {v2, p1, p2, p3}, Lcom/ardor3d/renderer/pass/Pass;->renderPass(Lcom/ardor3d/renderer/TextureRenderer;ILjava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updatePasses(D)V
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/BasicPassManager;->_passes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/ardor3d/renderer/pass/BasicPassManager;->_passes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/renderer/pass/Pass;

    invoke-virtual {v2, p1, p2}, Lcom/ardor3d/renderer/pass/Pass;->updatePass(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
