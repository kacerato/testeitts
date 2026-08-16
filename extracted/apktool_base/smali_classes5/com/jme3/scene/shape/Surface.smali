.class public Lcom/jme3/scene/shape/Surface;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# instance fields
.field private basisUFunctionDegree:I

.field private basisVFunctionDegree:I

.field private controlPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector4f;",
            ">;>;"
        }
    .end annotation
.end field

.field private knots:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lcom/jme3/math/Spline$SplineType;

.field private uSegments:I

.field private vSegments:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;[Ljava/util/List;IIIIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector4f;",
            ">;>;[",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;IIIIZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/scene/shape/Surface;->validateInputData(Ljava/util/List;[Ljava/util/List;II)V

    .line 3
    sget-object v0, Lcom/jme3/math/Spline$SplineType;->Nurb:Lcom/jme3/math/Spline$SplineType;

    iput-object v0, p0, Lcom/jme3/scene/shape/Surface;->type:Lcom/jme3/math/Spline$SplineType;

    .line 4
    iput p3, p0, Lcom/jme3/scene/shape/Surface;->uSegments:I

    .line 5
    iput p4, p0, Lcom/jme3/scene/shape/Surface;->vSegments:I

    .line 6
    iput-object p1, p0, Lcom/jme3/scene/shape/Surface;->controlPoints:Ljava/util/List;

    .line 7
    iput-object p2, p0, Lcom/jme3/scene/shape/Surface;->knots:[Ljava/util/List;

    .line 8
    iput p5, p0, Lcom/jme3/scene/shape/Surface;->basisUFunctionDegree:I

    const/4 p1, 0x0

    .line 9
    aget-object p1, p2, p1

    invoke-static {p1, p5}, Lcom/jme3/math/CurveAndSurfaceMath;->prepareNurbsKnots(Ljava/util/List;I)V

    const/4 p1, 0x1

    .line 10
    aget-object p1, p2, p1

    if-eqz p1, :cond_0

    .line 11
    iput p6, p0, Lcom/jme3/scene/shape/Surface;->basisVFunctionDegree:I

    .line 12
    invoke-static {p1, p6}, Lcom/jme3/math/CurveAndSurfaceMath;->prepareNurbsKnots(Ljava/util/List;I)V

    .line 13
    :cond_0
    invoke-direct {p0, p7}, Lcom/jme3/scene/shape/Surface;->buildSurface(Z)V

    return-void
.end method

.method private varargs addNormal(Lcom/jme3/math/Vector3f;Ljava/util/Map;Z[Lcom/jme3/math/Vector3f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/math/Vector3f;",
            "Ljava/util/Map<",
            "Lcom/jme3/math/Vector3f;",
            "Lcom/jme3/math/Vector3f;",
            ">;Z[",
            "Lcom/jme3/math/Vector3f;",
            ")V"
        }
    .end annotation

    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p4, v1

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    if-eqz p3, :cond_1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private buildSurface(Z)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/jme3/scene/shape/Surface;->getMinUNurbKnot()F

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/jme3/scene/shape/Surface;->getMaxUNurbKnot()F

    move-result v3

    sub-float/2addr v3, v2

    iget v4, v0, Lcom/jme3/scene/shape/Surface;->uSegments:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct/range {p0 .. p0}, Lcom/jme3/scene/shape/Surface;->getMinVNurbKnot()F

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/jme3/scene/shape/Surface;->getMaxVNurbKnot()F

    move-result v5

    sub-float/2addr v5, v4

    iget v6, v0, Lcom/jme3/scene/shape/Surface;->vSegments:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    new-instance v6, Ljava/util/ArrayList;

    iget v7, v0, Lcom/jme3/scene/shape/Surface;->uSegments:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iget v9, v0, Lcom/jme3/scene/shape/Surface;->vSegments:I

    add-int/2addr v9, v8

    mul-int/2addr v7, v9

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    move v15, v7

    :goto_0
    iget v9, v0, Lcom/jme3/scene/shape/Surface;->vSegments:I

    if-gt v15, v9, :cond_1

    move/from16 v16, v2

    move v14, v7

    :goto_1
    iget v9, v0, Lcom/jme3/scene/shape/Surface;->uSegments:I

    if-gt v14, v9, :cond_0

    new-instance v13, Lcom/jme3/math/Vector3f;

    invoke-direct {v13}, Lcom/jme3/math/Vector3f;-><init>()V

    iget-object v11, v0, Lcom/jme3/scene/shape/Surface;->controlPoints:Ljava/util/List;

    iget-object v12, v0, Lcom/jme3/scene/shape/Surface;->knots:[Ljava/util/List;

    iget v10, v0, Lcom/jme3/scene/shape/Surface;->basisUFunctionDegree:I

    iget v9, v0, Lcom/jme3/scene/shape/Surface;->basisVFunctionDegree:I

    move/from16 v17, v9

    move/from16 v9, v16

    move/from16 v18, v10

    move v10, v4

    move-object/from16 v19, v13

    move/from16 v13, v18

    move/from16 v18, v14

    move/from16 v14, v17

    move/from16 v17, v15

    move-object/from16 v15, v19

    invoke-static/range {v9 .. v15}, Lcom/jme3/math/CurveAndSurfaceMath;->interpolate(FFLjava/util/List;[Ljava/util/List;IILcom/jme3/math/Vector3f;)V

    move-object/from16 v9, v19

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float v16, v16, v3

    add-int/lit8 v14, v18, 0x1

    move/from16 v15, v17

    goto :goto_1

    :cond_0
    move/from16 v17, v15

    add-float/2addr v4, v5

    add-int/lit8 v15, v17, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_5

    iget v2, v0, Lcom/jme3/scene/shape/Surface;->uSegments:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v9, v8

    add-int/lit8 v4, v2, -0x1

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    new-instance v5, Ljava/util/ArrayList;

    mul-int v10, v9, v4

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    move v10, v7

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jme3/math/Vector3f;

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    rem-int v11, v10, v3

    if-eqz v11, :cond_2

    if-eq v11, v2, :cond_2

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jme3/math/Vector3f;

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v2, v9

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5, v7, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v2, v8

    :goto_3
    iget v3, v0, Lcom/jme3/scene/shape/Surface;->vSegments:I

    if-ge v2, v3, :cond_4

    mul-int v3, v2, v4

    add-int v9, v3, v4

    invoke-interface {v5, v3, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v5, v3, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    mul-int v2, v3, v4

    mul-int/2addr v3, v4

    add-int/2addr v3, v4

    invoke-interface {v5, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iget v2, v0, Lcom/jme3/scene/shape/Surface;->uSegments:I

    iget v3, v0, Lcom/jme3/scene/shape/Surface;->vSegments:I

    mul-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x6

    new-array v4, v3, [I

    if-eqz v1, :cond_6

    add-int/2addr v2, v8

    goto :goto_4

    :cond_6
    mul-int/lit8 v2, v2, 0x2

    :goto_4
    if-eqz v1, :cond_8

    move v5, v7

    move v9, v5

    :goto_5
    iget v10, v0, Lcom/jme3/scene/shape/Surface;->vSegments:I

    if-ge v5, v10, :cond_a

    move v10, v7

    :goto_6
    iget v11, v0, Lcom/jme3/scene/shape/Surface;->uSegments:I

    if-ge v10, v11, :cond_7

    add-int/lit8 v11, v9, 0x1

    mul-int v12, v5, v2

    add-int/2addr v12, v10

    add-int v13, v12, v2

    aput v13, v4, v9

    add-int/lit8 v14, v9, 0x2

    add-int/lit8 v15, v12, 0x1

    aput v15, v4, v11

    add-int/lit8 v11, v9, 0x3

    aput v12, v4, v14

    add-int/lit8 v12, v9, 0x4

    aput v13, v4, v11

    add-int/lit8 v11, v9, 0x5

    add-int/2addr v13, v8

    aput v13, v4, v12

    add-int/lit8 v9, v9, 0x6

    aput v15, v4, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    move v5, v7

    move v9, v5

    :goto_7
    iget v10, v0, Lcom/jme3/scene/shape/Surface;->vSegments:I

    if-ge v5, v10, :cond_a

    move v10, v7

    :goto_8
    iget v11, v0, Lcom/jme3/scene/shape/Surface;->uSegments:I

    if-ge v10, v11, :cond_9

    add-int/lit8 v11, v9, 0x1

    mul-int/lit8 v12, v5, 0x2

    mul-int/2addr v12, v2

    add-int v13, v12, v2

    mul-int/lit8 v14, v10, 0x2

    add-int/2addr v13, v14

    aput v13, v4, v9

    add-int/lit8 v15, v9, 0x2

    add-int/2addr v12, v14

    add-int/lit8 v14, v12, 0x1

    aput v14, v4, v11

    add-int/lit8 v11, v9, 0x3

    aput v12, v4, v15

    add-int/lit8 v12, v9, 0x4

    aput v13, v4, v11

    add-int/lit8 v11, v9, 0x5

    add-int/2addr v13, v8

    aput v13, v4, v12

    add-int/lit8 v9, v9, 0x6

    aput v14, v4, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/jme3/math/Vector3f;

    invoke-interface {v6, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/jme3/math/Vector3f;

    new-instance v5, Ljava/util/HashMap;

    array-length v6, v2

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    move v6, v7

    :goto_9
    if-ge v6, v3, :cond_b

    aget v8, v4, v6

    aget-object v8, v2, v8

    add-int/lit8 v9, v6, 0x1

    aget v10, v4, v9

    aget-object v10, v2, v10

    add-int/lit8 v11, v6, 0x2

    aget v12, v4, v11

    aget-object v12, v2, v12

    invoke-static {v8, v10, v12}, Lcom/jme3/math/FastMath;->computeNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    aget v10, v4, v6

    aget-object v10, v2, v10

    aget v9, v4, v9

    aget-object v9, v2, v9

    aget v11, v4, v11

    aget-object v11, v2, v11

    filled-new-array {v10, v9, v11}, [Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-direct {v0, v8, v5, v1, v9}, Lcom/jme3/scene/shape/Surface;->addNormal(Lcom/jme3/math/Vector3f;Ljava/util/Map;Z[Lcom/jme3/math/Vector3f;)V

    add-int/lit8 v6, v6, 0x3

    goto :goto_9

    :cond_b
    array-length v1, v2

    const/4 v3, 0x3

    mul-int/2addr v1, v3

    new-array v1, v1, [F

    move v6, v7

    :goto_a
    array-length v8, v2

    if-ge v7, v8, :cond_c

    aget-object v8, v2, v7

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/math/Vector3f;

    add-int/lit8 v9, v6, 0x1

    iget v10, v8, Lcom/jme3/math/Vector3f;->x:F

    aput v10, v1, v6

    add-int/lit8 v10, v6, 0x2

    iget v11, v8, Lcom/jme3/math/Vector3f;->y:F

    aput v11, v1, v9

    add-int/2addr v6, v3

    iget v8, v8, Lcom/jme3/math/Vector3f;->z:F

    aput v8, v1, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_c
    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([Lcom/jme3/math/Vector3f;)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v0, v5, v3, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v2, v3, v4}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[I)V

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v2, v3, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    return-void
.end method

.method public static final createNurbsSurface(Ljava/util/List;[Ljava/util/List;IIII)Lcom/jme3/scene/shape/Surface;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector4f;",
            ">;>;[",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;IIII)",
            "Lcom/jme3/scene/shape/Surface;"
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-static/range {v0 .. v6}, Lcom/jme3/scene/shape/Surface;->createNurbsSurface(Ljava/util/List;[Ljava/util/List;IIIIZ)Lcom/jme3/scene/shape/Surface;

    move-result-object p0

    return-object p0
.end method

.method public static final createNurbsSurface(Ljava/util/List;[Ljava/util/List;IIIIZ)Lcom/jme3/scene/shape/Surface;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector4f;",
            ">;>;[",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;IIIIZ)",
            "Lcom/jme3/scene/shape/Surface;"
        }
    .end annotation

    .line 2
    new-instance v8, Lcom/jme3/scene/shape/Surface;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/jme3/scene/shape/Surface;-><init>(Ljava/util/List;[Ljava/util/List;IIIIZ)V

    .line 3
    sget-object p0, Lcom/jme3/math/Spline$SplineType;->Nurb:Lcom/jme3/math/Spline$SplineType;

    iput-object p0, v8, Lcom/jme3/scene/shape/Surface;->type:Lcom/jme3/math/Spline$SplineType;

    return-object v8
.end method

.method private getMaxUNurbKnot()F
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/shape/Surface;->knots:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/jme3/scene/shape/Surface;->basisUFunctionDegree:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private getMaxVNurbKnot()F
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/shape/Surface;->knots:[Ljava/util/List;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/jme3/scene/shape/Surface;->basisVFunctionDegree:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private getMinUNurbKnot()F
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/shape/Surface;->knots:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lcom/jme3/scene/shape/Surface;->basisUFunctionDegree:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private getMinVNurbKnot()F
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/shape/Surface;->knots:[Ljava/util/List;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v2, p0, Lcom/jme3/scene/shape/Surface;->basisVFunctionDegree:I

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private validateInputData(Ljava/util/List;[Ljava/util/List;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector4f;",
            ">;>;[",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;II)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The amount of \'U\' control points is invalid!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-lez p3, :cond_7

    if-ltz p4, :cond_6

    array-length p1, p2

    const/4 p3, 0x2

    if-ne p1, p3, :cond_5

    move p1, v0

    :goto_1
    array-length p3, p2

    if-ge p1, p3, :cond_4

    move p3, v0

    :goto_2
    aget-object p4, p2, p1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    sub-int/2addr p4, v2

    if-ge p3, p4, :cond_3

    aget-object p4, p2, p1

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    aget-object v1, p2, p1

    add-int/lit8 p3, p3, 0x1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float p4, p4, v1

    if-gtz p4, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The knots\' values cannot decrease!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Nurb surface should have two rows of knots!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "V segments amount cannot be negative!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "U segments amount should be positive!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBasisUFunctionDegree()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/Surface;->basisUFunctionDegree:I

    return v0
.end method

.method public getBasisVFunctionDegree()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/Surface;->basisVFunctionDegree:I

    return v0
.end method

.method public getControlPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector4f;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/scene/shape/Surface;->controlPoints:Ljava/util/List;

    return-object v0
.end method

.method public getKnots(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/scene/shape/Surface;->knots:[Ljava/util/List;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getType()Lcom/jme3/math/Spline$SplineType;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/shape/Surface;->type:Lcom/jme3/math/Spline$SplineType;

    return-object v0
.end method

.method public getUControlPointsAmount()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/shape/Surface;->controlPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVControlPointsAmount()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/shape/Surface;->controlPoints:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/shape/Surface;->controlPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    return v1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Mesh;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "type"

    const-class v1, Lcom/jme3/math/Spline$SplineType;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Spline$SplineType;

    iput-object v0, p0, Lcom/jme3/scene/shape/Surface;->type:Lcom/jme3/math/Spline$SplineType;

    const-string v0, "basisUFunctionDegree"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/Surface;->basisUFunctionDegree:I

    const-string v0, "basisVFunctionDegree"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/Surface;->basisVFunctionDegree:I

    const-string v0, "uSegments"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/Surface;->uSegments:I

    const-string v0, "vSegments"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/Surface;->vSegments:I

    const-string v0, "knotArray2D"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloatArray2D(Ljava/lang/String;[[F)[[F

    move-result-object v0

    array-length v3, v0

    new-array v4, v3, [Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/jme3/scene/shape/Surface;->knots:[Ljava/util/List;

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    iget-object v6, p0, Lcom/jme3/scene/shape/Surface;->knots:[Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v5

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v7, v6, v4

    array-length v6, v5

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_0

    aget v8, v5, v7

    iget-object v9, p0, Lcom/jme3/scene/shape/Surface;->knots:[Ljava/util/List;

    aget-object v9, v9, v4

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "listArray"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readSavableArrayListArray(Ljava/lang/String;[Ljava/util/ArrayList;)[Ljava/util/ArrayList;

    move-result-object p1

    array-length v0, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/jme3/scene/shape/Surface;->controlPoints:Ljava/util/List;

    :goto_2
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/jme3/scene/shape/Surface;->controlPoints:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Mesh;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/scene/shape/Surface;->type:Lcom/jme3/math/Spline$SplineType;

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget v0, p0, Lcom/jme3/scene/shape/Surface;->basisUFunctionDegree:I

    const-string v1, "basisUFunctionDegree"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/scene/shape/Surface;->basisVFunctionDegree:I

    const-string v1, "basisVFunctionDegree"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/scene/shape/Surface;->uSegments:I

    const-string v1, "uSegments"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/scene/shape/Surface;->vSegments:I

    const-string v1, "vSegments"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/scene/shape/Surface;->knots:[Ljava/util/List;

    array-length v0, v0

    new-array v1, v0, [[F

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v5, p0, Lcom/jme3/scene/shape/Surface;->knots:[Ljava/util/List;

    aget-object v5, v5, v4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v7, v6, [F

    move v8, v3

    :goto_1
    if-ge v8, v6, :cond_0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    aput-object v7, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "knotArray2D"

    invoke-interface {p1, v1, v0, v2}, Lcom/jme3/export/OutputCapsule;->write([[FLjava/lang/String;[[F)V

    iget-object v0, p0, Lcom/jme3/scene/shape/Surface;->controlPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/util/ArrayList;

    :goto_2
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcom/jme3/scene/shape/Surface;->controlPoints:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v6, v1, v3

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const-string v0, "listArray"

    invoke-interface {p1, v1, v0, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayListArray([Ljava/util/ArrayList;Ljava/lang/String;[Ljava/util/ArrayList;)V

    return-void
.end method
