.class public Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AINV:[[D

.field private static final NUM_COEFF:I = 0x10


# instance fields
.field private final partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private final splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

.field private final xval:[D

.field private final yval:[D


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/16 v0, 0x10

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v2, v0, [D

    fill-array-data v2, :array_1

    new-array v3, v0, [D

    fill-array-data v3, :array_2

    new-array v4, v0, [D

    fill-array-data v4, :array_3

    new-array v5, v0, [D

    fill-array-data v5, :array_4

    new-array v6, v0, [D

    fill-array-data v6, :array_5

    new-array v7, v0, [D

    fill-array-data v7, :array_6

    new-array v8, v0, [D

    fill-array-data v8, :array_7

    new-array v9, v0, [D

    fill-array-data v9, :array_8

    new-array v10, v0, [D

    fill-array-data v10, :array_9

    new-array v11, v0, [D

    fill-array-data v11, :array_a

    new-array v12, v0, [D

    fill-array-data v12, :array_b

    new-array v13, v0, [D

    fill-array-data v13, :array_c

    new-array v14, v0, [D

    fill-array-data v14, :array_d

    new-array v15, v0, [D

    fill-array-data v15, :array_e

    new-array v0, v0, [D

    fill-array-data v0, :array_f

    move-object/from16 v16, v0

    filled-new-array/range {v1 .. v16}, [[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->AINV:[[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
    .end array-data

    :array_a
    .array-data 8
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_b
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_c
    .array-data 8
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_e
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_f
    .array-data 8
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>([D[D[[D[[D[[D[[D)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;-><init>([D[D[[D[[D[[D[[DZ)V

    return-void
.end method

.method public constructor <init>([D[D[[D[[D[[D[[DZ)V
    .locals 53
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v12, p1

    .line 3
    array-length v13, v12

    move-object/from16 v14, p2

    .line 4
    array-length v15, v14

    if-eqz v13, :cond_d

    if-eqz v15, :cond_d

    .line 5
    array-length v6, v1

    if-eqz v6, :cond_d

    aget-object v6, v1, v10

    array-length v6, v6

    if-eqz v6, :cond_d

    .line 6
    array-length v6, v1

    if-ne v13, v6, :cond_c

    .line 7
    array-length v6, v2

    if-ne v13, v6, :cond_b

    .line 8
    array-length v6, v3

    if-ne v13, v6, :cond_a

    .line 9
    array-length v6, v4

    if-ne v13, v6, :cond_9

    .line 10
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 11
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 12
    invoke-virtual/range {p1 .. p1}, [D->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    iput-object v6, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    .line 13
    invoke-virtual/range {p2 .. p2}, [D->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    iput-object v6, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    sub-int/2addr v13, v11

    add-int/lit8 v6, v15, -0x1

    .line 14
    new-array v12, v9, [I

    aput v6, v12, v11

    aput v13, v12, v10

    const-class v14, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    invoke-static {v14, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    iput-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    move v12, v10

    :goto_0
    if-ge v12, v13, :cond_5

    .line 15
    aget-object v14, v1, v12

    array-length v14, v14

    if-ne v14, v15, :cond_4

    .line 16
    aget-object v14, v2, v12

    array-length v14, v14

    if-ne v14, v15, :cond_3

    .line 17
    aget-object v14, v3, v12

    array-length v14, v14

    if-ne v14, v15, :cond_2

    .line 18
    aget-object v14, v4, v12

    array-length v14, v14

    if-ne v14, v15, :cond_1

    add-int/lit8 v14, v12, 0x1

    move v7, v10

    :goto_1
    if-ge v7, v6, :cond_0

    add-int/lit8 v18, v7, 0x1

    .line 19
    aget-object v19, v1, v12

    aget-wide v20, v19, v7

    aget-object v22, v1, v14

    aget-wide v23, v22, v7

    aget-wide v25, v19, v18

    aget-wide v27, v22, v18

    aget-object v19, v2, v12

    aget-wide v29, v19, v7

    aget-object v22, v2, v14

    aget-wide v31, v22, v7

    aget-wide v33, v19, v18

    aget-wide v35, v22, v18

    aget-object v19, v3, v12

    aget-wide v37, v19, v7

    aget-object v22, v3, v14

    aget-wide v39, v22, v7

    aget-wide v41, v19, v18

    aget-wide v43, v22, v18

    aget-object v19, v4, v12

    aget-wide v45, v19, v7

    aget-object v22, v4, v14

    aget-wide v47, v22, v7

    aget-wide v49, v19, v18

    aget-wide v51, v22, v18

    const/16 v8, 0x10

    new-array v8, v8, [D

    aput-wide v20, v8, v10

    aput-wide v23, v8, v11

    aput-wide v25, v8, v9

    const/16 v19, 0x3

    aput-wide v27, v8, v19

    const/16 v17, 0x4

    aput-wide v29, v8, v17

    const/16 v16, 0x5

    aput-wide v31, v8, v16

    const/16 v20, 0x6

    aput-wide v33, v8, v20

    const/16 v20, 0x7

    aput-wide v35, v8, v20

    const/16 v20, 0x8

    aput-wide v37, v8, v20

    const/16 v20, 0x9

    aput-wide v39, v8, v20

    const/16 v20, 0xa

    aput-wide v41, v8, v20

    const/16 v20, 0xb

    aput-wide v43, v8, v20

    const/16 v20, 0xc

    aput-wide v45, v8, v20

    const/16 v20, 0xd

    aput-wide v47, v8, v20

    const/16 v20, 0xe

    aput-wide v49, v8, v20

    const/16 v20, 0xf

    aput-wide v51, v8, v20

    .line 20
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    aget-object v10, v10, v12

    new-instance v11, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    invoke-direct {v0, v8}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->computeSplineCoefficients([D)[D

    move-result-object v8

    invoke-direct {v11, v8, v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;-><init>([DZ)V

    aput-object v11, v10, v7

    move/from16 v7, v18

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_0
    move v12, v14

    goto/16 :goto_0

    .line 21
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v4, v12

    array-length v2, v2

    invoke-direct {v1, v2, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 22
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v3, v12

    array-length v2, v2

    invoke-direct {v1, v2, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 23
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v2, v12

    array-length v2, v2

    invoke-direct {v1, v2, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 24
    :cond_4
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v1, v12

    array-length v1, v1

    invoke-direct {v2, v1, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    :cond_5
    if-eqz v5, :cond_7

    const/4 v1, 0x3

    .line 25
    new-array v2, v1, [I

    aput v6, v2, v9

    const/4 v1, 0x1

    aput v13, v2, v1

    const/4 v1, 0x0

    const/4 v3, 0x5

    aput v3, v2, v1

    const-class v1, Lorg/apache/commons/math3/analysis/BivariateFunction;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v13, :cond_8

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v6, :cond_6

    .line 26
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    .line 27
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aget-object v4, v4, v1

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeX()Lorg/apache/commons/math3/analysis/BivariateFunction;

    move-result-object v7

    aput-object v7, v4, v2

    .line 28
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    const/4 v7, 0x1

    aget-object v4, v4, v7

    aget-object v4, v4, v1

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeY()Lorg/apache/commons/math3/analysis/BivariateFunction;

    move-result-object v7

    aput-object v7, v4, v2

    .line 29
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    aget-object v4, v4, v9

    aget-object v4, v4, v1

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXX()Lorg/apache/commons/math3/analysis/BivariateFunction;

    move-result-object v7

    aput-object v7, v4, v2

    .line 30
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    const/4 v7, 0x3

    aget-object v4, v4, v7

    aget-object v4, v4, v1

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeYY()Lorg/apache/commons/math3/analysis/BivariateFunction;

    move-result-object v8

    aput-object v8, v4, v2

    .line 31
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    const/4 v8, 0x4

    aget-object v4, v4, v8

    aget-object v4, v4, v1

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXY()Lorg/apache/commons/math3/analysis/BivariateFunction;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_3

    :cond_6
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x4

    add-int/2addr v1, v3

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    .line 32
    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    :cond_8
    return-void

    .line 33
    :cond_9
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v4

    invoke-direct {v1, v13, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 34
    :cond_a
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v3

    invoke-direct {v1, v13, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 35
    :cond_b
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v2

    invoke-direct {v1, v13, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 36
    :cond_c
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    invoke-direct {v2, v13, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 37
    :cond_d
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v1
.end method

.method private computeSplineCoefficients([D)[D
    .locals 12

    const/16 v0, 0x10

    new-array v1, v0, [D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    sget-object v4, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->AINV:[[D

    aget-object v4, v4, v3

    const-wide/16 v5, 0x0

    move v7, v2

    :goto_1
    if-ge v7, v0, :cond_0

    aget-wide v8, v4, v7

    aget-wide v10, p1, v7

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    aput-wide v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private partialDerivative(IDD)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    invoke-direct {p0, p2, p3, v0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->searchIndex(D[D)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    invoke-direct {p0, p4, p5, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->searchIndex(D[D)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    aget-wide v3, v2, v0

    sub-double/2addr p2, v3

    add-int/lit8 v5, v0, 0x1

    aget-wide v5, v2, v5

    sub-double/2addr v5, v3

    div-double/2addr p2, v5

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    aget-wide v3, v2, v1

    sub-double/2addr p4, v3

    add-int/lit8 v5, v1, 0x1

    aget-wide v5, v2, v5

    sub-double/2addr v5, v3

    div-double/2addr p4, v5

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    aget-object p1, v2, p1

    aget-object p1, p1, v0

    aget-object p1, p1, v1

    invoke-interface {p1, p2, p3, p4, p5}, Lorg/apache/commons/math3/analysis/BivariateFunction;->value(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method private searchIndex(D[D)I
    .locals 3

    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    array-length v1, p3

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2

    if-gez v0, :cond_0

    neg-int p1, v0

    add-int/lit8 p1, p1, -0x2

    return p1

    :cond_0
    array-length p1, p3

    add-int/lit8 p2, p1, -0x1

    if-ne v0, p2, :cond_1

    add-int/lit8 p1, p1, -0x2

    return p1

    :cond_1
    return v0

    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aget-wide v1, p3, p2

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, p3, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method


# virtual methods
.method public isValidPoint(DD)Z
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    cmpg-double v2, p1, v2

    if-ltz v2, :cond_1

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v4, v0, v2

    cmpl-double p1, p1, v4

    if-gtz p1, :cond_1

    iget-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    aget-wide v4, p1, v1

    cmpg-double p2, p3, v4

    if-ltz p2, :cond_1

    array-length p2, p1

    sub-int/2addr p2, v3

    aget-wide v4, p1, p2

    cmpl-double p1, p3, v4

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    return v1
.end method

.method public partialDerivativeX(DD)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivative(IDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public partialDerivativeXX(DD)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const/4 v1, 0x2

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivative(IDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public partialDerivativeXY(DD)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const/4 v1, 0x4

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivative(IDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public partialDerivativeY(DD)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivative(IDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public partialDerivativeYY(DD)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const/4 v1, 0x3

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivative(IDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public value(DD)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->searchIndex(D[D)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    invoke-direct {p0, p3, p4, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->searchIndex(D[D)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    aget-wide v3, v2, v0

    sub-double/2addr p1, v3

    add-int/lit8 v5, v0, 0x1

    aget-wide v5, v2, v5

    sub-double/2addr v5, v3

    div-double/2addr p1, v5

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    aget-wide v3, v2, v1

    sub-double/2addr p3, v3

    add-int/lit8 v5, v1, 0x1

    aget-wide v5, v2, v5

    sub-double/2addr v5, v3

    div-double/2addr p3, v5

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    aget-object v0, v2, v0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->value(DD)D

    move-result-wide p1

    return-wide p1
.end method
