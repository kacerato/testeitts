.class public abstract Lcom/ardor3d/intersection/PickingUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findCollisions(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/intersection/CollisionResults;)V
    .locals 3

    if-eq p0, p1, :cond_3

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/scenegraph/hint/PickingHint;->Collidable:Lcom/ardor3d/scenegraph/hint/PickingHint;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->isPickingHintEnabled(Lcom/ardor3d/scenegraph/hint/PickingHint;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->isPickingHintEnabled(Lcom/ardor3d/scenegraph/hint/PickingHint;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p0, Lcom/ardor3d/scenegraph/Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/bounding/BoundingVolume;->intersects(Lcom/ardor3d/bounding/BoundingVolume;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/ardor3d/scenegraph/Node;->getChild(I)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/ardor3d/intersection/PickingUtil;->findCollisions(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/intersection/CollisionResults;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/ardor3d/scenegraph/Mesh;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/bounding/BoundingVolume;->intersects(Lcom/ardor3d/bounding/BoundingVolume;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/ardor3d/scenegraph/Node;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/ardor3d/scenegraph/Node;

    :goto_1
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Lcom/ardor3d/scenegraph/Node;->getChild(I)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/ardor3d/intersection/PickingUtil;->findCollisions(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/intersection/CollisionResults;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    check-cast p1, Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {p2, p0, p1}, Lcom/ardor3d/intersection/CollisionResults;->addCollision(Lcom/ardor3d/scenegraph/Mesh;Lcom/ardor3d/scenegraph/Mesh;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static findPick(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/math/Ray3;Lcom/ardor3d/intersection/PickResults;)V
    .locals 2

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/scenegraph/hint/PickingHint;->Pickable:Lcom/ardor3d/scenegraph/hint/PickingHint;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->isPickingHintEnabled(Lcom/ardor3d/scenegraph/hint/PickingHint;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lcom/ardor3d/intersection/Pickable;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/ardor3d/intersection/Pickable;

    invoke-virtual {p2, p1, p0}, Lcom/ardor3d/intersection/PickResults;->addPick(Lcom/ardor3d/math/Ray3;Lcom/ardor3d/intersection/Pickable;)V

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lcom/ardor3d/scenegraph/Node;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ardor3d/bounding/BoundingVolume;->intersects(Lcom/ardor3d/math/type/ReadOnlyRay3;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Node;->getChild(I)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/ardor3d/intersection/PickingUtil;->findPick(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/math/Ray3;Lcom/ardor3d/intersection/PickResults;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static findPrimitiveCollision(Lcom/ardor3d/scenegraph/Mesh;Lcom/ardor3d/scenegraph/Mesh;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/scenegraph/Mesh;",
            "Lcom/ardor3d/scenegraph/Mesh;",
            "Ljava/util/List<",
            "Lcom/ardor3d/intersection/PrimitiveKey;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ardor3d/intersection/PrimitiveKey;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/scenegraph/hint/PickingHint;->Collidable:Lcom/ardor3d/scenegraph/hint/PickingHint;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->isPickingHintEnabled(Lcom/ardor3d/scenegraph/hint/PickingHint;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->isPickingHintEnabled(Lcom/ardor3d/scenegraph/hint/PickingHint;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ardor3d/bounding/CollisionTreeManager;->getInstance()Lcom/ardor3d/bounding/CollisionTreeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ardor3d/bounding/CollisionTreeManager;->getCollisionTree(Lcom/ardor3d/scenegraph/Mesh;)Lcom/ardor3d/bounding/CollisionTree;

    move-result-object v0

    invoke-static {}, Lcom/ardor3d/bounding/CollisionTreeManager;->getInstance()Lcom/ardor3d/bounding/CollisionTreeManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ardor3d/bounding/CollisionTreeManager;->getCollisionTree(Lcom/ardor3d/scenegraph/Mesh;)Lcom/ardor3d/bounding/CollisionTree;

    move-result-object p1

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/ardor3d/bounding/CollisionTree;->getBounds()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldTransform()Lcom/ardor3d/math/type/ReadOnlyTransform;

    move-result-object p0

    invoke-virtual {v0}, Lcom/ardor3d/bounding/CollisionTree;->getWorldBounds()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/ardor3d/bounding/BoundingVolume;->transform(Lcom/ardor3d/math/type/ReadOnlyTransform;Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ardor3d/bounding/CollisionTree;->intersect(Lcom/ardor3d/bounding/CollisionTree;Ljava/util/List;Ljava/util/List;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static hasCollision(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/Spatial;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-eq p0, p1, :cond_8

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v1

    sget-object v2, Lcom/ardor3d/scenegraph/hint/PickingHint;->Collidable:Lcom/ardor3d/scenegraph/hint/PickingHint;

    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->isPickingHintEnabled(Lcom/ardor3d/scenegraph/hint/PickingHint;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->isPickingHintEnabled(Lcom/ardor3d/scenegraph/hint/PickingHint;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v1, p0, Lcom/ardor3d/scenegraph/Node;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    check-cast p0, Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ardor3d/bounding/BoundingVolume;->intersects(Lcom/ardor3d/bounding/BoundingVolume;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v1

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    return v2

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v3

    if-ge v1, v3, :cond_8

    invoke-virtual {p0, v1}, Lcom/ardor3d/scenegraph/Node;->getChild(I)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/ardor3d/intersection/PickingUtil;->hasCollision(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/Spatial;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    instance-of v1, p0, Lcom/ardor3d/scenegraph/Mesh;

    if-eqz v1, :cond_8

    check-cast p0, Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ardor3d/bounding/BoundingVolume;->intersects(Lcom/ardor3d/bounding/BoundingVolume;)Z

    move-result v1

    if-eqz v1, :cond_8

    instance-of v1, p1, Lcom/ardor3d/scenegraph/Node;

    if-eqz v1, :cond_6

    check-cast p1, Lcom/ardor3d/scenegraph/Node;

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v3

    if-ge v1, v3, :cond_5

    invoke-virtual {p1, v1}, Lcom/ardor3d/scenegraph/Node;->getChild(I)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/ardor3d/intersection/PickingUtil;->hasCollision(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/Spatial;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return v0

    :cond_6
    if-nez p2, :cond_7

    return v2

    :cond_7
    check-cast p1, Lcom/ardor3d/scenegraph/Mesh;

    invoke-static {p0, p1}, Lcom/ardor3d/intersection/PickingUtil;->hasPrimitiveCollision(Lcom/ardor3d/scenegraph/Mesh;Lcom/ardor3d/scenegraph/Mesh;)Z

    move-result p0

    return p0

    :cond_8
    :goto_2
    return v0
.end method

.method public static hasPrimitiveCollision(Lcom/ardor3d/scenegraph/Mesh;Lcom/ardor3d/scenegraph/Mesh;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/scenegraph/hint/PickingHint;->Collidable:Lcom/ardor3d/scenegraph/hint/PickingHint;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->isPickingHintEnabled(Lcom/ardor3d/scenegraph/hint/PickingHint;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->isPickingHintEnabled(Lcom/ardor3d/scenegraph/hint/PickingHint;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ardor3d/bounding/CollisionTreeManager;->getInstance()Lcom/ardor3d/bounding/CollisionTreeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ardor3d/bounding/CollisionTreeManager;->getCollisionTree(Lcom/ardor3d/scenegraph/Mesh;)Lcom/ardor3d/bounding/CollisionTree;

    move-result-object v0

    invoke-static {}, Lcom/ardor3d/bounding/CollisionTreeManager;->getInstance()Lcom/ardor3d/bounding/CollisionTreeManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ardor3d/bounding/CollisionTreeManager;->getCollisionTree(Lcom/ardor3d/scenegraph/Mesh;)Lcom/ardor3d/bounding/CollisionTree;

    move-result-object p1

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldTransform()Lcom/ardor3d/math/type/ReadOnlyTransform;

    move-result-object p0

    invoke-virtual {v0}, Lcom/ardor3d/bounding/CollisionTree;->getBounds()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ardor3d/bounding/CollisionTree;->getWorldBounds()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/ardor3d/bounding/BoundingVolume;->transform(Lcom/ardor3d/math/type/ReadOnlyTransform;Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    invoke-virtual {v0, p1}, Lcom/ardor3d/bounding/CollisionTree;->intersect(Lcom/ardor3d/bounding/CollisionTree;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v2
.end method
