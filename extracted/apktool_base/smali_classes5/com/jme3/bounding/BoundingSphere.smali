.class public Lcom/jme3/bounding/BoundingSphere;
.super Lcom/jme3/bounding/BoundingVolume;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final RADIUS_EPSILON:F = 1.00001f

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field radius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bounding/BoundingSphere;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bounding/BoundingSphere;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bounding/BoundingVolume;-><init>()V

    return-void
.end method

.method public constructor <init>(FLcom/jme3/math/Vector3f;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/jme3/bounding/BoundingVolume;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 4
    iput p1, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    return-void
.end method

.method private collideWithRay(Lcom/jme3/math/Ray;)I
    .locals 7

    .line 19
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 20
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v2

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v3

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-double v3, v2

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    const/4 v4, 0x1

    if-gtz v3, :cond_0

    .line 22
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return v4

    .line 23
    :cond_0
    iget-object p1, p1, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p1

    .line 24
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    float-to-double v0, p1

    cmpl-double v0, v0, v5

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    return v1

    :cond_1
    mul-float/2addr p1, p1

    sub-float/2addr p1, v2

    float-to-double v2, p1

    cmpg-double v0, v2, v5

    if-gez v0, :cond_2

    return v1

    :cond_2
    const v0, 0x38d1b717    # 1.0E-4f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    return v4
.end method

.method private collideWithRay(Lcom/jme3/math/Ray;Lcom/jme3/collision/CollisionResults;)I
    .locals 9

    .line 1
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v2

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v3

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-double v3, v2

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    const/4 v4, 0x1

    if-gtz v3, :cond_0

    .line 4
    iget-object v3, p1, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v1

    mul-float v3, v1, v1

    sub-float/2addr v3, v2

    .line 5
    invoke-static {v3}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v2

    sub-float/2addr v2, v1

    .line 6
    new-instance v1, Lcom/jme3/math/Vector3f;

    iget-object v3, p1, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-direct {v1, v3}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object p1, p1, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    .line 7
    new-instance v1, Lcom/jme3/collision/CollisionResult;

    invoke-direct {v1, p1, v2}, Lcom/jme3/collision/CollisionResult;-><init>(Lcom/jme3/math/Vector3f;F)V

    .line 8
    invoke-virtual {p2, v1}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    .line 9
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return v4

    .line 10
    :cond_0
    iget-object v3, p1, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v1

    .line 11
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    float-to-double v7, v1

    cmpl-double v0, v7, v5

    const/4 v3, 0x0

    if-ltz v0, :cond_1

    return v3

    :cond_1
    mul-float v0, v1, v1

    sub-float/2addr v0, v2

    float-to-double v7, v0

    cmpg-double v2, v7, v5

    if-gez v2, :cond_2

    return v3

    :cond_2
    const v2, 0x38d1b717    # 1.0E-4f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_3

    .line 12
    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    neg-float v1, v1

    sub-float v2, v1, v0

    .line 13
    new-instance v3, Lcom/jme3/math/Vector3f;

    iget-object v4, p1, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-direct {v3, v4}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v3, v2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v3

    iget-object v4, p1, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 14
    new-instance v4, Lcom/jme3/collision/CollisionResult;

    invoke-direct {v4, v3, v2}, Lcom/jme3/collision/CollisionResult;-><init>(Lcom/jme3/math/Vector3f;F)V

    invoke-virtual {p2, v4}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    add-float/2addr v1, v0

    .line 15
    new-instance v0, Lcom/jme3/math/Vector3f;

    iget-object v2, p1, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v2}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object p1, p1, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    .line 16
    new-instance v0, Lcom/jme3/collision/CollisionResult;

    invoke-direct {v0, p1, v1}, Lcom/jme3/collision/CollisionResult;-><init>(Lcom/jme3/math/Vector3f;F)V

    invoke-virtual {p2, v0}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    const/4 p1, 0x2

    return p1

    :cond_3
    neg-float v0, v1

    .line 17
    new-instance v1, Lcom/jme3/math/Vector3f;

    iget-object v2, p1, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-direct {v1, v2}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object p1, p1, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    .line 18
    new-instance v1, Lcom/jme3/collision/CollisionResult;

    invoke-direct {v1, p1, v0}, Lcom/jme3/collision/CollisionResult;-><init>(Lcom/jme3/math/Vector3f;F)V

    invoke-virtual {p2, v1}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    return v4
