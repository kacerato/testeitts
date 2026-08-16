.class public Lcom/jme3/collision/bih/BIHTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/scene/CollisionData;


# static fields
.field public static final MAX_TREE_DEPTH:I = 0x64

.field public static final MAX_TRIS_PER_NODE:I = 0x15


# instance fields
.field private transient bihSwapTmp:[F

.field private maxTrisPerNode:I

.field private mesh:Lcom/jme3/scene/Mesh;

.field private numTris:I

.field private pointData:[F

.field private root:Lcom/jme3/collision/bih/BIHNode;

.field private triIndices:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Mesh;)V
    .locals 1

    const/16 v0, 0x15

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/jme3/collision/bih/BIHTree;-><init>(Lcom/jme3/scene/Mesh;I)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Mesh;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/jme3/collision/bih/BIHTree;->mesh:Lcom/jme3/scene/Mesh;

    .line 3
    iput p2, p0, Lcom/jme3/collision/bih/BIHTree;->maxTrisPerNode:I

    const/4 v0, 0x1

    if-lt p2, v0, :cond_4

    if-eqz p1, :cond_3

    const/16 p2, 0x9

    .line 4
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/jme3/collision/bih/BIHTree;->bihSwapTmp:[F

    .line 5
    sget-object p2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, p2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getIndexBuffer()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p2

    check-cast p2, Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/jme3/scene/mesh/VirtualIndexBuffer;-><init>(ILcom/jme3/scene/Mesh$Mode;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v1

    sget-object v2, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    if-eq v1, v2, :cond_1

    .line 10
    new-instance v0, Lcom/jme3/scene/mesh/WrappedIndexBuffer;

    invoke-direct {v0, p1}, Lcom/jme3/scene/mesh/WrappedIndexBuffer;-><init>(Lcom/jme3/scene/Mesh;)V

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/jme3/collision/bih/BIHTree;->numTris:I

    .line 12
    invoke-direct {p0, p2, v0}, Lcom/jme3/collision/bih/BIHTree;->initTriList(Ljava/nio/FloatBuffer;Lcom/jme3/scene/mesh/IndexBuffer;)V

    return-void

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A mesh should at least contain a Position buffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mesh cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxTrisPerNode cannot be less than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private collideWithBoundingVolume(Lcom/jme3/bounding/BoundingVolume;Lcom/jme3/math/Matrix4f;Lcom/jme3/collision/CollisionResults;)I
    .locals 8

    instance-of v0, p1, Lcom/jme3/bounding/BoundingSphere;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/jme3/bounding/BoundingSphere;

    new-instance v1, Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v3

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v4

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/math/Vector3f;FFF)V

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/jme3/bounding/BoundingBox;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/jme3/bounding/BoundingBox;

    move-object v0, p1

    check-cast v0, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v1, v0}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/bounding/BoundingBox;)V

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Lcom/jme3/math/Matrix4f;->invert()Lcom/jme3/math/Matrix4f;

    move-result-object v0

    invoke-virtual {v4, v0, v4}, Lcom/jme3/bounding/BoundingBox;->transform(Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    iget-object v2, p0, Lcom/jme3/collision/bih/BIHTree;->root:Lcom/jme3/collision/bih/BIHNode;

    move-object v3, p1

    move-object v5, p2

    move-object v6, p0

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/jme3/collision/bih/BIHNode;->intersectWhere(Lcom/jme3/collision/Collidable;Lcom/jme3/bounding/BoundingBox;Lcom/jme3/math/Matrix4f;Lcom/jme3/collision/bih/BIHTree;Lcom/jme3/collision/CollisionResults;)I

    move-result p1

    return p1

    :cond_1
    new-instance p2, Lcom/jme3/collision/UnsupportedCollisionException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BoundingVolume:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jme3/collision/UnsupportedCollisionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private collideWithRay(Lcom/jme3/math/Ray;Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;Lcom/jme3/collision/CollisionResults;)I
    .locals 9

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v1

    :try_start_0
    iget-object v0, v1, Lcom/jme3/util/TempVars;->collisionResults:Lcom/jme3/collision/CollisionResults;

    invoke-virtual {v0}, Lcom/jme3/collision/CollisionResults;->clear()V

    invoke-interface {p3, p1, v0}, Lcom/jme3/collision/Collidable;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    invoke-virtual {v0}, Lcom/jme3/collision/CollisionResults;->size()I

    move-result v2

    const/4 v4, 0x0

    if-lez v2, :cond_4

    invoke-virtual {v0}, Lcom/jme3/collision/CollisionResults;->getClosestCollision()Lcom/jme3/collision/CollisionResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/collision/CollisionResult;->getDistance()F

    move-result v2

    invoke-virtual {v0}, Lcom/jme3/collision/CollisionResults;->getFarthestCollision()Lcom/jme3/collision/CollisionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/collision/CollisionResult;->getDistance()F

    move-result v0

    const/4 v5, 0x0

    cmpg-float v6, v0, v5

    const/high16 v7, 0x7f800000    # Float.POSITIVE_INFINITY

    if-gtz v6, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    cmpl-float v6, v2, v0

    if-nez v6, :cond_1

    move v2, v5

    :cond_1
    :goto_0
    cmpg-float v6, v2, v5

    if-gtz v6, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    invoke-virtual {p1}, Lcom/jme3/math/Ray;->getLimit()F

    move-result v2

    cmpg-float v2, v2, v7

    if-gez v2, :cond_3

    invoke-virtual {p1}, Lcom/jme3/math/Ray;->getLimit()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v2, v6, v0

    if-lez v2, :cond_3

    invoke-virtual {v1}, Lcom/jme3/util/TempVars;->release()V

    return v4

    :cond_3
    move v7, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/jme3/collision/bih/BIHTree;->root:Lcom/jme3/collision/bih/BIHNode;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/jme3/collision/bih/BIHNode;->intersectWhere(Lcom/jme3/math/Ray;Lcom/jme3/math/Matrix4f;Lcom/jme3/collision/bih/BIHTree;FFLcom/jme3/collision/CollisionResults;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lcom/jme3/util/TempVars;->release()V

    return v0

    :cond_4
    invoke-virtual {v1}, Lcom/jme3/util/TempVars;->release()V

    return v4

    :goto_3
    invoke-virtual {v1}, Lcom/jme3/util/TempVars;->release()V

    throw v0
.end method

.method private createBox(II)Lcom/jme3/bounding/BoundingBox;
    .locals 6

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    new-instance v2, Lcom/jme3/math/Vector3f;

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v2, v3, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    new-instance v3, Lcom/jme3/math/Vector3f;

    const/high16 v4, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v3, v4, v4, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget-object v3, v0, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    iget-object v4, v0, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    iget-object v5, v0, Lcom/jme3/util/TempVars;->vect5:Lcom/jme3/math/Vector3f;

    :goto_0
    if-gt p1, p2, :cond_0

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/jme3/collision/bih/BIHTree;->getTriangle(ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-static {v1, v2, v3}, Lcom/jme3/bounding/BoundingBox;->checkMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-static {v1, v2, v4}, Lcom/jme3/bounding/BoundingBox;->checkMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-static {v1, v2, v5}, Lcom/jme3/bounding/BoundingBox;->checkMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {p1, v1, v2}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-object p1
.end method

.method private createNode(IILcom/jme3/bounding/BoundingBox;I)Lcom/jme3/collision/bih/BIHNode;
    .locals 9

    sub-int v0, p2, p1

    iget v1, p0, Lcom/jme3/collision/bih/BIHTree;->maxTrisPerNode:I

    if-lt v0, v1, :cond_8

    const/16 v0, 0x64

    if-le p4, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/jme3/collision/bih/BIHTree;->createBox(II)Lcom/jme3/bounding/BoundingBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Lcom/jme3/bounding/BoundingBox;->getExtent(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p3

    invoke-virtual {v0, v1}, Lcom/jme3/bounding/BoundingBox;->getExtent(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v1, p3, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p3, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v3, v1, v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v3, :cond_2

    iget v2, p3, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    iget v1, p3, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_1

    move v1, v6

    :goto_0
    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {p3, v2}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    move v1, v5

    :cond_3
    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result p3

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/jme3/collision/bih/BIHTree;->sortTriangles(IIFI)I

    move-result v2

    if-eq v2, p1, :cond_4

    if-ne v2, p2, :cond_5

    :cond_4
    add-int v2, p2, p1

    div-int/2addr v2, v4

    :cond_5
    if-ge v2, p1, :cond_6

    new-instance v2, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v2, v0}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/bounding/BoundingBox;)V

    invoke-direct {p0, v2, v6, v1, p3}, Lcom/jme3/collision/bih/BIHTree;->setMinMax(Lcom/jme3/bounding/BoundingBox;ZIF)V

    add-int/2addr p4, v6

    invoke-direct {p0, p1, p2, v2, p4}, Lcom/jme3/collision/bih/BIHTree;->createNode(IILcom/jme3/bounding/BoundingBox;I)Lcom/jme3/collision/bih/BIHNode;

    move-result-object p1

    return-object p1

    :cond_6
    if-le v2, p2, :cond_7

    new-instance v2, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v2, v0}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/bounding/BoundingBox;)V

    invoke-direct {p0, v2, v5, v1, p3}, Lcom/jme3/collision/bih/BIHTree;->setMinMax(Lcom/jme3/bounding/BoundingBox;ZIF)V

    add-int/2addr p4, v6

    invoke-direct {p0, p1, p2, v2, p4}, Lcom/jme3/collision/bih/BIHTree;->createNode(IILcom/jme3/bounding/BoundingBox;I)Lcom/jme3/collision/bih/BIHNode;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance v3, Lcom/jme3/collision/bih/BIHNode;

    invoke-direct {v3, v1}, Lcom/jme3/collision/bih/BIHNode;-><init>(I)V

    new-instance v4, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v4, v0}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/bounding/BoundingBox;)V

    invoke-direct {p0, v4, v5, v1, p3}, Lcom/jme3/collision/bih/BIHTree;->setMinMax(Lcom/jme3/bounding/BoundingBox;ZIF)V

    add-int/lit8 v7, v2, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-direct {p0, p1, v8}, Lcom/jme3/collision/bih/BIHTree;->createBox(II)Lcom/jme3/bounding/BoundingBox;

    move-result-object v8

    invoke-direct {p0, v8, v5, v1}, Lcom/jme3/collision/bih/BIHTree;->getMinMax(Lcom/jme3/bounding/BoundingBox;ZI)F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/jme3/collision/bih/BIHNode;->setLeftPlane(F)V

    invoke-static {p1, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr p4, v6

    invoke-direct {p0, p1, v5, v4, p4}, Lcom/jme3/collision/bih/BIHTree;->createNode(IILcom/jme3/bounding/BoundingBox;I)Lcom/jme3/collision/bih/BIHNode;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/jme3/collision/bih/BIHNode;->setLeftChild(Lcom/jme3/collision/bih/BIHNode;)V

    new-instance p1, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {p1, v0}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/bounding/BoundingBox;)V

    invoke-direct {p0, p1, v6, v1, p3}, Lcom/jme3/collision/bih/BIHTree;->setMinMax(Lcom/jme3/bounding/BoundingBox;ZIF)V

    invoke-direct {p0, v2, p2}, Lcom/jme3/collision/bih/BIHTree;->createBox(II)Lcom/jme3/bounding/BoundingBox;

    move-result-object p3

    invoke-direct {p0, p3, v6, v1}, Lcom/jme3/collision/bih/BIHTree;->getMinMax(Lcom/jme3/bounding/BoundingBox;ZI)F

    move-result p3

    invoke-virtual {v3, p3}, Lcom/jme3/collision/bih/BIHNode;->setRightPlane(F)V

    invoke-direct {p0, v2, p2, p1, p4}, Lcom/jme3/collision/bih/BIHTree;->createNode(IILcom/jme3/bounding/BoundingBox;I)Lcom/jme3/collision/bih/BIHNode;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/jme3/collision/bih/BIHNode;->setRightChild(Lcom/jme3/collision/bih/BIHNode;)V

    return-object v3

    :cond_8
    :goto_1
    new-instance p3, Lcom/jme3/collision/bih/BIHNode;

    invoke-direct {p3, p1, p2}, Lcom/jme3/collision/bih/BIHNode;-><init>(II)V

    return-object p3
