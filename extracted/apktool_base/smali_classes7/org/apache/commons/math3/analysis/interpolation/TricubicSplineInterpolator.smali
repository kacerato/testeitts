.class public Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/TrivariateGridInterpolator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private nextIndex(II)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    if-ge v0, p2, :cond_0

    move p1, v0

    :cond_0
    return p1
.end method

.method private previousIndex(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/TrivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 2
    array-length v1, v2

    if-eqz v1, :cond_15

    array-length v1, v3

    if-eqz v1, :cond_15

    array-length v1, v4

    if-eqz v1, :cond_15

    array-length v1, v5

    if-eqz v1, :cond_15

    .line 3
    array-length v1, v2

    array-length v6, v5

    if-ne v1, v6, :cond_14

    .line 4
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 5
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 6
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 7
    array-length v1, v2

    .line 8
    array-length v6, v3

    .line 9
    array-length v7, v4

    const/4 v8, 0x3

    .line 10
    new-array v9, v8, [I

    const/4 v10, 0x2

    aput v6, v9, v10

    const/4 v11, 0x1

    aput v1, v9, v11

    const/4 v12, 0x0

    aput v7, v9, v12

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[[D

    .line 11
    new-array v14, v8, [I

    aput v1, v14, v10

    aput v7, v14, v11

    aput v6, v14, v12

    invoke-static {v13, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[[D

    move v14, v12

    :goto_0
    if-ge v14, v1, :cond_4

    .line 12
    aget-object v15, v5, v14

    array-length v15, v15

    if-ne v15, v6, :cond_3

    move v15, v12

    :goto_1
    if-ge v15, v6, :cond_2

    .line 13
    aget-object v16, v5, v14

    aget-object v12, v16, v15

    array-length v12, v12

    if-ne v12, v7, :cond_1

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v7, :cond_0

    .line 14
    aget-object v16, v5, v14

    aget-object v16, v16, v15

    aget-wide v18, v16, v12

    .line 15
    aget-object v16, v9, v12

    aget-object v16, v16, v14

    aput-wide v18, v16, v15

    .line 16
    aget-object v16, v13, v15

    aget-object v16, v16, v12

    aput-wide v18, v16, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x0

    goto :goto_1

    .line 17
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v5, v14

    aget-object v2, v2, v15

    array-length v2, v2

    invoke-direct {v1, v2, v7}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_2
    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x0

    goto :goto_0

    .line 18
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v5, v14

    array-length v2, v2

    invoke-direct {v1, v2, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 19
    :cond_4
    new-instance v12, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;

    invoke-direct {v12, v11}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;-><init>(Z)V

    .line 20
    new-array v14, v1, [Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v1, :cond_5

    .line 21
    aget-object v11, v5, v15

    invoke-virtual {v12, v3, v4, v11}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v11

    aput-object v11, v14, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v11, 0x1

    goto :goto_3

    .line 22
    :cond_5
    new-array v11, v6, [Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v6, :cond_6

    .line 23
    aget-object v10, v13, v15

    invoke-virtual {v12, v4, v2, v10}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v10

    aput-object v10, v11, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x2

    goto :goto_4

    .line 24
    :cond_6
    new-array v10, v7, [Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v7, :cond_7

    .line 25
    aget-object v15, v9, v13

    invoke-virtual {v12, v2, v3, v15}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v15

    aput-object v15, v10, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 26
    :cond_7
    new-array v9, v8, [I

    const/4 v12, 0x2

    aput v7, v9, v12

    const/4 v13, 0x1

    aput v6, v9, v13

    const/4 v15, 0x0

    aput v1, v9, v15

    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[[D

    .line 27
    new-array v5, v8, [I

    aput v7, v5, v12

    aput v6, v5, v13

    const/16 v17, 0x0

    aput v1, v5, v17

    invoke-static {v15, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, [[[D

    .line 28
    new-array v5, v8, [I

    aput v7, v5, v12

    aput v6, v5, v13

    aput v1, v5, v17

    invoke-static {v15, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, [[[D

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v7, :cond_a

    .line 29
    aget-object v13, v10, v5

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v1, :cond_9

    move-object/from16 v21, v9

    .line 30
    aget-wide v8, v2, v15

    move-object/from16 v22, v10

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v6, :cond_8

    move/from16 v23, v1

    .line 31
    aget-wide v0, v3, v10

    .line 32
    aget-object v24, v21, v15

    aget-object v24, v24, v10

    invoke-virtual {v13, v8, v9, v0, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeX(DD)D

    move-result-wide v25

    aput-wide v25, v24, v5

    .line 33
    aget-object v24, v19, v15

    aget-object v24, v24, v10

    invoke-virtual {v13, v8, v9, v0, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeY(DD)D

    move-result-wide v25

    aput-wide v25, v24, v5

    .line 34
    aget-object v24, v12, v15

    aget-object v24, v24, v10

    invoke-virtual {v13, v8, v9, v0, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeXY(DD)D

    move-result-wide v0

    aput-wide v0, v24, v5

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    goto :goto_8

    :cond_8
    move/from16 v23, v1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    const/4 v8, 0x3

    goto :goto_7

    :cond_9
    move/from16 v23, v1

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    const/4 v8, 0x3

    goto :goto_6

    :cond_a
    move/from16 v23, v1

    move v0, v8

    move-object/from16 v21, v9

    .line 35
    new-array v1, v0, [I

    const/4 v5, 0x2

    aput v7, v1, v5

    const/4 v8, 0x1

    aput v6, v1, v8

    const/4 v9, 0x0

    aput v23, v1, v9

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [[[D

    .line 36
    new-array v1, v0, [I

    aput v7, v1, v5

    aput v6, v1, v8

    aput v23, v1, v9

    invoke-static {v10, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[D

    move/from16 v5, v23

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v5, :cond_d

    .line 37
    aget-object v8, v14, v1

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v6, :cond_c

    move-object v10, v14

    .line 38
    aget-wide v14, v3, v9

    move-object/from16 v22, v10

    const/4 v10, 0x0

    :goto_b
    if-ge v10, v7, :cond_b

    .line 39
    aget-wide v2, v4, v10

    .line 40
    aget-object v23, v13, v1

    aget-object v23, v23, v9

    invoke-virtual {v8, v14, v15, v2, v3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeY(DD)D

    move-result-wide v24

    aput-wide v24, v23, v10

    .line 41
    aget-object v23, v0, v1

    aget-object v23, v23, v9

    invoke-virtual {v8, v14, v15, v2, v3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeXY(DD)D

    move-result-wide v2

    aput-wide v2, v23, v10

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    goto :goto_b

    :cond_b
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v14, v22

    goto :goto_a

    :cond_c
    move-object/from16 v22, v14

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    goto :goto_9

    :cond_d
    const/4 v1, 0x3

    .line 42
    new-array v2, v1, [I

    const/4 v1, 0x2

    aput v7, v2, v1

    const/4 v1, 0x1

    aput v6, v2, v1

    const/4 v1, 0x0

    aput v5, v2, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, [[[D

    const/4 v15, 0x0

    :goto_c
    if-ge v15, v6, :cond_10

    .line 43
    aget-object v1, v11, v15

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v7, :cond_f

    .line 44
    aget-wide v8, v4, v2

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v5, :cond_e

    move-object/from16 v14, p1

    move-object/from16 v22, v11

    move-object/from16 v23, v12

    .line 45
    aget-wide v11, v14, v3

    .line 46
    aget-object v24, v10, v3

    aget-object v24, v24, v15

    invoke-virtual {v1, v8, v9, v11, v12}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeXY(DD)D

    move-result-wide v11

    aput-wide v11, v24, v2

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    goto :goto_e

    :cond_e
    move-object/from16 v14, p1

    move-object/from16 v22, v11

    move-object/from16 v23, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_f
    move-object/from16 v14, p1

    move-object/from16 v22, v11

    move-object/from16 v23, v12

    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    :cond_10
    move-object/from16 v14, p1

    move-object/from16 v23, v12

    const/4 v1, 0x3

    .line 47
    new-array v1, v1, [I

    const/4 v2, 0x2

    aput v7, v1, v2

    const/4 v2, 0x1

    aput v6, v1, v2

    const/4 v15, 0x0

    aput v5, v1, v15

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, [[[D

    move v1, v15

    :goto_f
    if-ge v1, v5, :cond_13

    move-object/from16 v11, p0

    .line 48
    invoke-direct {v11, v1, v5}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->nextIndex(II)I

    move-result v2

    .line 49
    invoke-direct {v11, v1}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->previousIndex(I)I

    move-result v3

    move v8, v15

    :goto_10
    if-ge v8, v6, :cond_12

    .line 50
    invoke-direct {v11, v8, v6}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->nextIndex(II)I

    move-result v9

    .line 51
    invoke-direct {v11, v8}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->previousIndex(I)I

    move-result v16

    :goto_11
    if-ge v15, v7, :cond_11

    .line 52
    invoke-direct {v11, v15, v7}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->nextIndex(II)I

    move-result v18

    .line 53
    invoke-direct {v11, v15}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->previousIndex(I)I

    move-result v20

    .line 54
    aget-object v22, v12, v1

    aget-object v22, v22, v8

    move/from16 v24, v5

    move-object/from16 v5, p4

    aget-object v25, v5, v2

    aget-object v26, v25, v9

    aget-wide v27, v26, v18

    aget-object v25, v25, v16

    aget-wide v29, v25, v18

    sub-double v27, v27, v29

    aget-object v29, v5, v3

    aget-object v30, v29, v9

    aget-wide v31, v30, v18

    sub-double v27, v27, v31

    aget-object v29, v29, v16

    aget-wide v31, v29, v18

    add-double v27, v27, v31

    aget-wide v31, v26, v20

    sub-double v27, v27, v31

    aget-wide v31, v25, v20

    add-double v27, v27, v31

    aget-wide v25, v30, v20

    add-double v27, v27, v25

    aget-wide v25, v29, v20

    sub-double v27, v27, v25

    aget-wide v25, v14, v2

    aget-wide v29, v14, v3

    sub-double v25, v25, v29

    aget-wide v29, p2, v9

    aget-wide v31, p2, v16

    sub-double v29, v29, v31

    mul-double v25, v25, v29

    aget-wide v29, v4, v18

    aget-wide v31, v4, v20

    sub-double v29, v29, v31

    mul-double v25, v25, v29

    div-double v27, v27, v25

    aput-wide v27, v22, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v24

    goto :goto_11

    :cond_11
    move/from16 v24, v5

    move-object/from16 v5, p4

    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v24

    const/4 v15, 0x0

    goto :goto_10

    :cond_12
    move/from16 v24, v5

    move-object/from16 v5, p4

    add-int/lit8 v1, v1, 0x1

    move/from16 v5, v24

    const/4 v15, 0x0

    goto/16 :goto_f

    :cond_13
    move-object/from16 v11, p0

    move-object/from16 v5, p4

    .line 55
    new-instance v15, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, v21

    move-object/from16 v7, v19

    move-object v8, v13

    move-object/from16 v9, v23

    move-object v11, v0

    invoke-direct/range {v1 .. v12}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;-><init>([D[D[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D)V

    return-object v15

    :cond_14
    move-object v14, v2

    .line 56
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v14

    array-length v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 57
    :cond_15
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0
.end method
