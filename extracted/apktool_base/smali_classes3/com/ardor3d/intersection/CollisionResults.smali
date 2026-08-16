.class public abstract Lcom/ardor3d/intersection/CollisionResults;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _nodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/intersection/CollisionData;",
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

    iput-object v0, p0, Lcom/ardor3d/intersection/CollisionResults;->_nodeList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract addCollision(Lcom/ardor3d/scenegraph/Mesh;Lcom/ardor3d/scenegraph/Mesh;)V
.end method

.method public addCollisionData(Lcom/ardor3d/intersection/CollisionData;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/intersection/CollisionResults;->_nodeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/intersection/CollisionResults;->_nodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getCollisionData(I)Lcom/ardor3d/intersection/CollisionData;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/intersection/CollisionResults;->_nodeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/intersection/CollisionData;

    return-object p1
.end method

.method public getNumber()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/intersection/CollisionResults;->_nodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public abstract processCollisions()V
.end method
