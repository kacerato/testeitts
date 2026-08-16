.class public final Lcom/jme3/bounding/Intersection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final findMinMax(FFFLcom/jme3/math/Vector3f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p3, p0, p0, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget p0, p3, Lcom/jme3/math/Vector3f;->x:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    invoke-virtual {p3, p1}, Lcom/jme3/math/Vector3f;->setX(F)Lcom/jme3/math/Vector3f;

    :cond_0
    iget p0, p3, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    invoke-virtual {p3, p1}, Lcom/jme3/math/Vector3f;->setY(F)Lcom/jme3/math/Vector3f;

    :cond_1
    iget p0, p3, Lcom/jme3/math/Vector3f;->x:F

    cmpg-float p0, p2, p0

    if-gez p0, :cond_2

    invoke-virtual {p3, p2}, Lcom/jme3/math/Vector3f;->setX(F)Lcom/jme3/math/Vector3f;

    :cond_2
    iget p0, p3, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float p0, p2, p0

    if-lez p0, :cond_3

    invoke-virtual {p3, p2}, Lcom/jme3/math/Vector3f;->setY(F)Lcom/jme3/math/Vector3f;

    :cond_3
    return-void
.end method

.method public static intersect(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/math/Vector3f;F)Z
    .locals 7

    mul-float/2addr p2, p2

    .line 7
    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    sub-float v3, v1, v2

    add-float/2addr v1, v2

    .line 8
    iget v2, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v4, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    sub-float v5, v2, v4

    add-float/2addr v2, v4

    .line 9
    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    iget p0, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    sub-float v4, v0, p0

    add-float/2addr v0, p0

    .line 10
    iget p0, p1, Lcom/jme3/math/Vector3f;->x:F

    cmpg-float v6, p0, v3

    if-gez v6, :cond_0

    sub-float/2addr p0, v3

    .line 11
    invoke-static {p0}, Lcom/jme3/math/FastMath;->sqr(F)F

    move-result p0

    :goto_0
    sub-float/2addr p2, p0

    goto :goto_1

    :cond_0
    cmpl-float v3, p0, v1

    if-lez v3, :cond_1

    sub-float/2addr p0, v1

    .line 12
    invoke-static {p0}, Lcom/jme3/math/FastMath;->sqr(F)F

    move-result p0

    goto :goto_0

    .line 13
    :cond_1
    :goto_1
    iget p0, p1, Lcom/jme3/math/Vector3f;->y:F

    cmpg-float v1, p0, v5

    if-gez v1, :cond_2

    sub-float/2addr p0, v5

    .line 14
    invoke-static {p0}, Lcom/jme3/math/FastMath;->sqr(F)F

    move-result p0

    :goto_2
    sub-float/2addr p2, p0

    goto :goto_3

    :cond_2
    cmpl-float v1, p0, v2

    if-lez v1, :cond_3

    sub-float/2addr p0, v2

    .line 15
    invoke-static {p0}, Lcom/jme3/math/FastMath;->sqr(F)F

    move-result p0

    goto :goto_2

    .line 16
    :cond_3
    :goto_3
    iget p0, p1, Lcom/jme3/math/Vector3f;->z:F

    cmpg-float p1, p0, v4

    if-gez p1, :cond_4

    sub-float/2addr p0, v4

    .line 17
    invoke-static {p0}, Lcom/jme3/math/FastMath;->sqr(F)F

    move-result p0

    :goto_4
    sub-float/2addr p2, p0

    goto :goto_5

    :cond_4
    cmpl-float p1, p0, v0

    if-lez p1, :cond_5

    sub-float/2addr p0, v0

    .line 18
    invoke-static {p0}, Lcom/jme3/math/FastMath;->sqr(F)F

    move-result p0

    goto :goto_4

    :cond_5
    :goto_5
    const/4 p0, 0x0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_6

    :cond_6
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static intersect(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 20
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v4

    .line 21
    iget-object v5, v4, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    .line 22
    iget-object v6, v4, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    .line 23
    iget-object v7, v4, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    .line 24
    iget-object v8, v4, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    .line 25
    iget-object v9, v4, Lcom/jme3/util/TempVars;->vect5:Lcom/jme3/math/Vector3f;

    .line 26
    iget-object v10, v4, Lcom/jme3/util/TempVars;->vect6:Lcom/jme3/math/Vector3f;

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v11

    const/4 v12, 0x0

    .line 28
    invoke-virtual {v0, v12}, Lcom/jme3/bounding/BoundingBox;->getExtent(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v12

    .line 29
    invoke-virtual {v1, v11, v5}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 30
    invoke-virtual {v2, v11, v6}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 31
    invoke-virtual {v3, v11, v7}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 32
    invoke-virtual {v6, v5, v8}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 33
    invoke-virtual {v7, v6, v9}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 34
    invoke-virtual {v5, v7, v10}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 35
    iget v11, v8, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v11}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v11

    .line 36
    iget v13, v8, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v13}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v13

    .line 37
    iget v14, v8, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v14}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v14

    .line 38
    iget v15, v8, Lcom/jme3/math/Vector3f;->z:F

    iget v0, v5, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v0, v15

    iget v1, v8, Lcom/jme3/math/Vector3f;->y:F

    iget v2, v5, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    .line 39
    iget v2, v7, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v15, v2

    iget v2, v7, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v1, v2

    sub-float/2addr v15, v1

    .line 40
    invoke-static {v0, v15}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 41
    invoke-static {v0, v15}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 42
    iget v2, v12, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v2, v14

    iget v15, v12, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v15, v13

    add-float/2addr v2, v15

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    neg-float v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_b

    .line 43
    :cond_1
    iget v0, v8, Lcom/jme3/math/Vector3f;->z:F

    neg-float v1, v0

    iget v2, v5, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v1, v2

    iget v2, v8, Lcom/jme3/math/Vector3f;->x:F

    iget v15, v5, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v15, v2

    add-float/2addr v1, v15

    neg-float v0, v0

    .line 44
    iget v15, v7, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v0, v15

    iget v15, v7, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v2, v15

    add-float/2addr v0, v2

    .line 45
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 46
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 47
    iget v1, v12, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v14, v1

    iget v1, v12, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v1, v11

    add-float/2addr v14, v1

    cmpl-float v1, v2, v14

    if-gtz v1, :cond_2

    neg-float v1, v14

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_a

    .line 48
    :cond_3
    iget v0, v8, Lcom/jme3/math/Vector3f;->y:F

    iget v1, v6, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v1, v0

    iget v2, v8, Lcom/jme3/math/Vector3f;->x:F

    iget v8, v6, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v8, v2

    sub-float/2addr v1, v8

    .line 49
    iget v8, v7, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v0, v8

    iget v8, v7, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v2, v8

    sub-float/2addr v0, v2

    .line 50
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 51
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 52
    iget v1, v12, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v13, v1

    iget v1, v12, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v11, v1

    add-float/2addr v13, v11

    cmpl-float v1, v2, v13

    if-gtz v1, :cond_4

    neg-float v1, v13

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 53
    :cond_5
    iget v0, v9, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    .line 54
    iget v1, v9, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    .line 55
    iget v2, v9, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v2}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v2

    .line 56
    iget v8, v9, Lcom/jme3/math/Vector3f;->z:F

    iget v11, v5, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v11, v8

    iget v13, v9, Lcom/jme3/math/Vector3f;->y:F

    iget v14, v5, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v14, v13

    sub-float/2addr v11, v14

    .line 57
    iget v14, v7, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v8, v14

    iget v14, v7, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v13, v14

    sub-float/2addr v8, v13

    .line 58
    invoke-static {v11, v8}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 59
    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 60
    iget v11, v12, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v11, v2

    iget v14, v12, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v14, v1

    add-float/2addr v11, v14

    cmpl-float v13, v13, v11

    if-gtz v13, :cond_6

    neg-float v11, v11

    cmpg-float v8, v8, v11

    if-gez v8, :cond_7

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_8

    .line 61
    :cond_7
    iget v8, v9, Lcom/jme3/math/Vector3f;->z:F

    neg-float v11, v8

    iget v13, v5, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v11, v13

    iget v13, v9, Lcom/jme3/math/Vector3f;->x:F

    iget v14, v5, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v14, v13

    add-float/2addr v11, v14

    neg-float v8, v8

    .line 62
    iget v14, v7, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v8, v14

    iget v14, v7, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v13, v14

    add-float/2addr v8, v13

    .line 63
    invoke-static {v11, v8}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 64
    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 65
    iget v11, v12, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v2, v11

    iget v11, v12, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v11, v0

    add-float/2addr v2, v11

    cmpl-float v11, v13, v2

    if-gtz v11, :cond_8

    neg-float v2, v2

    cmpg-float v2, v8, v2

    if-gez v2, :cond_9

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 66
    :cond_9
    iget v2, v9, Lcom/jme3/math/Vector3f;->y:F

    iget v8, v5, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v8, v2

    iget v9, v9, Lcom/jme3/math/Vector3f;->x:F

    iget v11, v5, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v11, v9

    sub-float/2addr v8, v11

    .line 67
    iget v11, v6, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v2, v11

    iget v11, v6, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v9, v11

    sub-float/2addr v2, v9

    .line 68
    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 69
    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 70
    iget v8, v12, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v1, v8

    iget v8, v12, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v0, v8

    add-float/2addr v1, v0

    cmpl-float v0, v9, v1

    if-gtz v0, :cond_a

    neg-float v0, v1

    cmpg-float v0, v2, v0

    if-gez v0, :cond_b

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 71
    :cond_b
    iget v0, v10, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    .line 72
    iget v1, v10, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    .line 73
    iget v2, v10, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v2}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v2

    .line 74
    iget v8, v10, Lcom/jme3/math/Vector3f;->z:F

    iget v9, v5, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v9, v8

    iget v11, v10, Lcom/jme3/math/Vector3f;->y:F

    iget v13, v5, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v13, v11

    sub-float/2addr v9, v13

    .line 75
    iget v13, v6, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v8, v13

    iget v13, v6, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v11, v13

    sub-float/2addr v8, v11

    .line 76
    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 77
    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 78
    iget v9, v12, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v9, v2

    iget v13, v12, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v13, v1

    add-float/2addr v9, v13

    cmpl-float v11, v11, v9

    if-gtz v11, :cond_c

    neg-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_d

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 79
    :cond_d
    iget v8, v10, Lcom/jme3/math/Vector3f;->z:F

    neg-float v9, v8

    iget v11, v5, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v9, v11

    iget v11, v10, Lcom/jme3/math/Vector3f;->x:F

    iget v13, v5, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v13, v11

    add-float/2addr v9, v13

    neg-float v8, v8

    .line 80
    iget v13, v6, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v8, v13

    iget v13, v6, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v11, v13

    add-float/2addr v8, v11

    .line 81
    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 82
    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 83
    iget v9, v12, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v2, v9

    iget v9, v12, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v9, v0

    add-float/2addr v2, v9

    cmpl-float v9, v11, v2

    if-gtz v9, :cond_e

    neg-float v2, v2

    cmpg-float v2, v8, v2

    if-gez v2, :cond_f

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 84
    :cond_f
    iget v2, v10, Lcom/jme3/math/Vector3f;->y:F

    iget v8, v6, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v8, v2

    iget v9, v10, Lcom/jme3/math/Vector3f;->x:F

    iget v10, v6, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v10, v9

    sub-float/2addr v8, v10

    .line 85
    iget v10, v7, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v2, v10

    iget v10, v7, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v9, v10

    sub-float/2addr v2, v9

    .line 86
    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 87
    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 88
    iget v8, v12, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v1, v8

    iget v8, v12, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v0, v8

    add-float/2addr v1, v0

    cmpl-float v0, v9, v1

    if-gtz v0, :cond_10

    neg-float v0, v1

    cmpg-float v0, v2, v0

    if-gez v0, :cond_11

    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 89
    :cond_11
    iget-object v0, v4, Lcom/jme3/util/TempVars;->vect7:Lcom/jme3/math/Vector3f;

    .line 90
    iget v1, v5, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v6, Lcom/jme3/math/Vector3f;->x:F

    iget v8, v7, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v1, v2, v8, v0}, Lcom/jme3/bounding/Intersection;->findMinMax(FFFLcom/jme3/math/Vector3f;)V

    .line 91
    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v12, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_12

    iget v1, v0, Lcom/jme3/math/Vector3f;->y:F

    neg-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_13

    :cond_12
    const/4 v0, 0x0

    goto :goto_2

    .line 92
    :cond_13
    iget v1, v5, Lcom/jme3/math/Vector3f;->y:F

    iget v2, v6, Lcom/jme3/math/Vector3f;->y:F

    iget v8, v7, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v1, v2, v8, v0}, Lcom/jme3/bounding/Intersection;->findMinMax(FFFLcom/jme3/math/Vector3f;)V

    .line 93
    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v12, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_14

    iget v1, v0, Lcom/jme3/math/Vector3f;->y:F

    neg-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_15

    :cond_14
    const/4 v0, 0x0

    goto :goto_1

    .line 94
    :cond_15
    iget v1, v5, Lcom/jme3/math/Vector3f;->z:F

    iget v2, v6, Lcom/jme3/math/Vector3f;->z:F

    iget v5, v7, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v1, v2, v5, v0}, Lcom/jme3/bounding/Intersection;->findMinMax(FFFLcom/jme3/math/Vector3f;)V

    .line 95
    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v12, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_16

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    neg-float v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_17

    :cond_16
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :cond_17
    iget-object v0, v4, Lcom/jme3/util/TempVars;->plane:Lcom/jme3/math/Plane;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 97
    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/math/Plane;->setPlanePoints(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    move-object/from16 v1, p0

    .line 98
    invoke-virtual {v1, v0}, Lcom/jme3/bounding/BoundingBox;->whichSide(Lcom/jme3/math/Plane;)Lcom/jme3/math/Plane$Side;

    move-result-object v0

    sget-object v1, Lcom/jme3/math/Plane$Side;->Negative:Lcom/jme3/math/Plane$Side;

    if-ne v0, v1, :cond_18

    .line 99
    invoke-virtual {v4}, Lcom/jme3/util/TempVars;->release()V

    const/4 v0, 0x0

    return v0

    .line 100
    :cond_18
    invoke-virtual {v4}, Lcom/jme3/util/TempVars;->release()V

    const/4 v0, 0x1

    return v0

    .line 101
    :goto_0
    invoke-virtual {v4}, Lcom/jme3/util/TempVars;->release()V

    return v0

    .line 102
    :goto_1
    invoke-virtual {v4}, Lcom/jme3/util/TempVars;->release()V

    return v0

    .line 103
    :goto_2
    invoke-virtual {v4}, Lcom/jme3/util/TempVars;->release()V

    return v0

    .line 104
    :goto_3
    invoke-virtual {v4}, Lcom/jme3/util/TempVars;->release()V

    return v0

    .line 105
    :goto_4
    invoke-virtual {v4}, Lcom/jme3/util/TempVars;->release()V

    return v0

    .line 106
    :goto_5
    invoke-virtual {v4}, Lcom/jme3/util/TempVars;->release()V

    return v0

    .line 107
    :goto_6
    invoke-virtual {v4}, Lcom/jme3/util/TempVars;->release()V

    return v0

    .line 108
    :goto_7
    invoke-virtual {v4}, Lcom/jme3/util/TempVars;->release()V

    return v0

    .line 109
    :goto_8
    invoke-virtual {v4}, Lcom/jme3/util/TempVars;->release()V

    return v0

    .line 110
    :goto_9
    invoke-virtual {v4}, Lcom/jme3/util/TempVars;->release()V

    return v0

    .line 111
    :goto_a
    invoke-virtual {v4}, Lcom/jme3/util/TempVars;->release()V

    return v0

    .line 112
    :goto_b
    invoke-virtual {v4}, Lcom/jme3/util/TempVars;->release()V

    return v0
.end method

.method public static intersect(Lcom/jme3/bounding/BoundingSphere;Lcom/jme3/math/Vector3f;F)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1, v2}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result p0

    add-float/2addr p0, p2

    .line 4
    invoke-virtual {p1, p1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-float/2addr p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    .line 6
    throw p0
.end method

.method public static intersect(Lcom/jme3/renderer/Camera;Lcom/jme3/math/Vector3f;F)Z
    .locals 3

    const/4 v0, 0x5

    :goto_0
    if-ltz v0, :cond_1

    .line 19
    invoke-virtual {p0, v0}, Lcom/jme3/renderer/Camera;->getWorldPlane(I)Lcom/jme3/math/Plane;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jme3/math/Plane;->pseudoDistance(Lcom/jme3/math/Vector3f;)F

    move-result v1

    neg-float v2, p2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
