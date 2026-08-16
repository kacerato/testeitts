.class public Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;


# static fields
.field public static final DEFAULT_EXTEND:I = 0x5


# instance fields
.field private final extend:I

.field private final interpolator:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

.field private final period:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;D)V
    .locals 1

    const/4 v0, 0x5

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;-><init>(Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;DI)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;DI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->interpolator:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    .line 3
    iput-wide p2, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    .line 4
    iput p4, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    return-wide v0
.end method


# virtual methods
.method public interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    iget v3, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    if-lt v2, v3, :cond_2

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    const/4 v2, 0x0

    aget-wide v9, v1, v2

    array-length v3, v1

    iget v4, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    mul-int/lit8 v4, v4, 0x2

    add-int v11, v3, v4

    new-array v12, v11, [D

    new-array v13, v11, [D

    move v14, v2

    :goto_0
    array-length v3, v1

    if-ge v14, v3, :cond_0

    iget v3, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    add-int v15, v14, v3

    aget-wide v3, v1, v14

    iget-wide v5, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/math3/util/MathUtils;->reduce(DDD)D

    move-result-wide v3

    aput-wide v3, v12, v15

    aget-wide v3, p2, v14

    aput-wide v3, v13, v15

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v3, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    if-ge v2, v3, :cond_1

    array-length v4, v1

    sub-int/2addr v4, v3

    add-int v14, v4, v2

    aget-wide v3, v1, v14

    iget-wide v5, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/math3/util/MathUtils;->reduce(DDD)D

    move-result-wide v3

    iget-wide v5, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    sub-double/2addr v3, v5

    aput-wide v3, v12, v2

    aget-wide v3, p2, v14

    aput-wide v3, v13, v2

    iget v3, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    sub-int v3, v11, v3

    add-int v14, v3, v2

    aget-wide v3, v1, v2

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/math3/util/MathUtils;->reduce(DDD)D

    move-result-wide v3

    iget-wide v5, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    add-double/2addr v3, v5

    aput-wide v3, v12, v14

    aget-wide v3, p2, v2

    aput-wide v3, v13, v14

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    filled-new-array {v13}, [[D

    move-result-object v1

    invoke-static {v12, v1}, Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([D[[D)V

    iget-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->interpolator:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    invoke-interface {v1, v12, v13}, Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$1;

    invoke-direct {v2, v0, v1, v9, v10}, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$1;-><init>(Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;Lorg/apache/commons/math3/analysis/UnivariateFunction;D)V

    return-object v2

    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2
.end method
