.class public Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_ACCURACY:D = 1.0E-12

.field public static final DEFAULT_BANDWIDTH:D = 0.3

.field public static final DEFAULT_ROBUSTNESS_ITERS:I = 0x2

.field private static final serialVersionUID:J = 0x483b9da904604c5dL


# instance fields
.field private final accuracy:D

.field private final bandwidth:D

.field private final robustnessIters:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x3fd3333333333333L    # 0.3

    .line 2
    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->bandwidth:D

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    .line 4
    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    return-void
.end method

.method public constructor <init>(DI)V
    .locals 6

    const-wide v4, 0x3d719799812dea11L    # 1.0E-12

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    .line 5
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;-><init>(DID)V

    return-void
.end method

.method public constructor <init>(DID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_1

    .line 7
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->bandwidth:D

    if-ltz p3, :cond_0

    .line 8
    iput p3, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    .line 9
    iput-wide p4, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    return-void

    .line 10
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROBUSTNESS_ITERATIONS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1

    .line 11
    :cond_1
    new-instance p3, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BANDWIDTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p5, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-direct {p3, p4, p1, p2, p5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p3
.end method

.method private static checkAllFiniteReal([D)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->checkFinite(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static nextNonzero([DI)I
    .locals 4

    :goto_0
    add-int/lit8 p1, p1, 0x1

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-wide v0, p0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return p1
.end method

.method private static tricube(D)D
    .locals 4

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    mul-double v2, p0, p0

    mul-double/2addr v2, p0

    sub-double/2addr v0, v2

    mul-double p0, v0, v0

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method private static updateBandwidthInterval([D[DI[I)V
    .locals 10

    const/4 v0, 0x0

    aget v1, p3, v0

    const/4 v2, 0x1

    aget v3, p3, v2

    invoke-static {p1, v3}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->nextNonzero([DI)I

    move-result v3

    array-length v4, p0

    if-ge v3, v4, :cond_0

    aget-wide v4, p0, v3

    aget-wide v6, p0, p2

    sub-double/2addr v4, v6

    aget-wide v8, p0, v1

    sub-double/2addr v6, v8

    cmpg-double p0, v4, v6

    if-gez p0, :cond_0

    aget p0, p3, v0

    invoke-static {p1, p0}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->nextNonzero([DI)I

    move-result p0

    aput p0, p3, v0

    aput v3, p3, v2

    :cond_0
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
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object p1

    return-object p1
.end method

.method public final interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->smooth([D[D)[D

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object p1

    return-object p1
.end method

.method public final smooth([D[D)[D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 40
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 41
    array-length v0, p1

    new-array v0, v0, [D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 42
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 43
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->smooth([D[D[D)[D

    move-result-object p1

    return-object p1

    .line 44
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public final smooth([D[D[D)[D
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1
    array-length v7, v1

    array-length v8, v2

    if-ne v7, v8, :cond_f

    .line 2
    array-length v7, v1

    if-eqz v7, :cond_e

    .line 3
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->checkAllFiniteReal([D)V

    .line 4
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->checkAllFiniteReal([D)V

    .line 5
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->checkAllFiniteReal([D)V

    .line 6
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    if-ne v7, v6, :cond_0

    .line 7
    aget-wide v1, v2, v5

    new-array v3, v6, [D

    aput-wide v1, v3, v5

    return-object v3

    :cond_0
    if-ne v7, v4, :cond_1

    .line 8
    aget-wide v7, v2, v5

    aget-wide v1, v2, v6

    new-array v3, v4, [D

    aput-wide v7, v3, v5

    aput-wide v1, v3, v6

    return-object v3

    .line 9
    :cond_1
    iget-wide v8, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->bandwidth:D

    int-to-double v10, v7

    mul-double/2addr v8, v10

    double-to-int v8, v8

    if-lt v8, v4, :cond_d

    .line 10
    new-array v9, v7, [D

    .line 11
    new-array v10, v7, [D

    .line 12
    new-array v11, v7, [D

    .line 13
    new-array v12, v7, [D

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 14
    invoke-static {v12, v13, v14}, Ljava/util/Arrays;->fill([DD)V

    move v15, v5

    .line 15
    :goto_0
    iget v4, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    if-gt v15, v4, :cond_c

    add-int/lit8 v4, v8, -0x1

    .line 16
    filled-new-array {v5, v4}, [I

    move-result-object v4

    move v13, v5

    :goto_1
    const-wide/16 v18, 0x0

    if-ge v13, v7, :cond_7

    .line 17
    aget-wide v20, v1, v13

    if-lez v13, :cond_2

    .line 18
    invoke-static {v1, v3, v13, v4}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->updateBandwidthInterval([D[DI[I)V

    .line 19
    :cond_2
    aget v14, v4, v5

    .line 20
    aget v5, v4, v6

    .line 21
    aget-wide v22, v1, v13

    aget-wide v24, v1, v14

    sub-double v24, v22, v24

    aget-wide v26, v1, v5

    sub-double v26, v26, v22

    cmpl-double v22, v24, v26

    if-lez v22, :cond_3

    move/from16 v22, v14

    goto :goto_2

    :cond_3
    move/from16 v22, v5

    .line 22
    :goto_2
    aget-wide v22, v1, v22

    sub-double v22, v22, v20

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    div-double v22, v16, v22

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    move-wide/from16 v24, v18

    move-wide/from16 v26, v24

    move-wide/from16 v28, v26

    move-wide/from16 v30, v28

    move-wide/from16 v32, v30

    :goto_3
    if-gt v14, v5, :cond_5

    .line 23
    aget-wide v34, v1, v14

    .line 24
    aget-wide v36, v2, v14

    if-ge v14, v13, :cond_4

    sub-double v38, v20, v34

    goto :goto_4

    :cond_4
    sub-double v38, v34, v20

    :goto_4
    mul-double v38, v38, v22

    .line 25
    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->tricube(D)D

    move-result-wide v38

    aget-wide v40, v12, v14

    mul-double v38, v38, v40

    aget-wide v40, v3, v14

    mul-double v38, v38, v40

    mul-double v40, v34, v38

    add-double v26, v26, v38

    add-double v24, v24, v40

    mul-double v34, v34, v40

    add-double v32, v32, v34

    mul-double v38, v38, v36

    add-double v28, v28, v38

    mul-double v36, v36, v40

    add-double v30, v30, v36

    add-int/2addr v14, v6

    goto :goto_3

    :cond_5
    div-double v24, v24, v26

    div-double v28, v28, v26

    div-double v30, v30, v26

    div-double v32, v32, v26

    mul-double v22, v24, v24

    sub-double v32, v32, v22

    .line 26
    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v22

    move v14, v7

    iget-wide v6, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    cmpg-double v6, v22, v6

    if-gez v6, :cond_6

    goto :goto_5

    :cond_6
    mul-double v6, v24, v28

    sub-double v30, v30, v6

    div-double v18, v30, v32

    :goto_5
    mul-double v24, v24, v18

    sub-double v28, v28, v24

    mul-double v18, v18, v20

    add-double v18, v18, v28

    .line 27
    aput-wide v18, v9, v13

    .line 28
    aget-wide v6, v2, v13

    sub-double v6, v6, v18

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    aput-wide v6, v10, v13

    const/4 v5, 0x1

    add-int/2addr v13, v5

    move v7, v14

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_7
    move v14, v7

    .line 29
    iget v4, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    if-ne v15, v4, :cond_8

    goto :goto_9

    :cond_8
    move v4, v14

    const/4 v6, 0x0

    .line 30
    invoke-static {v10, v6, v11, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    invoke-static {v11}, Ljava/util/Arrays;->sort([D)V

    const/4 v7, 0x2

    .line 32
    div-int/lit8 v13, v4, 0x2

    aget-wide v13, v11, v13

    .line 33
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    iget-wide v5, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    cmpg-double v5, v20, v5

    if-gez v5, :cond_9

    goto :goto_9

    :cond_9
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_b

    .line 34
    aget-wide v20, v10, v5

    const-wide/high16 v22, 0x4018000000000000L    # 6.0

    mul-double v22, v22, v13

    div-double v20, v20, v22

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v20, v16

    if-ltz v6, :cond_a

    .line 35
    aput-wide v18, v12, v5

    :goto_7
    const/4 v6, 0x1

    goto :goto_8

    :cond_a
    mul-double v20, v20, v20

    sub-double v20, v16, v20

    mul-double v20, v20, v20

    .line 36
    aput-wide v20, v12, v5

    goto :goto_7

    :goto_8
    add-int/2addr v5, v6

    goto :goto_6

    :cond_b
    const/4 v6, 0x1

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-int/2addr v15, v6

    move v7, v4

    move-wide/from16 v13, v16

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_c
    :goto_9
    return-object v9

    .line 37
    :cond_d
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BANDWIDTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v6}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 38
    :cond_e
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v1

    .line 39
    :cond_f
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    array-length v2, v2

    invoke-direct {v3, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3
.end method
