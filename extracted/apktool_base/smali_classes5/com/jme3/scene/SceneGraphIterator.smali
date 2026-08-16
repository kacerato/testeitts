.class public Lcom/jme3/scene/SceneGraphIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/SceneGraphIterator$PathNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/jme3/scene/Spatial;",
        ">;",
        "Ljava/util/Iterator<",
        "Lcom/jme3/scene/Spatial;",
        ">;"
    }
.end annotation


# instance fields
.field private current:Lcom/jme3/scene/Spatial;

.field private depth:I

.field private main:Lcom/jme3/scene/Spatial;

.field private final path:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/jme3/scene/SceneGraphIterator$PathNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jme3/scene/Spatial;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/scene/SceneGraphIterator;->depth:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/SceneGraphIterator;->path:Ljava/util/LinkedList;

    instance-of v1, p1, Lcom/jme3/scene/Node;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/jme3/scene/SceneGraphIterator$PathNode;

    move-object v2, p1

    check-cast v2, Lcom/jme3/scene/Node;

    invoke-direct {v1, v2}, Lcom/jme3/scene/SceneGraphIterator$PathNode;-><init>(Lcom/jme3/scene/Node;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/jme3/scene/SceneGraphIterator;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/scene/SceneGraphIterator;->depth:I

    :cond_0
    iput-object p1, p0, Lcom/jme3/scene/SceneGraphIterator;->main:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method private trim()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/SceneGraphIterator;->path:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/scene/SceneGraphIterator;->path:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/SceneGraphIterator$PathNode;

    iget-object v0, v0, Lcom/jme3/scene/SceneGraphIterator$PathNode;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/scene/SceneGraphIterator;->path:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    iget v0, p0, Lcom/jme3/scene/SceneGraphIterator;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jme3/scene/SceneGraphIterator;->depth:I

    invoke-direct {p0}, Lcom/jme3/scene/SceneGraphIterator;->trim()V

    :cond_0
    return-void
.end method


# virtual methods
.method public current()Lcom/jme3/scene/Spatial;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/SceneGraphIterator;->current:Lcom/jme3/scene/Spatial;

    return-object v0
.end method

.method public getDepth()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/SceneGraphIterator;->path:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/scene/SceneGraphIterator;->current:Lcom/jme3/scene/Spatial;

    iget-object v1, p0, Lcom/jme3/scene/SceneGraphIterator;->path:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/SceneGraphIterator$PathNode;

    iget-object v1, v1, Lcom/jme3/scene/SceneGraphIterator$PathNode;->node:Lcom/jme3/scene/Node;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/jme3/scene/SceneGraphIterator;->depth:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/jme3/scene/SceneGraphIterator;->depth:I

    :goto_0
    return v0
.end method

.method public hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/SceneGraphIterator;->main:Lcom/jme3/scene/Spatial;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/jme3/scene/SceneGraphIterator;->trim()V

    iget-object v0, p0, Lcom/jme3/scene/SceneGraphIterator;->path:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public ignoreChildren()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/SceneGraphIterator;->current:Lcom/jme3/scene/Spatial;

    instance-of v0, v0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/scene/SceneGraphIterator;->path:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    iget v0, p0, Lcom/jme3/scene/SceneGraphIterator;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jme3/scene/SceneGraphIterator;->depth:I

    :cond_0
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/jme3/scene/Spatial;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Lcom/jme3/scene/Spatial;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/jme3/scene/SceneGraphIterator;->main:Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lcom/jme3/scene/SceneGraphIterator;->current:Lcom/jme3/scene/Spatial;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/jme3/scene/SceneGraphIterator;->main:Lcom/jme3/scene/Spatial;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/SceneGraphIterator;->path:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/SceneGraphIterator$PathNode;

    iget-object v0, v0, Lcom/jme3/scene/SceneGraphIterator$PathNode;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    iput-object v0, p0, Lcom/jme3/scene/SceneGraphIterator;->current:Lcom/jme3/scene/Spatial;

    .line 6
    instance-of v1, v0, Lcom/jme3/scene/Node;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/jme3/scene/Node;

    .line 8
    invoke-virtual {v0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/jme3/scene/SceneGraphIterator;->path:Ljava/util/LinkedList;

    new-instance v2, Lcom/jme3/scene/SceneGraphIterator$PathNode;

    invoke-direct {v2, v0}, Lcom/jme3/scene/SceneGraphIterator$PathNode;-><init>(Lcom/jme3/scene/Node;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 10
    iget v0, p0, Lcom/jme3/scene/SceneGraphIterator;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/scene/SceneGraphIterator;->depth:I

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jme3/scene/SceneGraphIterator;->current:Lcom/jme3/scene/Spatial;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/scene/SceneGraphIterator;->next()Lcom/jme3/scene/Spatial;

    move-result-object v0

    return-object v0
.end method
