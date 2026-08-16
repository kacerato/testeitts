.class public Lorg/apache/commons/math3/optim/univariate/BracketFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EPS_MIN:D = 1.0E-21

.field private static final GOLD:D = 1.618034


# instance fields
.field private evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

.field private fHi:D

.field private fLo:D

.field private fMid:D

.field private final growLimit:D

.field private hi:D

.field private lo:D

.field private mid:D


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    const/16 v2, 0x1f4

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;-><init>(DI)V

    return-void
.end method

.method public constructor <init>(DI)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-lez v0, :cond_1

    if-lez p3, :cond_0

    .line 3
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->growLimit:D

    .line 4
    invoke-static {}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    return-void

    .line 5
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1

    .line 6
    :cond_1
    new-instance p3, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p3
.end method

.method private eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p1

    return-wide p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getMax()Ljava/lang/Number;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;-><init>(Ljava/lang/Number;)V

    throw p2
.end method


# virtual methods
.method public getEvaluations()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getFHi()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fHi:D

    return-wide v0
.end method

.method public getFLo()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fLo:D

    return-wide v0
.end method

.method public getFMid()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fMid:D

    return-wide v0
.end method

.method public getHi()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->hi:D

    return-wide v0
.end method

.method public getLo()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->lo:D

    return-wide v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getMid()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->mid:D

    return-wide v0
.end method

