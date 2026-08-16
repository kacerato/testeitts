.class public Lorg/apache/commons/math3/analysis/integration/SimpsonIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.source "SourceFile"


# static fields
.field public static final SIMPSON_MAX_ITERATIONS_COUNT:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/16 v1, 0x40

    .line 5
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(II)V

    return-void
.end method

.method public constructor <init>(DDII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    const/16 p1, 0x40

    if-gt p6, p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, 0x0

    invoke-direct {p2, p3, p1, p4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2
.end method

.method public constructor <init>(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(II)V

    const/16 p1, 0x40

    if-gt p2, p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method


# virtual methods
.method public doIntegrate()D
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;

    invoke-direct {v1}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMinimalIterationCount()I

    move-result v2

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    const/4 v8, 0x1

    if-ne v2, v8, :cond_0

    invoke-virtual {v1, v0, v8}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v8

    mul-double/2addr v8, v6

    invoke-virtual {v1, v0, v5}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v1

    sub-double/2addr v8, v1

    div-double/2addr v8, v3

    return-wide v8

    :cond_0
    invoke-virtual {v1, v0, v5}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getIterations()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/math3/analysis/integration/TrapezoidIntegrator;->stage(Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;I)D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->incrementCount()V

    mul-double v14, v12, v6

    sub-double/2addr v14, v8

    div-double v8, v14, v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getIterations()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getMinimalIterationCount()I

    move-result v5

    if-lt v2, v5, :cond_2

    sub-double v14, v8, v10

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getRelativeAccuracy()D

    move-result-wide v16

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    add-double v10, v10, v18

    mul-double v16, v16, v10

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double v16, v16, v10

    cmpg-double v2, v14, v16

    if-lez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->getAbsoluteAccuracy()D

    move-result-wide v10

    cmpg-double v2, v14, v10

    if-gtz v2, :cond_2

    :cond_1
    return-wide v8

    :cond_2
    move-wide v10, v8

    move-wide v8, v12

    goto :goto_0
.end method