.end method

.method private collideWithTri(Lcom/jme3/math/Triangle;Lcom/jme3/collision/CollisionResults;)I
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v3

    iget-object v4, v1, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget-object v5, v2, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v4, v5}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v4

    iget-object v5, v1, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget-object v6, v2, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v5, v6}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget-object v6, v1, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget-object v7, v2, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v6, v7}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget-object v6, v2, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v3, v6}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    iget-object v7, v2, Lcom/jme3/util/TempVars;->vect5:Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v3, v7}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    iget-object v8, v2, Lcom/jme3/util/TempVars;->vect6:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v7, v8}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v9

    invoke-virtual {v8, v8}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v10

    mul-float/2addr v9, v9

    iget v11, v1, Lcom/jme3/bounding/BoundingSphere;->radius:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-float/2addr v11, v11

    mul-float/2addr v11, v10

    cmpl-float v9, v9, v11

    const/4 v10, 0x0

    if-lez v9, :cond_0

    invoke-virtual {v2}, Lcom/jme3/util/TempVars;->release()V

    return v10

    :cond_0
    :try_start_1
    invoke-virtual {v7, v7}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v9

    invoke-virtual {v7, v6}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v11

    invoke-virtual {v7, v3}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v12

    neg-float v12, v12

    invoke-virtual {v6, v6}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v13

    invoke-virtual {v6, v3}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v14

    neg-float v14, v14

    mul-float v15, v9, v13

    mul-float v16, v11, v11

    sub-float v15, v15, v16

    const/high16 v16, 0x3f800000    # 1.0f

    div-float v15, v16, v15

    mul-float/2addr v13, v12

    mul-float v17, v11, v14

    sub-float v13, v13, v17

    mul-float/2addr v13, v15

    mul-float/2addr v9, v14

    mul-float/2addr v11, v12

    sub-float/2addr v9, v11

    mul-float/2addr v9, v15

    const/4 v11, 0x0

    cmpl-float v12, v13, v11

    const/4 v14, 0x1

    if-ltz v12, :cond_1

    cmpl-float v12, v9, v11

    if-ltz v12, :cond_1

    add-float v12, v13, v9

    cmpg-float v12, v12, v16

    if-gtz v12, :cond_1

    iget-object v4, v1, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v7, v13}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v6, v9}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    new-instance v5, Lcom/jme3/collision/CollisionResult;

    invoke-direct {v5}, Lcom/jme3/collision/CollisionResult;-><init>()V

    invoke-virtual {v8}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v3

    neg-float v3, v3

    iget v7, v1, Lcom/jme3/bounding/BoundingSphere;->radius:F

    sub-float/2addr v3, v7

    invoke-virtual {v5, v3}, Lcom/jme3/collision/CollisionResult;->setDistance(F)V

    invoke-virtual {v5, v6}, Lcom/jme3/collision/CollisionResult;->setContactNormal(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v5, v4}, Lcom/jme3/collision/CollisionResult;->setContactPoint(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0, v5}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Lcom/jme3/util/TempVars;->release()V

    return v14

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    :try_start_2
    iget v8, v1, Lcom/jme3/bounding/BoundingSphere;->radius:F

    mul-float/2addr v8, v8

    invoke-virtual {v6, v3}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v6, v6}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v12

    div-float/2addr v9, v12

    cmpl-float v12, v9, v11

    if-ltz v12, :cond_2

    cmpg-float v12, v9, v16

    if-gtz v12, :cond_2

    iget-object v12, v2, Lcom/jme3/util/TempVars;->vect7:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v9, v12}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    iget-object v9, v2, Lcom/jme3/util/TempVars;->vect8:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v6, v9}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v6, v6}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v9

    cmpg-float v12, v9, v8

    if-gez v12, :cond_2

    move v8, v9

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v7, v3}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v7, v7}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v12

    div-float/2addr v9, v12

    cmpl-float v12, v9, v11

    if-ltz v12, :cond_3

    cmpg-float v12, v9, v16

    if-gtz v12, :cond_3

    iget-object v12, v2, Lcom/jme3/util/TempVars;->vect7:Lcom/jme3/math/Vector3f;

    invoke-virtual {v7, v9, v12}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    iget-object v9, v2, Lcom/jme3/util/TempVars;->vect9:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v7, v9}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-virtual {v7, v7}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v9

    cmpg-float v12, v9, v8

    if-gez v12, :cond_3

    move-object v6, v7

    move v8, v9

    :cond_3
    invoke-virtual {v5, v4}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v7, v7}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v12

    div-float/2addr v9, v12

    cmpl-float v11, v9, v11

    if-ltz v11, :cond_4

    cmpg-float v11, v9, v16

    if-gtz v11, :cond_4

    iget-object v11, v2, Lcom/jme3/util/TempVars;->vect7:Lcom/jme3/math/Vector3f;

    invoke-virtual {v7, v9, v11}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    iget-object v9, v2, Lcom/jme3/util/TempVars;->vect10:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v7, v9}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-virtual {v7, v7}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v9

    cmpg-float v11, v9, v8

    if-gez v11, :cond_4

    move-object v6, v7

    move v8, v9

    :cond_4
    if-eqz v6, :cond_5

    invoke-static {v8}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v3

    neg-float v4, v3

    invoke-virtual {v6, v4}, Lcom/jme3/math/Vector3f;->divide(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    new-instance v5, Lcom/jme3/collision/CollisionResult;

    invoke-direct {v5}, Lcom/jme3/collision/CollisionResult;-><init>()V

    iget v7, v1, Lcom/jme3/bounding/BoundingSphere;->radius:F

    sub-float/2addr v3, v7

    invoke-virtual {v5, v3}, Lcom/jme3/collision/CollisionResult;->setDistance(F)V

    invoke-virtual {v5, v4}, Lcom/jme3/collision/CollisionResult;->setContactNormal(Lcom/jme3/math/Vector3f;)V

    iget-object v3, v1, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v3}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/jme3/collision/CollisionResult;->setContactPoint(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0, v5}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Lcom/jme3/util/TempVars;->release()V

    return v14

    :cond_5
    :try_start_3
    invoke-virtual {v3, v3}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v7

    cmpg-float v9, v7, v8

    if-gez v9, :cond_6

    move v8, v7

    goto :goto_1

    :cond_6
    move-object v3, v6

    :goto_1
    invoke-virtual {v4, v4}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v6

    cmpg-float v7, v6, v8

    if-gez v7, :cond_7

    move v8, v6

    goto :goto_2

    :cond_7
    move-object v4, v3

    :goto_2
    invoke-virtual {v5, v5}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v3

    cmpg-float v6, v3, v8

    if-gez v6, :cond_8

    move v8, v3

    goto :goto_3

    :cond_8
    move-object v5, v4

    :goto_3
    if-eqz v5, :cond_9

    invoke-static {v8}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v3

    neg-float v4, v3

    invoke-virtual {v5, v4}, Lcom/jme3/math/Vector3f;->divide(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    new-instance v6, Lcom/jme3/collision/CollisionResult;

    invoke-direct {v6}, Lcom/jme3/collision/CollisionResult;-><init>()V

    iget v7, v1, Lcom/jme3/bounding/BoundingSphere;->radius:F

    sub-float/2addr v3, v7

    invoke-virtual {v6, v3}, Lcom/jme3/collision/CollisionResult;->setDistance(F)V

    invoke-virtual {v6, v4}, Lcom/jme3/collision/CollisionResult;->setContactNormal(Lcom/jme3/math/Vector3f;)V

    iget-object v3, v1, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v3}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/jme3/collision/CollisionResult;->setContactPoint(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0, v6}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v2}, Lcom/jme3/util/TempVars;->release()V

    return v14

    :cond_9
    invoke-virtual {v2}, Lcom/jme3/util/TempVars;->release()V

    return v10

    :goto_4
    invoke-virtual {v2}, Lcom/jme3/util/TempVars;->release()V

    throw v0
