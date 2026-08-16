.class public Lcom/jme3/math/MathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exp(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 4

    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v2

    iput v2, p1, Lcom/jme3/math/Quaternion;->w:F

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    iget v2, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    iput v2, p1, Lcom/jme3/math/Quaternion;->x:F

    iget v2, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    iput v2, p1, Lcom/jme3/math/Quaternion;->y:F

    iget p0, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v1, p0

    div-float/2addr v1, v0

    iput v1, p1, Lcom/jme3/math/Quaternion;->z:F

    goto :goto_0

    :cond_0
    iput v2, p1, Lcom/jme3/math/Quaternion;->x:F

    iput v2, p1, Lcom/jme3/math/Quaternion;->y:F

    iput v2, p1, Lcom/jme3/math/Quaternion;->z:F

    :goto_0
    return-object p1
.end method

.method public static log(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 4

    iget v0, p0, Lcom/jme3/math/Quaternion;->w:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->acos(F)F

    move-result v0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v1

    const/4 v2, 0x0

    iput v2, p1, Lcom/jme3/math/Quaternion;->w:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    iget v2, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v2, v0

    div-float/2addr v2, v1

    iput v2, p1, Lcom/jme3/math/Quaternion;->x:F

    iget v2, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v2, v0

    div-float/2addr v2, v1

    iput v2, p1, Lcom/jme3/math/Quaternion;->y:F

    iget p0, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v0, p0

    div-float/2addr v0, v1

    iput v0, p1, Lcom/jme3/math/Quaternion;->z:F

    goto :goto_0

    :cond_0
    iput v2, p1, Lcom/jme3/math/Quaternion;->x:F

    iput v2, p1, Lcom/jme3/math/Quaternion;->y:F

    iput v2, p1, Lcom/jme3/math/Quaternion;->z:F

    :goto_0
    return-object p1
.end method

.method public static raySegmentShortestDistance(Lcom/jme3/math/Ray;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/renderer/Camera;)F
    .locals 25

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v3

    iget-object v4, v3, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v5, v3, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    iget-object v8, v3, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/math/Ray;->getLimit()F

    move-result v9

    const/high16 v10, 0x447a0000    # 1000.0f

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    iget-object v8, v3, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    invoke-virtual {v8, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    iget-object v9, v3, Lcom/jme3/util/TempVars;->vect5:Lcom/jme3/math/Vector3f;

    invoke-virtual {v9, v6}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v9

    float-to-double v9, v9

    const-wide v11, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v9, v9, v11

    const/high16 v10, -0x40800000    # -1.0f

    if-gez v9, :cond_0

    invoke-virtual {v3}, Lcom/jme3/util/TempVars;->release()V

    return v10

    :cond_0
    iget-object v9, v3, Lcom/jme3/util/TempVars;->vect6:Lcom/jme3/math/Vector3f;

    invoke-virtual {v9, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v13

    float-to-double v13, v13

    cmpg-double v13, v13, v11

    if-gez v13, :cond_1

    invoke-virtual {v3}, Lcom/jme3/util/TempVars;->release()V

    return v10

    :cond_1
    iget v13, v8, Lcom/jme3/math/Vector3f;->x:F

    float-to-double v14, v13

    iget v10, v6, Lcom/jme3/math/Vector3f;->x:F

    float-to-double v11, v10

    mul-double/2addr v14, v11

    iget v11, v8, Lcom/jme3/math/Vector3f;->y:F

    float-to-double v1, v11

    iget v12, v6, Lcom/jme3/math/Vector3f;->y:F

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    float-to-double v4, v12

    mul-double/2addr v1, v4

    add-double/2addr v14, v1

    iget v1, v8, Lcom/jme3/math/Vector3f;->z:F

    float-to-double v4, v1

    iget v2, v6, Lcom/jme3/math/Vector3f;->z:F

    move-object/from16 v18, v6

    move-object v8, v7

    float-to-double v6, v2

    mul-double/2addr v4, v6

    add-double/2addr v14, v4

    float-to-double v4, v10

    iget v6, v9, Lcom/jme3/math/Vector3f;->x:F

    move-object/from16 v19, v8

    float-to-double v7, v6

    mul-double/2addr v4, v7

    float-to-double v7, v12

    iget v0, v9, Lcom/jme3/math/Vector3f;->y:F

    move-wide/from16 v20, v14

    float-to-double v14, v0

    mul-double/2addr v7, v14

    add-double/2addr v4, v7

    float-to-double v7, v2

    iget v14, v9, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v22, v2

    move-object v15, v3

    float-to-double v2, v14

    mul-double/2addr v7, v2

    add-double/2addr v4, v7

    float-to-double v2, v13

    float-to-double v7, v6

    mul-double/2addr v2, v7

    float-to-double v7, v11

    move-wide/from16 v23, v4

    float-to-double v4, v0

    mul-double/2addr v7, v4

    add-double/2addr v2, v7

    float-to-double v4, v1

    float-to-double v7, v14

    mul-double/2addr v4, v7

    add-double/2addr v2, v4

    float-to-double v4, v10

    float-to-double v7, v10

    mul-double/2addr v4, v7

    float-to-double v7, v12

    float-to-double v10, v12

    mul-double/2addr v7, v10

    add-double/2addr v4, v7

    move/from16 v1, v22

    float-to-double v7, v1

    float-to-double v10, v1

    mul-double/2addr v7, v10

    add-double/2addr v4, v7

    float-to-double v7, v6

    float-to-double v10, v6

    mul-double/2addr v7, v10

    float-to-double v10, v0

    float-to-double v0, v0

    mul-double/2addr v10, v0

    add-double/2addr v7, v10

    float-to-double v0, v14

    float-to-double v10, v14

    mul-double/2addr v0, v10

    add-double/2addr v7, v0

    mul-double/2addr v7, v4

    mul-double v0, v23, v23

    sub-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v10, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v0, v10

    if-gez v0, :cond_2

    invoke-virtual {v15}, Lcom/jme3/util/TempVars;->release()V

    :goto_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :cond_2
    mul-double v0, v20, v23

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    div-double/2addr v0, v7

    mul-double v2, v23, v0

    add-double v2, v20, v2

    div-double/2addr v2, v4

    move-object/from16 v4, p1

    iget v5, v4, Lcom/jme3/math/Vector3f;->x:F

    float-to-double v5, v5

    iget v7, v9, Lcom/jme3/math/Vector3f;->x:F

    float-to-double v7, v7

    mul-double/2addr v7, v0

    add-double/2addr v5, v7

    double-to-float v5, v5

    move-object/from16 v6, v16

    iput v5, v6, Lcom/jme3/math/Vector3f;->x:F

    iget v5, v4, Lcom/jme3/math/Vector3f;->y:F

    float-to-double v7, v5

    iget v5, v9, Lcom/jme3/math/Vector3f;->y:F

    float-to-double v10, v5

    mul-double/2addr v10, v0

    add-double/2addr v7, v10

    double-to-float v5, v7

    iput v5, v6, Lcom/jme3/math/Vector3f;->y:F

    iget v5, v4, Lcom/jme3/math/Vector3f;->z:F

    float-to-double v7, v5

    iget v5, v9, Lcom/jme3/math/Vector3f;->z:F

    float-to-double v9, v5

    mul-double/2addr v0, v9

    add-double/2addr v7, v0

    double-to-float v0, v7

    iput v0, v6, Lcom/jme3/math/Vector3f;->z:F

    move-object/from16 v0, v19

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    float-to-double v7, v1

    move-object/from16 v1, v18

    iget v5, v1, Lcom/jme3/math/Vector3f;->x:F

    float-to-double v9, v5

    mul-double/2addr v9, v2

    add-double/2addr v7, v9

    double-to-float v5, v7

    move-object/from16 v7, v17

    iput v5, v7, Lcom/jme3/math/Vector3f;->x:F

    iget v5, v0, Lcom/jme3/math/Vector3f;->y:F

    float-to-double v8, v5

    iget v5, v1, Lcom/jme3/math/Vector3f;->y:F

    float-to-double v10, v5

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    double-to-float v5, v8

    iput v5, v7, Lcom/jme3/math/Vector3f;->y:F

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    float-to-double v8, v0

    iget v0, v1, Lcom/jme3/math/Vector3f;->z:F

    float-to-double v0, v0

    mul-double/2addr v2, v0

    add-double/2addr v8, v2

    double-to-float v0, v8

    iput v0, v7, Lcom/jme3/math/Vector3f;->z:F

    move-object v0, v15

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v6}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v1

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v6}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v2

    iget-object v5, v0, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v3

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_5

    cmpl-float v1, v2, v3

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v1, p3

    if-eqz v1, :cond_4

    invoke-virtual {v1, v6, v6}, Lcom/jme3/renderer/Camera;->getScreenCoordinates(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v7, v7}, Lcom/jme3/renderer/Camera;->getScreenCoordinates(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_4
    invoke-virtual {v6, v7}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->length()F

    move-result v1

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return v1

    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    goto/16 :goto_0
.end method

.method public static slerp(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;FLcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 6

    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v1, p1, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v3, p1, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v4, p1, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    iget v2, p0, Lcom/jme3/math/Quaternion;->w:F

    iget v5, p1, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    neg-float v1, v1

    iput v1, p1, Lcom/jme3/math/Quaternion;->x:F

    neg-float v1, v3

    iput v1, p1, Lcom/jme3/math/Quaternion;->y:F

    neg-float v1, v4

    iput v1, p1, Lcom/jme3/math/Quaternion;->z:F

    neg-float v1, v5

    iput v1, p1, Lcom/jme3/math/Quaternion;->w:F

    neg-float v0, v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p2

    const v3, 0x3f666666    # 0.9f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->acos(F)F

    move-result v0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v3

    div-float/2addr v1, v3

    mul-float/2addr v2, v0

    invoke-static {v2}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v2

    mul-float/2addr v2, v1

    mul-float/2addr p2, v0

    invoke-static {p2}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result p2

    mul-float/2addr p2, v1

    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v0, v2

    iget v1, p1, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p3, Lcom/jme3/math/Quaternion;->x:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v0, v2

    iget v1, p1, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p3, Lcom/jme3/math/Quaternion;->y:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v0, v2

    iget v1, p1, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p3, Lcom/jme3/math/Quaternion;->z:F

    iget p0, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v2, p0

    iget p0, p1, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr p2, p0

    add-float/2addr v2, p2

    iput v2, p3, Lcom/jme3/math/Quaternion;->w:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v0, v2

    iget v1, p1, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p3, Lcom/jme3/math/Quaternion;->x:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v0, v2

    iget v1, p1, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p3, Lcom/jme3/math/Quaternion;->y:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v0, v2

    iget v1, p1, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p3, Lcom/jme3/math/Quaternion;->z:F

    iget p0, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v2, p0

    iget p0, p1, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr p2, p0

    add-float/2addr v2, p2

    iput v2, p3, Lcom/jme3/math/Quaternion;->w:F

    invoke-virtual {p3}, Lcom/jme3/math/Quaternion;->normalizeLocal()Lcom/jme3/math/Quaternion;

    :goto_0
    return-object p3
.end method

.method public static slerpNoInvert(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;FLcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/jme3/math/Quaternion;->dot(Lcom/jme3/math/Quaternion;)F

    move-result v0

    const v1, -0x408ccccd    # -0.95f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const v1, 0x3f733333    # 0.95f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->acos(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float/2addr v1, v0

    invoke-static {v1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v1

    mul-float/2addr p2, v0

    invoke-static {p2}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result p2

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v0

    iget v2, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    div-float/2addr v2, v0

    iput v2, p3, Lcom/jme3/math/Quaternion;->x:F

    iget v2, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    div-float/2addr v2, v0

    iput v2, p3, Lcom/jme3/math/Quaternion;->y:F

    iget v2, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    div-float/2addr v2, v0

    iput v2, p3, Lcom/jme3/math/Quaternion;->z:F

    iget p0, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr p0, v1

    iget p1, p1, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    div-float/2addr p0, v0

    iput p0, p3, Lcom/jme3/math/Quaternion;->w:F

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "real slerp"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p0}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/jme3/math/Quaternion;->nlerp(Lcom/jme3/math/Quaternion;F)V

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "nlerp"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-object p3
.end method

.method private static spline(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 5

    new-instance v0, Lcom/jme3/math/Quaternion;

    iget v1, p1, Lcom/jme3/math/Quaternion;->x:F

    neg-float v1, v1

    iget v2, p1, Lcom/jme3/math/Quaternion;->y:F

    neg-float v2, v2

    iget v3, p1, Lcom/jme3/math/Quaternion;->z:F

    neg-float v3, v3

    iget v4, p1, Lcom/jme3/math/Quaternion;->w:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/math/Quaternion;-><init>(FFFF)V

    invoke-virtual {v0, p2}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p2

    invoke-static {p2, p4}, Lcom/jme3/math/MathUtils;->log(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, p0}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/jme3/math/MathUtils;->log(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    invoke-virtual {p3, p4}, Lcom/jme3/math/Quaternion;->addLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p0

    const/high16 p2, -0x41800000    # -0.25f

    invoke-virtual {p0, p2}, Lcom/jme3/math/Quaternion;->multLocal(F)Lcom/jme3/math/Quaternion;

    invoke-static {p3, p4}, Lcom/jme3/math/MathUtils;->exp(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    invoke-virtual {p3, p1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    invoke-virtual {p3}, Lcom/jme3/math/Quaternion;->normalizeLocal()Lcom/jme3/math/Quaternion;

    move-result-object p0

    return-object p0
.end method

.method public static squad(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;FLcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 0

    invoke-static {p0, p1, p2, p4, p7}, Lcom/jme3/math/MathUtils;->spline(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    invoke-static {p1, p2, p3, p5, p7}, Lcom/jme3/math/MathUtils;->spline(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    invoke-static {p4, p5, p6, p7}, Lcom/jme3/math/MathUtils;->slerp(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;FLcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    invoke-static {p1, p2, p6, p4}, Lcom/jme3/math/MathUtils;->slerp(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;FLcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p0, p6

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p6

    mul-float/2addr p0, p1

    invoke-static {p4, p7, p0, p5}, Lcom/jme3/math/MathUtils;->slerp(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;FLcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p0

    return-object p0
.end method
