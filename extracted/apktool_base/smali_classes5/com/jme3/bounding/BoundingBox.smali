.class public Lcom/jme3/bounding/BoundingBox;
.super Lcom/jme3/bounding/BoundingVolume;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field xExtent:F

.field yExtent:F

.field zExtent:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bounding/BoundingVolume;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bounding/BoundingBox;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/jme3/bounding/BoundingVolume;-><init>()V

    .line 8
    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget-object v1, p1, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 9
    iget v0, p1, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iput v0, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    .line 10
    iget v0, p1, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iput v0, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    .line 11
    iget p1, p1, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    iput p1, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;FFF)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/jme3/bounding/BoundingVolume;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 4
    iput p2, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    .line 5
    iput p3, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    .line 6
    iput p4, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/jme3/bounding/BoundingVolume;-><init>()V

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/jme3/bounding/BoundingBox;->setMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public static checkMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 2

    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p0, Lcom/jme3/math/Vector3f;->x:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iput v0, p0, Lcom/jme3/math/Vector3f;->x:F

    :cond_0
    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iput v0, p1, Lcom/jme3/math/Vector3f;->x:F

    :cond_1
    iget v0, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    iput v0, p0, Lcom/jme3/math/Vector3f;->y:F

    :cond_2
    iget v0, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    iput v0, p1, Lcom/jme3/math/Vector3f;->y:F

    :cond_3
    iget v0, p2, Lcom/jme3/math/Vector3f;->z:F

    iget v1, p0, Lcom/jme3/math/Vector3f;->z:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    iput v0, p0, Lcom/jme3/math/Vector3f;->z:F

    :cond_4
    iget p0, p2, Lcom/jme3/math/Vector3f;->z:F

    iget p2, p1, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float p2, p0, p2

    if-lez p2, :cond_5

    iput p0, p1, Lcom/jme3/math/Vector3f;->z:F

    :cond_5
    return-void
.end method

