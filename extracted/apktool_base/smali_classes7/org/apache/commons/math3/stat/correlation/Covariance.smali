.class public Lorg/apache/commons/math3/stat/correlation/Covariance;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/Covariance;->covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/apache/commons/math3/stat/correlation/Covariance;->n:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/correlation/Covariance;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/correlation/Covariance;->checkSufficientData(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 8
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/stat/correlation/Covariance;->n:I

    .line 9
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/correlation/Covariance;->computeCovarianceMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Z)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/stat/correlation/Covariance;->covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void
.end method

.method public constructor <init>([[D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/correlation/Covariance;-><init>([[DZ)V

    return-void
.end method

.method public constructor <init>([[DZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/math3/stat/correlation/Covariance;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;Z)V

    return-void
.end method

.method private checkSufficientData(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_ROWS_AND_COLUMNS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public computeCovarianceMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/stat/correlation/Covariance;->computeCovarianceMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Z)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public computeCovarianceMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Z)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v0

    .line 2
    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    .line 3
    new-instance v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v2, v0, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_0

    .line 4
    invoke-interface {p1, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v6

    invoke-interface {p1, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v7

    invoke-virtual {p0, v6, v7, p2}, Lorg/apache/commons/math3/stat/correlation/Covariance;->covariance([D[DZ)D

    move-result-wide v6

    .line 5
    invoke-interface {v2, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 6
    invoke-interface {v2, v5, v4, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {p1, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D)D

    move-result-wide v5

    invoke-interface {v2, v4, v4, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public computeCovarianceMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/stat/correlation/Covariance;->computeCovarianceMatrix([[DZ)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public computeCovarianceMatrix([[DZ)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 9
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/math3/stat/correlation/Covariance;->computeCovarianceMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Z)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public covariance([D[D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/stat/correlation/Covariance;->covariance([D[DZ)D

    move-result-wide p1

    return-wide p1
.end method

.method public covariance([D[DZ)D
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    .line 2
    array-length v1, p1

    .line 3
    array-length v2, p2

    if-ne v1, v2, :cond_3

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->evaluate([D)D

    move-result-wide v2

    .line 5
    invoke-virtual {v0, p2}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->evaluate([D)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 6
    aget-wide v8, p1, v0

    sub-double/2addr v8, v2

    .line 7
    aget-wide v10, p2, v0

    sub-double/2addr v10, v4

    mul-double/2addr v8, v10

    sub-double/2addr v8, v6

    add-int/lit8 v0, v0, 0x1

    int-to-double v10, v0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    int-to-double p1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-double v0, v1

    div-double/2addr p1, v0

    mul-double/2addr v6, p1

    :cond_1
    return-wide v6

    .line 8
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p3, v0}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSIONS_MISMATCH_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public getCovarianceMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/Covariance;->covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getN()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/math3/stat/correlation/Covariance;->n:I

    return v0
.end method
