.class public Lcom/ardor3d/scenegraph/extension/PassNode;
.super Lcom/ardor3d/scenegraph/Node;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _passNodeStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/scenegraph/extension/PassNodeState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Node;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/extension/PassNode;->_passNodeStates:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Node;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/PassNode;->_passNodeStates:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPass(Lcom/ardor3d/scenegraph/extension/PassNodeState;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/PassNode;->_passNodeStates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAll()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/PassNode;->_passNodeStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public containsPass(Lcom/ardor3d/scenegraph/extension/PassNodeState;)Z
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/PassNode;->_passNodeStates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public draw(Lcom/ardor3d/renderer/Renderer;)V
    .locals 5

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v0

    invoke-interface {p1}, Lcom/ardor3d/renderer/Renderer;->getQueue()Lcom/ardor3d/renderer/queue/RenderQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/renderer/queue/RenderQueue;->pushBuckets()V

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/PassNode;->_passNodeStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/scenegraph/extension/PassNodeState;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/extension/PassNodeState;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Lcom/ardor3d/scenegraph/extension/PassNodeState;->applyPassNodeStates(Lcom/ardor3d/renderer/RenderContext;)V

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ardor3d/scenegraph/Spatial;

    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Lcom/ardor3d/scenegraph/Spatial;->onDraw(Lcom/ardor3d/renderer/Renderer;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/ardor3d/renderer/Renderer;->renderBuckets()V

    invoke-virtual {v0}, Lcom/ardor3d/renderer/RenderContext;->popEnforcedStates()V

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Lcom/ardor3d/renderer/Renderer;->getQueue()Lcom/ardor3d/renderer/queue/RenderQueue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/renderer/queue/RenderQueue;->popBuckets()V

    return-void
.end method

.method public getPass(I)Lcom/ardor3d/scenegraph/extension/PassNodeState;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/PassNode;->_passNodeStates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/scenegraph/extension/PassNodeState;

    return-object p1
.end method

.method public insertPass(Lcom/ardor3d/scenegraph/extension/PassNodeState;I)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/PassNode;->_passNodeStates:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public nrPasses()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/PassNode;->_passNodeStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Node;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "passNodeStates"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavableList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/PassNode;->_passNodeStates:Ljava/util/List;

    return-void
.end method

.method public removePass(Lcom/ardor3d/scenegraph/extension/PassNodeState;)Z
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/PassNode;->_passNodeStates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Node;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/PassNode;->_passNodeStates:Ljava/util/List;

    const-string v1, "passNodeStates"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->writeSavableList(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
