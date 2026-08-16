.class public final Lcom/jme3/math/Ray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;
.implements Lcom/jme3/collision/Collidable;
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final serialVersionUID:J = 0x1L


# instance fields
.field public direction:Lcom/jme3/math/Vector3f;

.field public limit:F

.field public origin:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 4
    iput v0, p0, Lcom/jme3/math/Ray;->limit:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    .line 7
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 8
    iput v0, p0, Lcom/jme3/math/Ray;->limit:F

    .line 9
    invoke-virtual {p0, p1}, Lcom/jme3/math/Ray;->setOrigin(Lcom/jme3/math/Vector3f;)V

    .line 10
    invoke-virtual {p0, p2}, Lcom/jme3/math/Ray;->setDirection(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method private intersects(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;ZZ)Z
    .locals 8

    .line 1
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    .line 3
    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    .line 4
    iget-object v3, v0, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    .line 5
    iget-object v4, v0, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    .line 6
    iget-object v5, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, p1, v1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 7
    invoke-virtual {p2, p1, v2}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    .line 8
    invoke-virtual {p3, p1, v3}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    .line 9
    invoke-virtual {p2, p1, v4}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p3

    .line 10
    iget-object v2, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, p3}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v2

    const/high16 v3, 0x34000000

    cmpl-float v3, v2, v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    const/high16 v3, -0x4c000000

    cmpg-float v3, v2, v3

    if-gez v3, :cond_5

    neg-float v2, v2

    const/high16 v3, -0x40800000    # -1.0f

    .line 11
    :goto_0
    iget-object v6, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p1, p1}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p1

    mul-float/2addr p1, v3

    const/4 v6, 0x0

    cmpl-float v7, p1, v6

    if-ltz v7, :cond_4

    .line 12
    iget-object v7, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    .line 13
    invoke-virtual {p2, v1}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {v7, p2}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p2

    mul-float/2addr p2, v3

    cmpl-float v7, p2, v6

    if-ltz v7, :cond_4

    if-nez p6, :cond_1

    add-float p6, p1, p2

    cmpg-float p6, p6, v2

    if-gtz p6, :cond_4

    goto :goto_1

    :cond_1
    cmpg-float p6, p2, v2

    if-gtz p6, :cond_4

    :goto_1
    neg-float p6, v3

    .line 14
    invoke-virtual {v1, p3}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p3

    mul-float/2addr p6, p3

    cmpl-float p3, p6, v6

    if-ltz p3, :cond_4

    .line 15
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    const/4 p3, 0x1

    if-nez p4, :cond_2

    return p3

    :cond_2
    div-float/2addr v5, v2

    mul-float/2addr p6, v5

    if-nez p5, :cond_3

    .line 16
    iget-object p1, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {p4, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    iget p4, p2, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr p4, p6

    iget p5, p2, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr p5, p6

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr p2, p6

    invoke-virtual {p1, p4, p5, p2}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_2

    :cond_3
    mul-float/2addr p1, v5

    mul-float/2addr p2, v5

    .line 17
    invoke-virtual {p4, p6, p1, p2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    :goto_2
    return p3

    .line 18
    :cond_4
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return v4

    .line 19
    :cond_5
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return v4
.end method


# virtual methods
.method public clone()Lcom/jme3/math/Ray;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Ray;

    .line 3
    iget-object v1, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    .line 4
    iget-object v1, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/math/Ray;->clone()Lcom/jme3/math/Ray;

    move-result-object v0

    return-object v0
.end method

.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I
    .locals 2

    instance-of v0, p1, Lcom/jme3/bounding/BoundingVolume;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/bounding/BoundingVolume;

    invoke-interface {p1, p0, p2}, Lcom/jme3/collision/Collidable;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/jme3/math/AbstractTriangle;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/jme3/math/AbstractTriangle;

    invoke-virtual {p1}, Lcom/jme3/math/AbstractTriangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/math/AbstractTriangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/math/AbstractTriangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/jme3/math/Ray;->intersects(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    new-instance v1, Lcom/jme3/collision/CollisionResult;

    invoke-direct {v1, v0, p1}, Lcom/jme3/collision/CollisionResult;-><init>(Lcom/jme3/math/Vector3f;F)V

    invoke-virtual {p2, v1}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_3
    new-instance p1, Lcom/jme3/collision/UnsupportedCollisionException;

    invoke-direct {p1}, Lcom/jme3/collision/UnsupportedCollisionException;-><init>()V

    throw p1
.end method

.method public distanceSquared(Lcom/jme3/math/Vector3f;)F
    .locals 6

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v3, v1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    iget-object v5, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v3, v2}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_0
    invoke-virtual {v2, p1, v1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result p1

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return p1
.end method

.method public getDirection()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getLimit()F
    .locals 1

    iget v0, p0, Lcom/jme3/math/Ray;->limit:F

    return v0
.end method

.method public getOrigin()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public intersectWhere(Lcom/jme3/math/Triangle;Lcom/jme3/math/Vector3f;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/jme3/math/Ray;->intersectWhere(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result p1

    return p1
.end method

.method public intersectWhere(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/jme3/math/Ray;->intersects(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;ZZ)Z

    move-result p1

    return p1
.end method

.method public intersectWherePlanar(Lcom/jme3/math/Triangle;Lcom/jme3/math/Vector3f;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/jme3/math/Ray;->intersectWherePlanar(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result p1

    return p1
.end method

.method public intersectWherePlanar(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/jme3/math/Ray;->intersects(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;ZZ)Z

    move-result p1

    return p1
.end method

.method public intersectWherePlanarQuad(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/jme3/math/Ray;->intersects(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;ZZ)Z

    move-result p1

    return p1
.end method

.method public intersects(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 20
    iget v4, v2, Lcom/jme3/math/Vector3f;->x:F

    iget v5, v1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v4, v5

    .line 21
    iget v6, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v7, v1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v6, v7

    .line 22
    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v2, v1

    .line 23
    iget v8, v3, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v8, v5

    .line 24
    iget v9, v3, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v9, v7

    .line 25
    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v3, v1

    mul-float v10, v6, v3

    mul-float v11, v2, v9

    sub-float/2addr v10, v11

    mul-float v11, v2, v8

    mul-float v12, v4, v3

    sub-float/2addr v11, v12

    mul-float v12, v4, v9

    mul-float v13, v6, v8

    sub-float/2addr v12, v13

    .line 26
    iget-object v13, v0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    iget v14, v13, Lcom/jme3/math/Vector3f;->x:F

    mul-float v15, v14, v10

    move/from16 p1, v10

    iget v10, v13, Lcom/jme3/math/Vector3f;->y:F

    mul-float v16, v10, v11

    add-float v15, v15, v16

    iget v13, v13, Lcom/jme3/math/Vector3f;->z:F

    mul-float v16, v13, v12

    add-float v15, v15, v16

    move/from16 p2, v12

    .line 27
    iget-object v12, v0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    iget v0, v12, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v0, v5

    .line 28
    iget v5, v12, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v5, v7

    .line 29
    iget v7, v12, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v7, v1

    const/high16 v1, 0x34000000

    cmpl-float v1, v15, v1

    const/high16 v12, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v16, 0x3f800000    # 1.0f

    if-lez v1, :cond_0

    move/from16 v1, v16

    goto :goto_0

    :cond_0
    const/high16 v1, -0x4c000000

    cmpg-float v1, v15, v1

    if-gez v1, :cond_1

    neg-float v15, v15

    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    mul-float v17, v5, v3

    mul-float v18, v7, v9

    sub-float v17, v17, v18

    mul-float v18, v7, v8

    mul-float/2addr v3, v0

    sub-float v18, v18, v3

    mul-float/2addr v9, v0

    mul-float/2addr v8, v5

    sub-float/2addr v9, v8

    mul-float v17, v17, v14

    mul-float v18, v18, v10

    add-float v17, v17, v18

    mul-float/2addr v9, v13

    add-float v17, v17, v9

    mul-float v17, v17, v1

    const/4 v3, 0x0

    cmpl-float v8, v17, v3

    if-ltz v8, :cond_1

    mul-float v8, v6, v7

    mul-float v9, v2, v5

    sub-float/2addr v8, v9

    mul-float/2addr v2, v0

    mul-float v9, v4, v7

    sub-float/2addr v2, v9

    mul-float/2addr v4, v5

    mul-float/2addr v6, v0

    sub-float/2addr v4, v6

    mul-float/2addr v14, v8

    mul-float/2addr v10, v2

    add-float/2addr v14, v10

    mul-float/2addr v13, v4

    add-float/2addr v14, v13

    mul-float/2addr v14, v1

    cmpl-float v2, v14, v3

    if-ltz v2, :cond_1

    add-float v17, v17, v14

    cmpg-float v2, v17, v15

    if-gtz v2, :cond_1

    neg-float v1, v1

    mul-float v0, v0, p1

    mul-float/2addr v5, v11

    add-float/2addr v0, v5

    mul-float v7, v7, p2

    add-float/2addr v0, v7

    mul-float/2addr v1, v0

    cmpl-float v0, v1, v3

    if-ltz v0, :cond_1

    div-float v16, v16, v15

    mul-float v1, v1, v16

    return v1

    :cond_1
    return v12
.end method

.method public intersectsWherePlane(Lcom/jme3/math/Plane;Lcom/jme3/math/Vector3f;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v0

    const/high16 v1, -0x4c000000

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    const/high16 v3, 0x34000000

    if-lez v1, :cond_0

    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v4, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v4}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/math/Plane;->getConstant()F

    move-result p1

    sub-float/2addr v1, p1

    neg-float p1, v1

    div-float/2addr p1, v0

    cmpg-float v0, p1, v3

    if-gez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/4 p1, 0x1

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

    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v2, "origin"

    invoke-interface {p1, v2, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    const-string v1, "direction"

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public set(Lcom/jme3/math/Ray;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setDirection(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setLimit(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/math/Ray;->limit:F

    return-void
.end method

.method public setOrigin(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/jme3/math/Ray;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [Origin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    sget-object v1, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    const-string v2, "origin"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    const-string v2, "direction"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
