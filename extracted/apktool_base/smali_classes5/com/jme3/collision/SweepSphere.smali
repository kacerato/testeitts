.class Lcom/jme3/collision/SweepSphere;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/collision/Collidable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final center:Lcom/jme3/math/Vector3f;

.field private final dimension:Lcom/jme3/math/Vector3f;

.field private final invDim:Lcom/jme3/math/Vector3f;

.field private final sCenter:Lcom/jme3/math/Vector3f;

.field private final sVelocity:Lcom/jme3/math/Vector3f;

.field private final scaledTri:Lcom/jme3/math/Triangle;

.field private final temp1:Lcom/jme3/math/Vector3f;

.field private final temp2:Lcom/jme3/math/Vector3f;

.field private final temp3:Lcom/jme3/math/Vector3f;

.field private final triPlane:Lcom/jme3/math/Plane;

.field private final velocity:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/collision/SweepSphere;->velocity:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/collision/SweepSphere;->center:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/collision/SweepSphere;->dimension:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/collision/SweepSphere;->invDim:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Triangle;

    invoke-direct {v0}, Lcom/jme3/math/Triangle;-><init>()V

    iput-object v0, p0, Lcom/jme3/collision/SweepSphere;->scaledTri:Lcom/jme3/math/Triangle;

    new-instance v0, Lcom/jme3/math/Plane;

    invoke-direct {v0}, Lcom/jme3/math/Plane;-><init>()V

    iput-object v0, p0, Lcom/jme3/collision/SweepSphere;->triPlane:Lcom/jme3/math/Plane;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/collision/SweepSphere;->temp1:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/collision/SweepSphere;->temp2:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/collision/SweepSphere;->temp3:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/collision/SweepSphere;->sVelocity:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/collision/SweepSphere;->sCenter:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method private collideWithSegment(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FLcom/jme3/math/Vector3f;)F
    .locals 6

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->temp1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p5}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p5

    invoke-virtual {p5, p4}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p5

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->temp2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p5}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v1

    invoke-virtual {p5, p2}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v2

    invoke-virtual {p5, p1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v3

    neg-float p3, p3

    mul-float/2addr p3, v0

    mul-float v4, v2, v2

    add-float/2addr p3, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v0, v4

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p1

    mul-float/2addr v5, p1

    mul-float/2addr v4, v2

    mul-float/2addr v4, v3

    sub-float/2addr v5, v4

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, v1

    mul-float/2addr p2, v0

    mul-float v1, v3, v3

    add-float/2addr p2, v1

    invoke-static {p3, v5, p2, p6}, Lcom/jme3/collision/SweepSphere;->getLowestRoot(FFFF)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-nez p3, :cond_0

    mul-float/2addr v2, p2

    sub-float/2addr v2, v3

    div-float/2addr v2, v0

    const/4 p3, 0x0

    cmpl-float p3, v2, p3

    if-ltz p3, :cond_0

    cmpg-float p1, v2, p1

    if-gez p1, :cond_0

    invoke-virtual {p7, v2, p5, p4}, Lcom/jme3/math/Vector3f;->scaleAdd(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return p2

    :cond_0
    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1
.end method

.method private collideWithTriangle(Lcom/jme3/math/AbstractTriangle;)Lcom/jme3/collision/CollisionResult;
    .locals 21

    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/jme3/collision/SweepSphere;->scaledTri:Lcom/jme3/math/Triangle;

    invoke-virtual {v0}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/AbstractTriangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, v8, Lcom/jme3/collision/SweepSphere;->invDim:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, v8, Lcom/jme3/collision/SweepSphere;->scaledTri:Lcom/jme3/math/Triangle;

    invoke-virtual {v0}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/AbstractTriangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, v8, Lcom/jme3/collision/SweepSphere;->invDim:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, v8, Lcom/jme3/collision/SweepSphere;->scaledTri:Lcom/jme3/math/Triangle;

    invoke-virtual {v0}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/AbstractTriangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, v8, Lcom/jme3/collision/SweepSphere;->invDim:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, v8, Lcom/jme3/collision/SweepSphere;->velocity:Lcom/jme3/math/Vector3f;

    iget-object v1, v8, Lcom/jme3/collision/SweepSphere;->invDim:Lcom/jme3/math/Vector3f;

    iget-object v2, v8, Lcom/jme3/collision/SweepSphere;->sVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, v8, Lcom/jme3/collision/SweepSphere;->center:Lcom/jme3/math/Vector3f;

    iget-object v1, v8, Lcom/jme3/collision/SweepSphere;->invDim:Lcom/jme3/math/Vector3f;

    iget-object v2, v8, Lcom/jme3/collision/SweepSphere;->sCenter:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, v8, Lcom/jme3/collision/SweepSphere;->triPlane:Lcom/jme3/math/Plane;

    iget-object v1, v8, Lcom/jme3/collision/SweepSphere;->scaledTri:Lcom/jme3/math/Triangle;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Plane;->setPlanePoints(Lcom/jme3/math/AbstractTriangle;)V

    iget-object v0, v8, Lcom/jme3/collision/SweepSphere;->triPlane:Lcom/jme3/math/Plane;

    invoke-virtual {v0}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, v8, Lcom/jme3/collision/SweepSphere;->sVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v9, 0x0

    if-lez v2, :cond_0

    return-object v9

    :cond_0
    iget-object v3, v8, Lcom/jme3/collision/SweepSphere;->triPlane:Lcom/jme3/math/Plane;

    iget-object v4, v8, Lcom/jme3/collision/SweepSphere;->sCenter:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v4}, Lcom/jme3/math/Plane;->pseudoDistance(Lcom/jme3/math/Vector3f;)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v2, :cond_2

    invoke-static {v3}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_1

    return-object v9

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "EMBEDDED"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v9

    :cond_2
    const/high16 v2, -0x40800000    # -1.0f

    sub-float/2addr v2, v3

    div-float/2addr v2, v0

    sub-float v3, v4, v3

    div-float/2addr v3, v0

    cmpl-float v0, v2, v3

    if-lez v0, :cond_3

    move/from16 v20, v3

    move v3, v2

    move/from16 v2, v20

    :cond_3
    cmpl-float v0, v2, v4

    if-gtz v0, :cond_c

    cmpg-float v0, v3, v1

    if-gez v0, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    new-instance v11, Lcom/jme3/math/Vector3f;

    invoke-direct {v11}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v12, Lcom/jme3/math/Vector3f;

    invoke-direct {v12}, Lcom/jme3/math/Vector3f;-><init>()V

    iget-object v0, v8, Lcom/jme3/collision/SweepSphere;->sVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v10}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget-object v0, v8, Lcom/jme3/collision/SweepSphere;->sCenter:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, v8, Lcom/jme3/collision/SweepSphere;->triPlane:Lcom/jme3/math/Plane;

    invoke-virtual {v0}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, v8, Lcom/jme3/collision/SweepSphere;->scaledTri:Lcom/jme3/math/Triangle;

    invoke-direct {v8, v11, v0}, Lcom/jme3/collision/SweepSphere;->isPointInTriangle(Lcom/jme3/math/Vector3f;Lcom/jme3/math/AbstractTriangle;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v8, Lcom/jme3/collision/SweepSphere;->dimension:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v0}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, v8, Lcom/jme3/collision/SweepSphere;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v12, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget-object v0, v8, Lcom/jme3/collision/SweepSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v12, v0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v12, v11}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/collision/CollisionResult;

    invoke-direct {v0}, Lcom/jme3/collision/CollisionResult;-><init>()V

    invoke-virtual {v0, v11}, Lcom/jme3/collision/CollisionResult;->setContactPoint(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0, v12}, Lcom/jme3/collision/CollisionResult;->setContactNormal(Lcom/jme3/math/Vector3f;)V

    iget-object v1, v8, Lcom/jme3/collision/SweepSphere;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->length()F

    move-result v1

    mul-float/2addr v10, v1

    invoke-virtual {v0, v10}, Lcom/jme3/collision/CollisionResult;->setDistance(F)V

    return-object v0

    :cond_5
    iget-object v0, v8, Lcom/jme3/collision/SweepSphere;->sVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v13

    iget-object v0, v8, Lcom/jme3/collision/SweepSphere;->scaledTri:Lcom/jme3/math/Triangle;

    invoke-virtual {v0}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v14

    iget-object v0, v8, Lcom/jme3/collision/SweepSphere;->scaledTri:Lcom/jme3/math/Triangle;

    invoke-virtual {v0}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v15

    iget-object v0, v8, Lcom/jme3/collision/SweepSphere;->scaledTri:Lcom/jme3/math/Triangle;

    invoke-virtual {v0}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v7

    iget-object v1, v8, Lcom/jme3/collision/SweepSphere;->sCenter:Lcom/jme3/math/Vector3f;

    iget-object v2, v8, Lcom/jme3/collision/SweepSphere;->sVelocity:Lcom/jme3/math/Vector3f;

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move v3, v13

    move-object v4, v14

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/jme3/collision/SweepSphere;->collideWithVertex(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FLcom/jme3/math/Vector3f;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/16 v16, 0x1

    if-nez v1, :cond_6

    invoke-virtual {v11, v14}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move/from16 v17, v0

    move/from16 v6, v16

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    move/from16 v17, v6

    move v6, v0

    :goto_0
    iget-object v1, v8, Lcom/jme3/collision/SweepSphere;->sCenter:Lcom/jme3/math/Vector3f;

    iget-object v2, v8, Lcom/jme3/collision/SweepSphere;->sVelocity:Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move v3, v13

    move-object v4, v15

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/jme3/collision/SweepSphere;->collideWithVertex(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FLcom/jme3/math/Vector3f;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v11, v15}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move/from16 v17, v0

    move/from16 v6, v16

    :cond_7
    iget-object v1, v8, Lcom/jme3/collision/SweepSphere;->sCenter:Lcom/jme3/math/Vector3f;

    iget-object v2, v8, Lcom/jme3/collision/SweepSphere;->sVelocity:Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move v3, v13

    move-object v4, v7

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/jme3/collision/SweepSphere;->collideWithVertex(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FLcom/jme3/math/Vector3f;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v11, v7}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move/from16 v18, v0

    move/from16 v17, v16

    goto :goto_1

    :cond_8
    move/from16 v18, v17

    move/from16 v17, v6

    :goto_1
    iget-object v1, v8, Lcom/jme3/collision/SweepSphere;->sCenter:Lcom/jme3/math/Vector3f;

    iget-object v2, v8, Lcom/jme3/collision/SweepSphere;->sVelocity:Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move v3, v13

    move-object v4, v14

    move-object v5, v15

    move/from16 v6, v18

    move-object/from16 v19, v7

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/jme3/collision/SweepSphere;->collideWithSegment(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FLcom/jme3/math/Vector3f;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_9

    move/from16 v18, v0

    move/from16 v17, v16

    :cond_9
    iget-object v1, v8, Lcom/jme3/collision/SweepSphere;->sCenter:Lcom/jme3/math/Vector3f;

    iget-object v2, v8, Lcom/jme3/collision/SweepSphere;->sVelocity:Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move v3, v13

    move-object v4, v15

    move-object/from16 v5, v19

    move/from16 v6, v18

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/jme3/collision/SweepSphere;->collideWithSegment(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FLcom/jme3/math/Vector3f;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_a

    move/from16 v18, v0

    move/from16 v17, v16

    :cond_a
    iget-object v1, v8, Lcom/jme3/collision/SweepSphere;->sCenter:Lcom/jme3/math/Vector3f;

    iget-object v2, v8, Lcom/jme3/collision/SweepSphere;->sVelocity:Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move v3, v13

    move-object/from16 v4, v19

    move-object v5, v14

    move/from16 v6, v18

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/jme3/collision/SweepSphere;->collideWithSegment(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FLcom/jme3/math/Vector3f;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_b

    move/from16 v18, v0

    goto :goto_2

    :cond_b
    move/from16 v16, v17

    :goto_2
    if-eqz v16, :cond_c

    iget-object v0, v8, Lcom/jme3/collision/SweepSphere;->dimension:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v0}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, v8, Lcom/jme3/collision/SweepSphere;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v12, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget-object v0, v8, Lcom/jme3/collision/SweepSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v12, v0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v12, v11}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/collision/CollisionResult;

    invoke-direct {v0}, Lcom/jme3/collision/CollisionResult;-><init>()V

    invoke-virtual {v0, v11}, Lcom/jme3/collision/CollisionResult;->setContactPoint(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0, v12}, Lcom/jme3/collision/CollisionResult;->setContactNormal(Lcom/jme3/math/Vector3f;)V

    iget-object v1, v8, Lcom/jme3/collision/SweepSphere;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->length()F

    move-result v1

    mul-float v1, v1, v18

    invoke-virtual {v0, v1}, Lcom/jme3/collision/CollisionResult;->setDistance(F)V

    return-object v0

    :cond_c
    :goto_3
    return-object v9
.end method

.method private collideWithVertex(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FLcom/jme3/math/Vector3f;F)F
    .locals 1

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->temp1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/collision/SweepSphere;->temp1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/jme3/collision/SweepSphere;->temp1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->negateLocal()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result p2

    const/high16 p4, 0x3f800000    # 1.0f

    sub-float/2addr p2, p4

    invoke-static {p3, p1, p2, p5}, Lcom/jme3/collision/SweepSphere;->getLowestRoot(FFFF)F

    move-result p1

    return p1
.end method

.method private static getLowestRoot(FFFF)F
    .locals 5

    mul-float v0, p1, p1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, p0

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    const/4 p2, 0x0

    cmpg-float v1, v0, p2

    const/high16 v2, 0x7fc00000    # Float.NaN

    if-gez v1, :cond_0

    return v2

    :cond_0
    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    neg-float p1, p1

    sub-float v1, p1, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr p0, v3

    div-float/2addr v1, p0

    add-float/2addr p1, v0

    div-float/2addr p1, p0

    cmpl-float p0, v1, p1

    if-lez p0, :cond_1

    move v4, v1

    move v1, p1

    move p1, v4

    :cond_1
    cmpl-float p0, v1, p2

    if-lez p0, :cond_2

    cmpg-float p0, v1, p3

    if-gez p0, :cond_2

    return v1

    :cond_2
    cmpl-float p0, p1, p2

    if-lez p0, :cond_3

    cmpg-float p0, p1, p3

    if-gez p0, :cond_3

    return p1

    :cond_3
    return v2
.end method

.method private isPointInTriangle(Lcom/jme3/math/Vector3f;Lcom/jme3/math/AbstractTriangle;)Z
    .locals 3

    invoke-virtual {p2}, Lcom/jme3/math/AbstractTriangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jme3/math/AbstractTriangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p2}, Lcom/jme3/math/AbstractTriangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/jme3/collision/SweepSphere;->pointsOnSameSide(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/jme3/math/AbstractTriangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jme3/math/AbstractTriangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p2}, Lcom/jme3/math/AbstractTriangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/jme3/collision/SweepSphere;->pointsOnSameSide(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/jme3/math/AbstractTriangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jme3/math/AbstractTriangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p2}, Lcom/jme3/math/AbstractTriangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/jme3/collision/SweepSphere;->pointsOnSameSide(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    new-instance p0, Lcom/jme3/collision/SweepSphere;

    invoke-direct {p0}, Lcom/jme3/collision/SweepSphere;-><init>()V

    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/collision/SweepSphere;->setCenter(Lcom/jme3/math/Vector3f;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/jme3/collision/SweepSphere;->setDimension(F)V

    new-instance v1, Lcom/jme3/math/Vector3f;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {v1, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p0, v1}, Lcom/jme3/collision/SweepSphere;->setVelocity(Lcom/jme3/math/Vector3f;)V

    new-instance v1, Lcom/jme3/collision/SweepSphere;

    invoke-direct {v1}, Lcom/jme3/collision/SweepSphere;-><init>()V

    new-instance v2, Lcom/jme3/math/Vector3f;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {v2, v3, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v1, v2}, Lcom/jme3/collision/SweepSphere;->setCenter(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v1, v0}, Lcom/jme3/collision/SweepSphere;->setDimension(F)V

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v2, -0x3ee00000    # -10.0f

    invoke-direct {v0, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v1, v0}, Lcom/jme3/collision/SweepSphere;->setVelocity(Lcom/jme3/math/Vector3f;)V

    new-instance v0, Lcom/jme3/collision/CollisionResults;

    invoke-direct {v0}, Lcom/jme3/collision/CollisionResults;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/jme3/collision/SweepSphere;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    invoke-virtual {v0}, Lcom/jme3/collision/CollisionResults;->size()I

    move-result p0

    if-lez p0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/collision/CollisionResults;->getClosestCollision()Lcom/jme3/collision/CollisionResult;

    move-result-object p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "D = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/collision/CollisionResult;->getDistance()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/collision/CollisionResult;->getContactPoint()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "N = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/collision/CollisionResult;->getContactNormal()Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private pointsOnSameSide(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->temp1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p4, p0, Lcom/jme3/collision/SweepSphere;->temp3:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->temp1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p4, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p4, p0, Lcom/jme3/collision/SweepSphere;->temp2:Lcom/jme3/math/Vector3f;

    invoke-virtual {p4, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/collision/SweepSphere;->temp1:Lcom/jme3/math/Vector3f;

    iget-object p4, p0, Lcom/jme3/collision/SweepSphere;->temp2:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p4}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/collision/SweepSphere;->temp2:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/collision/SweepSphere;->temp3:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/collision/SweepSphere;->temp2:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/collision/SweepSphere;->temp1:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/collision/SweepSphere;->temp3:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jme3/collision/UnsupportedCollisionException;
        }
    .end annotation

    instance-of v0, p1, Lcom/jme3/math/AbstractTriangle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p1, Lcom/jme3/math/AbstractTriangle;

    invoke-direct {p0, p1}, Lcom/jme3/collision/SweepSphere;->collideWithTriangle(Lcom/jme3/math/AbstractTriangle;)Lcom/jme3/collision/CollisionResult;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    return v2

    :cond_0
    return v1

    :cond_1
    instance-of v0, p1, Lcom/jme3/collision/SweepSphere;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/jme3/collision/SweepSphere;

    invoke-virtual {p0, p1}, Lcom/jme3/collision/SweepSphere;->collideWithSweepSphere(Lcom/jme3/collision/SweepSphere;)Lcom/jme3/collision/CollisionResult;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2, p1}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    return v2

    :cond_2
    return v1

    :cond_3
    new-instance p1, Lcom/jme3/collision/UnsupportedCollisionException;

    invoke-direct {p1}, Lcom/jme3/collision/UnsupportedCollisionException;-><init>()V

    throw p1
.end method

.method public collideWithSweepSphere(Lcom/jme3/collision/SweepSphere;)Lcom/jme3/collision/CollisionResult;
    .locals 5

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->temp1:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/collision/SweepSphere;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p1, Lcom/jme3/collision/SweepSphere;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->temp2:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/collision/SweepSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p1, Lcom/jme3/collision/SweepSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->temp3:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/collision/SweepSphere;->dimension:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p1, Lcom/jme3/collision/SweepSphere;->dimension:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->temp1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v0

    iget-object v1, p0, Lcom/jme3/collision/SweepSphere;->temp1:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/collision/SweepSphere;->temp2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/jme3/collision/SweepSphere;->temp2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v2

    iget-object v3, p0, Lcom/jme3/collision/SweepSphere;->temp3:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/jme3/collision/SweepSphere;->temp3:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Lcom/jme3/collision/SweepSphere;->getLowestRoot(FFFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v1, Lcom/jme3/collision/CollisionResult;

    invoke-direct {v1}, Lcom/jme3/collision/CollisionResult;-><init>()V

    iget-object v2, p0, Lcom/jme3/collision/SweepSphere;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->length()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/jme3/collision/CollisionResult;->setDistance(F)V

    iget-object v2, p0, Lcom/jme3/collision/SweepSphere;->temp1:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/collision/SweepSphere;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/collision/SweepSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/collision/SweepSphere;->temp2:Lcom/jme3/math/Vector3f;

    iget-object v3, p1, Lcom/jme3/collision/SweepSphere;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object p1, p1, Lcom/jme3/collision/SweepSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/collision/SweepSphere;->temp3:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->temp2:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->temp1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/collision/SweepSphere;->temp2:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->temp3:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    new-instance p1, Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->temp2:Lcom/jme3/math/Vector3f;

    invoke-direct {p1, v0}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v1, p1}, Lcom/jme3/collision/CollisionResult;->setContactNormal(Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/collision/SweepSphere;->temp3:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->temp2:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->dimension:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->temp1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    new-instance p1, Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->temp3:Lcom/jme3/math/Vector3f;

    invoke-direct {p1, v0}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v1, p1}, Lcom/jme3/collision/CollisionResult;->setContactPoint(Lcom/jme3/math/Vector3f;)V

    return-object v1
.end method

.method public getCenter()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->center:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getDimension()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->dimension:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getVelocity()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->velocity:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public setCenter(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setDimension(F)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->dimension:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1, p1, p1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 6
    iget-object p1, p0, Lcom/jme3/collision/SweepSphere;->invDim:Lcom/jme3/math/Vector3f;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->dimension:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->divideLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setDimension(FFF)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->dimension:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 4
    iget-object p1, p0, Lcom/jme3/collision/SweepSphere;->invDim:Lcom/jme3/math/Vector3f;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2, p2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/collision/SweepSphere;->dimension:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->divideLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setDimension(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->dimension:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 2
    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->invDim:Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->divideLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setVelocity(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/collision/SweepSphere;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method
