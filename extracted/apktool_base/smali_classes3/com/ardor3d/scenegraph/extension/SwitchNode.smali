.class public Lcom/ardor3d/scenegraph/extension/SwitchNode;
.super Lcom/ardor3d/scenegraph/Node;
.source "SourceFile"


# instance fields
.field protected _childMask:Ljava/util/BitSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "SwitchNode"

    invoke-direct {p0, v0}, Lcom/ardor3d/scenegraph/extension/SwitchNode;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Node;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/ardor3d/renderer/Renderer;)V
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/scenegraph/Spatial;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/ardor3d/scenegraph/Spatial;->onDraw(Lcom/ardor3d/renderer/Renderer;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public flipAllVisible()V
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->flip(II)V

    return-void
.end method

.method public flipVisible(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->flip(I)V

    return-void
.end method

.method public flipVisible(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    invoke-virtual {v0, p1, p2}, Ljava/util/BitSet;->flip(II)V

    return-void
.end method

.method public getNextNonVisible(I)I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result p1

    return p1
.end method

.method public getNextVisible(I)I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p1

    return p1
.end method

.method public getVisible()Ljava/util/BitSet;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    return-object v0
.end method

.method public getVisible(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method

.method public setAllNonVisible()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    return-void
.end method

.method public setAllVisible()V
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    return-void
.end method

.method public setSingleVisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public setVisible(IIZ)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/BitSet;->set(IIZ)V

    return-void
.end method

.method public setVisible(IZ)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    invoke-virtual {v0, p1, p2}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public setVisible(Ljava/util/BitSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    return-void
.end method

.method public shiftVisibleLeft()V
    .locals 6

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    invoke-virtual {v3, v2, v5}, Ljava/util/BitSet;->set(IZ)V

    move v2, v4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public shiftVisibleRight()V
    .locals 4

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    :goto_0
    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public updateChildren(D)V
    .locals 4

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/ardor3d/scenegraph/extension/SwitchNode;->_childMask:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ardor3d/scenegraph/Spatial;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1, p2, v1}, Lcom/ardor3d/scenegraph/Spatial;->updateGeometricState(DZ)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
