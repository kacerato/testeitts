.class public Lorg/apache/commons/math3/stat/regression/SimpleRegression;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/math3/stat/regression/UpdatingMultipleLinearRegression;


# static fields
.field private static final serialVersionUID:J = -0x29b2ccc654c84227L


# instance fields
.field private final hasIntercept:Z

.field private n:J

.field private sumX:D

.field private sumXX:D

.field private sumXY:D

.field private sumY:D

.field private sumYY:D

.field private xbar:D

.field private ybar:D


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    .line 4
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 5
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    .line 6
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 7
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    const-wide/16 v2, 0x0

    .line 8
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    .line 9
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    .line 10
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    .line 11
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    return-void
.end method

.method private getIntercept(D)D
    .locals 4

    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v0, :cond_0

    .line 3
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    mul-double/2addr p1, v2

    sub-double/2addr v0, p1

    iget-wide p1, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double p1, p1

    div-double/2addr v0, p1

    return-wide v0

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private getRegressionSumSquares(D)D
    .locals 2

    mul-double/2addr p1, p1

    .line 2
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public addData(DD)V
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 1
    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_1

    .line 2
    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    .line 3
    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    :cond_0
    move-wide v15, v5

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v7, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v7, :cond_0

    long-to-double v7, v5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v9

    long-to-double v11, v5

    long-to-double v13, v5

    add-double/2addr v13, v9

    div-double/2addr v11, v13

    .line 5
    iget-wide v9, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    sub-double v13, v1, v9

    move-wide v15, v5

    .line 6
    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    sub-double v17, v3, v5

    .line 7
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double v19, v13, v13

    mul-double v19, v19, v11

    add-double v3, v3, v19

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 8
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    mul-double v19, v17, v17

    mul-double v19, v19, v11

    add-double v3, v3, v19

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 9
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v19, v13, v17

    mul-double v19, v19, v11

    add-double v3, v3, v19

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    div-double/2addr v13, v7

    add-double/2addr v9, v13

    .line 10
    iput-wide v9, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    div-double v17, v17, v7

    add-double v5, v5, v17

    .line 11
    iput-wide v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    .line 12
    :goto_0
    iget-boolean v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-nez v3, :cond_2

    .line 13
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double v5, v1, v1

    add-double/2addr v3, v5

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 14
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    mul-double v5, p3, p3

    add-double/2addr v3, v5

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 15
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v5, v1, p3

    add-double/2addr v3, v5

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    .line 16
    :cond_2
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    add-double/2addr v3, v1

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    .line 17
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    add-double v1, v1, p3

    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    const-wide/16 v1, 0x1

    add-long v5, v15, v1

    .line 18
    iput-wide v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    return-void
.end method

