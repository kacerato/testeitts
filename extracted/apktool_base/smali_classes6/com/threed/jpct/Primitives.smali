.class public Lcom/threed/jpct/Primitives;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HRT:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    div-float/2addr v1, v0

    sput v1, Lcom/threed/jpct/Primitives;->HRT:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final createLatheObject(I[Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/Object3D;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/threed/jpct/Primitives;->createLatheObject(I[Lcom/threed/jpct/SimpleVector;FF)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method private static final createLatheObject(I[Lcom/threed/jpct/SimpleVector;FF)Lcom/threed/jpct/Object3D;
    .locals 22

    move/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    new-instance v12, Lcom/threed/jpct/Object3D;

    mul-int/lit8 v2, v0, 0x2

    array-length v3, v1

    const/4 v13, 0x1

    sub-int/2addr v3, v13

    mul-int/2addr v3, v2

    add-int/2addr v2, v3

    add-int/2addr v2, v13

    invoke-direct {v12, v2}, Lcom/threed/jpct/Object3D;-><init>(I)V

    .line 3
    array-length v2, v1

    mul-int/2addr v2, v0

    const/4 v14, 0x2

    add-int/2addr v2, v14

    new-array v15, v2, [Lcom/threed/jpct/SimpleVector;

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, p3

    const/4 v3, 0x0

    .line 4
    invoke-static {v3, v2, v3}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    const/16 v16, 0x0

    aput-object v2, v15, v16

    const/high16 v2, -0x41000000    # -0.5f

    mul-float v2, v2, p3

    .line 5
    invoke-static {v3, v2, v3}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    aput-object v2, v15, v13

    move v4, v14

    move/from16 v2, v16

    :goto_0
    if-lt v2, v0, :cond_3

    move/from16 v2, v16

    :goto_1
    if-lt v2, v0, :cond_2

    move/from16 v14, v16

    .line 6
    :goto_2
    array-length v2, v1

    sub-int/2addr v2, v13

    if-lt v14, v2, :cond_0

    return-object v12

    :cond_0
    move/from16 v2, v16

    :goto_3
    if-lt v2, v0, :cond_1

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 7
    :cond_1
    rem-int v3, v2, v0

    array-length v4, v1

    mul-int/2addr v3, v4

    add-int/2addr v3, v14

    add-int/lit8 v17, v3, 0x2

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v18, v2, 0x1

    .line 8
    rem-int v2, v18, v0

    array-length v4, v1

    mul-int/2addr v2, v4

    add-int/2addr v2, v14

    add-int/lit8 v19, v2, 0x2

    add-int/lit8 v20, v2, 0x3

    .line 9
    aget-object v2, v15, v17

    iget v4, v2, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v4, v4, p2

    iget v5, v2, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v5, v5, p2

    iget v2, v2, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v6, p2, v2

    aget-object v2, v15, v20

    iget v7, v2, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v7, v7, p2

    iget v8, v2, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v8, v8, p2

    iget v2, v2, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v9, p2, v2

    .line 10
    aget-object v2, v15, v3

    iget v3, v2, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v10, p2, v3

    iget v3, v2, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v11, p2, v3

    iget v2, v2, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v21, p2, v2

    move-object v2, v12

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move/from16 v11, v21

    .line 11
    invoke-virtual/range {v2 .. v11}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFF)I

    .line 12
    aget-object v2, v15, v17

    iget v3, v2, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v3, v3, p2

    iget v4, v2, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v4, v4, p2

    iget v2, v2, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v5, p2, v2

    aget-object v2, v15, v19

    iget v6, v2, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v6, v6, p2

    iget v7, v2, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v7, v7, p2

    iget v2, v2, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v8, p2, v2

    .line 13
    aget-object v2, v15, v20

    iget v9, v2, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v9, v9, p2

    iget v10, v2, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v10, v10, p2

    iget v2, v2, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v11, p2, v2

    move-object v2, v12

    .line 14
    invoke-virtual/range {v2 .. v11}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFF)I

    move/from16 v2, v18

    goto/16 :goto_3

    .line 15
    :cond_2
    rem-int v3, v2, v0

    array-length v4, v1

    mul-int/2addr v3, v4

    add-int/lit8 v17, v3, 0x2

    add-int/lit8 v18, v2, 0x1

    .line 16
    rem-int v2, v18, v0

    array-length v3, v1

    mul-int/2addr v2, v3

    add-int/lit8 v19, v2, 0x2

    .line 17
    aget-object v2, v15, v16

    iget v3, v2, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v3, v3, p2

    iget v4, v2, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v4, v4, p2

    iget v2, v2, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v5, p2, v2

    aget-object v2, v15, v19

    iget v6, v2, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v6, v6, p2

    iget v7, v2, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v7, v7, p2

    iget v2, v2, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v8, p2, v2

    .line 18
    aget-object v2, v15, v17

    iget v9, v2, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v9, v9, p2

    iget v10, v2, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v10, v10, p2

    iget v2, v2, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v11, p2, v2

    move-object v2, v12

    .line 19
    invoke-virtual/range {v2 .. v11}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFF)I

    .line 20
    array-length v2, v1

    add-int v17, v17, v2

    add-int/lit8 v17, v17, -0x1

    .line 21
    array-length v2, v1

    add-int v19, v19, v2

    add-int/lit8 v19, v19, -0x1

    .line 22
    aget-object v2, v15, v13

    iget v3, v2, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v3, v3, p2

    iget v4, v2, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v4, v4, p2

    iget v2, v2, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v5, p2, v2

    aget-object v2, v15, v17

    iget v6, v2, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v6, v6, p2

    iget v7, v2, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v7, v7, p2

    iget v2, v2, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v8, p2, v2

    .line 23
    aget-object v2, v15, v19

    iget v9, v2, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v9, v9, p2

    iget v10, v2, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v10, v10, p2

    iget v2, v2, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v11, p2, v2

    move-object v2, v12

    .line 24
    invoke-virtual/range {v2 .. v11}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFF)I

    move/from16 v2, v18

    goto/16 :goto_1

    :cond_3
    move/from16 v5, v16

    .line 25
    :goto_4
    array-length v6, v1

    if-lt v5, v6, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    int-to-float v6, v2

    int-to-float v7, v0

    div-float/2addr v6, v7

    add-int/lit8 v7, v4, 0x1

    .line 26
    aget-object v8, v1, v5

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v6, v9

    const v9, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v6, v9

    invoke-static {v3, v6, v3}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/threed/jpct/SimpleVector;->rotate(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v6

    aput-object v6, v15, v4

    add-int/lit8 v5, v5, 0x1

    move v4, v7

    goto :goto_4
.end method

.method public static getBox(FF)Lcom/threed/jpct/Object3D;
    .locals 4

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    sget v0, Lcom/threed/jpct/Primitives;->HRT:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v1

    const/high16 v3, -0x41000000    # -0.5f

    mul-float/2addr v3, p1

    invoke-static {v0, v3, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    filled-new-array {v1, v0}, [Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v0, p0, p1}, Lcom/threed/jpct/Primitives;->createLatheObject(I[Lcom/threed/jpct/SimpleVector;FF)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static getCone(F)Lcom/threed/jpct/Object3D;
    .locals 1

    const/16 v0, 0x5a

    .line 1
    invoke-static {v0, p0}, Lcom/threed/jpct/Primitives;->getCone(IF)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static getCone(IF)Lcom/threed/jpct/Object3D;
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v0, v1}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    filled-new-array {v0}, [Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/threed/jpct/Primitives;->createLatheObject(I[Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static getCone(IFF)Lcom/threed/jpct/Object3D;
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v1, p2, v0

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    filled-new-array {v0}, [Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/threed/jpct/Primitives;->createLatheObject(I[Lcom/threed/jpct/SimpleVector;FF)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static getCube(F)Lcom/threed/jpct/Object3D;
    .locals 4

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    sget v0, Lcom/threed/jpct/Primitives;->HRT:F

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v1

    const/high16 v3, -0x41000000    # -0.5f

    invoke-static {v0, v3, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    filled-new-array {v1, v0}, [Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v0, p0}, Lcom/threed/jpct/Primitives;->createLatheObject(I[Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static getCylinder(F)Lcom/threed/jpct/Object3D;
    .locals 1

    const/16 v0, 0x5a

    .line 1
    invoke-static {v0, p0}, Lcom/threed/jpct/Primitives;->getCylinder(IF)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static getCylinder(IF)Lcom/threed/jpct/Object3D;
    .locals 4

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v0, v1}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    const/high16 v3, -0x41000000    # -0.5f

    invoke-static {v0, v3, v1}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    filled-new-array {v2, v0}, [Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/threed/jpct/Primitives;->createLatheObject(I[Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static getCylinder(IFF)Lcom/threed/jpct/Object3D;
    .locals 4

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v1, p2, v0

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v1

    const/high16 v3, -0x41000000    # -0.5f

    mul-float/2addr v3, p2

    invoke-static {v0, v3, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    filled-new-array {v1, v0}, [Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/threed/jpct/Primitives;->createLatheObject(I[Lcom/threed/jpct/SimpleVector;FF)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static getDoubleCone(F)Lcom/threed/jpct/Object3D;
    .locals 1

    const/16 v0, 0x5a

    .line 1
    invoke-static {v0, p0}, Lcom/threed/jpct/Primitives;->getDoubleCone(IF)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static getDoubleCone(IF)Lcom/threed/jpct/Object3D;
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1, v1}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    filled-new-array {v0}, [Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/threed/jpct/Primitives;->createLatheObject(I[Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static getEllipsoid(FF)Lcom/threed/jpct/Object3D;
    .locals 1

    const/16 v0, 0x14

    .line 1
    invoke-static {v0, p0, p1}, Lcom/threed/jpct/Primitives;->getEllipsoid(IFF)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static getEllipsoid(IFF)Lcom/threed/jpct/Object3D;
    .locals 5

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 2
    new-array v0, p0, [Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p0, :cond_0

    .line 3
    invoke-static {p0, v0, p1, p2}, Lcom/threed/jpct/Primitives;->createLatheObject(I[Lcom/threed/jpct/SimpleVector;FF)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-float v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    int-to-float v4, p0

    add-float/2addr v4, v3

    div-float/2addr v2, v4

    const v3, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v2, v3

    .line 4
    invoke-static {v2}, Landroid/util/FloatMath;->sin(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    mul-float/2addr v2, v4

    mul-float/2addr v2, p2

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getPlane(IF)Lcom/threed/jpct/Object3D;
    .locals 35

    move/from16 v0, p0

    move/from16 v1, p1

    neg-float v2, v1

    int-to-float v3, v0

    mul-float/2addr v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    new-instance v15, Lcom/threed/jpct/Object3D;

    mul-int v5, v0, v0

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x8

    invoke-direct {v15, v5}, Lcom/threed/jpct/Object3D;-><init>(I)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v23, v2

    move/from16 v24, v21

    move/from16 v14, v22

    :goto_0
    if-lt v14, v0, :cond_0

    return-object v15

    :cond_0
    move/from16 v25, v2

    move/from16 v26, v21

    move/from16 v13, v22

    :goto_1
    if-lt v13, v0, :cond_1

    add-float v23, v23, v1

    add-float v24, v24, v3

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    add-float v27, v26, v3

    add-float v5, v24, v3

    cmpl-float v6, v27, v4

    if-lez v6, :cond_2

    move/from16 v28, v4

    goto :goto_2

    :cond_2
    move/from16 v28, v27

    :goto_2
    cmpl-float v6, v5, v4

    if-lez v6, :cond_3

    move/from16 v29, v4

    goto :goto_3

    :cond_3
    move/from16 v29, v5

    :goto_3
    add-float v30, v23, v1

    add-float v31, v25, v1

    const/16 v18, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    move-object v5, v15

    move/from16 v6, v25

    move/from16 v7, v23

    move/from16 v9, v26

    move/from16 v10, v24

    move/from16 v11, v25

    move/from16 v12, v30

    move/from16 v32, v13

    move/from16 v13, v16

    move/from16 v33, v14

    move/from16 v14, v26

    move-object/from16 v34, v15

    move/from16 v15, v29

    move/from16 v16, v31

    move/from16 v17, v23

    move/from16 v19, v28

    move/from16 v20, v24

    invoke-virtual/range {v5 .. v20}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFF)I

    const/4 v13, 0x0

    move-object/from16 v5, v34

    move/from16 v7, v30

    move/from16 v10, v29

    move/from16 v11, v31

    move/from16 v14, v28

    invoke-virtual/range {v5 .. v20}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFF)I

    add-int/lit8 v13, v32, 0x1

    move/from16 v26, v27

    move/from16 v25, v31

    move/from16 v14, v33

    move-object/from16 v15, v34

    goto :goto_1
.end method

.method public static getPyramide(F)Lcom/threed/jpct/Object3D;
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    .line 1
    sget v0, Lcom/threed/jpct/Primitives;->HRT:F

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    filled-new-array {v0}, [Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v0, p0}, Lcom/threed/jpct/Primitives;->createLatheObject(I[Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static getPyramide(FF)Lcom/threed/jpct/Object3D;
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    .line 2
    sget v0, Lcom/threed/jpct/Primitives;->HRT:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    filled-new-array {v0}, [Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v0, p0, p1}, Lcom/threed/jpct/Primitives;->createLatheObject(I[Lcom/threed/jpct/SimpleVector;FF)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static getSphere(F)Lcom/threed/jpct/Object3D;
    .locals 1

    const/16 v0, 0x14

    .line 1
    invoke-static {v0, p0}, Lcom/threed/jpct/Primitives;->getSphere(IF)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static getSphere(IF)Lcom/threed/jpct/Object3D;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p0, p1, v0}, Lcom/threed/jpct/Primitives;->getEllipsoid(IFF)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method
