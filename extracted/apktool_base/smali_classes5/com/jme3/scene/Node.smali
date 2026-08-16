.class public Lcom/jme3/scene/Node;
.super Lcom/jme3/scene/Spatial;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected children:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/scene/Spatial;",
            ">;"
        }
    .end annotation
.end field

.field private updateList:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/scene/Spatial;",
            ">;"
        }
    .end annotation
.end field

.field private updateListValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/Node;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lcom/jme3/scene/Spatial;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/jme3/util/SafeArrayList;

    const-class v0, Lcom/jme3/scene/Spatial;

    invoke-direct {p1, v0}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/jme3/scene/Node;->updateList:Lcom/jme3/util/SafeArrayList;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/jme3/scene/Node;->updateListValid:Z

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/jme3/scene/Node;

    if-eq v1, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setRequiresUpdates(Z)V

    return-void
.end method

.method private addUpdateChildren(Lcom/jme3/util/SafeArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/scene/Spatial;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/jme3/scene/Spatial;->requiresUpdates()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    instance-of v4, v3, Lcom/jme3/scene/Node;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/jme3/scene/Node;

    invoke-direct {v3, p1}, Lcom/jme3/scene/Node;->addUpdateChildren(Lcom/jme3/util/SafeArrayList;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private findGlobalLights(Lcom/jme3/scene/Spatial;Lcom/jme3/light/LightList;)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getLocalLightList()Lcom/jme3/light/LightList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/light/LightList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/light/Light;

    invoke-virtual {v1}, Lcom/jme3/light/Light;->isGlobal()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Lcom/jme3/light/LightList;->add(Lcom/jme3/light/Light;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    iget v2, v1, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    invoke-direct {p0, v1, p2}, Lcom/jme3/scene/Node;->findGlobalLights(Lcom/jme3/scene/Spatial;Lcom/jme3/light/LightList;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private getUpdateList()Lcom/jme3/util/SafeArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/scene/Spatial;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/jme3/scene/Node;->updateListValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/scene/Node;->updateList:Lcom/jme3/util/SafeArrayList;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Node;->updateList:Lcom/jme3/util/SafeArrayList;

    if-nez v0, :cond_1

    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/scene/Spatial;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/scene/Node;->updateList:Lcom/jme3/util/SafeArrayList;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/jme3/scene/Node;->updateList:Lcom/jme3/util/SafeArrayList;

    invoke-direct {p0, v0}, Lcom/jme3/scene/Node;->addUpdateChildren(Lcom/jme3/util/SafeArrayList;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/scene/Node;->updateListValid:Z

    iget-object v0, p0, Lcom/jme3/scene/Node;->updateList:Lcom/jme3/util/SafeArrayList;

    return-object v0
.end method


# virtual methods
.method public attachChild(Lcom/jme3/scene/Spatial;)I
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/jme3/scene/Node;->attachChildAt(Lcom/jme3/scene/Spatial;I)I

    move-result p1

    return p1
.end method

.method public attachChildAt(Lcom/jme3/scene/Spatial;I)I
    .locals 2

    if-eqz p1, :cond_4

    if-eq p1, p0, :cond_3

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    if-eq v0, p0, :cond_2

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    :cond_0
    invoke-virtual {p1, p0}, Lcom/jme3/scene/Spatial;->setParent(Lcom/jme3/scene/Node;)V

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p2, p1}, Lcom/jme3/util/SafeArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->setLightListRefresh()V

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->setMatParamOverrideRefresh()V

    sget-object p2, Lcom/jme3/scene/Node;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Child ({0}) attached to this node ({1})"

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/scene/Node;->invalidateUpdateList()V

    :cond_2
    iget-object p1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result p1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add child to itself"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "child cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public breadthFirstTraversal(Lcom/jme3/scene/SceneGraphVisitor;Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/SceneGraphVisitor;",
            "Ljava/util/Queue<",
            "Lcom/jme3/scene/Spatial;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-interface {p2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clone(Z)Lcom/jme3/scene/Node;
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lcom/jme3/scene/Spatial;->clone(Z)Lcom/jme3/scene/Spatial;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Node;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Lcom/jme3/scene/Node;->updateList:Lcom/jme3/util/SafeArrayList;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/jme3/scene/Node;->updateListValid:Z

    return-object p1
.end method

.method public bridge synthetic clone(Z)Lcom/jme3/scene/Spatial;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/jme3/scene/Node;->clone(Z)Lcom/jme3/scene/Node;

    move-result-object p1

    return-object p1
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/Spatial;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/util/SafeArrayList;

    iput-object p2, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    iget-object p2, p0, Lcom/jme3/scene/Node;->updateList:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/util/SafeArrayList;

    iput-object p1, p0, Lcom/jme3/scene/Node;->updateList:Lcom/jme3/util/SafeArrayList;

    return-void
.end method

.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I
    .locals 5

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-interface {v4, p1, p2}, Lcom/jme3/collision/Collidable;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public deepClone()Lcom/jme3/scene/Spatial;
    .locals 2

    invoke-super {p0}, Lcom/jme3/scene/Spatial;->deepClone()Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jme3/scene/Node;->updateList:Lcom/jme3/util/SafeArrayList;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jme3/scene/Node;->updateListValid:Z

    return-object v0
.end method

.method public depthFirstTraversal(Lcom/jme3/scene/SceneGraphVisitor;Lcom/jme3/scene/Spatial$DFSMode;)V
    .locals 4

    sget-object v0, Lcom/jme3/scene/Spatial$DFSMode;->POST_ORDER:Lcom/jme3/scene/Spatial$DFSMode;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2}, Lcom/jme3/scene/Spatial;->depthFirstTraversal(Lcom/jme3/scene/SceneGraphVisitor;Lcom/jme3/scene/Spatial$DFSMode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lcom/jme3/scene/SceneGraphVisitor;->visit(Lcom/jme3/scene/Spatial;)V

    goto :goto_2

    :cond_1
    invoke-interface {p1, p0}, Lcom/jme3/scene/SceneGraphVisitor;->visit(Lcom/jme3/scene/Spatial;)V

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2}, Lcom/jme3/scene/Spatial;->depthFirstTraversal(Lcom/jme3/scene/SceneGraphVisitor;Lcom/jme3/scene/Spatial$DFSMode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public descendantMatches(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/jme3/scene/Spatial;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/jme3/scene/Node;->descendantMatches(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public descendantMatches(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/jme3/scene/Spatial;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getQuantity()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Spatial;

    .line 4
    invoke-virtual {v2, p1, p2}, Lcom/jme3/scene/Spatial;->matches(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_2
    instance-of v3, v2, Lcom/jme3/scene/Node;

    if-eqz v3, :cond_1

    .line 7
    check-cast v2, Lcom/jme3/scene/Node;

    invoke-virtual {v2, p1, p2}, Lcom/jme3/scene/Node;->descendantMatches(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public descendantMatches(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/jme3/scene/Spatial;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/jme3/scene/Node;->descendantMatches(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public detachAllChildren()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Node;->detachChildAt(I)Lcom/jme3/scene/Spatial;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/jme3/scene/Node;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "{0}: All children removed."

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public detachChild(Lcom/jme3/scene/Spatial;)I
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    const/4 v1, -0x1

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Node;->detachChildAt(I)Lcom/jme3/scene/Spatial;

    :cond_0
    return p1

    :cond_1
    return v1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "child cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public detachChildAt(I)Lcom/jme3/scene/Spatial;
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setParent(Lcom/jme3/scene/Node;)V

    sget-object v0, Lcom/jme3/scene/Node;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "{0}: Child removed."

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setBoundRefresh()V

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->setLightListRefresh()V

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->setMatParamOverrideRefresh()V

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->invalidateUpdateList()V

    :cond_0
    return-object p1
.end method

.method public detachChildNamed(Ljava/lang/String;)I
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2, v1}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Spatial;

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Node;->detachChildAt(I)Lcom/jme3/scene/Spatial;

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "childName cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getChild(I)Lcom/jme3/scene/Spatial;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    return-object p1
.end method

.method public getChild(Ljava/lang/String;)Lcom/jme3/scene/Spatial;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/jme3/scene/Spatial;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 3
    invoke-virtual {v4}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    .line 4
    :cond_1
    instance-of v5, v4, Lcom/jme3/scene/Node;

    if-eqz v5, :cond_2

    .line 5
    check-cast v4, Lcom/jme3/scene/Node;

    invoke-virtual {v4, p1}, Lcom/jme3/scene/Node;->getChild(Ljava/lang/String;)Lcom/jme3/scene/Spatial;

    move-result-object v4

    if-eqz v4, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getChildIndex(Lcom/jme3/scene/Spatial;)I
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Spatial;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTriangleCount()I
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2, v1}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Spatial;

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getTriangleCount()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public getVertexCount()I
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2, v1}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Spatial;

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getVertexCount()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public hasChild(Lcom/jme3/scene/Spatial;)Z
    .locals 7

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    instance-of v6, v5, Lcom/jme3/scene/Node;

    if-eqz v6, :cond_1

    check-cast v5, Lcom/jme3/scene/Node;

    invoke-virtual {v5, p1}, Lcom/jme3/scene/Node;->hasChild(Lcom/jme3/scene/Spatial;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public invalidateUpdateList()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/scene/Node;->updateListValid:Z

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/scene/Node;->invalidateUpdateList()V

    :cond_0
    return-void
.end method

.method public oldDeepClone()Lcom/jme3/scene/Spatial;
    .locals 4

    invoke-super {p0}, Lcom/jme3/scene/Spatial;->clone()Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    new-instance v1, Lcom/jme3/util/SafeArrayList;

    const-class v2, Lcom/jme3/scene/Spatial;

    invoke-direct {v1, v2}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v1, v0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Spatial;

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->deepClone()Lcom/jme3/scene/Spatial;

    move-result-object v2

    iput-object v0, v2, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    iget-object v3, v0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v3, v2}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/jme3/util/SafeArrayList;

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v1

    const-string v2, "children"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    const-class v2, Lcom/jme3/scene/Spatial;

    invoke-direct {v0, v2, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iput-object p0, v3, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/jme3/scene/Spatial;->read(Lcom/jme3/export/JmeImporter;)V

    return-void
.end method

.method public setLightListRefresh()V
    .locals 7

    invoke-super {p0}, Lcom/jme3/scene/Spatial;->setLightListRefresh()V

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    iget v5, v4, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_0

    if-nez v3, :cond_1

    and-int/lit8 v4, v5, 0x20

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/jme3/scene/Spatial;->setLightListRefresh()V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    :goto_2
    if-eqz v0, :cond_4

    iget v1, v0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    iget-object v0, v0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public setLodLevel(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/jme3/scene/Spatial;->setLodLevel(I)V

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/jme3/scene/Spatial;->setLodLevel(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMatParamOverrideRefresh()V
    .locals 5

    invoke-super {p0}, Lcom/jme3/scene/Spatial;->setMatParamOverrideRefresh()V

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/jme3/scene/Spatial;->setMatParamOverrideRefresh()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setMaterial(Lcom/jme3/material/Material;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    invoke-virtual {v1, p1}, Lcom/jme3/scene/Spatial;->setMaterial(Lcom/jme3/material/Material;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setModelBound(Lcom/jme3/bounding/BoundingVolume;)V
    .locals 5

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v4}, Lcom/jme3/bounding/BoundingVolume;->clone(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object v4

    :cond_0
    invoke-virtual {v3, v4}, Lcom/jme3/scene/Spatial;->setModelBound(Lcom/jme3/bounding/BoundingVolume;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setParent(Lcom/jme3/scene/Node;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/scene/Node;->updateList:Lcom/jme3/util/SafeArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/scene/Node;->updateListValid:Z

    :cond_0
    invoke-super {p0, p1}, Lcom/jme3/scene/Spatial;->setParent(Lcom/jme3/scene/Node;)V

    return-void
.end method

.method public setTransformRefresh()V
    .locals 5

    invoke-super {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public swapChildren(II)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p2}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, p1}, Lcom/jme3/util/SafeArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    iget-object v2, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2, p1, v0}, Lcom/jme3/util/SafeArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1, p2}, Lcom/jme3/util/SafeArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1, p2, v1}, Lcom/jme3/util/SafeArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public updateGeometricState()V
    .locals 6

    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->updateWorldLightList()V

    :cond_1
    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/jme3/scene/Spatial;->worldLights:Lcom/jme3/light/LightList;

    invoke-direct {p0, p0, v3}, Lcom/jme3/scene/Node;->findGlobalLights(Lcom/jme3/scene/Spatial;Lcom/jme3/light/LightList;)V

    :cond_3
    iget v3, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    :cond_4
    iget v3, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->updateWorldTransforms()V

    :cond_5
    iget v2, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->updateMatParamOverrides()V

    :cond_6
    iget v2, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    iget-object v2, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2}, Lcom/jme3/util/SafeArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/jme3/scene/Spatial;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_8

    aget-object v4, v2, v1

    if-eqz v0, :cond_7

    iget v5, v4, Lcom/jme3/scene/Spatial;->refreshFlags:I

    or-int/lit8 v5, v5, 0x24

    iput v5, v4, Lcom/jme3/scene/Spatial;->refreshFlags:I

    :cond_7
    invoke-virtual {v4}, Lcom/jme3/scene/Spatial;->updateGeometricState()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->updateWorldBound()V

    :cond_9
    return-void
.end method

.method public updateLogicalState(F)V
    .locals 4

    invoke-super {p0, p1}, Lcom/jme3/scene/Spatial;->updateLogicalState(F)V

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/jme3/scene/Node;->getUpdateList()Lcom/jme3/util/SafeArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/jme3/scene/Spatial;->updateLogicalState(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateModelBound()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/jme3/scene/Spatial;->updateModelBound()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateWorldBound()V
    .locals 6

    invoke-super {p0}, Lcom/jme3/scene/Spatial;->updateWorldBound()V

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    if-eqz v2, :cond_0

    invoke-virtual {v4}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/jme3/bounding/BoundingVolume;->mergeLocal(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v2

    iget-object v4, p0, Lcom/jme3/scene/Spatial;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    invoke-virtual {v2, v4}, Lcom/jme3/bounding/BoundingVolume;->clone(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object v2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1, v1, v1}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/math/Vector3f;FFF)V

    :cond_3
    iput-object v2, p0, Lcom/jme3/scene/Spatial;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Spatial;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "children"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