.method public addData([[D)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 19
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 20
    aget-object v2, p1, v1

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 21
    aget-wide v3, v2, v0

    const/4 v5, 0x1

    aget-wide v5, v2, v5

    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->addData(DD)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_REGRESSION_OBSERVATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    aget-object p1, p1, v1

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    return-void
.end method

.method public addObservation([DD)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->addData(DD)V

    return-void

    :cond_1
    :goto_0
    new-instance p2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_REGRESSION_OBSERVATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    if-eqz p1, :cond_2

    array-length v0, p1

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p2
.end method

.method public addObservations([[D[D)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_3

    aget-object v4, p1, v2

    if-eqz v4, :cond_1

    array-length v4, v4

    if-nez v4, :cond_2

    :cond_1
    move v3, v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_5

    move v1, v0

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_4

    aget-object v2, p1, v1

    aget-wide v3, v2, v0

    aget-wide v5, p2, v1

    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->addData(DD)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    new-instance p1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    :cond_6
    :goto_2
    new-instance v1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSIONS_MISMATCH_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    if-nez p1, :cond_7

    move p1, v0

    goto :goto_3

    :cond_7
    array-length p1, p1

    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p2, :cond_8

    goto :goto_4

    :cond_8
    array-length v0, p2

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public append(Lorg/apache/commons/math3/stat/regression/SimpleRegression;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    iput-wide v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    iput-wide v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    iput-wide v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iput-wide v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    iput-wide v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    move-wide/from16 v16, v2

    goto :goto_0

    :cond_0
    iget-boolean v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v4, :cond_1

    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v6, v4

    add-long v8, v4, v2

    long-to-double v8, v8

    div-double/2addr v6, v8

    mul-long v8, v2, v4

    long-to-double v8, v8

    add-long/2addr v4, v2

    long-to-double v4, v4

    div-double/2addr v8, v4

    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    sub-double/2addr v4, v10

    iget-wide v12, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    iget-wide v14, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    sub-double/2addr v12, v14

    move-wide/from16 v16, v2

    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    move-wide/from16 v18, v14

    iget-wide v14, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double v20, v4, v4

    mul-double v20, v20, v8

    add-double v14, v14, v20

    add-double/2addr v2, v14

    iput-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iget-wide v14, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    mul-double v20, v12, v12

    mul-double v20, v20, v8

    add-double v14, v14, v20

    add-double/2addr v2, v14

    iput-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    iget-wide v14, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v20, v4, v12

    mul-double v20, v20, v8

    add-double v14, v14, v20

    add-double/2addr v2, v14

    iput-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double/2addr v4, v6

    add-double/2addr v10, v4

    iput-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    mul-double/2addr v12, v6

    add-double v14, v18, v12

    iput-wide v14, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    goto :goto_0

    :cond_1
    move-wide/from16 v16, v2

    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    :goto_0
    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    iget-wide v1, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    add-long v2, v16, v1

    iput-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    return-void
.end method

.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    return-void
.end method

.method public getIntercept()D
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getIntercept(D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getInterceptStdErr()D
    .locals 8

    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getMeanSquareError()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    mul-double/2addr v2, v2

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v2, v6

    add-double/2addr v4, v2

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMeanSquareError()D
    .locals 6

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v4, 0x2

    :goto_0
    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v4, 0x1

    goto :goto_0

    :goto_1
    return-wide v0
.end method

.method public getN()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    return-wide v0
.end method

.method public getR()D
    .locals 6

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getRSquare()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_0

    neg-double v2, v2

    :cond_0
    return-wide v2
.end method

.method public getRSquare()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getTotalSumSquares()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v2

    sub-double v2, v0, v2

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public getRegressionSumSquares()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getRegressionSumSquares(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSignificance()D
    .locals 5

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x3

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_0
    new-instance v2, Lorg/apache/commons/math3/distribution/TDistribution;

    const-wide/16 v3, 0x2

    sub-long/2addr v0, v3

    long-to-double v0, v0

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(D)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlopeStdErr()D

    move-result-wide v3

    div-double/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/math3/distribution/TDistribution;->cumulativeProbability(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method public getSlope()D
    .locals 7

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-gez v0, :cond_0

    return-wide v1

    :cond_0
    iget-wide v3, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    const-wide/16 v5, 0xa

    cmpg-double v0, v3, v5

    if-gez v0, :cond_1

    return-wide v1

    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getSlopeConfidenceInterval()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const-wide v0, 0x3fa999999999999aL    # 0.05

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlopeConfidenceInterval(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSlopeConfidenceInterval(D)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 2
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x3

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p1, v2

    if-gez v4, :cond_1

    const-wide/16 v4, 0x0

    cmpg-double v4, p1, v4

    if-lez v4, :cond_1

    .line 3
    new-instance v4, Lorg/apache/commons/math3/distribution/TDistribution;

    const-wide/16 v5, 0x2

    sub-long/2addr v0, v5

    long-to-double v0, v0

    invoke-direct {v4, v0, v1}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(D)V

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlopeStdErr()D

    move-result-wide v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v5

    sub-double/2addr v2, p1

    invoke-virtual {v4, v2, v3}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->inverseCumulativeProbability(D)D

    move-result-wide p1

    mul-double/2addr v0, p1

    return-wide v0

    .line 5
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public getSlopeStdErr()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getMeanSquareError()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSumOfCrossProducts()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    return-wide v0
.end method

.method public getSumSquaredErrors()D
    .locals 6

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double/2addr v2, v2

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalSumSquares()D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    return-wide v0
.end method

.method public getXSumSquares()D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    return-wide v0
.end method

.method public hasIntercept()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    return v0
.end method

.method public predict(D)D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v0

    iget-boolean v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getIntercept(D)D

    move-result-wide v2

    mul-double/2addr v0, p1

    add-double/2addr v2, v0

    return-wide v2

    :cond_0
    mul-double/2addr v0, p1

    return-wide v0
.end method

.method public regress()Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1
    iget-boolean v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    if-eqz v5, :cond_2

    .line 2
    iget-wide v8, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v10, 0x3

    cmp-long v5, v8, v10

    if-ltz v5, :cond_1

    .line 3
    iget-wide v8, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    sget-wide v10, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpl-double v5, v8, v10

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-lez v5, :cond_0

    .line 4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getIntercept()D

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v10

    new-array v13, v2, [D

    aput-wide v5, v13, v4

    aput-wide v10, v13, v3

    .line 5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getMeanSquareError()D

    move-result-wide v5

    .line 6
    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iget-wide v14, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    mul-double v16, v14, v14

    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    move-object v7, v13

    long-to-double v12, v2

    div-double v16, v16, v12

    add-double v21, v10, v16

    .line 7
    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    mul-double v12, v10, v10

    move-wide/from16 v23, v5

    iget-wide v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v12, v4

    move-wide/from16 v25, v14

    long-to-double v14, v2

    div-double/2addr v8, v14

    add-double/2addr v12, v8

    mul-double v8, v23, v12

    neg-double v10, v10

    mul-double v10, v10, v23

    div-double/2addr v10, v4

    div-double v5, v23, v4

    new-array v1, v1, [D

    const/4 v4, 0x0

    aput-wide v8, v1, v4

    const/4 v4, 0x1

    aput-wide v10, v1, v4

    const/4 v4, 0x2

    aput-wide v5, v1, v4

    .line 8
    new-instance v4, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    filled-new-array {v1}, [[D

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v23

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v15, 0x1

    const/16 v18, 0x2

    move-object v12, v4

    move-object v13, v7

    move-wide/from16 v6, v25

    move-wide/from16 v16, v2

    move-wide/from16 v19, v6

    move/from16 v25, v1

    move/from16 v26, v5

    invoke-direct/range {v12 .. v26}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v4

    .line 9
    :cond_0
    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    iget-wide v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v10, v4

    div-double v10, v2, v10

    const/4 v12, 0x2

    new-array v13, v12, [D

    const/4 v14, 0x0

    aput-wide v10, v13, v14

    const/4 v10, 0x1

    aput-wide v6, v13, v10

    move-object v11, v13

    .line 10
    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    long-to-double v6, v4

    sub-double/2addr v6, v8

    div-double/2addr v12, v6

    new-array v1, v1, [D

    aput-wide v12, v1, v14

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    aput-wide v6, v1, v10

    const/4 v8, 0x2

    aput-wide v6, v1, v8

    .line 11
    new-instance v6, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    filled-new-array {v1}, [[D

    move-result-object v27

    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v36

    const/16 v38, 0x1

    const/16 v39, 0x0

    const/16 v28, 0x1

    const/16 v31, 0x1

    move-object/from16 v25, v6

    move-object/from16 v26, v11

    move-wide/from16 v29, v4

    move-wide/from16 v32, v2

    move-wide/from16 v34, v7

    invoke-direct/range {v25 .. v39}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v6

    .line 12
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_REGRESSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v1

    .line 13
    :cond_2
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    .line 14
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_3

    .line 15
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getMeanSquareError()D

    move-result-wide v1

    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v1, v3

    const/4 v5, 0x1

    new-array v6, v5, [D

    const/4 v7, 0x0

    aput-wide v1, v6, v7

    .line 16
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    div-double/2addr v1, v3

    new-array v9, v5, [D

    aput-wide v1, v9, v7

    .line 17
    new-instance v1, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    filled-new-array {v6}, [[D

    move-result-object v10

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    iget-wide v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v19

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x1

    move-object v8, v1

    move-wide v15, v2

    move-wide/from16 v17, v4

    invoke-direct/range {v8 .. v22}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v1

    :cond_3
    const/4 v1, 0x1

    .line 18
    new-array v2, v1, [D

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    .line 19
    new-array v7, v1, [D

    aput-wide v3, v7, v5

    .line 20
    new-instance v1, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    filled-new-array {v2}, [[D

    move-result-object v8

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x1

    const-wide/high16 v13, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v15, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v17, 0x7ff8000000000000L    # Double.NaN

    move-object v6, v1

    invoke-direct/range {v6 .. v20}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v1

    .line 21
    :cond_4
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_REGRESSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v1
.end method

.method public regress([I)Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v1, :cond_e

    .line 23
    array-length v5, v1

    if-eqz v5, :cond_e

    .line 24
    array-length v5, v1

    const/4 v6, 0x2

    if-gt v5, v6, :cond_c

    array-length v5, v1

    if-le v5, v2, :cond_0

    iget-boolean v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-nez v5, :cond_0

    goto/16 :goto_1

    .line 25
    :cond_0
    iget-boolean v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v5, :cond_a

    .line 26
    array-length v5, v1

    if-ne v5, v6, :cond_4

    .line 27
    aget v5, v1, v3

    if-eq v5, v2, :cond_3

    if-nez v5, :cond_2

    .line 28
    aget v5, v1, v2

    if-ne v5, v2, :cond_1

    .line 29
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->regress()Lorg/apache/commons/math3/stat/regression/RegressionResults;

    move-result-object v1

    return-object v1

    .line 30
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/exception/OutOfRangeException;

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v5, v1, v4, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v5

    .line 31
    :cond_2
    new-instance v5, Lorg/apache/commons/math3/exception/OutOfRangeException;

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v5, v1, v4, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v5

    .line 32
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_INCREASING_SEQUENCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 33
    :cond_4
    aget v5, v1, v3

    if-eq v5, v2, :cond_6

    if-nez v5, :cond_5

    goto :goto_0

    .line 34
    :cond_5
    new-instance v5, Lorg/apache/commons/math3/exception/OutOfRangeException;

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v5, v1, v4, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v5

    .line 35
    :cond_6
    :goto_0
    iget-wide v13, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    mul-double v6, v13, v13

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v8, v10

    div-double/2addr v6, v8

    .line 36
    iget-wide v8, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    add-double v24, v8, v6

    const-wide/16 v15, 0x1

    if-nez v5, :cond_7

    sub-long v4, v10, v15

    mul-long/2addr v4, v10

    long-to-double v4, v4

    div-double v4, v8, v4

    .line 37
    new-array v1, v2, [D

    aput-wide v4, v1, v3

    .line 38
    iget-wide v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    new-array v2, v2, [D

    aput-wide v4, v2, v3

    .line 39
    new-instance v3, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    filled-new-array {v1}, [[D

    move-result-object v1

    add-double v15, v24, v6

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/4 v4, 0x1

    const/4 v12, 0x1

    move-object v6, v3

    move-object v7, v2

    move-wide/from16 v17, v8

    move-object v8, v1

    move v9, v4

    invoke-direct/range {v6 .. v20}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v3

    :cond_7
    if-ne v5, v2, :cond_9

    .line 40
    iget-wide v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    mul-double v8, v6, v6

    long-to-double v2, v10

    div-double/2addr v8, v2

    add-double/2addr v4, v8

    .line 41
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double/2addr v6, v13

    long-to-double v8, v10

    div-double/2addr v6, v8

    add-double/2addr v1, v6

    mul-double v6, v1, v1

    div-double/2addr v6, v4

    sub-double v6, v24, v6

    const-wide/16 v8, 0x0

    .line 42
    invoke-static {v8, v9, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v26

    .line 43
    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    sub-long/2addr v6, v15

    long-to-double v6, v6

    div-double v6, v26, v6

    .line 44
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_8

    div-double/2addr v6, v4

    const/4 v3, 0x1

    .line 45
    new-array v8, v3, [D

    const/4 v9, 0x0

    aput-wide v6, v8, v9

    div-double/2addr v1, v4

    .line 46
    new-array v3, v3, [D

    aput-wide v1, v3, v9

    .line 47
    new-instance v1, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    filled-new-array {v8}, [[D

    move-result-object v17

    iget-wide v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v18, 0x1

    const/16 v21, 0x1

    move-object v15, v1

    move-object/from16 v16, v3

    move-wide/from16 v19, v4

    move-wide/from16 v22, v6

    invoke-direct/range {v15 .. v29}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v1

    :cond_8
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    const/4 v3, 0x1

    .line 48
    new-array v4, v3, [D

    const/4 v5, 0x0

    aput-wide v1, v4, v5

    .line 49
    new-array v7, v3, [D

    aput-wide v1, v7, v5

    .line 50
    new-instance v1, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    filled-new-array {v4}, [[D

    move-result-object v8

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x1

    const-wide/high16 v13, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v15, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v17, 0x7ff8000000000000L    # Double.NaN

    move-object v6, v1

    invoke-direct/range {v6 .. v20}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v1

    :cond_9
    const/4 v1, 0x0

    return-object v1

    :cond_a
    move v2, v3

    .line 51
    aget v3, v1, v2

    if-nez v3, :cond_b

    .line 52
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->regress()Lorg/apache/commons/math3/stat/regression/RegressionResults;

    move-result-object v1

    return-object v1

    .line 53
    :cond_b
    new-instance v3, Lorg/apache/commons/math3/exception/OutOfRangeException;

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v1, v4, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v3

    .line 54
    :cond_c
    :goto_1
    new-instance v2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARRAY_SIZE_EXCEEDS_MAX_VARIABLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v1, v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_d

    iget-boolean v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    move v4, v6

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 55
    :cond_e
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARRAY_ZERO_LENGTH_OR_NULL_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public removeData(DD)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 2
    iget-boolean v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-eqz v3, :cond_0

    long-to-double v6, v1

    sub-double/2addr v6, v4

    long-to-double v8, v1

    long-to-double v10, v1

    sub-double/2addr v10, v4

    div-double/2addr v8, v10

    .line 3
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    sub-double v10, p1, v3

    .line 4
    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    sub-double v14, p3, v12

    move-wide/from16 v16, v1

    .line 5
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double v18, v10, v10

    mul-double v18, v18, v8

    sub-double v1, v1, v18

    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 6
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    mul-double v18, v14, v14

    mul-double v18, v18, v8

    sub-double v1, v1, v18

    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 7
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v18, v10, v14

    mul-double v18, v18, v8

    sub-double v1, v1, v18

    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    div-double/2addr v10, v6

    sub-double/2addr v3, v10

    .line 8
    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    div-double/2addr v14, v6

    sub-double/2addr v12, v14

    .line 9
    iput-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    move-wide/from16 v1, v16

    goto :goto_0

    :cond_0
    long-to-double v6, v1

    sub-double/2addr v6, v4

    .line 10
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double v8, p1, p1

    sub-double/2addr v3, v8

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 11
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    mul-double v8, p3, p3

    sub-double/2addr v3, v8

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 12
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v8, p1, p3

    sub-double/2addr v3, v8

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    .line 13
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    div-double v8, p1, v6

    sub-double/2addr v3, v8

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    .line 14
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    div-double v5, p3, v6

    sub-double/2addr v3, v5

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    .line 15
    :goto_0
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    sub-double v3, v3, p1

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    .line 16
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    sub-double v3, v3, p3

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 17
    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    :cond_1
    return-void
.end method

.method public removeData([[D)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 18
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 19
    aget-object v2, p1, v1

    aget-wide v3, v2, v0

    const/4 v5, 0x1

    aget-wide v5, v2, v5

    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->removeData(DD)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
