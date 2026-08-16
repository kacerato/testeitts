.class public Lcom/ardor3d/intersection/PrimitiveCollisionResults;
.super Lcom/ardor3d/intersection/CollisionResults;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ardor3d/intersection/CollisionResults;-><init>()V

    return-void
.end method


# virtual methods
.method public addCollision(Lcom/ardor3d/scenegraph/Mesh;Lcom/ardor3d/scenegraph/Mesh;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2, v0, v1}, Lcom/ardor3d/intersection/PickingUtil;->findPrimitiveCollision(Lcom/ardor3d/scenegraph/Mesh;Lcom/ardor3d/scenegraph/Mesh;Ljava/util/List;Ljava/util/List;)V

    new-instance v2, Lcom/ardor3d/intersection/CollisionData;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/ardor3d/intersection/CollisionData;-><init>(Lcom/ardor3d/scenegraph/Mesh;Lcom/ardor3d/scenegraph/Mesh;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/ardor3d/intersection/CollisionResults;->addCollisionData(Lcom/ardor3d/intersection/CollisionData;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcom/ardor3d/intersection/CollisionData;

    invoke-direct {v0, p1, p2}, Lcom/ardor3d/intersection/CollisionData;-><init>(Lcom/ardor3d/scenegraph/Mesh;Lcom/ardor3d/scenegraph/Mesh;)V

    invoke-virtual {p0, v0}, Lcom/ardor3d/intersection/CollisionResults;->addCollisionData(Lcom/ardor3d/intersection/CollisionData;)V

    :goto_1
    return-void
.end method

.method public processCollisions()V
    .locals 0

    return-void
.end method