.method public search(Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;DD)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    sget-object v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-object/from16 v4, p2

    if-ne v4, v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    move-wide/from16 v4, p3

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v6

    move-wide/from16 v8, p5

    invoke-direct {v0, v1, v8, v9}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v10

    if-eqz v3, :cond_1

    cmpg-double v2, v6, v10

    if-gez v2, :cond_2

    goto :goto_0

    :cond_1
    cmpl-double v2, v6, v10

    if-lez v2, :cond_2

    :goto_0
    move-wide/from16 v32, v6

    move-wide v6, v10

    move-wide/from16 v10, v32

    goto :goto_1

    :cond_2
    move-wide/from16 v32, v4

    move-wide v4, v8

    move-wide/from16 v8, v32

    :goto_1
    sub-double v12, v4, v8

    const-wide v14, 0x3ff9e3779e9d0e99L    # 1.618034

    mul-double/2addr v12, v14

    add-double/2addr v12, v4

    invoke-direct {v0, v1, v12, v13}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v16

    :goto_2
    if-eqz v3, :cond_4

    cmpg-double v2, v16, v10

    if-gez v2, :cond_3

    goto :goto_3

    :cond_3
    move-wide/from16 p4, v6

    goto/16 :goto_f

    :cond_4
    cmpl-double v2, v16, v10

    if-lez v2, :cond_3

    :goto_3
    sub-double v18, v4, v8

    sub-double v20, v10, v16

    mul-double v20, v20, v18

    sub-double v22, v4, v12

    sub-double v24, v10, v6

    mul-double v24, v24, v22

    sub-double v26, v24, v20

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v28

    const-wide v30, 0x3b92e3b40a0e9b4fL    # 1.0E-21

    cmpg-double v2, v28, v30

    if-gez v2, :cond_5

    const-wide v26, 0x3ba2e3b40a0e9b4fL    # 2.0E-21

    goto :goto_4

    :cond_5
    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v28

    :goto_4
    mul-double v22, v22, v24

    mul-double v18, v18, v20

    sub-double v22, v22, v18

    div-double v22, v22, v26

    sub-double v14, v4, v22

    move-wide/from16 p4, v6

    iget-wide v6, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->growLimit:D

    sub-double v18, v12, v4

    mul-double v6, v6, v18

    add-double/2addr v6, v4

    sub-double v20, v14, v12

    sub-double v22, v4, v14

    mul-double v22, v22, v20

    const-wide/16 v24, 0x0

    cmpl-double v2, v22, v24

    if-lez v2, :cond_a

    invoke-direct {v0, v1, v14, v15}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v6

    if-eqz v3, :cond_6

    cmpg-double v2, v6, v16

    if-gez v2, :cond_7

    goto :goto_5

    :cond_6
    cmpl-double v2, v6, v16

    if-lez v2, :cond_7

    :goto_5
    move-wide/from16 v1, v16

    move-wide/from16 v32, v6

    move-wide v6, v10

    move-wide/from16 v10, v32

    goto/16 :goto_10

    :cond_7
    if-eqz v3, :cond_9

    cmpl-double v2, v6, v10

    if-lez v2, :cond_8

    goto :goto_6

    :cond_8
    const-wide v6, 0x3ff9e3779e9d0e99L    # 1.618034

    goto :goto_7

    :cond_9
    cmpg-double v2, v6, v10

    if-gez v2, :cond_8

    :goto_6
    move-wide v1, v6

    move-wide v12, v14

    move-wide/from16 v6, p4

    move-wide v14, v4

    move-wide v4, v8

    goto/16 :goto_10

    :goto_7
    mul-double v18, v18, v6

    add-double v6, v12, v18

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v8

    :goto_8
    const-wide v22, 0x3ff9e3779e9d0e99L    # 1.618034

    :goto_9
    move-wide/from16 v32, v10

    move-wide/from16 v10, v16

    move-wide/from16 v16, v8

    move-wide v8, v4

    move-wide v4, v12

    move-wide v12, v6

    :goto_a
    move-wide/from16 v6, v32

    goto/16 :goto_e

    :cond_a
    sub-double v8, v14, v6

    sub-double v22, v6, v12

    mul-double v22, v22, v8

    cmpl-double v2, v22, v24

    if-ltz v2, :cond_b

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v8

    goto :goto_8

    :cond_b
    sub-double v6, v12, v14

    mul-double/2addr v8, v6

    cmpl-double v2, v8, v24

    if-lez v2, :cond_e

    invoke-direct {v0, v1, v14, v15}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v6

    if-eqz v3, :cond_d

    cmpg-double v2, v6, v16

    if-gez v2, :cond_c

    :goto_b
    const-wide v22, 0x3ff9e3779e9d0e99L    # 1.618034

    goto :goto_c

    :cond_c
    const-wide v22, 0x3ff9e3779e9d0e99L    # 1.618034

    goto :goto_d

    :cond_d
    cmpl-double v2, v6, v16

    if-lez v2, :cond_c

    goto :goto_b

    :goto_c
    mul-double v20, v20, v22

    add-double v4, v14, v20

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v8

    move-wide v10, v6

    move-wide/from16 v6, v16

    move-wide/from16 v16, v8

    move-wide v8, v12

    move-wide v12, v4

    move-wide v4, v14

    goto :goto_e

    :goto_d
    move-wide v8, v4

    move-wide v4, v12

    move-wide v12, v14

    move-wide/from16 v32, v10

    move-wide/from16 v10, v16

    move-wide/from16 v16, v6

    goto :goto_a

    :cond_e
    const-wide v22, 0x3ff9e3779e9d0e99L    # 1.618034

    mul-double v18, v18, v22

    add-double v6, v12, v18

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v8

    goto :goto_9

    :goto_e
    move-wide/from16 v14, v22

    goto/16 :goto_2

    :goto_f
    move-wide/from16 v6, p4

    move-wide v14, v4

    move-wide v4, v8

    move-wide/from16 v1, v16

    :goto_10
    iput-wide v4, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->lo:D

    iput-wide v6, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fLo:D

    iput-wide v14, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->mid:D

    iput-wide v10, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fMid:D

    iput-wide v12, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->hi:D

    iput-wide v1, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fHi:D

    cmpl-double v3, v4, v12

    if-lez v3, :cond_f

    iput-wide v12, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->lo:D

    iput-wide v4, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->hi:D

    iput-wide v1, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fLo:D

    iput-wide v6, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fHi:D

    :cond_f
    return-void
.end method
