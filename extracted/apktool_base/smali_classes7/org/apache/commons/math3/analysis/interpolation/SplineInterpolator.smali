.class public Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    .line 2
    array-length v6, v0

    array-length v7, v1

    if-ne v6, v7, :cond_5

    .line 3
    array-length v6, v0

    if-lt v6, v4, :cond_4

    .line 4
    array-length v6, v0

    add-int/lit8 v7, v6, -0x1

    .line 5
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 6
    new-array v8, v7, [D

    move v9, v3

    :goto_0
    if-ge v9, v7, :cond_0

    add-int/lit8 v10, v9, 0x1

    .line 7
    aget-wide v11, v0, v10

    aget-wide v13, v0, v9

    sub-double/2addr v11, v13

    aput-wide v11, v8, v9

    move v9, v10

    goto :goto_0

    .line 8
    :cond_0
    new-array v9, v7, [D

    .line 9
    new-array v10, v6, [D

    const-wide/16 v11, 0x0

    .line 10
    aput-wide v11, v9, v3

    .line 11
    aput-wide v11, v10, v3

    move v13, v5

    :goto_1
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    if-ge v13, v7, :cond_1

    add-int/lit8 v18, v13, 0x1

    .line 12
    aget-wide v19, v0, v18

    add-int/lit8 v21, v13, -0x1

    aget-wide v22, v0, v21

    sub-double v19, v19, v22

    mul-double v19, v19, v14

    aget-wide v14, v8, v21

    aget-wide v22, v9, v21

    mul-double v14, v14, v22

    sub-double v19, v19, v14

    .line 13
    aget-wide v14, v8, v13

    div-double v14, v14, v19

    aput-wide v14, v9, v13

    .line 14
    aget-wide v14, v1, v18

    aget-wide v22, v8, v21

    mul-double v14, v14, v22

    aget-wide v24, v1, v13

    aget-wide v26, v0, v18

    aget-wide v28, v0, v21

    sub-double v26, v26, v28

    mul-double v24, v24, v26

    sub-double v14, v14, v24

    aget-wide v24, v1, v21

    aget-wide v26, v8, v13

    mul-double v24, v24, v26

    add-double v14, v14, v24

    mul-double v14, v14, v16

    mul-double v26, v26, v22

    div-double v14, v14, v26

    aget-wide v16, v10, v21

    mul-double v22, v22, v16

    sub-double v14, v14, v22

    div-double v14, v14, v19

    aput-wide v14, v10, v13

    move/from16 v13, v18

    goto :goto_1

    .line 15
    :cond_1
    new-array v13, v7, [D

    .line 16
    new-array v4, v6, [D

    .line 17
    new-array v3, v7, [D

    .line 18
    aput-wide v11, v10, v7

    .line 19
    aput-wide v11, v4, v7

    sub-int/2addr v6, v2

    :goto_2
    if-ltz v6, :cond_2

    .line 20
    aget-wide v11, v10, v6

    aget-wide v20, v9, v6

    add-int/lit8 v22, v6, 0x1

    aget-wide v23, v4, v22

    mul-double v20, v20, v23

    sub-double v11, v11, v20

    aput-wide v11, v4, v6

    .line 21
    aget-wide v20, v1, v22

    aget-wide v23, v1, v6

    sub-double v20, v20, v23

    aget-wide v23, v8, v6

    div-double v20, v20, v23

    aget-wide v25, v4, v22

    mul-double/2addr v11, v14

    add-double v25, v25, v11

    mul-double v23, v23, v25

    div-double v23, v23, v16

    sub-double v20, v20, v23

    aput-wide v20, v13, v6

    .line 22
    aget-wide v11, v4, v22

    aget-wide v20, v4, v6

    sub-double v11, v11, v20

    aget-wide v20, v8, v6

    mul-double v20, v20, v16

    div-double v11, v11, v20

    aput-wide v11, v3, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 23
    :cond_2
    new-array v6, v7, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_3

    .line 24
    aget-wide v9, v1, v8

    .line 25
    aget-wide v11, v13, v8

    .line 26
    aget-wide v14, v4, v8

    .line 27
    aget-wide v16, v3, v8

    const/4 v2, 0x4

    new-array v2, v2, [D

    const/16 v19, 0x0

    aput-wide v9, v2, v19

    aput-wide v11, v2, v5

    const/4 v9, 0x2

    aput-wide v14, v2, v9

    const/4 v10, 0x3

    aput-wide v16, v2, v10

    .line 28
    new-instance v10, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v10, v2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    aput-object v10, v6, v8

    add-int/2addr v8, v5

    move v2, v9

    goto :goto_3

    .line 29
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    invoke-direct {v1, v0, v6}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;-><init>([D[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)V

    return-object v1

    .line 30
    :cond_4
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3, v5}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 31
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v0, v0

    array-length v1, v1

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method
