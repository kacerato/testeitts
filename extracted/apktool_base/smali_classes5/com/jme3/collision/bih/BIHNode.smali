.class public final Lcom/jme3/collision/bih/BIHNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/collision/bih/BIHNode$BIHStackData;
    }
.end annotation


# instance fields
.field private axis:I

.field private left:Lcom/jme3/collision/bih/BIHNode;

.field private leftIndex:I

.field private leftPlane:F

.field private right:Lcom/jme3/collision/bih/BIHNode;

.field private rightIndex:I

.field private rightPlane:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/jme3/collision/bih/BIHNode;->axis:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/jme3/collision/bih/BIHNode;->leftIndex:I

    .line 3
    iput p2, p0, Lcom/jme3/collision/bih/BIHNode;->rightIndex:I

    const/4 p1, 0x3

    .line 4
    iput p1, p0, Lcom/jme3/collision/bih/BIHNode;->axis:I

    return-void
.end method


# virtual methods
.method public getLeftChild()Lcom/jme3/collision/bih/BIHNode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/collision/bih/BIHNode;->left:Lcom/jme3/collision/bih/BIHNode;

    return-object v0
.end method

.method public getLeftPlane()F
    .locals 1

    iget v0, p0, Lcom/jme3/collision/bih/BIHNode;->leftPlane:F

    return v0
.end method

.method public getRightChild()Lcom/jme3/collision/bih/BIHNode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/collision/bih/BIHNode;->right:Lcom/jme3/collision/bih/BIHNode;

    return-object v0
.end method

.method public getRightPlane()F
    .locals 1

    iget v0, p0, Lcom/jme3/collision/bih/BIHNode;->rightPlane:F

    return v0
.end method

.method public final intersectBrute(Lcom/jme3/math/Ray;Lcom/jme3/math/Matrix4f;Lcom/jme3/collision/bih/BIHTree;FFLcom/jme3/collision/CollisionResults;)I
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v3

    iget-object v4, v3, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v5, v3, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v6, v3, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    iget-object v7, v3, Lcom/jme3/util/TempVars;->bihStack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    new-instance v8, Lcom/jme3/collision/bih/BIHNode$BIHStackData;

    const/4 v9, 0x0

    move-object/from16 v10, p0

    invoke-direct {v8, v10, v9, v9}, Lcom/jme3/collision/bih/BIHNode$BIHStackData;-><init>(Lcom/jme3/collision/bih/BIHNode;FF)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v8, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v11, 0x0

    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jme3/collision/bih/BIHNode$BIHStackData;

    invoke-static {v12}, Lcom/jme3/collision/bih/BIHNode$BIHStackData;->access$000(Lcom/jme3/collision/bih/BIHNode$BIHStackData;)Lcom/jme3/collision/bih/BIHNode;

    move-result-object v12

    :goto_0
    iget v13, v12, Lcom/jme3/collision/bih/BIHNode;->axis:I

    const/4 v14, 0x3

    if-eq v13, v14, :cond_1

    iget-object v13, v12, Lcom/jme3/collision/bih/BIHNode;->left:Lcom/jme3/collision/bih/BIHNode;

    iget-object v12, v12, Lcom/jme3/collision/bih/BIHNode;->right:Lcom/jme3/collision/bih/BIHNode;

    new-instance v14, Lcom/jme3/collision/bih/BIHNode$BIHStackData;

    invoke-direct {v14, v12, v9, v9}, Lcom/jme3/collision/bih/BIHNode$BIHStackData;-><init>(Lcom/jme3/collision/bih/BIHNode;FF)V

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v12, v13

    goto :goto_0

    :cond_1
    iget v13, v12, Lcom/jme3/collision/bih/BIHNode;->leftIndex:I

    :goto_1
    iget v14, v12, Lcom/jme3/collision/bih/BIHNode;->rightIndex:I

    if-gt v13, v14, :cond_0

    invoke-virtual {v2, v13, v4, v5, v6}, Lcom/jme3/collision/bih/BIHTree;->getTriangle(ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1, v4, v4}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v5, v5}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v6, v6}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_2
    invoke-virtual {v0, v4, v5, v6}, Lcom/jme3/math/Ray;->intersects(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    move-result v14

    cmpg-float v15, v14, v8

    if-gez v15, :cond_3

    new-instance v8, Lcom/jme3/math/Vector3f;

    iget-object v15, v0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-direct {v8, v15}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v8, v14}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v8

    iget-object v15, v0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v8, v15}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    new-instance v15, Lcom/jme3/collision/CollisionResult;

    invoke-direct {v15, v8, v14}, Lcom/jme3/collision/CollisionResult;-><init>(Lcom/jme3/math/Vector3f;F)V

    invoke-virtual {v2, v13}, Lcom/jme3/collision/bih/BIHTree;->getTriangleIndex(I)I

    move-result v8

    invoke-virtual {v15, v8}, Lcom/jme3/collision/CollisionResult;->setTriangleIndex(I)V

    move-object/from16 v8, p6

    invoke-virtual {v8, v15}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    add-int/lit8 v11, v11, 0x1

    move v8, v14

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/jme3/util/TempVars;->release()V

    return v11