.end method

.method private getMaxAxis(Lcom/jme3/math/Vector3f;)F
    .locals 3

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {p1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p1

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1

    cmpl-float v1, v0, p1

    if-ltz v1, :cond_0

    return v0

    :cond_0
    return p1

    :cond_1
    cmpl-float v0, v1, p1

    if-ltz v0, :cond_2

    return v1

    :cond_2
    return p1
.end method

.method private merge(FLcom/jme3/math/Vector3f;Lcom/jme3/bounding/BoundingSphere;)Lcom/jme3/bounding/BoundingVolume;
    .locals 6

    .line 12
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v1, v2}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v2

    .line 15
    iget v3, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    sub-float v3, p1, v3

    mul-float v4, v3, v3

    cmpl-float v4, v4, v2

    if-ltz v4, :cond_2

    const/4 v1, 0x0

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_0

    .line 16
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-object p0

    .line 17
    :cond_0
    iget-object v1, p3, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    if-nez v1, :cond_1

    .line 18
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {p3, v1}, Lcom/jme3/bounding/BoundingVolume;->setCenter(Lcom/jme3/math/Vector3f;)V

    .line 19
    :cond_1
    invoke-virtual {v1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 20
    invoke-virtual {p3, p1}, Lcom/jme3/bounding/BoundingSphere;->setRadius(F)V

    .line 21
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-object p3

    :cond_2
    float-to-double v4, v2

    .line 22
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float p2, v4

    .line 23
    iget-object v2, p3, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    if-nez v2, :cond_3

    .line 24
    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {p3, v2}, Lcom/jme3/bounding/BoundingVolume;->setCenter(Lcom/jme3/math/Vector3f;)V

    :cond_3
    const v4, 0x3f800054    # 1.00001f

    cmpl-float v4, p2, v4

    if-lez v4, :cond_4

    .line 25
    invoke-static {p2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v4

    if-eqz v4, :cond_4

    add-float/2addr v3, p2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, p2

    div-float/2addr v3, v4

    .line 26
    iget-object v4, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v3}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    .line 27
    :cond_4
    iget-object v1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 28
    :goto_0
    iget v1, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    add-float/2addr p2, v1

    add-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p2, p1

    invoke-virtual {p3, p2}, Lcom/jme3/bounding/BoundingSphere;->setRadius(F)V

    .line 29
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-object p3
.end method

.method private recurseMini(Ljava/nio/FloatBuffer;III)V
    .locals 8

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    const/4 v4, 0x1

    if-eqz p3, :cond_4

    if-eq p3, v4, :cond_3

    const/4 v5, 0x2

    if-eq p3, v5, :cond_2

    const/4 v5, 0x3

    if-eq p3, v5, :cond_1

    const/4 v5, 0x4

    if-eq p3, v5, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p4, -0x1

    invoke-static {v0, p1, p2}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 p2, p4, -0x2

    invoke-static {v1, p1, p2}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 p2, p4, -0x3

    invoke-static {v2, p1, p2}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    sub-int/2addr p4, v5

    invoke-static {v3, p1, p4}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/jme3/bounding/BoundingSphere;->setSphere(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    return-void

    :cond_1
    add-int/lit8 v3, p4, -0x1

    invoke-static {v0, p1, v3}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v3, p4, -0x2

    invoke-static {v1, p1, v3}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v3, p4, -0x3

    invoke-static {v2, p1, v3}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    invoke-direct {p0, v0, v1, v2}, Lcom/jme3/bounding/BoundingSphere;->setSphere(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v3, p4, -0x1

    invoke-static {v0, p1, v3}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v3, p4, -0x2

    invoke-static {v1, p1, v3}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    invoke-direct {p0, v0, v1}, Lcom/jme3/bounding/BoundingSphere;->setSphere(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_3
    const/high16 v3, -0x48d80000

    iput v3, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    iget-object v3, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    add-int/lit8 v5, p4, -0x1

    invoke-static {v3, p1, v5}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    iput v3, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    iget-object v5, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v3, v3, v3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_7

    add-int v5, v3, p4

    invoke-static {v0, p1, v5}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    iget-object v5, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v5}, Lcom/jme3/math/Vector3f;->distanceSquared(Lcom/jme3/math/Vector3f;)F

    move-result v5

    iget v6, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    mul-float/2addr v6, v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x37280000

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    move v5, v3

    :goto_2
    if-lez v5, :cond_5

    add-int v6, v5, p4

    invoke-static {v1, p1, v6}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v7, v5, -0x1

    add-int/2addr v7, p4

    invoke-static {v2, p1, v7}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    invoke-static {v2, p1, v6}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    invoke-static {v1, p1, v7}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v5, p3, 0x1

    add-int/lit8 v6, p4, 0x1

    invoke-direct {p0, p1, v3, v5, v6}, Lcom/jme3/bounding/BoundingSphere;->recurseMini(Ljava/nio/FloatBuffer;III)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method private setSphere(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 4

    .line 24
    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    sub-float v2, v0, v1

    sub-float/2addr v0, v1

    mul-float/2addr v2, v0

    iget v0, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    sub-float v3, v0, v1

    sub-float/2addr v0, v1

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iget v0, p2, Lcom/jme3/math/Vector3f;->z:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->z:F

    sub-float v3, v0, v1

    sub-float/2addr v0, v1

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr v2, v0

    invoke-static {v2}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    const v1, 0x3f800054    # 1.00001f

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    .line 25
    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, p1, p2, v1}, Lcom/jme3/math/Vector3f;->interpolateLocal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method private setSphere(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 4

    .line 15
    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    .line 16
    invoke-virtual {p3, p1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p3

    .line 17
    invoke-virtual {p2, p3}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v0}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    .line 19
    iget-object p1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v2, v2, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 20
    iput v2, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0, p2}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {p3, v0}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p3

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result p2

    invoke-virtual {p3, p2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object p2

    .line 22
    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->length()F

    move-result p3

    const v0, 0x3f800054    # 1.00001f

    mul-float/2addr p3, v0

    iput p3, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    .line 23
    iget-object p3, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2, p3}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_0
    return-void
.end method

.method private setSphere(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 8

    .line 1
    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    .line 2
    invoke-virtual {p3, p1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p3

    .line 3
    invoke-virtual {p4, p1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p4

    .line 4
    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p3, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p4, Lcom/jme3/math/Vector3f;->z:F

    mul-float v3, v1, v2

    iget v4, p4, Lcom/jme3/math/Vector3f;->y:F

    iget v5, p3, Lcom/jme3/math/Vector3f;->z:F

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    mul-float/2addr v0, v3

    iget v3, p3, Lcom/jme3/math/Vector3f;->x:F

    iget v6, p2, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v2, v6

    iget v7, p2, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v4, v7

    sub-float/2addr v2, v4

    mul-float/2addr v3, v2

    sub-float/2addr v0, v3

    iget v2, p4, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v6, v5

    mul-float/2addr v1, v7

    sub-float/2addr v6, v1

    mul-float/2addr v2, v6

    add-float/2addr v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1, v1, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 6
    iput v1, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2, p3}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p4}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 8
    invoke-virtual {p4, p2}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 10
    invoke-virtual {p3, p4}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p3

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result p2

    invoke-virtual {p3, p2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object p2

    .line 11
    invoke-virtual {v1, p2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    .line 12
    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object p2

    .line 13
    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->length()F

    move-result p3

    const p4, 0x3f800054    # 1.00001f

    mul-float/2addr p3, p4

    iput p3, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    .line 14
    iget-object p3, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2, p3}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_0
    return-void
.end method


# virtual methods
.method public averagePoints([Lcom/jme3/math/Vector3f;)V
    .locals 5

    sget-object v0, Lcom/jme3/bounding/BoundingSphere;->logger:Ljava/util/logging/Logger;

    const-string v1, "Bounding Sphere calculated using average points."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iput-object v1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    const/4 v1, 0x1

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v1, p1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    iget-object v3, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    aget-object v3, p1, v0

    iget-object v4, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    move v1, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    const v0, 0x3f800054    # 1.00001f

    add-float/2addr p1, v0

    sub-float/2addr p1, v2

    iput p1, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    return-void
.end method

.method public calcWelzl(Ljava/nio/FloatBuffer;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/jme3/bounding/BoundingSphere;->recurseMini(Ljava/nio/FloatBuffer;III)V

    return-void
.end method

.method public clone(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getType()Lcom/jme3/bounding/BoundingVolume$Type;

    move-result-object v0

    sget-object v1, Lcom/jme3/bounding/BoundingVolume$Type;->Sphere:Lcom/jme3/bounding/BoundingVolume$Type;

    if-ne v0, v1, :cond_1

    check-cast p1, Lcom/jme3/bounding/BoundingSphere;

    iget-object v0, p1, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p1, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    :cond_0
    iget-object v0, p1, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v0, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    iput v0, p1, Lcom/jme3/bounding/BoundingSphere;->radius:F

    iget v0, p0, Lcom/jme3/bounding/BoundingVolume;->checkPlane:I

    iput v0, p1, Lcom/jme3/bounding/BoundingVolume;->checkPlane:I

    return-object p1

    :cond_1
    new-instance p1, Lcom/jme3/bounding/BoundingSphere;

    iget v0, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    iget-object v1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/jme3/bounding/BoundingSphere;-><init>(FLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public collideWith(Lcom/jme3/collision/Collidable;)I
    .locals 1

    .line 14
    instance-of v0, p1, Lcom/jme3/math/Ray;

    if-eqz v0, :cond_0

    .line 15
    check-cast p1, Lcom/jme3/math/Ray;

    .line 16
    invoke-direct {p0, p1}, Lcom/jme3/bounding/BoundingSphere;->collideWithRay(Lcom/jme3/math/Ray;)I

    move-result p1

    return p1

    .line 17
    :cond_0
    instance-of v0, p1, Lcom/jme3/math/Triangle;

    if-eqz v0, :cond_1

    .line 18
    invoke-super {p0, p1}, Lcom/jme3/bounding/BoundingVolume;->collideWith(Lcom/jme3/collision/Collidable;)I

    move-result p1

    return p1

    .line 19
    :cond_1
    instance-of v0, p1, Lcom/jme3/bounding/BoundingVolume;

    if-eqz v0, :cond_2

    .line 20
    check-cast p1, Lcom/jme3/bounding/BoundingVolume;

    invoke-virtual {p0, p1}, Lcom/jme3/bounding/BoundingSphere;->intersects(Lcom/jme3/bounding/BoundingVolume;)Z

    move-result p1

    return p1

    .line 21
    :cond_2
    new-instance p1, Lcom/jme3/collision/UnsupportedCollisionException;

    invoke-direct {p1}, Lcom/jme3/collision/UnsupportedCollisionException;-><init>()V

    throw p1
.end method

.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/jme3/math/Ray;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/jme3/math/Ray;

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/jme3/bounding/BoundingSphere;->collideWithRay(Lcom/jme3/math/Ray;Lcom/jme3/collision/CollisionResults;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/jme3/math/Triangle;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lcom/jme3/math/Triangle;

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/jme3/bounding/BoundingSphere;->collideWithTri(Lcom/jme3/math/Triangle;Lcom/jme3/collision/CollisionResults;)I

    move-result p1

    return p1

    .line 7
    :cond_1
    instance-of v0, p1, Lcom/jme3/bounding/BoundingVolume;

    if-eqz v0, :cond_3

    .line 8
    check-cast p1, Lcom/jme3/bounding/BoundingVolume;

    invoke-virtual {p0, p1}, Lcom/jme3/bounding/BoundingSphere;->intersects(Lcom/jme3/bounding/BoundingVolume;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    new-instance p1, Lcom/jme3/collision/CollisionResult;

    invoke-direct {p1}, Lcom/jme3/collision/CollisionResult;-><init>()V

    .line 10
    invoke-virtual {p2, p1}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 11
    :cond_3
    instance-of v0, p1, Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {p1, p0, p2}, Lcom/jme3/collision/Collidable;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    move-result p1

    return p1

    .line 13
    :cond_4
    new-instance p1, Lcom/jme3/collision/UnsupportedCollisionException;

    invoke-direct {p1}, Lcom/jme3/collision/UnsupportedCollisionException;-><init>()V

    throw p1
.end method

.method public computeFromPoints(Ljava/nio/FloatBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/bounding/BoundingSphere;->calcWelzl(Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method public computeFromTris([Lcom/jme3/math/Triangle;II)V
    .locals 7

    sub-int v0, p3, p2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge p2, p3, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget-object v4, p1, p2

    invoke-virtual {v4, v1}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v4

    aput-object v4, v0, v2

    add-int/lit8 v4, v2, 0x2

    aget-object v5, p1, p2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v5

    aput-object v5, v0, v3

    add-int/lit8 v2, v2, 0x3

    aget-object v3, p1, p2

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v3

    aput-object v3, v0, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/jme3/bounding/BoundingSphere;->averagePoints([Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public contains(Lcom/jme3/math/Vector3f;)Z
    .locals 2

    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->distanceSquared(Lcom/jme3/math/Vector3f;)F

    move-result p1

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v1

    mul-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public distanceToEdge(Lcom/jme3/math/Vector3f;)F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->distance(Lcom/jme3/math/Vector3f;)F

    move-result p1

    iget v0, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    sub-float/2addr p1, v0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/jme3/bounding/BoundingSphere;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    check-cast p1, Lcom/jme3/bounding/BoundingSphere;

    iget v0, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-super {p0, p1}, Lcom/jme3/bounding/BoundingVolume;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    return v0
.end method

.method public getType()Lcom/jme3/bounding/BoundingVolume$Type;
    .locals 1

    sget-object v0, Lcom/jme3/bounding/BoundingVolume$Type;->Sphere:Lcom/jme3/bounding/BoundingVolume$Type;

    return-object v0
.end method

.method public getVolume()F
    .locals 2

    iget v0, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    const v1, 0x40860a92

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3b

    invoke-super {p0}, Lcom/jme3/bounding/BoundingVolume;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public intersects(Lcom/jme3/bounding/BoundingVolume;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/jme3/bounding/BoundingVolume;->intersectsSphere(Lcom/jme3/bounding/BoundingSphere;)Z

    move-result p1

    return p1
.end method

.method public intersects(Lcom/jme3/math/Ray;)Z
    .locals 8

    .line 2
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v2

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v3

    mul-float/2addr v2, v3

    .line 5
    invoke-virtual {v1, v1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v3

    sub-float/2addr v3, v2

    float-to-double v4, v3

    const-wide/16 v6, 0x0

    cmpg-double v2, v4, v6

    const/4 v4, 0x1

    if-gtz v2, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return v4

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p1

    .line 8
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    float-to-double v0, p1

    cmpl-double v0, v0, v6

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    return v1

    :cond_1
    mul-float/2addr p1, p1

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    return v4
.end method

.method public intersects(Lcom/jme3/math/Vector3f;)Z
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->distanceSquared(Lcom/jme3/math/Vector3f;)F

    move-result p1

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v1

    mul-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public intersectsBoundingBox(Lcom/jme3/bounding/BoundingBox;)Z
    .locals 2

    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget v1, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    invoke-static {p1, v0, v1}, Lcom/jme3/bounding/Intersection;->intersect(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/math/Vector3f;F)Z

    move-result p1

    return p1
.end method

.method public intersectsSphere(Lcom/jme3/bounding/BoundingSphere;)Z
    .locals 2

    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget v1, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    invoke-static {p1, v0, v1}, Lcom/jme3/bounding/Intersection;->intersect(Lcom/jme3/bounding/BoundingSphere;Lcom/jme3/math/Vector3f;F)Z

    move-result p1

    return p1
.end method

.method public isSimilar(Lcom/jme3/bounding/BoundingSphere;F)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v1

    iget v2, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/jme3/math/Vector3f;->isSimilar(Lcom/jme3/math/Vector3f;F)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public merge(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    sget-object v0, Lcom/jme3/bounding/BoundingSphere$1;->$SwitchMap$com$jme3$bounding$BoundingVolume$Type:[I

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getType()Lcom/jme3/bounding/BoundingVolume$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_1
    check-cast p1, Lcom/jme3/bounding/BoundingBox;

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    iget v1, p1, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iget v2, p1, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iget v3, p1, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    .line 4
    iget-object p1, p1, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    .line 5
    new-instance v1, Lcom/jme3/bounding/BoundingSphere;

    invoke-direct {v1}, Lcom/jme3/bounding/BoundingSphere;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->length()F

    move-result v0

    invoke-direct {p0, v0, p1, v1}, Lcom/jme3/bounding/BoundingSphere;->merge(FLcom/jme3/math/Vector3f;Lcom/jme3/bounding/BoundingSphere;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    check-cast p1, Lcom/jme3/bounding/BoundingSphere;

    .line 8
    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v0

    .line 9
    iget-object p1, p1, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    .line 10
    new-instance v1, Lcom/jme3/bounding/BoundingSphere;

    invoke-direct {v1}, Lcom/jme3/bounding/BoundingSphere;-><init>()V

    .line 11
    invoke-direct {p0, v0, p1, v1}, Lcom/jme3/bounding/BoundingSphere;->merge(FLcom/jme3/math/Vector3f;Lcom/jme3/bounding/BoundingSphere;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object p1

    return-object p1
.end method

.method public mergeLocal(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
    .locals 5

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lcom/jme3/bounding/BoundingSphere$1;->$SwitchMap$com$jme3$bounding$BoundingVolume$Type:[I

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getType()Lcom/jme3/bounding/BoundingVolume$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    check-cast p1, Lcom/jme3/bounding/BoundingBox;

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v2, p1, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iget v3, p1, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iget v4, p1, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object p1, p1, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->length()F

    move-result v1

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    invoke-direct {p0, v1, p1, p0}, Lcom/jme3/bounding/BoundingSphere;->merge(FLcom/jme3/math/Vector3f;Lcom/jme3/bounding/BoundingSphere;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object p1

    return-object p1

    :cond_2
    check-cast p1, Lcom/jme3/bounding/BoundingSphere;

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v0

    iget-object p1, p1, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-direct {p0, v0, p1, p0}, Lcom/jme3/bounding/BoundingSphere;->merge(FLcom/jme3/math/Vector3f;Lcom/jme3/bounding/BoundingSphere;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bounding/BoundingVolume;->read(Lcom/jme3/export/JmeImporter;)V

    :try_start_0
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "radius"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v5, p1

    sget-object v0, Lcom/jme3/bounding/BoundingSphere;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "read(JMEImporter)"

    const-string v4, "Exception"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [Radius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " Center: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p2}, Lcom/jme3/bounding/BoundingVolume;->getType()Lcom/jme3/bounding/BoundingVolume$Type;

    move-result-object v1

    sget-object v2, Lcom/jme3/bounding/BoundingVolume$Type;->Sphere:Lcom/jme3/bounding/BoundingVolume$Type;

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    check-cast p2, Lcom/jme3/bounding/BoundingSphere;

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    new-instance p2, Lcom/jme3/bounding/BoundingSphere;

    new-instance v1, Lcom/jme3/math/Vector3f;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-direct {p2, v0, v1}, Lcom/jme3/bounding/BoundingSphere;-><init>(FLcom/jme3/math/Vector3f;)V

    .line 11
    :goto_1
    iget-object v1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget-object v2, p2, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1, v2}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 12
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1, v0, v0, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    .line 13
    invoke-virtual {p1, v1, v1}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 14
    invoke-direct {p0, v1}, Lcom/jme3/bounding/BoundingSphere;->getMaxAxis(Lcom/jme3/math/Vector3f;)F

    move-result p1

    .line 15
    iget v1, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    mul-float/2addr p1, v1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p1

    const v1, 0x3f800054    # 1.00001f

    add-float/2addr p1, v1

    sub-float/2addr p1, v0

    iput p1, p2, Lcom/jme3/bounding/BoundingSphere;->radius:F

    return-object p2
.end method

.method public transform(Lcom/jme3/math/Transform;Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/jme3/bounding/BoundingVolume;->getType()Lcom/jme3/bounding/BoundingVolume$Type;

    move-result-object v1

    sget-object v2, Lcom/jme3/bounding/BoundingVolume$Type;->Sphere:Lcom/jme3/bounding/BoundingVolume$Type;

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p2, Lcom/jme3/bounding/BoundingSphere;

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    new-instance p2, Lcom/jme3/bounding/BoundingSphere;

    new-instance v1, Lcom/jme3/math/Vector3f;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-direct {p2, v0, v1}, Lcom/jme3/bounding/BoundingSphere;-><init>(FLcom/jme3/math/Vector3f;)V

    .line 4
    :goto_1
    iget-object v1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget-object v3, p2, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 5
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v1

    iget-object v2, p2, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2, v2}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 6
    iget-object v1, p2, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 7
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jme3/bounding/BoundingSphere;->getMaxAxis(Lcom/jme3/math/Vector3f;)F

    move-result p1

    iget v1, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    mul-float/2addr p1, v1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p1

    const v1, 0x3f800054    # 1.00001f

    add-float/2addr p1, v1

    sub-float/2addr p1, v0

    iput p1, p2, Lcom/jme3/bounding/BoundingSphere;->radius:F

    return-object p2
.end method

.method public whichSide(Lcom/jme3/math/Plane;)Lcom/jme3/math/Plane$Side;
    .locals 2

    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Plane;->pseudoDistance(Lcom/jme3/math/Vector3f;)F

    move-result p1

    iget v0, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    neg-float v1, v0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    sget-object p1, Lcom/jme3/math/Plane$Side;->Negative:Lcom/jme3/math/Plane$Side;

    return-object p1

    :cond_0
    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    sget-object p1, Lcom/jme3/math/Plane$Side;->Positive:Lcom/jme3/math/Plane$Side;

    return-object p1

    :cond_1
    sget-object p1, Lcom/jme3/math/Plane$Side;->None:Lcom/jme3/math/Plane$Side;

    return-object p1
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bounding/BoundingVolume;->write(Lcom/jme3/export/JmeExporter;)V

    :try_start_0
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    const-string v1, "radius"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v5, p1

    sget-object v0, Lcom/jme3/bounding/BoundingSphere;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "write(JMEExporter)"

    const-string v4, "Exception"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
