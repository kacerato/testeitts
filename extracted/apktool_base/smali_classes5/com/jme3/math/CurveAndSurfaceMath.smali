.class public Lcom/jme3/math/CurveAndSurfaceMath;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KNOTS_MINIMUM_DELTA:F = 1.0E-4f


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeBaseFunctionValue(IIFLjava/util/List;)F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIF",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    add-int/2addr p0, v0

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v1, p2, v1

    add-int v2, p0, p1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v1, v3

    sub-int/2addr p1, v0

    invoke-static {p0, p1, p2, p3}, Lcom/jme3/math/CurveAndSurfaceMath;->computeBaseFunctionValue(IIFLjava/util/List;)F

    move-result v3

    mul-float/2addr v1, v3

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v3, p2

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-int/2addr p0, v0

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v2, v0

    div-float/2addr v3, v2

    invoke-static {p0, p1, p2, p3}, Lcom/jme3/math/CurveAndSurfaceMath;->computeBaseFunctionValue(IIFLjava/util/List;)F

    move-result p0

    mul-float/2addr v3, p0

    add-float/2addr v1, v3

    return v1
.end method

.method public static interpolate(FFLjava/util/List;[Ljava/util/List;IILcom/jme3/math/Vector3f;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector4f;",
            ">;>;[",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;II",
            "Lcom/jme3/math/Vector3f;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v3

    :goto_0
    if-ge v6, v2, :cond_1

    move v7, v3

    :goto_1
    if-ge v7, v4, :cond_0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/math/Vector4f;

    iget v9, v8, Lcom/jme3/math/Vector4f;->w:F

    const/4 v10, 0x1

    aget-object v10, p3, v10

    move/from16 v11, p1

    move/from16 v12, p5

    invoke-static {v6, v12, v11, v10}, Lcom/jme3/math/CurveAndSurfaceMath;->computeBaseFunctionValue(IIFLjava/util/List;)F

    move-result v10

    mul-float/2addr v9, v10

    aget-object v10, p3, v3

    move/from16 v13, p0

    move/from16 v14, p4

    invoke-static {v7, v14, v13, v10}, Lcom/jme3/math/CurveAndSurfaceMath;->computeBaseFunctionValue(IIFLjava/util/List;)F

    move-result v10

    mul-float/2addr v9, v10

    iget v10, v8, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v10, v9

    iget v15, v8, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr v15, v9

    iget v8, v8, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v8, v9

    invoke-virtual {v1, v10, v15, v8}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    add-float/2addr v5, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    move/from16 v13, p0

    move/from16 v11, p1

    move/from16 v14, p4

    move/from16 v12, p5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public static interpolateNurbs(FLcom/jme3/math/Spline;Lcom/jme3/math/Vector3f;)V
    .locals 7

    invoke-virtual {p1}, Lcom/jme3/math/Spline;->getType()Lcom/jme3/math/Spline$SplineType;

    move-result-object v0

    sget-object v1, Lcom/jme3/math/Spline$SplineType;->Nurb:Lcom/jme3/math/Spline$SplineType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/jme3/math/Spline;->getControlPoints()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/math/Spline;->getWeights()[F

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/math/Spline;->getKnots()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v3, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    aget v5, v1, v4

    invoke-virtual {p1}, Lcom/jme3/math/Spline;->getBasisFunctionDegree()I

    move-result v6

    invoke-static {v4, v6, p0, v2}, Lcom/jme3/math/CurveAndSurfaceMath;->computeBaseFunctionValue(IIFLjava/util/List;)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {p1}, Lcom/jme3/math/Spline;->getControlPoints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v3}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given spline is not of a NURB type!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static prepareNurbsKnots(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;I)V"
        }
    .end annotation

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x38d1b717    # 1.0E-4f

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float p1, v3, p1

    if-gtz p1, :cond_0

    add-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-float/2addr v2, v0

    :goto_1
    move p1, v3

    goto :goto_2

    :cond_0
    move v2, v0

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