.end method

.method private getMinMax(Lcom/jme3/bounding/BoundingBox;ZI)F
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Lcom/jme3/bounding/BoundingBox;->getMin(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/jme3/bounding/BoundingBox;->getMax(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result p1

    return p1
.end method

.method private initTriList(Ljava/nio/FloatBuffer;Lcom/jme3/scene/mesh/IndexBuffer;)V
    .locals 9

    iget v0, p0, Lcom/jme3/collision/bih/BIHTree;->numTris:I

    mul-int/lit8 v0, v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/jme3/collision/bih/BIHTree;->numTris:I

    mul-int/lit8 v4, v3, 0x3

    if-ge v1, v4, :cond_0

    invoke-virtual {p2, v1}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    aput v7, v4, v2

    iget-object v4, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v7, v2, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v5, v2, 0x3

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    aput v3, v4, v7

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v3}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v6, v2, 0x4

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    aput v8, v4, v5

    iget-object v4, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v5, v2, 0x5

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    aput v7, v4, v6

    iget-object v4, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v6, v2, 0x6

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    aput v3, v4, v5

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p2, v3}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v5, v2, 0x7

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    aput v8, v4, v6

    iget-object v4, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v6, v2, 0x8

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    aput v7, v4, v5

    iget-object v4, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v2, v2, 0x9

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    aput v3, v4, v6

    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_0
    new-array p1, v3, [I

    iput-object p1, p0, Lcom/jme3/collision/bih/BIHTree;->triIndices:[I

    :goto_1
    iget p1, p0, Lcom/jme3/collision/bih/BIHTree;->numTris:I

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lcom/jme3/collision/bih/BIHTree;->triIndices:[I

    aput v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setMinMax(Lcom/jme3/bounding/BoundingBox;ZIF)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/bounding/BoundingBox;->getMin(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/jme3/bounding/BoundingBox;->getMax(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v1, p3, p4}, Lcom/jme3/math/Vector3f;->set(IF)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p3, p4}, Lcom/jme3/math/Vector3f;->set(IF)V

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/jme3/bounding/BoundingBox;->setMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method private sortTriangles(IIFI)I
    .locals 7

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v3, v0, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    move v4, p1

    :goto_0
    if-gt v4, p2, :cond_1

    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/jme3/collision/bih/BIHTree;->getTriangle(ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    const v6, 0x3eaaaaab

    invoke-virtual {v5, v6}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p4}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result v5

    cmpl-float v5, v5, p3

    if-lez v5, :cond_0

    invoke-virtual {p0, v4, p2}, Lcom/jme3/collision/bih/BIHTree;->swapTriangles(II)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    if-ne v4, p1, :cond_2

    if-ge p2, v4, :cond_2

    goto :goto_1

    :cond_2
    move p2, v4

    :goto_1
    return p2
.end method


# virtual methods
.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;Lcom/jme3/collision/CollisionResults;)I
    .locals 1

    instance-of v0, p1, Lcom/jme3/math/Ray;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/math/Ray;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/collision/bih/BIHTree;->collideWithRay(Lcom/jme3/math/Ray;Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;Lcom/jme3/collision/CollisionResults;)I

    move-result p1

    return p1

    :cond_0
    instance-of p3, p1, Lcom/jme3/bounding/BoundingVolume;

    if-eqz p3, :cond_1

    check-cast p1, Lcom/jme3/bounding/BoundingVolume;

    invoke-direct {p0, p1, p2, p4}, Lcom/jme3/collision/bih/BIHTree;->collideWithBoundingVolume(Lcom/jme3/bounding/BoundingVolume;Lcom/jme3/math/Matrix4f;Lcom/jme3/collision/CollisionResults;)I

    move-result p1

    return p1

    :cond_1
    new-instance p2, Lcom/jme3/collision/UnsupportedCollisionException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Collidable:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jme3/collision/UnsupportedCollisionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public construct()V
    .locals 3

    iget v0, p0, Lcom/jme3/collision/bih/BIHTree;->numTris:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/jme3/collision/bih/BIHTree;->createBox(II)Lcom/jme3/bounding/BoundingBox;

    move-result-object v0

    iget v2, p0, Lcom/jme3/collision/bih/BIHTree;->numTris:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v1, v2, v0, v1}, Lcom/jme3/collision/bih/BIHTree;->createNode(IILcom/jme3/bounding/BoundingBox;I)Lcom/jme3/collision/bih/BIHNode;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/collision/bih/BIHTree;->root:Lcom/jme3/collision/bih/BIHNode;

    return-void
.end method

.method public getTriangle(ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 3

    mul-int/lit8 p1, p1, 0x9

    iget-object v0, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v1, p1, 0x1

    aget v2, v0, p1

    iput v2, p2, Lcom/jme3/math/Vector3f;->x:F

    add-int/lit8 v2, p1, 0x2

    aget v1, v0, v1

    iput v1, p2, Lcom/jme3/math/Vector3f;->y:F

    add-int/lit8 v1, p1, 0x3

    aget v2, v0, v2

    iput v2, p2, Lcom/jme3/math/Vector3f;->z:F

    add-int/lit8 p2, p1, 0x4

    aget v1, v0, v1

    iput v1, p3, Lcom/jme3/math/Vector3f;->x:F

    add-int/lit8 v1, p1, 0x5

    aget p2, v0, p2

    iput p2, p3, Lcom/jme3/math/Vector3f;->y:F

    add-int/lit8 p2, p1, 0x6

    aget v1, v0, v1

    iput v1, p3, Lcom/jme3/math/Vector3f;->z:F

    add-int/lit8 p3, p1, 0x7

    aget p2, v0, p2

    iput p2, p4, Lcom/jme3/math/Vector3f;->x:F

    add-int/lit8 p1, p1, 0x8

    aget p2, v0, p3

    iput p2, p4, Lcom/jme3/math/Vector3f;->y:F

    aget p1, v0, p1

    iput p1, p4, Lcom/jme3/math/Vector3f;->z:F

    return-void
.end method

.method public getTriangleIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/jme3/collision/bih/BIHTree;->triIndices:[I

    aget p1, v0, p1

    return p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "mesh"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Mesh;

    iput-object v0, p0, Lcom/jme3/collision/bih/BIHTree;->mesh:Lcom/jme3/scene/Mesh;

    const-string v0, "root"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/collision/bih/BIHNode;

    iput-object v0, p0, Lcom/jme3/collision/bih/BIHTree;->root:Lcom/jme3/collision/bih/BIHNode;

    const-string v0, "tris_per_node"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/collision/bih/BIHTree;->maxTrisPerNode:I

    const-string v0, "points"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    const-string v0, "indices"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/collision/bih/BIHTree;->triIndices:[I

    return-void
.end method

.method public swapTriangles(II)V
    .locals 6

    mul-int/lit8 v0, p1, 0x9

    mul-int/lit8 v1, p2, 0x9

    iget-object v2, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    iget-object v3, p0, Lcom/jme3/collision/bih/BIHTree;->bihSwapTmp:[F

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    invoke-static {v2, v1, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/jme3/collision/bih/BIHTree;->bihSwapTmp:[F

    iget-object v2, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    invoke-static {v0, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/jme3/collision/bih/BIHTree;->triIndices:[I

    aget v1, v0, p1

    aget v2, v0, p2

    aput v2, v0, p1

    aput v1, v0, p2

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/collision/bih/BIHTree;->mesh:Lcom/jme3/scene/Mesh;

    const-string v1, "mesh"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/collision/bih/BIHTree;->root:Lcom/jme3/collision/bih/BIHNode;

    const-string v1, "root"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/collision/bih/BIHTree;->maxTrisPerNode:I

    const-string v1, "tris_per_node"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    const-string v1, "points"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    iget-object v0, p0, Lcom/jme3/collision/bih/BIHTree;->triIndices:[I

    const-string v1, "indices"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([ILjava/lang/String;[I)V

    return-void
.end method