.end method

.method public final intersectWhere(Lcom/jme3/collision/Collidable;Lcom/jme3/bounding/BoundingBox;Lcom/jme3/math/Matrix4f;Lcom/jme3/collision/bih/BIHTree;Lcom/jme3/collision/CollisionResults;)I
    .locals 17

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    .line 1
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v3

    .line 2
    iget-object v4, v3, Lcom/jme3/util/TempVars;->bihStack:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingBox;->getXExtent()F

    move-result v6

    sub-float/2addr v5, v6

    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v6

    iget v6, v6, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingBox;->getYExtent()F

    move-result v7

    sub-float/2addr v6, v7

    .line 6
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result v8

    sub-float/2addr v7, v8

    const/4 v8, 0x3

    new-array v9, v8, [F

    const/4 v10, 0x0

    aput v5, v9, v10

    const/4 v5, 0x1

    aput v6, v9, v5

    const/4 v6, 0x2

    aput v7, v9, v6

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingBox;->getXExtent()F

    move-result v11

    add-float/2addr v7, v11

    .line 8
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v11

    iget v11, v11, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingBox;->getYExtent()F

    move-result v12

    add-float/2addr v11, v12

    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v12

    iget v12, v12, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result v13

    add-float/2addr v12, v13

    new-array v13, v8, [F

    aput v7, v13, v10

    aput v11, v13, v5

    aput v12, v13, v6

    .line 10
    new-instance v6, Lcom/jme3/collision/bih/BIHNode$BIHStackData;

    const/4 v7, 0x0

    move-object/from16 v11, p0

    invoke-direct {v6, v11, v7, v7}, Lcom/jme3/collision/bih/BIHNode$BIHStackData;-><init>(Lcom/jme3/collision/bih/BIHNode;FF)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v6, Lcom/jme3/math/Triangle;

    invoke-direct {v6}, Lcom/jme3/math/Triangle;-><init>()V

    .line 12
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_8

    .line 13
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v5

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jme3/collision/bih/BIHNode$BIHStackData;

    invoke-static {v12}, Lcom/jme3/collision/bih/BIHNode$BIHStackData;->access$000(Lcom/jme3/collision/bih/BIHNode$BIHStackData;)Lcom/jme3/collision/bih/BIHNode;

    move-result-object v12

    .line 14
    :goto_1
    iget v14, v12, Lcom/jme3/collision/bih/BIHNode;->axis:I

    if-eq v14, v8, :cond_3

    .line 15
    aget v15, v13, v14

    .line 16
    aget v14, v9, v14

    .line 17
    iget v8, v12, Lcom/jme3/collision/bih/BIHNode;->leftPlane:F

    iget v5, v12, Lcom/jme3/collision/bih/BIHNode;->rightPlane:F

    cmpg-float v16, v8, v5

    if-gez v16, :cond_0

    cmpl-float v16, v14, v8

    if-lez v16, :cond_0

    cmpg-float v16, v15, v5

    if-gez v16, :cond_0

    :goto_2
    const/4 v5, 0x1

    const/4 v8, 0x3

    goto :goto_0

    :cond_0
    cmpg-float v5, v15, v5

    if-gez v5, :cond_1

    .line 18
    iget-object v5, v12, Lcom/jme3/collision/bih/BIHNode;->left:Lcom/jme3/collision/bih/BIHNode;

    :goto_3
    move-object v12, v5

    goto :goto_4

    :cond_1
    cmpl-float v5, v14, v8

    if-lez v5, :cond_2

    .line 19
    iget-object v5, v12, Lcom/jme3/collision/bih/BIHNode;->right:Lcom/jme3/collision/bih/BIHNode;

    goto :goto_3

    .line 20
    :cond_2
    new-instance v5, Lcom/jme3/collision/bih/BIHNode$BIHStackData;

    iget-object v8, v12, Lcom/jme3/collision/bih/BIHNode;->right:Lcom/jme3/collision/bih/BIHNode;

    invoke-direct {v5, v8, v7, v7}, Lcom/jme3/collision/bih/BIHNode$BIHStackData;-><init>(Lcom/jme3/collision/bih/BIHNode;FF)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v5, v12, Lcom/jme3/collision/bih/BIHNode;->left:Lcom/jme3/collision/bih/BIHNode;

    goto :goto_3

    :goto_4
    const/4 v5, 0x1

    const/4 v8, 0x3

    goto :goto_1

    .line 22
    :cond_3
    iget v5, v12, Lcom/jme3/collision/bih/BIHNode;->leftIndex:I

    :goto_5
    iget v8, v12, Lcom/jme3/collision/bih/BIHNode;->rightIndex:I

    if-gt v5, v8, :cond_7

    .line 23
    invoke-virtual {v6}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual {v6}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v14

    invoke-virtual {v6}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v15

    invoke-virtual {v1, v5, v8, v14, v15}, Lcom/jme3/collision/bih/BIHTree;->getTriangle(ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    if-eqz v0, :cond_4

    .line 24
    invoke-virtual {v6}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual {v6}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v14

    invoke-virtual {v0, v8, v14}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 25
    invoke-virtual {v6}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual {v6}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v14

    invoke-virtual {v0, v8, v14}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 26
    invoke-virtual {v6}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual {v6}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v14

    invoke-virtual {v0, v8, v14}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_4
    move-object/from16 v8, p1

    .line 27
    invoke-interface {v8, v6, v2}, Lcom/jme3/collision/Collidable;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    move-result v14

    if-lez v14, :cond_6

    .line 28
    invoke-virtual {v1, v5}, Lcom/jme3/collision/bih/BIHTree;->getTriangleIndex(I)I

    move-result v15

    .line 29
    invoke-virtual/range {p5 .. p5}, Lcom/jme3/collision/CollisionResults;->size()I

    move-result v16

    sub-int v16, v16, v14

    move/from16 v7, v16

    .line 30
    :goto_6
    invoke-virtual/range {p5 .. p5}, Lcom/jme3/collision/CollisionResults;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 31
    invoke-virtual {v2, v7}, Lcom/jme3/collision/CollisionResults;->getCollisionDirect(I)Lcom/jme3/collision/CollisionResult;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v15}, Lcom/jme3/collision/CollisionResult;->setTriangleIndex(I)V

    const/4 v0, 0x1

    add-int/2addr v7, v0

    goto :goto_6

    :cond_5
    const/4 v0, 0x1

    add-int/2addr v10, v14

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    :goto_7
    add-int/2addr v5, v0

    move-object/from16 v0, p3

    const/4 v7, 0x0

    goto :goto_5

    :cond_7
    move-object/from16 v8, p1

    move-object/from16 v0, p3

    goto/16 :goto_2

    .line 33
    :cond_8
    invoke-virtual {v3}, Lcom/jme3/util/TempVars;->release()V

    return v10
.end method

.method public final intersectWhere(Lcom/jme3/math/Ray;Lcom/jme3/math/Matrix4f;Lcom/jme3/collision/bih/BIHTree;FFLcom/jme3/collision/CollisionResults;)I
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 34
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v3

    .line 35
    iget-object v4, v3, Lcom/jme3/util/TempVars;->bihStack:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 37
    iget-object v5, v3, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    .line 38
    iget-object v6, v3, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    .line 39
    iget-object v7, v3, Lcom/jme3/util/TempVars;->tempMat4:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v7, v1}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    move-result-object v7

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/jme3/math/Matrix4f;->multNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/jme3/math/Vector3f;->x:F

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v8

    iget v8, v8, Lcom/jme3/math/Vector3f;->y:F

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v9

    iget v9, v9, Lcom/jme3/math/Vector3f;->z:F

    const/4 v10, 0x3

    new-array v11, v10, [F

    const/4 v12, 0x0

    aput v7, v11, v12

    const/4 v7, 0x1

    aput v8, v11, v7

    const/4 v8, 0x2

    aput v9, v11, v8

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v9

    iget v9, v9, Lcom/jme3/math/Vector3f;->x:F

    const/high16 v13, 0x3f800000    # 1.0f

    div-float v9, v13, v9

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v14

    iget v14, v14, Lcom/jme3/math/Vector3f;->y:F

    div-float v14, v13, v14

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v15

    iget v15, v15, Lcom/jme3/math/Vector3f;->z:F

    div-float/2addr v13, v15

    new-array v15, v10, [F

    aput v9, v15, v12

    aput v14, v15, v7

    aput v13, v15, v8

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    .line 49
    iget-object v8, v3, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    .line 50
    iget-object v9, v3, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    .line 51
    iget-object v13, v3, Lcom/jme3/util/TempVars;->vect5:Lcom/jme3/math/Vector3f;

    .line 52
    new-instance v14, Lcom/jme3/collision/bih/BIHNode$BIHStackData;

    move-object/from16 v12, p0

    move/from16 v10, p4

    move/from16 v7, p5

    invoke-direct {v14, v12, v10, v7}, Lcom/jme3/collision/bih/BIHNode$BIHStackData;-><init>(Lcom/jme3/collision/bih/BIHNode;FF)V

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v16, 0x0

    .line 53
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 54
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/collision/bih/BIHNode$BIHStackData;

    .line 55
    invoke-static {v7}, Lcom/jme3/collision/bih/BIHNode$BIHStackData;->access$000(Lcom/jme3/collision/bih/BIHNode$BIHStackData;)Lcom/jme3/collision/bih/BIHNode;

    move-result-object v10

    .line 56
    invoke-static {v7}, Lcom/jme3/collision/bih/BIHNode$BIHStackData;->access$100(Lcom/jme3/collision/bih/BIHNode$BIHStackData;)F

    move-result v14

    .line 57
    invoke-static {v7}, Lcom/jme3/collision/bih/BIHNode$BIHStackData;->access$200(Lcom/jme3/collision/bih/BIHNode$BIHStackData;)F

    move-result v7

    cmpg-float v18, v7, v14

    if-gez v18, :cond_0

    move-object/from16 v18, v3

    goto :goto_3

    .line 58
    :cond_0
    :goto_1
    iget v12, v10, Lcom/jme3/collision/bih/BIHNode;->axis:I

    move-object/from16 v18, v3

    const/4 v3, 0x3

    if-eq v12, v3, :cond_5

    .line 59
    aget v17, v11, v12

    .line 60
    aget v12, v15, v12

    .line 61
    iget v3, v10, Lcom/jme3/collision/bih/BIHNode;->leftPlane:F

    sub-float v3, v3, v17

    mul-float/2addr v3, v12

    move/from16 p5, v3

    .line 62
    iget v3, v10, Lcom/jme3/collision/bih/BIHNode;->rightPlane:F

    sub-float v3, v3, v17

    mul-float/2addr v3, v12

    move/from16 v17, v3

    .line 63
    iget-object v3, v10, Lcom/jme3/collision/bih/BIHNode;->left:Lcom/jme3/collision/bih/BIHNode;

    .line 64
    iget-object v10, v10, Lcom/jme3/collision/bih/BIHNode;->right:Lcom/jme3/collision/bih/BIHNode;

    const/16 v19, 0x0

    cmpg-float v12, v12, v19

    if-gez v12, :cond_1

    move-object v12, v3

    move/from16 v3, v17

    move-object/from16 v17, v10

    move/from16 v10, p5

    goto :goto_2

    :cond_1
    move-object v12, v10

    move/from16 v10, v17

    move-object/from16 v17, v3

    move/from16 v3, p5

    :goto_2
    cmpl-float v19, v14, v3

    if-lez v19, :cond_2

    cmpg-float v20, v7, v10

    if-gez v20, :cond_2

    :goto_3
    move-object/from16 v12, p0

    move-object/from16 v3, v18

    goto :goto_0

    :cond_2
    if-lez v19, :cond_3

    .line 65
    invoke-static {v14, v10}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move v14, v3

    move-object/from16 v19, v11

    move-object v10, v12

    goto :goto_5

    :cond_3
    cmpg-float v19, v7, v10

    if-gez v19, :cond_4

    .line 66
    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move v7, v3

    move-object/from16 v19, v11

    :goto_4
    move-object/from16 v10, v17

    goto :goto_5

    :cond_4
    move-object/from16 v19, v11

    .line 67
    new-instance v11, Lcom/jme3/collision/bih/BIHNode$BIHStackData;

    invoke-static {v14, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-direct {v11, v12, v10, v7}, Lcom/jme3/collision/bih/BIHNode$BIHStackData;-><init>(Lcom/jme3/collision/bih/BIHNode;FF)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move v7, v3

    goto :goto_4

    :goto_5
    move-object/from16 v3, v18

    move-object/from16 v11, v19

    goto :goto_1

    :cond_5
    move-object/from16 v19, v11

    .line 69
    iget v3, v10, Lcom/jme3/collision/bih/BIHNode;->leftIndex:I

    :goto_6
    iget v7, v10, Lcom/jme3/collision/bih/BIHNode;->rightIndex:I

    if-gt v3, v7, :cond_8

    .line 70
    invoke-virtual {v2, v3, v8, v9, v13}, Lcom/jme3/collision/bih/BIHTree;->getTriangle(ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 71
    invoke-virtual {v0, v8, v9, v13}, Lcom/jme3/math/Ray;->intersects(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    move-result v7

    .line 72
    invoke-static {v7}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v11

    if-nez v11, :cond_7

    if-eqz v1, :cond_6

    .line 73
    invoke-virtual {v1, v8, v8}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 74
    invoke-virtual {v1, v9, v9}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 75
    invoke-virtual {v1, v13, v13}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 76
    new-instance v7, Lcom/jme3/math/Ray;

    invoke-direct {v7, v5, v6}, Lcom/jme3/math/Ray;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v7, v8, v9, v13}, Lcom/jme3/math/Ray;->intersects(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    move-result v7

    .line 77
    :cond_6
    invoke-static {v7}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v11

    if-nez v11, :cond_7

    const/4 v11, 0x0

    .line 78
    invoke-static {v8, v9, v13, v11}, Lcom/jme3/math/Triangle;->computeTriangleNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v11

    .line 79
    new-instance v12, Lcom/jme3/math/Vector3f;

    invoke-direct {v12, v6}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v12, v7}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    .line 80
    invoke-virtual {v5, v7}, Lcom/jme3/math/Vector3f;->distance(Lcom/jme3/math/Vector3f;)F

    move-result v12

    .line 81
    new-instance v14, Lcom/jme3/collision/CollisionResult;

    invoke-direct {v14, v7, v12}, Lcom/jme3/collision/CollisionResult;-><init>(Lcom/jme3/math/Vector3f;F)V

    .line 82
    invoke-virtual {v14, v11}, Lcom/jme3/collision/CollisionResult;->setContactNormal(Lcom/jme3/math/Vector3f;)V

    .line 83
    invoke-virtual {v2, v3}, Lcom/jme3/collision/bih/BIHTree;->getTriangleIndex(I)I

    move-result v7

    invoke-virtual {v14, v7}, Lcom/jme3/collision/CollisionResult;->setTriangleIndex(I)V

    move-object/from16 v7, p6

    .line 84
    invoke-virtual {v7, v14}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    const/4 v11, 0x1

    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    :cond_7
    move-object/from16 v7, p6

    const/4 v11, 0x1

    :goto_7
    add-int/2addr v3, v11

    goto :goto_6

    :cond_8
    move-object/from16 v7, p6

    move-object/from16 v12, p0

    move-object/from16 v3, v18

    move-object/from16 v11, v19

    goto/16 :goto_0

    :cond_9
    move-object/from16 v18, v3

    .line 85
    invoke-virtual/range {v18 .. v18}, Lcom/jme3/util/TempVars;->release()V

    .line 86
    invoke-virtual {v0, v5}, Lcom/jme3/math/Ray;->setOrigin(Lcom/jme3/math/Vector3f;)V

    .line 87
    invoke-virtual {v0, v6}, Lcom/jme3/math/Ray;->setDirection(Lcom/jme3/math/Vector3f;)V

    return v16
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

    const-string v0, "left_index"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/collision/bih/BIHNode;->leftIndex:I

    const-string v0, "right_index"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/collision/bih/BIHNode;->rightIndex:I

    const-string v0, "left_plane"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/collision/bih/BIHNode;->leftPlane:F

    const-string v0, "right_plane"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/collision/bih/BIHNode;->rightPlane:F

    const-string v0, "axis"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/collision/bih/BIHNode;->axis:I

    const-string v0, "left_node"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/collision/bih/BIHNode;

    iput-object v0, p0, Lcom/jme3/collision/bih/BIHNode;->left:Lcom/jme3/collision/bih/BIHNode;

    const-string v0, "right_node"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/collision/bih/BIHNode;

    iput-object p1, p0, Lcom/jme3/collision/bih/BIHNode;->right:Lcom/jme3/collision/bih/BIHNode;

    return-void
.end method

.method public setLeftChild(Lcom/jme3/collision/bih/BIHNode;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/collision/bih/BIHNode;->left:Lcom/jme3/collision/bih/BIHNode;

    return-void
.end method

.method public setLeftPlane(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/collision/bih/BIHNode;->leftPlane:F

    return-void
.end method

.method public setRightChild(Lcom/jme3/collision/bih/BIHNode;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/collision/bih/BIHNode;->right:Lcom/jme3/collision/bih/BIHNode;

    return-void
.end method

.method public setRightPlane(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/collision/bih/BIHNode;->rightPlane:F

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

    iget v0, p0, Lcom/jme3/collision/bih/BIHNode;->leftIndex:I

    const-string v1, "left_index"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/collision/bih/BIHNode;->rightIndex:I

    const-string v1, "right_index"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/collision/bih/BIHNode;->leftPlane:F

    const-string v1, "left_plane"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/collision/bih/BIHNode;->rightPlane:F

    const-string v1, "right_plane"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/collision/bih/BIHNode;->axis:I

    const-string v1, "axis"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/collision/bih/BIHNode;->left:Lcom/jme3/collision/bih/BIHNode;

    const-string v1, "left_node"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/collision/bih/BIHNode;->right:Lcom/jme3/collision/bih/BIHNode;

    const-string v1, "right_node"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
