.class Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# static fields
.field private static final N:S = 0x4s


# instance fields
.field private final a:[[D

.field private final partialDerivativeX:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private final partialDerivativeXX:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private final partialDerivativeXY:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private final partialDerivativeY:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private final partialDerivativeYY:Lorg/apache/commons/math3/analysis/BivariateFunction;


# direct methods
.method public constructor <init>([D)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;-><init>([DZ)V

    return-void
.end method

.method public constructor <init>([DZ)V
    .locals 18

    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    .line 3
    new-array v2, v1, [I

    const/4 v3, 0x1

    const/4 v4, 0x4

    aput v4, v2, v3

    const/4 v5, 0x0

    aput v4, v2, v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    iput-object v2, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->a:[[D

    move v2, v5

    :goto_0
    if-ge v2, v4, :cond_1

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_0

    .line 4
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->a:[[D

    aget-object v7, v7, v2

    mul-int/lit8 v8, v2, 0x4

    add-int/2addr v8, v6

    aget-wide v8, p1, v8

    aput-wide v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    .line 5
    new-array v2, v1, [I

    aput v4, v2, v3

    aput v4, v2, v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 6
    new-array v7, v1, [I

    aput v4, v7, v3

    aput v4, v7, v5

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    .line 7
    new-array v8, v1, [I

    aput v4, v8, v3

    aput v4, v8, v5

    invoke-static {v6, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    .line 8
    new-array v9, v1, [I

    aput v4, v9, v3

    aput v4, v9, v5

    invoke-static {v6, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    .line 9
    new-array v1, v1, [I

    aput v4, v1, v3

    aput v4, v1, v5

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move v3, v5

    :goto_2
    if-ge v3, v4, :cond_3

    move v6, v5

    :goto_3
    if-ge v6, v4, :cond_2

    .line 10
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->a:[[D

    aget-object v10, v10, v3

    aget-wide v11, v10, v6

    .line 11
    aget-object v10, v2, v3

    int-to-double v13, v3

    mul-double/2addr v13, v11

    aput-wide v13, v10, v6

    .line 12
    aget-object v13, v7, v3

    int-to-double v14, v6

    mul-double/2addr v11, v14

    aput-wide v11, v13, v6

    .line 13
    aget-object v11, v8, v3

    add-int/lit8 v12, v3, -0x1

    int-to-double v4, v12

    aget-wide v16, v10, v6

    mul-double v4, v4, v16

    aput-wide v4, v11, v6

    .line 14
    aget-object v4, v9, v3

    add-int/lit8 v5, v6, -0x1

    int-to-double v11, v5

    aget-wide v16, v13, v6

    mul-double v11, v11, v16

    aput-wide v11, v4, v6

    .line 15
    aget-object v4, v1, v3

    aget-wide v11, v10, v6

    mul-double/2addr v14, v11

    aput-wide v14, v4, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    goto :goto_2

    .line 16
    :cond_3
    new-instance v3, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$1;

    invoke-direct {v3, v0, v2}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$1;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v3, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 17
    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$2;

    invoke-direct {v2, v0, v7}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$2;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v2, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 18
    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$3;

    invoke-direct {v2, v0, v8}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$3;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v2, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 19
    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$4;

    invoke-direct {v2, v0, v9}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$4;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v2, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeYY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 20
    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V

    iput-object v2, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    .line 21
    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 22
    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 23
    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 24
    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeYY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 25
    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    :goto_4
    return-void
.end method

.method public static synthetic access$000(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[D[D[[D)D
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->apply([D[D[[D)D

    move-result-wide p0

    return-wide p0
.end method

.method private apply([D[D[[D)D
    .locals 11

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, p3, v3

    aget-wide v7, v6, v5

    aget-wide v9, p1, v3

    mul-double/2addr v7, v9

    aget-wide v9, p2, v5

    mul-double/2addr v7, v9

    add-double/2addr v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method


# virtual methods
.method public partialDerivativeX()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public partialDerivativeXX()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXX:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public partialDerivativeXY()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public partialDerivativeY()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public partialDerivativeYY()Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeYY:Lorg/apache/commons/math3/analysis/BivariateFunction;

    return-object v0
.end method

.method public value(DD)D
    .locals 14

    move-object v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    cmpg-double v8, p1, v6

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    if-ltz v8, :cond_1

    cmpl-double v8, p1, v4

    if-gtz v8, :cond_1

    cmpg-double v6, p3, v6

    if-ltz v6, :cond_0

    cmpl-double v6, p3, v4

    if-gtz v6, :cond_0

    mul-double v6, p1, p1

    mul-double v12, v6, p1

    new-array v8, v3, [D

    aput-wide v4, v8, v11

    aput-wide p1, v8, v9

    aput-wide v6, v8, v2

    aput-wide v12, v8, v1

    mul-double v6, p3, p3

    mul-double v12, v6, p3

    new-array v3, v3, [D

    aput-wide v4, v3, v11

    aput-wide p3, v3, v9

    aput-wide v6, v3, v2

    aput-wide v12, v3, v1

    iget-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->a:[[D

    invoke-direct {p0, v8, v3, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->apply([D[D[[D)D

    move-result-wide v1

    return-wide v1

    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2, v12, v10}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2, v12, v10}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1
.end method
