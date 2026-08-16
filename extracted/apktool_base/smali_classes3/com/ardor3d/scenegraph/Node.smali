.class public Lcom/ardor3d/scenegraph/Node;
.super Lcom/ardor3d/scenegraph/Spatial;
.source "SourceFile"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected final _children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/scenegraph/Spatial;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/scenegraph/Node;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Spatial;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/scenegraph/Node;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ardor3d/scenegraph/Spatial;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;-><init>(Ljava/lang/String;)V

    .line 5
    iput-object p2, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/ardor3d/scenegraph/visitor/Visitor;Z)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-interface {p1, p0}, Lcom/ardor3d/scenegraph/visitor/Visitor;->visit(Lcom/ardor3d/scenegraph/Spatial;)V

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/scenegraph/Spatial;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/ardor3d/scenegraph/Spatial;->acceptVisitor(Lcom/ardor3d/scenegraph/visitor/Visitor;Z)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    invoke-interface {p1, p0}, Lcom/ardor3d/scenegraph/visitor/Visitor;->visit(Lcom/ardor3d/scenegraph/Spatial;)V

    :cond_3
    return-void
.end method

.method public attachChild(Lcom/ardor3d/scenegraph/Spatial;)I
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getParent()Lcom/ardor3d/scenegraph/Node;

    move-result-object v0

    if-eq v0, p0, :cond_1

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getParent()Lcom/ardor3d/scenegraph/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getParent()Lcom/ardor3d/scenegraph/Node;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ardor3d/scenegraph/Node;->detachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    :cond_0
    invoke-virtual {p1, p0}, Lcom/ardor3d/scenegraph/Spatial;->setParent(Lcom/ardor3d/scenegraph/Node;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ardor3d/scenegraph/event/DirtyType;->Attached:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-virtual {p1, v0}, Lcom/ardor3d/scenegraph/Spatial;->markDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)V

    sget-object v0, Lcom/ardor3d/scenegraph/Node;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") attached to this"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " node ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public attachChildAt(Lcom/ardor3d/scenegraph/Spatial;I)I
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getParent()Lcom/ardor3d/scenegraph/Node;

    move-result-object v0

    if-eq v0, p0, :cond_1

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getParent()Lcom/ardor3d/scenegraph/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getParent()Lcom/ardor3d/scenegraph/Node;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ardor3d/scenegraph/Node;->detachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    :cond_0
    invoke-virtual {p1, p0}, Lcom/ardor3d/scenegraph/Spatial;->setParent(Lcom/ardor3d/scenegraph/Node;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object p2, Lcom/ardor3d/scenegraph/event/DirtyType;->Attached:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/Spatial;->markDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)V

    sget-object p2, Lcom/ardor3d/scenegraph/Node;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") attached to this"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " node ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public detachAllChildren()V
    .locals 2

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Node;->detachChildAt(I)Lcom/ardor3d/scenegraph/Spatial;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ardor3d/scenegraph/Node;->logger:Ljava/util/logging/Logger;

    const-string v1, "All children removed."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method public detachChild(Lcom/ardor3d/scenegraph/Spatial;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getParent()Lcom/ardor3d/scenegraph/Node;

    move-result-object v1

    if-ne v1, p0, :cond_2

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Node;->detachChildAt(I)Lcom/ardor3d/scenegraph/Spatial;

    :cond_1
    return p1

    :cond_2
    return v0
.end method

.method public detachChildAt(I)Lcom/ardor3d/scenegraph/Spatial;
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/scenegraph/Spatial;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ardor3d/scenegraph/Spatial;->setParent(Lcom/ardor3d/scenegraph/Node;)V

    sget-object v1, Lcom/ardor3d/scenegraph/event/DirtyType;->Detached:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-virtual {p0, p1, v1}, Lcom/ardor3d/scenegraph/Spatial;->markDirty(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/event/DirtyType;)V

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getListener()Lcom/ardor3d/scenegraph/event/DirtyEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/ardor3d/scenegraph/Spatial;->setListener(Lcom/ardor3d/scenegraph/event/DirtyEventListener;)V

    :cond_0
    sget-object v0, Lcom/ardor3d/scenegraph/Node;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Child removed."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public detachChildNamed(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/scenegraph/Spatial;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/Spatial;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/ardor3d/scenegraph/Node;->detachChildAt(I)Lcom/ardor3d/scenegraph/Spatial;

    return v1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public draw(Lcom/ardor3d/renderer/Renderer;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getCurrentRenderDelegate()Lcom/ardor3d/util/scenegraph/RenderDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/scenegraph/Spatial;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/ardor3d/scenegraph/Spatial;->onDraw(Lcom/ardor3d/renderer/Renderer;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/ardor3d/renderer/Renderer;->isProcessingQueue()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, p0}, Lcom/ardor3d/renderer/Renderer;->checkAndAdd(Lcom/ardor3d/scenegraph/Spatial;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-interface {v0, p0, p1}, Lcom/ardor3d/util/scenegraph/RenderDelegate;->render(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/Renderer;)V

    :cond_3
    return-void
.end method

.method public getChild(I)Lcom/ardor3d/scenegraph/Spatial;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/scenegraph/Spatial;

    return-object p1
.end method

.method public getChild(Ljava/lang/String;)Lcom/ardor3d/scenegraph/Spatial;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 3
    iget-object v2, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/scenegraph/Spatial;

    .line 4
    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/Spatial;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 5
    :cond_1
    instance-of v3, v2, Lcom/ardor3d/scenegraph/Node;

    if-eqz v3, :cond_2

    .line 6
    check-cast v2, Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {v2, p1}, Lcom/ardor3d/scenegraph/Node;->getChild(Ljava/lang/String;)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getChildIndex(Lcom/ardor3d/scenegraph/Spatial;)I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ardor3d/scenegraph/Spatial;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    return-object v0
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/scenegraph/Node;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfChildren()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasChild(Lcom/ardor3d/scenegraph/Spatial;)Z
    .locals 4

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/scenegraph/Spatial;

    instance-of v3, v2, Lcom/ardor3d/scenegraph/Node;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {v2, p1}, Lcom/ardor3d/scenegraph/Node;->hasChild(Lcom/ardor3d/scenegraph/Spatial;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public makeCopy(Z)Lcom/ardor3d/scenegraph/Node;
    .locals 3

    .line 2
    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->makeCopy(Z)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/Node;

    .line 3
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/scenegraph/Spatial;

    .line 4
    invoke-virtual {v2, p1}, Lcom/ardor3d/scenegraph/Spatial;->makeCopy(Z)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/Node;->attachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic makeCopy(Z)Lcom/ardor3d/scenegraph/Spatial;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Node;->makeCopy(Z)Lcom/ardor3d/scenegraph/Node;

    move-result-object p1

    return-object p1
.end method

.method public varargs propagateDirtyDown([Lcom/ardor3d/scenegraph/event/DirtyType;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->propagateDirtyDown([Lcom/ardor3d/scenegraph/event/DirtyType;)V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/scenegraph/Spatial;

    invoke-virtual {v1, p1}, Lcom/ardor3d/scenegraph/Spatial;->propagateDirtyDown([Lcom/ardor3d/scenegraph/event/DirtyType;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "children"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavableList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/Spatial;

    iput-object p0, v0, Lcom/ardor3d/scenegraph/Spatial;->_parent:Lcom/ardor3d/scenegraph/Node;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sortLights()V
    .locals 2

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Node;->getChild(I)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/Spatial;->sortLights()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public swapChildren(II)V
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/Spatial;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/scenegraph/Spatial;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public updateChildren(D)V
    .locals 3

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Node;->getChild(I)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/ardor3d/scenegraph/Spatial;->updateGeometricState(DZ)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateWorldBound(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_4

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ardor3d/scenegraph/Spatial;

    if-eqz v3, :cond_3

    if-eqz p1, :cond_0

    invoke-virtual {v3, v1}, Lcom/ardor3d/scenegraph/Spatial;->updateWorldBound(Z)V

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ardor3d/bounding/BoundingVolume;->mergeLocal(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    invoke-virtual {v2}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v4

    invoke-static {v4}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/ardor3d/util/Ardor3dException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorldBound center is invalid after merge between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ardor3d/util/Ardor3dException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v2

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldBound:Lcom/ardor3d/bounding/BoundingVolume;

    invoke-virtual {v2, v3}, Lcom/ardor3d/bounding/BoundingVolume;->clone(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v2

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    iput-object v2, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldBound:Lcom/ardor3d/bounding/BoundingVolume;

    sget-object p1, Lcom/ardor3d/scenegraph/event/DirtyType;->Bounding:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->clearDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)V

    return-void
.end method

.method public updateWorldRenderStates(ZLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Lcom/ardor3d/renderer/state/RenderState$StateType;",
            "Ljava/util/Stack<",
            "Lcom/ardor3d/renderer/state/RenderState;",
            ">;>;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/ardor3d/scenegraph/Spatial;->updateWorldRenderStates(ZLjava/util/Map;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_0
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/scenegraph/Spatial;

    invoke-virtual {v1, v0, p2}, Lcom/ardor3d/scenegraph/Spatial;->updateWorldRenderStates(ZLjava/util/Map;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateWorldTransform(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->updateWorldTransform(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_0
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/scenegraph/Spatial;

    invoke-virtual {v1, v0}, Lcom/ardor3d/scenegraph/Spatial;->updateWorldTransform(Z)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "children"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->writeSavableList(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