.method private clip(FF[F)Z
    .locals 4

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2

    div-float/2addr p2, p1

    aget p1, p3, v3

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    return v2

    :cond_0
    aget p1, p3, v2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    aput p2, p3, v2

    :cond_1
    return v3

    :cond_2
    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    div-float/2addr p2, p1

    aget p1, p3, v2

    cmpg-float p1, p2, p1

    if-gez p1, :cond_3

    return v2

    :cond_3
    aget p1, p3, v3

    cmpg-float p1, p2, p1

    if-gez p1, :cond_4

    aput p2, p3, v3

    :cond_4
    return v3

    :cond_5
    float-to-double p1, p2

    const-wide/16 v0, 0x0

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_6

    move v2, v3

    :cond_6
    return v2
.end method

.method private collideWithRay(Lcom/jme3/math/Ray;)I
    .locals 10

    .line 27
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 28
    :try_start_0
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, p1, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 29
    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object p1, p1, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    .line 30
    iget-object v2, v0, Lcom/jme3/util/TempVars;->fWdU:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 31
    aput v4, v2, v3

    const/4 v5, 0x1

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 32
    aput v6, v2, v5

    .line 33
    iget v7, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v8, v1, Lcom/jme3/math/Vector3f;->x:F

    neg-float v8, v8

    iget v9, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    sub-float/2addr v8, v9

    invoke-direct {p0, v7, v8, v2}, Lcom/jme3/bounding/BoundingBox;->clip(FF[F)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p1, Lcom/jme3/math/Vector3f;->x:F

    neg-float v7, v7

    iget v8, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v9, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    sub-float/2addr v8, v9

    .line 34
    invoke-direct {p0, v7, v8, v2}, Lcom/jme3/bounding/BoundingBox;->clip(FF[F)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v8, v1, Lcom/jme3/math/Vector3f;->y:F

    neg-float v8, v8

    iget v9, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    sub-float/2addr v8, v9

    .line 35
    invoke-direct {p0, v7, v8, v2}, Lcom/jme3/bounding/BoundingBox;->clip(FF[F)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p1, Lcom/jme3/math/Vector3f;->y:F

    neg-float v7, v7

    iget v8, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v9, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    sub-float/2addr v8, v9

    .line 36
    invoke-direct {p0, v7, v8, v2}, Lcom/jme3/bounding/BoundingBox;->clip(FF[F)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p1, Lcom/jme3/math/Vector3f;->z:F

    iget v8, v1, Lcom/jme3/math/Vector3f;->z:F

    neg-float v8, v8

    iget v9, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    sub-float/2addr v8, v9

    .line 37
    invoke-direct {p0, v7, v8, v2}, Lcom/jme3/bounding/BoundingBox;->clip(FF[F)Z

    move-result v7

    if-eqz v7, :cond_2

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    neg-float p1, p1

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    iget v7, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    sub-float/2addr v1, v7

    .line 38
    invoke-direct {p0, p1, v1, v2}, Lcom/jme3/bounding/BoundingBox;->clip(FF[F)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 39
    aget p1, v2, v3

    cmpl-float v1, p1, v4

    if-nez v1, :cond_0

    aget v1, v2, v5

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    aget v1, v2, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float p1, v1, p1

    if-lez p1, :cond_1

    .line 41
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    const/4 p1, 0x2

    return p1

    :cond_1
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return v5

    :cond_2
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return v3

    :goto_1
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    .line 42
    throw p1
.end method

.method private collideWithRay(Lcom/jme3/math/Ray;Lcom/jme3/collision/CollisionResults;)I
    .locals 11

    .line 1
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, p1, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v3, p1, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    .line 4
    iget-object v3, v0, Lcom/jme3/util/TempVars;->fWdU:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    aput v5, v3, v4

    const/4 v6, 0x1

    const/high16 v7, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 6
    aput v7, v3, v6

    .line 7
    iget v8, v2, Lcom/jme3/math/Vector3f;->x:F

    iget v9, v1, Lcom/jme3/math/Vector3f;->x:F

    neg-float v9, v9

    iget v10, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    sub-float/2addr v9, v10

    invoke-direct {p0, v8, v9, v3}, Lcom/jme3/bounding/BoundingBox;->clip(FF[F)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, v2, Lcom/jme3/math/Vector3f;->x:F

    neg-float v8, v8

    iget v9, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v10, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    sub-float/2addr v9, v10

    .line 8
    invoke-direct {p0, v8, v9, v3}, Lcom/jme3/bounding/BoundingBox;->clip(FF[F)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v9, v1, Lcom/jme3/math/Vector3f;->y:F

    neg-float v9, v9

    iget v10, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    sub-float/2addr v9, v10

    .line 9
    invoke-direct {p0, v8, v9, v3}, Lcom/jme3/bounding/BoundingBox;->clip(FF[F)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, v2, Lcom/jme3/math/Vector3f;->y:F

    neg-float v8, v8

    iget v9, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v10, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    sub-float/2addr v9, v10

    .line 10
    invoke-direct {p0, v8, v9, v3}, Lcom/jme3/bounding/BoundingBox;->clip(FF[F)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, v2, Lcom/jme3/math/Vector3f;->z:F

    iget v9, v1, Lcom/jme3/math/Vector3f;->z:F

    neg-float v9, v9

    iget v10, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    sub-float/2addr v9, v10

    .line 11
    invoke-direct {p0, v8, v9, v3}, Lcom/jme3/bounding/BoundingBox;->clip(FF[F)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    neg-float v2, v2

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    iget v8, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    sub-float/2addr v1, v8

    .line 12
    invoke-direct {p0, v2, v1, v3}, Lcom/jme3/bounding/BoundingBox;->clip(FF[F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    aget v1, v3, v4

    cmpl-float v2, v1, v5

    if-nez v2, :cond_0

    aget v2, v3, v6

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    aget v2, v3, v6

    cmpl-float v1, v2, v1

    if-lez v1, :cond_1

    .line 15
    new-instance v1, Lcom/jme3/math/Vector3f;

    iget-object v2, p1, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-direct {v1, v2}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    aget v2, v3, v4

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p1, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 16
    new-instance v2, Lcom/jme3/math/Vector3f;

    iget-object v5, p1, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-direct {v2, v5}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    aget v5, v3, v6

    invoke-virtual {v2, v5}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget-object p1, p1, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    .line 17
    new-instance v2, Lcom/jme3/collision/CollisionResult;

    aget v4, v3, v4

    invoke-direct {v2, v1, v4}, Lcom/jme3/collision/CollisionResult;-><init>(Lcom/jme3/math/Vector3f;F)V

    .line 18
    invoke-virtual {p2, v2}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    .line 19
    new-instance v1, Lcom/jme3/collision/CollisionResult;

    aget v2, v3, v6

    invoke-direct {v1, p1, v2}, Lcom/jme3/collision/CollisionResult;-><init>(Lcom/jme3/math/Vector3f;F)V

    .line 20
    invoke-virtual {p2, v1}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    const/4 p1, 0x2

    return p1

    .line 22
    :cond_1
    :try_start_1
    new-instance v1, Lcom/jme3/math/Vector3f;

    iget-object v2, p1, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-direct {v1, v2}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    aget v2, v3, v4

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object p1, p1, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    .line 23
    new-instance v1, Lcom/jme3/collision/CollisionResult;

    aget v2, v3, v4

    invoke-direct {v1, p1, v2}, Lcom/jme3/collision/CollisionResult;-><init>(Lcom/jme3/math/Vector3f;F)V

    .line 24
    invoke-virtual {p2, v1}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return v6

    :cond_2
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return v4

    :goto_1
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    .line 26
    throw p1
.end method

.method private mergeLocal(Lcom/jme3/math/Vector3f;FFF)Lcom/jme3/bounding/BoundingBox;
    .locals 9

    .line 6
    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v2, :cond_3

    cmpl-float v2, p2, v1

    if-nez v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget v5, v2, Lcom/jme3/math/Vector3f;->x:F

    sub-float v6, v5, v0

    .line 8
    iget v7, p1, Lcom/jme3/math/Vector3f;->x:F

    sub-float v8, v7, p2

    cmpl-float v8, v6, v8

    if-lez v8, :cond_1

    sub-float v6, v7, p2

    :cond_1
    add-float/2addr v5, v0

    add-float v0, v7, p2

    cmpg-float v0, v5, v0

    if-gez v0, :cond_2

    add-float v5, v7, p2

    :cond_2
    add-float/2addr v6, v5

    div-float/2addr v6, v4

    .line 9
    iput v6, v2, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v5, v6

    .line 10
    iput v5, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    goto :goto_1

    .line 11
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iput v3, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 12
    iput v1, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    .line 13
    :goto_1
    iget p2, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_7

    cmpl-float v0, p3, v1

    if-nez v0, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget v2, v0, Lcom/jme3/math/Vector3f;->y:F

    sub-float v5, v2, p2

    .line 15
    iget v6, p1, Lcom/jme3/math/Vector3f;->y:F

    sub-float v7, v6, p3

    cmpl-float v7, v5, v7

    if-lez v7, :cond_5

    sub-float v5, v6, p3

    :cond_5
    add-float/2addr v2, p2

    add-float p2, v6, p3

    cmpg-float p2, v2, p2

    if-gez p2, :cond_6

    add-float v2, v6, p3

    :cond_6
    add-float/2addr v5, v2

    div-float/2addr v5, v4

    .line 16
    iput v5, v0, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v2, v5

    .line 17
    iput v2, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    goto :goto_3

    .line 18
    :cond_7
    :goto_2
    iget-object p2, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iput v3, p2, Lcom/jme3/math/Vector3f;->y:F

    .line 19
    iput v1, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    .line 20
    :goto_3
    iget p2, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    cmpl-float p3, p2, v1

    if-eqz p3, :cond_b

    cmpl-float p3, p4, v1

    if-nez p3, :cond_8

    goto :goto_4

    .line 21
    :cond_8
    iget-object p3, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget v0, p3, Lcom/jme3/math/Vector3f;->z:F

    sub-float v1, v0, p2

    .line 22
    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    sub-float v2, p1, p4

    cmpl-float v2, v1, v2

    if-lez v2, :cond_9

    sub-float v1, p1, p4

    :cond_9
    add-float/2addr v0, p2

    add-float p2, p1, p4

    cmpg-float p2, v0, p2

    if-gez p2, :cond_a

    add-float v0, p1, p4

    :cond_a
    add-float/2addr v1, v0

    div-float/2addr v1, v4

    .line 23
    iput v1, p3, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v0, v1

    .line 24
    iput v0, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    goto :goto_5

    .line 25
    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iput v3, p1, Lcom/jme3/math/Vector3f;->z:F

    .line 26
    iput v1, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    :goto_5
    return-object p0
.end method


# virtual methods
.method public clone(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getType()Lcom/jme3/bounding/BoundingVolume$Type;

    move-result-object v0

    sget-object v1, Lcom/jme3/bounding/BoundingVolume$Type;->AABB:Lcom/jme3/bounding/BoundingVolume$Type;

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/jme3/bounding/BoundingBox;

    iget-object v0, p1, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iput v0, p1, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iput v0, p1, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    iput v0, p1, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    iget v0, p0, Lcom/jme3/bounding/BoundingVolume;->checkPlane:I

    iput v0, p1, Lcom/jme3/bounding/BoundingVolume;->checkPlane:I

    return-object p1

    :cond_0
    new-instance p1, Lcom/jme3/bounding/BoundingBox;

    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v1, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iget v3, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/math/Vector3f;FFF)V

    return-object p1
.end method

.method public collideWith(Lcom/jme3/collision/Collidable;)I
    .locals 3

    .line 16
    instance-of v0, p1, Lcom/jme3/math/Ray;

    if-eqz v0, :cond_0

    .line 17
    check-cast p1, Lcom/jme3/math/Ray;

    .line 18
    invoke-direct {p0, p1}, Lcom/jme3/bounding/BoundingBox;->collideWithRay(Lcom/jme3/math/Ray;)I

    move-result p1

    return p1

    .line 19
    :cond_0
    instance-of v0, p1, Lcom/jme3/math/Triangle;

    if-eqz v0, :cond_2

    .line 20
    check-cast p1, Lcom/jme3/math/Triangle;

    .line 21
    invoke-virtual {p1}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/jme3/bounding/BoundingBox;->intersects(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 22
    :cond_2
    instance-of v0, p1, Lcom/jme3/bounding/BoundingVolume;

    if-eqz v0, :cond_3

    .line 23
    check-cast p1, Lcom/jme3/bounding/BoundingVolume;

    invoke-virtual {p0, p1}, Lcom/jme3/bounding/BoundingBox;->intersects(Lcom/jme3/bounding/BoundingVolume;)Z

    move-result p1

    return p1

    .line 24
    :cond_3
    new-instance v0, Lcom/jme3/collision/UnsupportedCollisionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "With: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/jme3/collision/UnsupportedCollisionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/jme3/math/Ray;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/jme3/math/Ray;

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/jme3/bounding/BoundingBox;->collideWithRay(Lcom/jme3/math/Ray;Lcom/jme3/collision/CollisionResults;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/jme3/math/Triangle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Lcom/jme3/math/Triangle;

    .line 6
    invoke-virtual {p1}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {p1}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, v0, v3, p1}, Lcom/jme3/bounding/BoundingBox;->intersects(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    new-instance p1, Lcom/jme3/collision/CollisionResult;

    invoke-direct {p1}, Lcom/jme3/collision/CollisionResult;-><init>()V

    .line 8
    invoke-virtual {p2, p1}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    return v2

    :cond_1
    return v1

    .line 9
    :cond_2
    instance-of v0, p1, Lcom/jme3/bounding/BoundingVolume;

    if-eqz v0, :cond_4

    .line 10
    check-cast p1, Lcom/jme3/bounding/BoundingVolume;

    invoke-virtual {p0, p1}, Lcom/jme3/bounding/BoundingBox;->intersects(Lcom/jme3/bounding/BoundingVolume;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    new-instance p1, Lcom/jme3/collision/CollisionResult;

    invoke-direct {p1}, Lcom/jme3/collision/CollisionResult;-><init>()V

    .line 12
    invoke-virtual {p2, p1}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    return v2

    :cond_3
    return v1

    .line 13
    :cond_4
    instance-of v0, p1, Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_5

    .line 14
    invoke-interface {p1, p0, p2}, Lcom/jme3/collision/Collidable;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    move-result p1

    return p1

    .line 15
    :cond_5
    new-instance p2, Lcom/jme3/collision/UnsupportedCollisionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "With: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jme3/collision/UnsupportedCollisionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public computeFromPoints(Ljava/nio/FloatBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/bounding/BoundingBox;->containAABB(Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method public computeFromTris([ILcom/jme3/scene/Mesh;II)V
    .locals 5

    sub-int v0, p4, p3

    if-gtz v0, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 17
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    .line 18
    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    .line 19
    iget-object v3, v0, Lcom/jme3/util/TempVars;->triangle:Lcom/jme3/math/Triangle;

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 20
    invoke-virtual {v1, v4, v4, v4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const/high16 v4, -0x800000    # Float.NEGATIVE_INFINITY

    .line 21
    invoke-virtual {v2, v4, v4, v4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-result-object v2

    :goto_0
    if-ge p3, p4, :cond_1

    .line 22
    aget v4, p1, p3

    invoke-virtual {p2, v4, v3}, Lcom/jme3/scene/Mesh;->getTriangle(ILcom/jme3/math/Triangle;)V

    const/4 v4, 0x0

    .line 23
    invoke-virtual {v3, v4}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v4

    .line 24
    invoke-static {v1, v2, v4}, Lcom/jme3/bounding/BoundingBox;->checkMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    const/4 v4, 0x1

    .line 25
    invoke-virtual {v3, v4}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v4

    .line 26
    invoke-static {v1, v2, v4}, Lcom/jme3/bounding/BoundingBox;->checkMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    const/4 v4, 0x2

    .line 27
    invoke-virtual {v3, v4}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v4

    .line 28
    invoke-static {v1, v2, v4}, Lcom/jme3/bounding/BoundingBox;->checkMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 30
    iget-object p1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    .line 31
    iget p1, v2, Lcom/jme3/math/Vector3f;->x:F

    iget-object p2, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget p3, p2, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr p1, p3

    iput p1, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    .line 32
    iget p1, v2, Lcom/jme3/math/Vector3f;->y:F

    iget p3, p2, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr p1, p3

    iput p1, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    .line 33
    iget p1, v2, Lcom/jme3/math/Vector3f;->z:F

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    .line 34
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method public computeFromTris([Lcom/jme3/math/Triangle;II)V
    .locals 5

    sub-int v0, p3, p2

    if-gtz v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    new-instance v2, Lcom/jme3/math/Vector3f;

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v2, v3, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    new-instance v3, Lcom/jme3/math/Vector3f;

    const/high16 v4, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v3, v4, v4, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    :goto_0
    if-ge p2, p3, :cond_1

    .line 4
    aget-object v3, p1, p2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 5
    invoke-static {v1, v2, v3}, Lcom/jme3/bounding/BoundingBox;->checkMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 6
    aget-object v3, p1, p2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 7
    invoke-static {v1, v2, v3}, Lcom/jme3/bounding/BoundingBox;->checkMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 8
    aget-object v3, p1, p2

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 9
    invoke-static {v1, v2, v3}, Lcom/jme3/bounding/BoundingBox;->checkMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 11
    iget-object p1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    .line 12
    iget p1, v2, Lcom/jme3/math/Vector3f;->x:F

    iget-object p2, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget p3, p2, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr p1, p3

    iput p1, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    .line 13
    iget p1, v2, Lcom/jme3/math/Vector3f;->y:F

    iget p3, p2, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr p1, p3

    iput p1, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    .line 14
    iget p1, v2, Lcom/jme3/math/Vector3f;->z:F

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    .line 15
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method public containAABB(Ljava/nio/FloatBuffer;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v2

    iget-object v3, v2, Lcom/jme3/util/TempVars;->skinPositions:[F

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v4

    int-to-float v4, v4

    array-length v5, v3

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/jme3/math/FastMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x1

    const/high16 v5, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    move v7, v5

    move v8, v6

    move v9, v8

    move v10, v9

    move v6, v7

    :goto_0
    if-ltz v4, :cond_9

    array-length v11, v3

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v1, v3, v12, v11}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    :goto_1
    if-ge v12, v11, :cond_8

    iget-object v13, v2, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    aget v14, v3, v12

    iput v14, v13, Lcom/jme3/math/Vector3f;->x:F

    add-int/lit8 v15, v12, 0x1

    aget v15, v3, v15

    iput v15, v13, Lcom/jme3/math/Vector3f;->y:F

    add-int/lit8 v16, v12, 0x2

    aget v1, v3, v16

    iput v1, v13, Lcom/jme3/math/Vector3f;->z:F

    cmpg-float v13, v14, v8

    if-gez v13, :cond_2

    move v8, v14

    :cond_2
    cmpl-float v13, v14, v5

    if-lez v13, :cond_3

    move v5, v14

    :cond_3
    cmpg-float v13, v15, v9

    if-gez v13, :cond_4

    move v9, v15

    :cond_4
    cmpl-float v13, v15, v6

    if-lez v13, :cond_5

    move v6, v15

    :cond_5
    cmpg-float v13, v1, v10

    if-gez v13, :cond_6

    move v10, v1

    :cond_6
    cmpl-float v13, v1, v7

    if-lez v13, :cond_7

    move v7, v1

    :cond_7
    add-int/lit8 v12, v12, 0x3

    move-object/from16 v1, p1

    goto :goto_1

    :cond_8
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v1, p1

    goto :goto_0

    :cond_9
    invoke-virtual {v2}, Lcom/jme3/util/TempVars;->release()V

    iget-object v1, v0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    add-float/2addr v8, v5

    add-float/2addr v9, v6

    add-float/2addr v10, v7

    invoke-virtual {v1, v8, v9, v10}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v1, v0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget-object v1, v0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget v2, v1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v5, v2

    iput v5, v0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iget v2, v1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v6, v2

    iput v6, v0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v7, v1

    iput v7, v0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    return-void
.end method

.method public contains(Lcom/jme3/math/Vector3f;)Z
    .locals 2

    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

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
    .locals 5

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v2, v1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget p1, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    neg-float v3, v2

    cmpg-float v3, p1, v3

    const/4 v4, 0x0

    if-gez v3, :cond_0

    add-float/2addr p1, v2

    mul-float/2addr p1, p1

    add-float/2addr v4, p1

    neg-float p1, v2

    iput p1, v1, Lcom/jme3/math/Vector3f;->x:F

    goto :goto_0

    :cond_0
    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    sub-float/2addr p1, v2

    mul-float/2addr p1, p1

    add-float/2addr v4, p1

    iput v2, v1, Lcom/jme3/math/Vector3f;->x:F

    :cond_1
    :goto_0
    iget p1, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    neg-float v3, v2

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    add-float/2addr p1, v2

    mul-float/2addr p1, p1

    add-float/2addr v4, p1

    neg-float p1, v2

    iput p1, v1, Lcom/jme3/math/Vector3f;->y:F

    goto :goto_1

    :cond_2
    cmpl-float v3, p1, v2

    if-lez v3, :cond_3

    sub-float/2addr p1, v2

    mul-float/2addr p1, p1

    add-float/2addr v4, p1

    iput v2, v1, Lcom/jme3/math/Vector3f;->y:F

    :cond_3
    :goto_1
    iget p1, v1, Lcom/jme3/math/Vector3f;->z:F

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    neg-float v3, v2

    cmpg-float v3, p1, v3

    if-gez v3, :cond_4

    add-float/2addr p1, v2

    mul-float/2addr p1, p1

    add-float/2addr v4, p1

    neg-float p1, v2

    iput p1, v1, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_2

    :cond_4
    cmpl-float v3, p1, v2

    if-lez v3, :cond_5

    sub-float/2addr p1, v2

    mul-float/2addr p1, p1

    add-float/2addr v4, p1

    iput v2, v1, Lcom/jme3/math/Vector3f;->z:F

    :cond_5
    :goto_2
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    invoke-static {v4}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/jme3/bounding/BoundingBox;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    check-cast p1, Lcom/jme3/bounding/BoundingBox;

    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iget v2, p1, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iget v2, p1, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    iget v2, p1, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-super {p0, p1}, Lcom/jme3/bounding/BoundingVolume;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getExtent(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iget v1, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public getMax(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v1, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iget v3, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public getMin(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v1, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iget v3, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;->subtractLocal(FFF)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public getType()Lcom/jme3/bounding/BoundingVolume$Type;
    .locals 1

    sget-object v0, Lcom/jme3/bounding/BoundingVolume$Type;->AABB:Lcom/jme3/bounding/BoundingVolume$Type;

    return-object v0
.end method

.method public getVolume()F
    .locals 2

    const/high16 v0, 0x41000000    # 8.0f

    iget v1, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    mul-float/2addr v1, v0

    return v1
.end method

.method public getXExtent()F
    .locals 1

    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    return v0
.end method

.method public getYExtent()F
    .locals 1

    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    return v0
.end method

.method public getZExtent()F
    .locals 1

    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

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
    invoke-virtual {p1, p0}, Lcom/jme3/bounding/BoundingVolume;->intersectsBoundingBox(Lcom/jme3/bounding/BoundingBox;)Z

    move-result p1

    return p1
.end method

.method public intersects(Lcom/jme3/math/Ray;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 2
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v1

    move-object/from16 v2, p1

    .line 3
    iget-object v3, v2, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    iget-object v4, v1, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v4}, Lcom/jme3/bounding/BoundingVolume;->getCenter(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    iget-object v5, v1, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v4, v5}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 4
    iget-object v4, v1, Lcom/jme3/util/TempVars;->fWdU:[F

    .line 5
    iget-object v5, v1, Lcom/jme3/util/TempVars;->fAWdU:[F

    .line 6
    iget-object v6, v1, Lcom/jme3/util/TempVars;->fDdU:[F

    .line 7
    iget-object v7, v1, Lcom/jme3/util/TempVars;->fADdU:[F

    .line 8
    iget-object v8, v1, Lcom/jme3/util/TempVars;->fAWxDdU:[F

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v9

    sget-object v10, Lcom/jme3/math/Vector3f;->UNIT_X:Lcom/jme3/math/Vector3f;

    invoke-virtual {v9, v10}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v9

    const/4 v11, 0x0

    aput v9, v4, v11

    .line 10
    invoke-static {v9}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v9

    aput v9, v5, v11

    .line 11
    invoke-virtual {v3, v10}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v9

    aput v9, v6, v11

    .line 12
    invoke-static {v9}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v9

    aput v9, v7, v11

    .line 13
    iget v12, v0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    cmpl-float v9, v9, v12

    const-wide/16 v12, 0x0

    if-lez v9, :cond_0

    aget v9, v6, v11

    aget v14, v4, v11

    mul-float/2addr v9, v14

    float-to-double v14, v9

    cmpl-double v9, v14, v12

    if-ltz v9, :cond_0

    .line 14
    invoke-virtual {v1}, Lcom/jme3/util/TempVars;->release()V

    return v11

    .line 15
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v9

    sget-object v14, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {v9, v14}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v9

    const/4 v15, 0x1

    aput v9, v4, v15

    .line 16
    invoke-static {v9}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v9

    aput v9, v5, v15

    .line 17
    invoke-virtual {v3, v14}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v9

    aput v9, v6, v15

    .line 18
    invoke-static {v9}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v9

    aput v9, v7, v15

    .line 19
    iget v11, v0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    cmpl-float v9, v9, v11

    if-lez v9, :cond_1

    aget v9, v6, v15

    aget v11, v4, v15

    mul-float/2addr v9, v11

    move-object v11, v14

    float-to-double v14, v9

    cmpl-double v9, v14, v12

    if-ltz v9, :cond_2

    .line 20
    invoke-virtual {v1}, Lcom/jme3/util/TempVars;->release()V

    const/4 v1, 0x0

    return v1

    :cond_1
    move-object v11, v14

    .line 21
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v9

    sget-object v14, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    invoke-virtual {v9, v14}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v9

    const/4 v15, 0x2

    aput v9, v4, v15

    .line 22
    invoke-static {v9}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v9

    aput v9, v5, v15

    .line 23
    invoke-virtual {v3, v14}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v9

    aput v9, v6, v15

    .line 24
    invoke-static {v9}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v9

    aput v9, v7, v15

    .line 25
    iget v7, v0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    cmpl-float v7, v9, v7

    if-lez v7, :cond_3

    aget v6, v6, v15

    aget v4, v4, v15

    mul-float/2addr v6, v4

    float-to-double v6, v6

    cmpl-double v4, v6, v12

    if-ltz v4, :cond_3

    .line 26
    invoke-virtual {v1}, Lcom/jme3/util/TempVars;->release()V

    const/4 v4, 0x0

    return v4

    :cond_3
    const/4 v4, 0x0

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget-object v6, v1, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3, v6}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    .line 28
    invoke-virtual {v2, v10}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v3

    invoke-static {v3}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v3

    aput v3, v8, v4

    .line 29
    iget v6, v0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    aget v7, v5, v15

    mul-float/2addr v6, v7

    iget v7, v0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    const/4 v9, 0x1

    aget v10, v5, v9

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4

    .line 30
    invoke-virtual {v1}, Lcom/jme3/util/TempVars;->release()V

    return v4

    .line 31
    :cond_4
    invoke-virtual {v2, v11}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v3

    invoke-static {v3}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v3

    aput v3, v8, v9

    .line 32
    iget v6, v0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    aget v7, v5, v15

    mul-float/2addr v6, v7

    iget v7, v0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    aget v9, v5, v4

    mul-float/2addr v7, v9

    add-float/2addr v6, v7

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    .line 33
    invoke-virtual {v1}, Lcom/jme3/util/TempVars;->release()V

    return v4

    .line 34
    :cond_5
    invoke-virtual {v2, v14}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v2

    invoke-static {v2}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v2

    aput v2, v8, v15

    .line 35
    iget v3, v0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    const/4 v6, 0x1

    aget v7, v5, v6

    mul-float/2addr v3, v7

    iget v7, v0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    aget v5, v5, v4

    mul-float/2addr v7, v5

    add-float/2addr v3, v7

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 36
    invoke-virtual {v1}, Lcom/jme3/util/TempVars;->release()V

    return v4

    .line 37
    :cond_6
    invoke-virtual {v1}, Lcom/jme3/util/TempVars;->release()V

    return v6
.end method

.method public intersects(Lcom/jme3/math/Vector3f;)Z
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v0, v1

    .line 40
    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v0, p1

    .line 41
    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public intersects(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z
    .locals 0

    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/jme3/bounding/Intersection;->intersect(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result p1

    return p1
.end method

.method public intersectsBoundingBox(Lcom/jme3/bounding/BoundingBox;)Z
    .locals 9

    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    add-float v3, v1, v2

    iget-object v4, p1, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget v5, v4, Lcom/jme3/math/Vector3f;->x:F

    iget v6, p1, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    sub-float v7, v5, v6

    cmpg-float v3, v3, v7

    const/4 v7, 0x0

    if-ltz v3, :cond_3

    sub-float/2addr v1, v2

    add-float/2addr v5, v6

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    add-float v3, v1, v2

    iget v5, v4, Lcom/jme3/math/Vector3f;->y:F

    iget v6, p1, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    sub-float v8, v5, v6

    cmpg-float v3, v3, v8

    if-ltz v3, :cond_3

    sub-float/2addr v1, v2

    add-float/2addr v5, v6

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    iget v1, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    add-float v2, v0, v1

    iget v3, v4, Lcom/jme3/math/Vector3f;->z:F

    iget p1, p1, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    sub-float v4, v3, p1

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_3

    sub-float/2addr v0, v1

    add-float/2addr v3, p1

    cmpl-float p1, v0, v3

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v7
.end method

.method public intersectsSphere(Lcom/jme3/bounding/BoundingSphere;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lcom/jme3/bounding/BoundingSphere;->intersectsBoundingBox(Lcom/jme3/bounding/BoundingBox;)Z

    move-result p1

    return p1
.end method

.method public isSimilar(Lcom/jme3/bounding/BoundingBox;F)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_1

    return v0

    :cond_1
    iget v1, p1, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_2

    return v0

    :cond_2
    iget v1, p1, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/jme3/math/Vector3f;->isSimilar(Lcom/jme3/math/Vector3f;F)Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public merge(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/jme3/bounding/BoundingBox;->mergeLocal(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object p1

    return-object p1
.end method

.method public mergeLocal(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    sget-object v0, Lcom/jme3/bounding/BoundingBox$1;->$SwitchMap$com$jme3$bounding$BoundingVolume$Type:[I

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
    check-cast p1, Lcom/jme3/bounding/BoundingSphere;

    .line 3
    iget-object v0, p1, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget p1, p1, Lcom/jme3/bounding/BoundingSphere;->radius:F

    invoke-direct {p0, v0, p1, p1, p1}, Lcom/jme3/bounding/BoundingBox;->mergeLocal(Lcom/jme3/math/Vector3f;FFF)Lcom/jme3/bounding/BoundingBox;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    check-cast p1, Lcom/jme3/bounding/BoundingBox;

    .line 5
    iget-object v0, p1, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget v1, p1, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iget v2, p1, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iget p1, p1, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/jme3/bounding/BoundingBox;->mergeLocal(Lcom/jme3/math/Vector3f;FFF)Lcom/jme3/bounding/BoundingBox;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bounding/BoundingVolume;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "xExtent"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    const-string v0, "yExtent"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    const-string v0, "zExtent"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    return-void
.end method

.method public setMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget p1, p2, Lcom/jme3/math/Vector3f;->x:F

    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iget p1, p2, Lcom/jme3/math/Vector3f;->y:F

    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iget p1, p2, Lcom/jme3/math/Vector3f;->z:F

    iget-object p2, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    return-void
.end method

.method public setXExtent(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setYExtent(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setZExtent(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
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

    const-string v1, " [Center: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  xExtent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "  yExtent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "  zExtent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
    .locals 5

    if-eqz p2, :cond_1

    .line 21
    invoke-virtual {p2}, Lcom/jme3/bounding/BoundingVolume;->getType()Lcom/jme3/bounding/BoundingVolume$Type;

    move-result-object v0

    sget-object v1, Lcom/jme3/bounding/BoundingVolume$Type;->AABB:Lcom/jme3/bounding/BoundingVolume$Type;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    check-cast p2, Lcom/jme3/bounding/BoundingBox;

    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    new-instance p2, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {p2}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    .line 24
    :goto_1
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget-object v2, p2, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1, v2}, Lcom/jme3/math/Matrix4f;->multProj(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    move-result v1

    .line 26
    iget-object v2, p2, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v1}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    .line 27
    iget-object v1, v0, Lcom/jme3/util/TempVars;->tempMat3:Lcom/jme3/math/Matrix3f;

    .line 28
    invoke-virtual {p1, v1}, Lcom/jme3/math/Matrix4f;->toRotationMatrix(Lcom/jme3/math/Matrix3f;)V

    .line 29
    invoke-virtual {v1}, Lcom/jme3/math/Matrix3f;->absoluteLocal()V

    .line 30
    iget-object p1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iget v3, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iget v4, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    invoke-virtual {p1, v2, v3, v4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 31
    iget-object p1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p1, p1}, Lcom/jme3/math/Matrix3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 32
    iget-object p1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getX()F

    move-result p1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p1

    iput p1, p2, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    .line 33
    iget-object p1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getY()F

    move-result p1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p1

    iput p1, p2, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    .line 34
    iget-object p1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result p1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p1

    iput p1, p2, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    .line 35
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-object p2
.end method

.method public transform(Lcom/jme3/math/Transform;Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
    .locals 6

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/jme3/bounding/BoundingVolume;->getType()Lcom/jme3/bounding/BoundingVolume$Type;

    move-result-object v0

    sget-object v1, Lcom/jme3/bounding/BoundingVolume$Type;->AABB:Lcom/jme3/bounding/BoundingVolume$Type;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p2, Lcom/jme3/bounding/BoundingBox;

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    new-instance p2, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {p2}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p2, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 5
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    iget-object v1, p2, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v1}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 6
    iget-object v0, p2, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 7
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 8
    iget-object v1, v0, Lcom/jme3/util/TempVars;->tempMat3:Lcom/jme3/math/Matrix3f;

    .line 9
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Matrix3f;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Matrix3f;

    .line 10
    invoke-virtual {v1}, Lcom/jme3/math/Matrix3f;->absoluteLocal()V

    .line 11
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object p1

    .line 12
    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v3, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iget v4, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v4}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iget v5, p1, Lcom/jme3/math/Vector3f;->y:F

    .line 13
    invoke-static {v5}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    .line 14
    invoke-static {p1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p1

    mul-float/2addr v5, p1

    .line 15
    invoke-virtual {v2, v3, v4, v5}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 16
    iget-object p1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p1, v2}, Lcom/jme3/math/Matrix3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 17
    iget-object p1, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getX()F

    move-result p1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p1

    iput p1, p2, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    .line 18
    iget-object p1, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getY()F

    move-result p1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p1

    iput p1, p2, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    .line 19
    iget-object p1, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result p1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p1

    iput p1, p2, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    .line 20
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-object p2
.end method

.method public whichSide(Lcom/jme3/math/Plane;)Lcom/jme3/math/Plane$Side;
    .locals 3

    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    invoke-virtual {p1}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    invoke-virtual {p1}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    invoke-virtual {p1}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1}, Lcom/jme3/math/Plane;->pseudoDistance(Lcom/jme3/math/Vector3f;)F

    move-result p1

    neg-float v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    sget-object p1, Lcom/jme3/math/Plane$Side;->Negative:Lcom/jme3/math/Plane$Side;

    return-object p1

    :cond_0
    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    sget-object p1, Lcom/jme3/math/Plane$Side;->Positive:Lcom/jme3/math/Plane$Side;

    return-object p1

    :cond_1
    sget-object p1, Lcom/jme3/math/Plane$Side;->None:Lcom/jme3/math/Plane$Side;

    return-object p1
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bounding/BoundingVolume;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    const-string v1, "xExtent"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    const-string v1, "yExtent"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    const-string v1, "zExtent"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
