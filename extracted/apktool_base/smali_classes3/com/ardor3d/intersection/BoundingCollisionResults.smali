.class public Lcom/ardor3d/intersection/BoundingCollisionResults;
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
    .locals 1

    new-instance v0, Lcom/ardor3d/intersection/CollisionData;

    invoke-direct {v0, p1, p2}, Lcom/ardor3d/intersection/CollisionData;-><init>(Lcom/ardor3d/scenegraph/Mesh;Lcom/ardor3d/scenegraph/Mesh;)V

    invoke-virtual {p0, v0}, Lcom/ardor3d/intersection/CollisionResults;->addCollisionData(Lcom/ardor3d/intersection/CollisionData;)V

    return-void
.end method

.method public processCollisions()V
    .locals 0

    return-void
.end method
