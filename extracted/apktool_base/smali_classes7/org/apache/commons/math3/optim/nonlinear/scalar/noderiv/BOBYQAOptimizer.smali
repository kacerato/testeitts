.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer$PathIsExploredException;
    }
.end annotation


# static fields
.field public static final DEFAULT_INITIAL_RADIUS:D = 10.0

.field public static final DEFAULT_STOPPING_RADIUS:D = 1.0E-8

.field private static final HALF:D = 0.5

.field public static final MINIMUM_PROBLEM_DIMENSION:I = 0x2

.field private static final MINUS_ONE:D = -1.0

.field private static final ONE:D = 1.0

.field private static final ONE_OVER_A_THOUSAND:D = 0.001

.field private static final ONE_OVER_EIGHT:D = 0.125

.field private static final ONE_OVER_FOUR:D = 0.25

.field private static final ONE_OVER_TEN:D = 0.1

.field private static final SIXTEEN:D = 16.0

.field private static final TEN:D = 10.0

.field private static final TWO:D = 2.0

.field private static final TWO_HUNDRED_FIFTY:D = 250.0

.field private static final ZERO:D


# instance fields
.field private alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

.field private boundDifference:[D

.field private currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private initialTrustRegionRadius:D

.field private interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

.field private isMinimize:Z

.field private lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private final numberOfInterpolationPoints:I

.field private originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private final stoppingTrustRegionRadius:D

.field private trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private trustRegionCenterInterpolationPointIndex:I

.field private trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide v4, 0x3e45798ee2308c3aL    # 1.0E-8

    move-object v0, p0

    move v1, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;-><init>(IDD)V

    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 3
    iput p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    .line 4
    iput-wide p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    .line 5
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    return-void
.end method

.method public static synthetic access$000(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->caller(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private altmov(ID)[D
    .locals 52

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v3, 0x1

    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v4

    iget v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    new-instance v6, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v6, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    new-instance v7, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v7, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v8, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    new-instance v9, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v9, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const/4 v11, 0x0

    :goto_0
    const-wide/16 v12, 0x0

    if-ge v11, v5, :cond_0

    invoke-virtual {v7, v11, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/2addr v11, v3

    goto :goto_0

    :cond_0
    sub-int v11, v5, v4

    sub-int/2addr v11, v3

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v11, :cond_2

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v15, v1, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v15

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v5, :cond_1

    invoke-virtual {v7, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v17

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v10, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v19

    mul-double v19, v19, v15

    add-double v12, v17, v19

    invoke-virtual {v7, v10, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/2addr v10, v3

    const-wide/16 v12, 0x0

    goto :goto_2

    :cond_1
    add-int/2addr v14, v3

    const-wide/16 v12, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v14, v10, v12

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_3

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v12

    invoke-virtual {v6, v2, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/2addr v2, v3

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v5, :cond_6

    const/4 v12, 0x0

    const-wide/16 v19, 0x0

    :goto_5
    if-ge v12, v4, :cond_4

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v13, v2, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v23

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v25

    mul-double v23, v23, v25

    add-double v19, v19, v23

    add-int/2addr v12, v3

    goto :goto_5

    :cond_4
    invoke-virtual {v7, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    mul-double v19, v19, v12

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v4, :cond_5

    invoke-virtual {v6, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v23

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v13, v2, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v25

    mul-double v25, v25, v19

    move-object v13, v9

    move-wide/from16 v27, v10

    add-double v9, v23, v25

    invoke-virtual {v6, v12, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/2addr v12, v3

    move-object v9, v13

    move-wide/from16 v10, v27

    goto :goto_6

    :cond_5
    move-object v13, v9

    move-wide/from16 v27, v10

    add-int/2addr v2, v3

    goto :goto_4

    :cond_6
    move-object v13, v9

    move-wide/from16 v27, v10

    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    move/from16 v25, v4

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v23, 0x0

    :goto_7
    if-ge v2, v5, :cond_14

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    if-ne v2, v3, :cond_7

    move/from16 v32, v5

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object/from16 v37, v8

    move-object/from16 v31, v13

    move/from16 v4, v25

    :goto_8
    const/4 v3, 0x1

    goto/16 :goto_f

    :cond_7
    move/from16 v4, v25

    const/4 v3, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v25, 0x0

    :goto_9
    if-ge v3, v4, :cond_8

    move-object/from16 v31, v13

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v13, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v32

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v34

    sub-double v32, v32, v34

    invoke-virtual {v6, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v34

    mul-double v34, v34, v32

    add-double v25, v25, v34

    mul-double v32, v32, v32

    add-double v9, v9, v32

    const/4 v13, 0x1

    add-int/2addr v3, v13

    move-object/from16 v13, v31

    goto :goto_9

    :cond_8
    move-object/from16 v31, v13

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v32

    move-object v3, v7

    move-object v13, v8

    div-double v7, p2, v32

    move/from16 v32, v5

    move-object/from16 v33, v6

    neg-double v5, v7

    move-wide/from16 v34, v5

    move/from16 v36, v12

    move-object/from16 v37, v13

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v12

    move-wide/from16 v5, v34

    const/16 v35, 0x0

    const/16 v38, 0x0

    move-object/from16 v34, v3

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v4, :cond_d

    move/from16 v39, v11

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v40

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v42

    sub-double v40, v40, v42

    const-wide/16 v21, 0x0

    cmpl-double v11, v40, v21

    if-lez v11, :cond_b

    mul-double v42, v5, v40

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    sub-double v44, v44, v46

    cmpg-double v11, v42, v44

    if-gez v11, :cond_9

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v42

    sub-double v5, v5, v42

    div-double v5, v5, v40

    neg-int v11, v3

    const/16 v16, 0x1

    add-int/lit8 v35, v11, -0x1

    :cond_9
    mul-double v42, v7, v40

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    sub-double v44, v44, v46

    cmpl-double v11, v42, v44

    if-lez v11, :cond_a

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v42

    sub-double v7, v7, v42

    div-double v7, v7, v40

    invoke-static {v12, v13, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    const/4 v11, 0x1

    add-int/lit8 v38, v3, 0x1

    move/from16 v16, v11

    goto :goto_b

    :cond_a
    const/16 v16, 0x1

    goto :goto_b

    :cond_b
    const-wide/16 v21, 0x0

    cmpg-double v11, v40, v21

    if-gez v11, :cond_a

    mul-double v42, v5, v40

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    sub-double v44, v44, v46

    cmpl-double v11, v42, v44

    if-lez v11, :cond_c

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v42

    sub-double v5, v5, v42

    div-double v5, v5, v40

    const/4 v11, 0x1

    add-int/lit8 v35, v3, 0x1

    :cond_c
    mul-double v42, v7, v40

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    sub-double v44, v44, v46

    cmpg-double v11, v42, v44

    if-gez v11, :cond_a

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v42

    sub-double v7, v7, v42

    div-double v7, v7, v40

    invoke-static {v12, v13, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    neg-int v11, v3

    const/16 v16, 0x1

    add-int/lit8 v11, v11, -0x1

    move/from16 v38, v11

    :goto_b
    add-int/lit8 v3, v3, 0x1

    move/from16 v11, v39

    goto/16 :goto_a

    :cond_d
    move/from16 v39, v11

    if-ne v2, v1, :cond_10

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double v40, v25, v11

    mul-double v11, v5, v40

    sub-double v42, v25, v11

    mul-double v42, v42, v5

    mul-double v44, v7, v40

    sub-double v46, v25, v44

    mul-double v46, v46, v7

    invoke-static/range {v46 .. v47}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v48

    invoke-static/range {v42 .. v43}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v50

    cmpl-double v3, v48, v50

    if-lez v3, :cond_e

    move-wide v5, v7

    move/from16 v35, v38

    move-wide/from16 v42, v46

    :cond_e
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v25, v25, v7

    sub-double v7, v25, v11

    sub-double v11, v25, v44

    mul-double/2addr v7, v11

    const-wide/16 v11, 0x0

    cmpg-double v3, v7, v11

    if-gez v3, :cond_f

    mul-double v7, v25, v25

    div-double v7, v7, v40

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    invoke-static/range {v42 .. v43}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v44

    cmpl-double v3, v11, v44

    if-lez v3, :cond_f

    div-double v5, v25, v40

    move-wide/from16 v42, v7

    const/16 v35, 0x0

    :cond_f
    :goto_c
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    goto :goto_e

    :cond_10
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double v29, v11, v5

    mul-double v40, v5, v29

    sub-double v42, v11, v7

    mul-double v42, v42, v7

    invoke-static/range {v42 .. v43}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v44

    cmpl-double v3, v11, v44

    if-lez v3, :cond_11

    move-wide v5, v7

    move/from16 v35, v38

    move-wide/from16 v40, v42

    :cond_11
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v7, v11

    if-lez v3, :cond_12

    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    const-wide/high16 v11, 0x3fd0000000000000L    # 0.25

    cmpg-double v3, v7, v11

    if-gez v3, :cond_12

    move-wide/from16 v40, v11

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    const/16 v35, 0x0

    goto :goto_d

    :cond_12
    move-wide v7, v5

    :goto_d
    mul-double v42, v40, v25

    move-wide v5, v7

    goto :goto_c

    :goto_e
    sub-double/2addr v7, v5

    mul-double/2addr v7, v5

    mul-double/2addr v7, v9

    mul-double v42, v42, v42

    mul-double v9, v14, v7

    mul-double/2addr v9, v7

    add-double v9, v42, v9

    mul-double v42, v42, v9

    cmpl-double v3, v42, v23

    if-lez v3, :cond_13

    move v11, v2

    move-wide v9, v5

    move-wide/from16 v19, v9

    move/from16 v12, v35

    move-wide/from16 v23, v42

    goto/16 :goto_8

    :cond_13
    move-wide v9, v5

    move/from16 v12, v36

    move/from16 v11, v39

    goto/16 :goto_8

    :goto_f
    add-int/2addr v2, v3

    move/from16 v25, v4

    move-object/from16 v13, v31

    move/from16 v5, v32

    move-object/from16 v6, v33

    move-object/from16 v7, v34

    move-object/from16 v8, v37

    goto/16 :goto_7

    :cond_14
    move/from16 v32, v5

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object/from16 v37, v8

    move/from16 v39, v11

    move/from16 v36, v12

    move-object/from16 v31, v13

    move/from16 v4, v25

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v4, :cond_15

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v11, v39

    invoke-virtual {v5, v11, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v5

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    sub-double/2addr v5, v7

    mul-double v5, v5, v19

    add-double/2addr v2, v5

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    invoke-static {v12, v13, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    invoke-virtual {v5, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v2, 0x1

    add-int/2addr v1, v2

    goto :goto_10

    :cond_15
    const/4 v2, 0x1

    if-gez v36, :cond_16

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v12, v36

    neg-int v3, v12

    sub-int/2addr v3, v2

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    invoke-virtual {v1, v3, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_11

    :cond_16
    move/from16 v12, v36

    :goto_11
    if-lez v12, :cond_17

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    sub-int/2addr v12, v2

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    invoke-virtual {v1, v12, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_17
    add-double v1, p2, p2

    const-wide/16 v5, 0x0

    const/4 v13, 0x0

    :goto_12
    const/4 v3, 0x0

    const-wide/16 v7, 0x0

    :goto_13
    if-ge v3, v4, :cond_1a

    move-object/from16 v11, v33

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    move-wide/from16 v19, v9

    move-object/from16 v12, v37

    const-wide/16 v9, 0x0

    invoke-virtual {v12, v3, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    move-wide/from16 v23, v5

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    sub-double/2addr v9, v5

    invoke-static {v9, v10, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmpl-double v5, v5, v9

    if-gtz v5, :cond_19

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    sub-double/2addr v5, v9

    invoke-static {v5, v6, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmpg-double v5, v5, v9

    if-gez v5, :cond_18

    goto :goto_15

    :cond_18
    :goto_14
    const/4 v5, 0x1

    goto :goto_16

    :cond_19
    :goto_15
    invoke-virtual {v12, v3, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    mul-double/2addr v14, v14

    add-double/2addr v7, v14

    goto :goto_14

    :goto_16
    add-int/2addr v3, v5

    move-object/from16 v33, v11

    move-object/from16 v37, v12

    move-wide/from16 v9, v19

    move-wide/from16 v5, v23

    goto :goto_13

    :cond_1a
    move-wide/from16 v23, v5

    move-wide/from16 v19, v9

    move-object/from16 v11, v33

    move-object/from16 v12, v37

    const/4 v5, 0x1

    const-wide/16 v9, 0x0

    cmpl-double v3, v7, v9

    if-nez v3, :cond_1b

    const/4 v3, 0x2

    new-array v1, v3, [D

    const/4 v2, 0x0

    aput-wide v27, v1, v2

    aput-wide v9, v1, v5

    return-object v1

    :cond_1b
    mul-double v5, p2, p2

    sub-double/2addr v5, v9

    cmpl-double v3, v5, v9

    if-lez v3, :cond_20

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v4, :cond_1f

    invoke-virtual {v12, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    cmpl-double v7, v7, v1

    if-nez v7, :cond_1c

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    mul-double/2addr v9, v5

    sub-double/2addr v7, v9

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    cmpg-double v9, v7, v9

    if-gtz v9, :cond_1d

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    sub-double/2addr v7, v9

    invoke-virtual {v12, v3, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    invoke-virtual {v12, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    :cond_1c
    :goto_18
    const/4 v7, 0x1

    goto :goto_19

    :cond_1d
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_1e

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    sub-double/2addr v7, v9

    invoke-virtual {v12, v3, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    invoke-virtual {v12, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    goto :goto_18

    :cond_1e
    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    goto :goto_18

    :goto_19
    add-int/2addr v3, v7

    goto :goto_17

    :cond_1f
    move-wide v9, v5

    goto :goto_1a

    :cond_20
    move-wide/from16 v9, v19

    :goto_1a
    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    :goto_1b
    if-ge v3, v4, :cond_24

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    invoke-virtual {v12, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    cmpl-double v14, v14, v1

    if-nez v14, :cond_21

    neg-double v14, v9

    mul-double/2addr v14, v7

    invoke-virtual {v12, v3, v14, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    move-wide/from16 v19, v1

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    invoke-virtual {v12, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v25

    add-double v1, v1, v25

    invoke-static {v14, v15, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v25, v9

    invoke-virtual {v15, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    invoke-static {v9, v10, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    invoke-virtual {v14, v3, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const-wide/16 v21, 0x0

    goto :goto_1c

    :cond_21
    move-wide/from16 v19, v1

    move-wide/from16 v25, v9

    invoke-virtual {v12, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    const-wide/16 v21, 0x0

    cmpl-double v1, v1, v21

    if-nez v1, :cond_22

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    invoke-virtual {v1, v3, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1c

    :cond_22
    cmpl-double v1, v7, v21

    if-lez v1, :cond_23

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    invoke-virtual {v1, v3, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1c

    :cond_23
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    invoke-virtual {v1, v3, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :goto_1c
    invoke-virtual {v12, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    mul-double/2addr v7, v1

    add-double/2addr v5, v7

    const/4 v1, 0x1

    add-int/2addr v3, v1

    move-wide/from16 v1, v19

    move-wide/from16 v9, v25

    goto/16 :goto_1b

    :cond_24
    move-wide/from16 v19, v1

    move-wide/from16 v25, v9

    const/4 v1, 0x1

    const-wide/16 v21, 0x0

    move-wide/from16 v7, v21

    move/from16 v3, v32

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v3, :cond_26

    move-wide/from16 v14, v21

    const/4 v9, 0x0

    :goto_1e
    if-ge v9, v4, :cond_25

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v2, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v32

    invoke-virtual {v12, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v35

    mul-double v32, v32, v35

    add-double v14, v14, v32

    add-int/2addr v9, v1

    goto :goto_1e

    :cond_25
    move-object/from16 v9, v34

    invoke-virtual {v9, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v32

    mul-double v32, v32, v14

    mul-double v32, v32, v14

    add-double v7, v7, v32

    add-int/2addr v2, v1

    goto :goto_1d

    :cond_26
    move-object/from16 v9, v34

    if-ne v13, v1, :cond_27

    neg-double v7, v7

    :cond_27
    neg-double v1, v5

    cmpl-double v10, v7, v1

    if-lez v10, :cond_2a

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v29

    mul-double/2addr v14, v1

    cmpg-double v10, v7, v14

    if-gez v10, :cond_29

    div-double/2addr v1, v7

    const/4 v7, 0x0

    :goto_1f
    if-ge v7, v4, :cond_28

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    invoke-virtual {v12, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v32

    mul-double v32, v32, v1

    add-double v14, v14, v32

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v34, v9

    invoke-virtual {v10, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    move/from16 v32, v3

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v33, v11

    move-object/from16 v37, v12

    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    invoke-static {v11, v12, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v9

    invoke-virtual {v8, v7, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v3, 0x1

    add-int/2addr v7, v3

    move/from16 v3, v32

    move-object/from16 v11, v33

    move-object/from16 v9, v34

    move-object/from16 v12, v37

    goto :goto_1f

    :cond_28
    move/from16 v32, v3

    move-object/from16 v34, v9

    move-object/from16 v33, v11

    move-object/from16 v37, v12

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v9

    mul-double/2addr v5, v1

    :goto_20
    mul-double/2addr v5, v5

    goto :goto_22

    :cond_29
    move/from16 v32, v3

    move-object/from16 v34, v9

    move-object/from16 v33, v11

    move-object/from16 v37, v12

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    goto :goto_21

    :cond_2a
    move/from16 v32, v3

    move-object/from16 v34, v9

    move-object/from16 v33, v11

    move-object/from16 v37, v12

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    :goto_21
    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    goto :goto_20

    :goto_22
    if-nez v13, :cond_2c

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v4, :cond_2b

    move-object/from16 v1, v33

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    neg-double v7, v7

    invoke-virtual {v1, v2, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    move-object/from16 v3, v31

    invoke-virtual {v3, v2, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v13, 0x1

    add-int/2addr v2, v13

    goto :goto_23

    :cond_2b
    const/4 v13, 0x1

    move-wide/from16 v1, v19

    move-wide/from16 v9, v25

    goto/16 :goto_12

    :cond_2c
    move-object/from16 v3, v31

    const/4 v13, 0x1

    cmpl-double v1, v23, v5

    if-lez v1, :cond_2e

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v4, :cond_2d

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    invoke-virtual {v1, v2, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/2addr v2, v13

    goto :goto_24

    :cond_2d
    move-wide/from16 v5, v23

    :cond_2e
    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide v27, v1, v2

    aput-wide v5, v1, v13

    return-object v1
.end method

.method private bobyqa([D[D)D
    .locals 11

    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->boundDifference:[D

    aget-wide v3, v2, v1

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v5, p1, v1

    iget-object v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-virtual {v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v5, p2, v1

    iget-object v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-virtual {v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-wide v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v7, v7

    cmpl-double v2, v5, v7

    const-wide/16 v5, 0x0

    if-ltz v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    cmpl-double v2, v7, v5

    if-ltz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v7, p1, v1

    invoke-virtual {v2, v1, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v3, p1, v1

    iget-wide v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    add-double/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-wide v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    aget-wide v2, p2, v1

    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-wide v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    invoke-static {v2, v3, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    invoke-virtual {v4, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    iget-wide v9, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    cmpg-double v2, v7, v9

    if-gtz v2, :cond_3

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    cmpg-double v2, v7, v5

    if-gtz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v7, p2, v1

    invoke-virtual {v2, v1, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    neg-double v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v3, p2, v1

    iget-wide v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    sub-double/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    aget-wide v2, p1, v1

    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v4, v4

    iget-object v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    invoke-virtual {v6, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-wide v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bobyqb([D[D)D

    move-result-wide p1

    return-wide p1
.end method

.method private bobyqb([D[D)D
    .locals 101

    move-object/from16 v8, p0

    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v9

    iget v10, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    add-int/lit8 v0, v9, 0x1

    sub-int v11, v10, v0

    mul-int/2addr v0, v9

    div-int/lit8 v12, v0, 0x2

    new-instance v13, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v13, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    new-instance v14, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v14, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    new-instance v15, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v15, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const/4 v7, 0x0

    iput v7, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->prelim([D[D)V

    move v0, v7

    const-wide/16 v1, 0x0

    :goto_0
    if-ge v0, v9, :cond_0

    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v4, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v5, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v4, v5, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getEvaluations()I

    move-result v0

    iget-wide v5, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    const-wide/high16 v19, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v22, v3

    move-wide v3, v5

    move-wide/from16 v24, v19

    move-wide/from16 v28, v24

    const-wide/16 v26, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x0

    const-wide/16 v40, 0x0

    const-wide/16 v42, 0x0

    const-wide/16 v44, 0x0

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    const/16 v50, 0x0

    move/from16 v19, v0

    move-wide/from16 v20, v1

    move-wide/from16 v0, v28

    const/16 v2, 0x14

    :goto_1
    const-wide/high16 v51, 0x4024000000000000L    # 10.0

    const/16 v7, 0x3c

    const-wide/high16 v60, 0x3fe0000000000000L    # 0.5

    const/16 v62, 0x1

    move-wide/from16 v63, v0

    const/16 v0, 0x14

    if-eq v2, v0, :cond_62

    if-eq v2, v7, :cond_61

    const/16 v1, 0x5a

    if-eq v2, v1, :cond_60

    const-wide/high16 v65, 0x3ff8000000000000L    # 1.5

    const/16 v0, 0x2d0

    const/16 v7, 0x168

    const-wide v69, 0x3fb999999999999aL    # 0.1

    const/16 v8, 0xd2

    if-eq v2, v8, :cond_6

    const/16 v8, 0xe6

    if-eq v2, v8, :cond_5

    if-eq v2, v7, :cond_4

    const/16 v8, 0x28a

    if-eq v2, v8, :cond_3

    const/16 v8, 0x2a8

    if-eq v2, v8, :cond_2

    if-ne v2, v0, :cond_1

    const/16 v18, 0x0

    move-object/from16 v12, p0

    goto/16 :goto_47

    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIMPLE_MESSAGE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const-string v2, "bobyqb"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    move-wide v2, v3

    move/from16 v67, v11

    move-object/from16 v73, v13

    move-object v4, v14

    move-wide/from16 v71, v31

    move/from16 v11, v35

    move-wide/from16 v0, v63

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    move-wide v13, v5

    move/from16 v31, v8

    move v8, v12

    move-wide/from16 v6, v42

    move-object/from16 v12, p0

    goto/16 :goto_45

    :cond_3
    const/16 v18, 0x0

    move-wide v2, v3

    move v7, v8

    move/from16 v67, v11

    move v8, v12

    move-object/from16 v73, v13

    move-object v4, v14

    move-wide/from16 v71, v31

    move/from16 v30, v35

    move-wide/from16 v94, v42

    move-wide/from16 v0, v63

    move-object/from16 v12, p0

    move-wide v13, v5

    goto/16 :goto_41

    :cond_4
    const/16 v18, 0x0

    move-wide/from16 v76, v3

    move-wide/from16 v74, v5

    move v6, v7

    move-object/from16 v73, v13

    move-object/from16 v78, v14

    move-object/from16 v81, v15

    move-wide/from16 v71, v31

    move/from16 v8, v35

    move-wide/from16 v62, v63

    move/from16 v31, v12

    move-object/from16 v12, p0

    goto/16 :goto_13

    :cond_5
    const/16 v18, 0x0

    move v7, v8

    move-object/from16 v73, v13

    move/from16 v2, v30

    move-wide/from16 v71, v31

    move/from16 v31, v12

    move-object/from16 v12, p0

    goto :goto_3

    :cond_6
    invoke-static {v8}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    move/from16 v2, v30

    move-wide/from16 v7, v31

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    move/from16 v31, v12

    move-object/from16 v12, p0

    invoke-direct {v12, v2, v7, v8}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->altmov(ID)[D

    move-result-object v24

    const/16 v18, 0x0

    aget-wide v25, v24, v18

    aget-wide v27, v24, v62

    move/from16 v0, v18

    :goto_2
    if-ge v0, v9, :cond_7

    iget-object v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v71, v7

    iget-object v7, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    move-object/from16 v73, v13

    iget-object v13, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v62

    sub-double v7, v7, v62

    invoke-virtual {v1, v0, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v7, v71

    move-object/from16 v13, v73

    goto :goto_2

    :cond_7
    move-wide/from16 v71, v7

    move-object/from16 v73, v13

    const/16 v7, 0xe6

    move-wide/from16 v98, v25

    move-wide/from16 v24, v27

    move-wide/from16 v28, v98

    :goto_3
    invoke-static {v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    move/from16 v0, v18

    :goto_4
    if-ge v0, v10, :cond_9

    move-wide/from16 v74, v5

    move/from16 v1, v18

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v26, 0x0

    :goto_5
    if-ge v1, v9, :cond_8

    iget-object v13, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v62

    iget-object v13, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v76

    mul-double v62, v62, v76

    add-double v7, v7, v62

    iget-object v13, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v62

    iget-object v13, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v76

    mul-double v62, v62, v76

    add-double v26, v26, v62

    iget-object v13, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v62

    iget-object v13, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v76

    mul-double v62, v62, v76

    add-double v5, v5, v62

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    mul-double v62, v7, v60

    add-double v62, v62, v26

    move-wide/from16 v76, v3

    mul-double v3, v7, v62

    invoke-virtual {v15, v0, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v0, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    invoke-virtual {v14, v0, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v5, v74

    move-wide/from16 v3, v76

    const/16 v7, 0xe6

    goto :goto_4

    :cond_9
    move-wide/from16 v76, v3

    move-wide/from16 v74, v5

    move/from16 v3, v18

    const-wide/16 v0, 0x0

    :goto_6
    if-ge v3, v11, :cond_c

    move/from16 v6, v18

    const-wide/16 v4, 0x0

    :goto_7
    if-ge v6, v10, :cond_a

    iget-object v7, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v6, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v7

    invoke-virtual {v15, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v26

    mul-double v7, v7, v26

    add-double/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_a
    mul-double v6, v4, v4

    sub-double/2addr v0, v6

    move/from16 v6, v18

    :goto_8
    if-ge v6, v10, :cond_b

    iget-object v7, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v26

    iget-object v8, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v8, v6, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v62

    mul-double v62, v62, v4

    move-wide/from16 v78, v0

    add-double v0, v26, v62

    invoke-virtual {v7, v6, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v0, v78

    goto :goto_8

    :cond_b
    move-wide/from16 v78, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_c
    move/from16 v13, v18

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    :goto_9
    if-ge v13, v9, :cond_f

    move-object/from16 v78, v14

    iget-object v14, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v26

    mul-double v26, v26, v26

    add-double v3, v3, v26

    move/from16 v14, v18

    const-wide/16 v26, 0x0

    :goto_a
    if-ge v14, v10, :cond_d

    invoke-virtual {v15, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v62

    move-wide/from16 v79, v3

    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v14, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v3

    mul-double v62, v62, v3

    add-double v26, v26, v62

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v3, v79

    goto :goto_a

    :cond_d
    move-wide/from16 v79, v3

    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double v3, v3, v26

    add-double/2addr v7, v3

    add-int v3, v10, v13

    move-object/from16 v81, v15

    move/from16 v4, v18

    move-wide/from16 v14, v26

    :goto_b
    if-ge v4, v9, :cond_e

    move/from16 v82, v11

    iget-object v11, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v26

    iget-object v11, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v62

    mul-double v26, v26, v62

    add-double v14, v14, v26

    add-int/lit8 v4, v4, 0x1

    move/from16 v11, v82

    goto :goto_b

    :cond_e
    move/from16 v82, v11

    iget-object v4, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3, v14, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double/2addr v14, v3

    add-double/2addr v7, v14

    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v11, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    mul-double/2addr v3, v14

    add-double/2addr v5, v3

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v14, v78

    move-wide/from16 v3, v79

    move-object/from16 v15, v81

    move/from16 v11, v82

    goto :goto_9

    :cond_f
    move/from16 v82, v11

    move-object/from16 v78, v14

    move-object/from16 v81, v15

    mul-double v13, v5, v5

    add-double v26, v20, v5

    add-double v26, v26, v5

    mul-double v5, v3, v60

    add-double v26, v26, v5

    mul-double v26, v26, v3

    add-double v13, v13, v26

    add-double/2addr v13, v0

    sub-double v26, v13, v7

    iget-object v0, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v7

    invoke-virtual {v0, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    move/from16 v8, v35

    if-nez v8, :cond_12

    iget-object v0, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    mul-double/2addr v0, v0

    mul-double v5, v28, v26

    add-double v44, v0, v5

    cmpg-double v0, v44, v24

    if-gez v0, :cond_11

    const-wide/16 v0, 0x0

    cmpl-double v5, v24, v0

    if-lez v5, :cond_11

    move/from16 v0, v18

    :goto_c
    if-ge v0, v9, :cond_10

    iget-object v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v5, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    invoke-virtual {v1, v0, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v5, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-object v7, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    sub-double/2addr v5, v13

    invoke-virtual {v1, v0, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_10
    move/from16 v30, v2

    move-wide v0, v3

    move/from16 v35, v8

    move-object v8, v12

    move/from16 v12, v31

    move-wide/from16 v31, v71

    move-object/from16 v13, v73

    move-wide/from16 v5, v74

    move-wide/from16 v3, v76

    move-object/from16 v14, v78

    move-object/from16 v15, v81

    move/from16 v11, v82

    const/16 v2, 0xe6

    const-wide/16 v24, 0x0

    goto/16 :goto_1

    :cond_11
    move/from16 v30, v2

    move-wide/from16 v62, v3

    move/from16 v11, v82

    :goto_d
    const/16 v6, 0x168

    goto/16 :goto_13

    :cond_12
    mul-double v0, v76, v76

    move/from16 v2, v18

    move v7, v2

    const-wide/16 v5, 0x0

    const-wide/16 v13, 0x0

    :goto_e
    if-ge v2, v10, :cond_17

    iget v11, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    if-ne v2, v11, :cond_13

    move-wide/from16 v79, v0

    move-wide/from16 v62, v3

    move/from16 v11, v82

    goto/16 :goto_12

    :cond_13
    move/from16 v15, v18

    move/from16 v11, v82

    const-wide/16 v33, 0x0

    :goto_f
    if-ge v15, v11, :cond_14

    move-wide/from16 v62, v3

    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v2, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v3

    mul-double/2addr v3, v3

    add-double v33, v33, v3

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v3, v62

    goto :goto_f

    :cond_14
    move-wide/from16 v62, v3

    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double v33, v33, v26

    mul-double/2addr v3, v3

    add-double v33, v33, v3

    move/from16 v15, v18

    const-wide/16 v3, 0x0

    :goto_10
    if-ge v15, v9, :cond_15

    move/from16 v35, v7

    iget-object v7, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v2, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v48

    iget-object v7, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v79

    sub-double v48, v48, v79

    mul-double v48, v48, v48

    add-double v3, v3, v48

    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v35

    goto :goto_10

    :cond_15
    move/from16 v35, v7

    div-double v48, v3, v0

    move-wide/from16 v79, v0

    mul-double v0, v48, v48

    move-wide/from16 v48, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    mul-double v3, v0, v33

    cmpl-double v7, v3, v5

    if-lez v7, :cond_16

    move v7, v2

    move-wide v5, v3

    move-wide/from16 v44, v33

    goto :goto_11

    :cond_16
    move/from16 v7, v35

    :goto_11
    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double/2addr v3, v3

    mul-double/2addr v0, v3

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    move-wide v13, v0

    :goto_12
    add-int/lit8 v2, v2, 0x1

    move/from16 v82, v11

    move-wide/from16 v3, v62

    move-wide/from16 v0, v79

    goto/16 :goto_e

    :cond_17
    move-wide/from16 v62, v3

    move/from16 v35, v7

    move/from16 v11, v82

    move/from16 v30, v35

    goto/16 :goto_d

    :goto_13
    invoke-static {v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    move/from16 v0, v18

    :goto_14
    if-ge v0, v9, :cond_1a

    aget-wide v1, p1, v0

    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v5, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    add-double/2addr v3, v13

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    aget-wide v3, p2, v0

    iget-object v5, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_18

    iget-object v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v2, p1, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_18
    iget-object v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_19

    iget-object v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v2, p2, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_1a
    iget-object v0, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->computeObjectiveValue([D)D

    move-result-wide v0

    iget-boolean v2, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->isMinimize:Z

    if-nez v2, :cond_1b

    neg-double v0, v0

    :cond_1b
    move-wide v13, v0

    const/4 v0, -0x1

    if-ne v8, v0, :cond_1c

    move/from16 v35, v8

    move-object v8, v12

    move-wide/from16 v22, v13

    move-wide/from16 v33, v22

    move/from16 v12, v31

    move-wide/from16 v0, v62

    move-wide/from16 v31, v71

    move-object/from16 v13, v73

    move-wide/from16 v5, v74

    move-wide/from16 v3, v76

    move-object/from16 v14, v78

    move-object/from16 v15, v81

    const/16 v2, 0x2d0

    goto/16 :goto_1

    :cond_1c
    iget-object v0, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v33

    move/from16 v2, v18

    move v3, v2

    const-wide/16 v0, 0x0

    :goto_15
    if-ge v2, v9, :cond_1f

    iget-object v4, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    iget-object v7, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    mul-double v4, v4, v40

    add-double/2addr v0, v4

    move/from16 v4, v18

    :goto_16
    if-gt v4, v2, :cond_1e

    iget-object v5, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    iget-object v5, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v79

    mul-double v40, v40, v79

    if-ne v4, v2, :cond_1d

    mul-double v40, v40, v60

    :cond_1d
    iget-object v5, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v79

    mul-double v79, v79, v40

    add-double v0, v0, v79

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1f
    move-wide/from16 v40, v0

    move/from16 v0, v18

    :goto_17
    if-ge v0, v10, :cond_20

    move-object/from16 v15, v78

    invoke-virtual {v15, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    mul-double/2addr v1, v1

    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double v3, v3, v60

    mul-double/2addr v3, v1

    add-double v40, v40, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_20
    move-object/from16 v15, v78

    sub-double v0, v13, v33

    sub-double v78, v0, v40

    invoke-static/range {v78 .. v79}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v82

    move-wide/from16 v3, v42

    cmpl-double v2, v3, v74

    if-lez v2, :cond_21

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getEvaluations()I

    move-result v2

    move/from16 v19, v2

    :cond_21
    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    if-lez v8, :cond_2c

    const-wide/16 v16, 0x0

    cmpl-double v2, v40, v16

    if-gez v2, :cond_2b

    div-double v0, v0, v40

    mul-double v6, v76, v60

    cmpg-double v2, v0, v69

    if-gtz v2, :cond_22

    invoke-static {v6, v7, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    :goto_18
    move-wide/from16 v46, v0

    goto :goto_19

    :cond_22
    const-wide v46, 0x3fe6666666666666L    # 0.7

    cmpg-double v2, v0, v46

    if-gtz v2, :cond_23

    invoke-static {v6, v7, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    goto :goto_18

    :cond_23
    move-wide/from16 v46, v0

    mul-double v0, v3, v42

    invoke-static {v6, v7, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    :goto_19
    mul-double v0, v74, v65

    cmpg-double v0, v5, v0

    if-gtz v0, :cond_24

    move-wide/from16 v5, v74

    :cond_24
    cmpg-double v0, v13, v33

    if-gez v0, :cond_2a

    mul-double v0, v5, v5

    move-wide/from16 v84, v3

    move-wide/from16 v2, v16

    move/from16 v4, v18

    move v7, v4

    move-wide/from16 v86, v44

    move-wide/from16 v76, v48

    move-wide/from16 v48, v2

    :goto_1a
    if-ge v4, v10, :cond_28

    move-wide/from16 v88, v5

    move-wide/from16 v76, v16

    move/from16 v5, v18

    :goto_1b
    if-ge v5, v11, :cond_25

    iget-object v6, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v6, v4, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v90

    mul-double v90, v90, v90

    add-double v76, v76, v90

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_25
    iget-object v5, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    mul-double v76, v76, v26

    mul-double/2addr v5, v5

    add-double v76, v76, v5

    move/from16 v58, v7

    move-wide/from16 v5, v16

    move/from16 v7, v18

    :goto_1c
    if-ge v7, v9, :cond_26

    move-object/from16 v80, v15

    iget-object v15, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v15, v4, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v90

    iget-object v15, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v92

    sub-double v90, v90, v92

    mul-double v90, v90, v90

    add-double v5, v5, v90

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v15, v80

    goto :goto_1c

    :cond_26
    move-object/from16 v80, v15

    div-double v90, v5, v0

    move-wide/from16 v92, v0

    mul-double v0, v90, v90

    move-wide/from16 v90, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v5, v6, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    mul-double v67, v0, v76

    cmpl-double v7, v67, v48

    if-lez v7, :cond_27

    move v7, v4

    move-wide/from16 v48, v67

    move-wide/from16 v86, v76

    goto :goto_1d

    :cond_27
    move/from16 v7, v58

    :goto_1d
    iget-object v15, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    mul-double v67, v67, v67

    mul-double v0, v0, v67

    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v15, v80

    move-wide/from16 v5, v88

    move-wide/from16 v76, v90

    move-wide/from16 v0, v92

    goto :goto_1a

    :cond_28
    move-wide/from16 v88, v5

    move/from16 v58, v7

    move-object/from16 v80, v15

    mul-double v2, v2, v60

    cmpg-double v0, v48, v2

    if-gtz v0, :cond_29

    move/from16 v6, v30

    move-wide/from16 v48, v76

    :goto_1e
    const/16 v7, 0x2d0

    goto :goto_1f

    :cond_29
    move/from16 v6, v58

    move-wide/from16 v48, v76

    move-wide/from16 v44, v86

    goto :goto_1e

    :cond_2a
    move-wide/from16 v84, v3

    move-wide/from16 v88, v5

    move-object/from16 v80, v15

    move/from16 v6, v30

    goto :goto_1e

    :cond_2b
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TRUST_REGION_STEP_FAILED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {v40 .. v41}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_2c
    move-wide/from16 v84, v3

    move-object/from16 v80, v15

    const-wide/16 v16, 0x0

    move/from16 v6, v30

    move-wide/from16 v88, v76

    goto :goto_1e

    :goto_1f
    move-object/from16 v0, p0

    const/16 v15, 0x5a

    move-wide/from16 v1, v26

    move-wide/from16 v94, v84

    move-wide/from16 v3, v44

    move/from16 v30, v8

    move-wide/from16 v7, v16

    move-wide/from16 v96, v74

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->update(DDI)V

    iget-object v0, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    iget-object v2, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v6, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    move/from16 v2, v18

    move v3, v2

    :goto_20
    if-ge v2, v9, :cond_2e

    iget-object v4, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v6, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v4

    mul-double/2addr v4, v0

    move/from16 v15, v18

    :goto_21
    if-gt v15, v2, :cond_2d

    iget-object v7, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    iget-object v8, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v8, v6, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v74

    mul-double v74, v74, v4

    move-wide/from16 v76, v0

    add-double v0, v67, v74

    invoke-virtual {v7, v3, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v0, v76

    const-wide/16 v7, 0x0

    goto :goto_21

    :cond_2d
    move-wide/from16 v76, v0

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v7, 0x0

    const/16 v15, 0x5a

    goto :goto_20

    :cond_2e
    move/from16 v0, v18

    :goto_22
    if-ge v0, v11, :cond_30

    iget-object v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v6, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v1

    mul-double v1, v1, v78

    move/from16 v3, v18

    :goto_23
    if-ge v3, v10, :cond_2f

    iget-object v4, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    iget-object v5, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v3, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v67

    mul-double v67, v67, v1

    add-double v7, v7, v67

    invoke-virtual {v4, v3, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_30
    iget-object v0, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v6, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    move/from16 v0, v18

    :goto_24
    if-ge v0, v9, :cond_31

    iget-object v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v2, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    invoke-virtual {v1, v6, v0, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    iget-object v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v6, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v1

    move-object/from16 v8, v73

    invoke-virtual {v8, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_31
    move-object/from16 v8, v73

    move/from16 v0, v18

    :goto_25
    if-ge v0, v10, :cond_35

    move/from16 v3, v18

    const-wide/16 v1, 0x0

    :goto_26
    if-ge v3, v11, :cond_32

    iget-object v4, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v6, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v4

    iget-object v7, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v0, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v67

    mul-double v4, v4, v67

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_32
    move/from16 v5, v18

    const-wide/16 v3, 0x0

    :goto_27
    if-ge v5, v9, :cond_33

    iget-object v7, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v0, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v67

    iget-object v7, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v73

    mul-double v67, v67, v73

    add-double v3, v3, v67

    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_33
    mul-double/2addr v1, v3

    move/from16 v3, v18

    :goto_28
    if-ge v3, v9, :cond_34

    invoke-virtual {v8, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    iget-object v7, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v0, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v67

    mul-double v67, v67, v1

    add-double v4, v4, v67

    invoke-virtual {v8, v3, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_35
    move/from16 v0, v18

    :goto_29
    if-ge v0, v9, :cond_36

    iget-object v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    invoke-virtual {v8, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    mul-double v4, v4, v78

    add-double/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_36
    cmpg-double v0, v13, v33

    if-gez v0, :cond_3d

    iput v6, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    move/from16 v2, v18

    move v3, v2

    const-wide/16 v0, 0x0

    :goto_2a
    if-ge v2, v9, :cond_39

    iget-object v4, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v5, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move v7, v6

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    invoke-virtual {v4, v2, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v4, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    move/from16 v4, v18

    :goto_2b
    if-gt v4, v2, :cond_38

    if-ge v4, v2, :cond_37

    iget-object v5, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    iget-object v6, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    iget-object v6, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v73

    mul-double v67, v67, v73

    move-wide/from16 v73, v0

    add-double v0, v20, v67

    invoke-virtual {v5, v2, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_2c

    :cond_37
    move-wide/from16 v73, v0

    :goto_2c
    iget-object v0, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-object v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    iget-object v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    mul-double v20, v20, v67

    add-double v5, v5, v20

    invoke-virtual {v0, v4, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v0, v73

    goto :goto_2b

    :cond_38
    move-wide/from16 v73, v0

    add-int/lit8 v2, v2, 0x1

    move v6, v7

    goto :goto_2a

    :cond_39
    move v7, v6

    move/from16 v2, v18

    :goto_2d
    if-ge v2, v10, :cond_3c

    move/from16 v3, v18

    const-wide/16 v5, 0x0

    :goto_2e
    if-ge v3, v9, :cond_3a

    iget-object v4, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v20

    iget-object v4, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    mul-double v20, v20, v67

    add-double v5, v5, v20

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_3a
    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double/2addr v5, v3

    move/from16 v3, v18

    :goto_2f
    if-ge v3, v9, :cond_3b

    iget-object v4, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    iget-object v15, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v15, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v67

    mul-double v67, v67, v5

    move-wide/from16 v73, v0

    add-double v0, v20, v67

    invoke-virtual {v4, v3, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v0, v73

    goto :goto_2f

    :cond_3b
    move-wide/from16 v73, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_3c
    move-wide/from16 v73, v0

    move-wide/from16 v20, v73

    goto :goto_30

    :cond_3d
    move v7, v6

    :goto_30
    if-lez v30, :cond_4d

    move/from16 v0, v18

    :goto_31
    if-ge v0, v10, :cond_3e

    iget-object v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v2, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    iget-object v4, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v5, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    move-object/from16 v15, v81

    const-wide/16 v1, 0x0

    invoke-virtual {v15, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_3e
    move-object/from16 v15, v81

    move/from16 v0, v18

    :goto_32
    if-ge v0, v11, :cond_41

    move/from16 v1, v18

    const-wide/16 v5, 0x0

    :goto_33
    if-ge v1, v10, :cond_3f

    iget-object v2, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v1, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    iget-object v4, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    mul-double v2, v2, v67

    add-double/2addr v5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_3f
    move/from16 v1, v18

    :goto_34
    if-ge v1, v10, :cond_40

    invoke-virtual {v15, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    iget-object v4, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v1, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v67

    mul-double v67, v67, v5

    add-double v2, v2, v67

    invoke-virtual {v15, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_41
    move/from16 v0, v18

    :goto_35
    if-ge v0, v10, :cond_43

    move/from16 v1, v18

    const-wide/16 v5, 0x0

    :goto_36
    if-ge v1, v9, :cond_42

    iget-object v2, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    iget-object v4, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    mul-double v2, v2, v67

    add-double/2addr v5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_42
    invoke-virtual {v15, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    move-object/from16 v4, v80

    invoke-virtual {v4, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    invoke-virtual {v15, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    mul-double/2addr v5, v1

    invoke-virtual {v15, v0, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_43
    move-object/from16 v4, v80

    move/from16 v2, v18

    const-wide/16 v0, 0x0

    const-wide/16 v5, 0x0

    :goto_37
    if-ge v2, v9, :cond_47

    move/from16 v58, v7

    move-object/from16 v73, v8

    move/from16 v3, v18

    const-wide/16 v7, 0x0

    :goto_38
    if-ge v3, v10, :cond_44

    move/from16 v67, v11

    iget-object v11, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v3, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v74

    iget-object v11, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v76

    mul-double v74, v74, v76

    iget-object v11, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v3, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v76

    invoke-virtual {v15, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v78

    mul-double v76, v76, v78

    add-double v74, v74, v76

    add-double v7, v7, v74

    add-int/lit8 v3, v3, 0x1

    move/from16 v11, v67

    goto :goto_38

    :cond_44
    move/from16 v67, v11

    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v74

    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v76

    cmpl-double v3, v74, v76

    if-nez v3, :cond_45

    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v74, v13

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    move-object/from16 v78, v4

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v13

    mul-double/2addr v13, v13

    add-double/2addr v5, v13

    invoke-static {v3, v4, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v13

    mul-double/2addr v13, v13

    add-double/2addr v0, v13

    goto :goto_3a

    :cond_45
    move-object/from16 v78, v4

    move-wide/from16 v74, v13

    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v11, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    cmpl-double v3, v3, v13

    if-nez v3, :cond_46

    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    const-wide/16 v13, 0x0

    invoke-static {v13, v14, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    mul-double/2addr v3, v3

    add-double/2addr v5, v3

    invoke-static {v13, v14, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    mul-double/2addr v3, v3

    :goto_39
    add-double/2addr v0, v3

    goto :goto_3a

    :cond_46
    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double/2addr v3, v3

    add-double/2addr v5, v3

    mul-double v3, v7, v7

    goto :goto_39

    :goto_3a
    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int v4, v10, v2

    invoke-virtual {v3, v4, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v58

    move/from16 v11, v67

    move-object/from16 v8, v73

    move-wide/from16 v13, v74

    move-object/from16 v4, v78

    goto/16 :goto_37

    :cond_47
    move-object/from16 v78, v4

    move/from16 v58, v7

    move-object/from16 v73, v8

    move/from16 v67, v11

    move-wide/from16 v74, v13

    add-int/lit8 v50, v50, 0x1

    mul-double v0, v0, v51

    cmpg-double v0, v5, v0

    if-gez v0, :cond_48

    move/from16 v0, v18

    goto :goto_3b

    :cond_48
    move/from16 v0, v50

    :goto_3b
    const/4 v1, 0x3

    move/from16 v8, v31

    if-lt v0, v1, :cond_4c

    invoke-static {v10, v8}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v1

    move/from16 v2, v18

    :goto_3c
    if-ge v2, v1, :cond_4c

    if-ge v2, v9, :cond_49

    iget-object v0, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int v4, v10, v2

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_49
    if-ge v2, v10, :cond_4a

    iget-object v0, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v4, v78

    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    invoke-virtual {v0, v2, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_3d

    :cond_4a
    move-object/from16 v4, v78

    :goto_3d
    if-ge v2, v8, :cond_4b

    iget-object v0, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v2, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_4b
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v78, v4

    move/from16 v0, v18

    goto :goto_3c

    :cond_4c
    move-object/from16 v4, v78

    move/from16 v50, v0

    goto :goto_3e

    :cond_4d
    move/from16 v58, v7

    move-object/from16 v73, v8

    move/from16 v67, v11

    move-wide/from16 v74, v13

    move/from16 v8, v31

    move-object/from16 v4, v80

    move-object/from16 v15, v81

    :goto_3e
    if-nez v30, :cond_4e

    :goto_3f
    move-object v14, v4

    move/from16 v35, v30

    move-wide/from16 v40, v38

    move/from16 v30, v58

    move-wide/from16 v0, v62

    move/from16 v11, v67

    move-wide/from16 v31, v71

    move-object/from16 v13, v73

    move-wide/from16 v33, v74

    move-wide/from16 v3, v88

    move-wide/from16 v42, v94

    move-wide/from16 v5, v96

    const/16 v2, 0x3c

    move-wide/from16 v38, v36

    move-wide/from16 v36, v82

    :goto_40
    move-object/from16 v98, v12

    move v12, v8

    move-object/from16 v8, v98

    goto/16 :goto_1

    :cond_4e
    mul-double v40, v40, v69

    add-double v33, v33, v40

    cmpg-double v0, v74, v33

    if-gtz v0, :cond_4f

    goto :goto_3f

    :cond_4f
    mul-double v42, v42, v88

    move-wide/from16 v13, v96

    mul-double v5, v13, v51

    mul-double v0, v42, v42

    mul-double/2addr v5, v5

    invoke-static {v0, v1, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v48

    move-wide/from16 v40, v38

    move-wide/from16 v0, v62

    move-wide/from16 v33, v74

    move-wide/from16 v2, v88

    const/16 v7, 0x28a

    move-wide/from16 v38, v36

    move-wide/from16 v36, v82

    :goto_41
    invoke-static {v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    move/from16 v6, v18

    const/4 v5, -0x1

    :goto_42
    if-ge v6, v10, :cond_52

    move/from16 v7, v18

    const-wide/16 v42, 0x0

    :goto_43
    if-ge v7, v9, :cond_50

    iget-object v11, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v51

    iget-object v11, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v57

    sub-double v51, v51, v57

    mul-double v51, v51, v51

    add-double v42, v42, v51

    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    :cond_50
    cmpl-double v7, v42, v48

    if-lez v7, :cond_51

    move v5, v6

    move-wide/from16 v48, v42

    :cond_51
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    :cond_52
    if-ltz v5, :cond_54

    invoke-static/range {v48 .. v49}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    move/from16 v11, v30

    const/4 v6, -0x1

    if-ne v11, v6, :cond_53

    mul-double v2, v2, v69

    mul-double v6, v0, v60

    invoke-static {v2, v3, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    mul-double v6, v13, v65

    cmpg-double v6, v2, v6

    if-gtz v6, :cond_53

    move-wide v2, v13

    :cond_53
    mul-double v0, v0, v69

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    mul-double v6, v0, v0

    move-wide/from16 v31, v0

    move/from16 v30, v5

    move-wide v0, v6

    move-wide v5, v13

    move/from16 v35, v18

    move/from16 v11, v67

    move-object/from16 v13, v73

    move-wide/from16 v42, v94

    move-object v14, v4

    move-wide v3, v2

    const/16 v2, 0x5a

    goto/16 :goto_40

    :cond_54
    move/from16 v11, v30

    const/4 v6, -0x1

    if-ne v11, v6, :cond_55

    move/from16 v30, v5

    move/from16 v35, v11

    move-wide v5, v13

    move/from16 v11, v67

    move-wide/from16 v31, v71

    move-object/from16 v13, v73

    move-wide/from16 v42, v94

    move-object v14, v4

    move-wide v3, v2

    const/16 v2, 0x2a8

    goto/16 :goto_40

    :cond_55
    const-wide/16 v16, 0x0

    cmpl-double v6, v46, v16

    if-lez v6, :cond_56

    move/from16 v30, v5

    move/from16 v35, v11

    move-wide v5, v13

    move/from16 v11, v67

    move-wide/from16 v31, v71

    move-object/from16 v13, v73

    move-wide/from16 v42, v94

    :goto_44
    move-object v14, v4

    move-wide v3, v2

    const/16 v2, 0x3c

    goto/16 :goto_40

    :cond_56
    move-wide/from16 v6, v94

    invoke-static {v2, v3, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v30

    cmpl-double v30, v30, v13

    if-lez v30, :cond_57

    move/from16 v30, v5

    move-wide/from16 v42, v6

    move/from16 v35, v11

    move-wide v5, v13

    move/from16 v11, v67

    move-wide/from16 v31, v71

    move-object/from16 v13, v73

    goto :goto_44

    :cond_57
    move/from16 v30, v5

    const/16 v31, 0x2a8

    :goto_45
    invoke-static/range {v31 .. v31}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    move-wide/from16 v42, v0

    iget-wide v0, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    cmpl-double v5, v13, v0

    if-lez v5, :cond_5a

    mul-double v2, v13, v60

    div-double v46, v13, v0

    const-wide/high16 v31, 0x4030000000000000L    # 16.0

    cmpg-double v5, v46, v31

    if-gtz v5, :cond_58

    goto :goto_46

    :cond_58
    const-wide v0, 0x406f400000000000L    # 250.0

    cmpg-double v0, v46, v0

    if-gtz v0, :cond_59

    invoke-static/range {v46 .. v47}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    iget-wide v13, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    mul-double/2addr v0, v13

    goto :goto_46

    :cond_59
    mul-double v0, v13, v69

    :goto_46
    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getEvaluations()I

    move-result v19

    move-object v14, v4

    move/from16 v35, v18

    move/from16 v11, v67

    move-wide/from16 v31, v71

    move-object/from16 v13, v73

    move-wide v3, v2

    const/16 v2, 0x3c

    move-object/from16 v98, v12

    move v12, v8

    move-object/from16 v8, v98

    move-wide/from16 v99, v0

    move-wide/from16 v0, v42

    move-wide/from16 v42, v6

    move-wide/from16 v5, v99

    goto/16 :goto_1

    :cond_5a
    const/4 v5, -0x1

    if-ne v11, v5, :cond_5b

    move/from16 v35, v11

    move-wide/from16 v0, v42

    move/from16 v11, v67

    move-wide/from16 v31, v71

    move-wide/from16 v42, v6

    move-wide v5, v13

    move-object/from16 v13, v73

    move-object v14, v4

    move-wide v3, v2

    const/16 v2, 0x168

    goto/16 :goto_40

    :cond_5b
    const/16 v0, 0x2d0

    :goto_47
    invoke-static {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    iget-object v0, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    cmpg-double v0, v0, v22

    if-gtz v0, :cond_5f

    move/from16 v7, v18

    :goto_48
    if-ge v7, v9, :cond_5e

    aget-wide v0, p1, v7

    iget-object v2, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    iget-object v4, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    aget-wide v2, p2, v7

    iget-object v4, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    invoke-virtual {v4, v7, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v0, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    iget-object v2, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_5c

    iget-object v0, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v1, p1, v7

    invoke-virtual {v0, v7, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_5c
    iget-object v0, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    iget-object v2, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_5d

    iget-object v0, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v1, p2, v7

    invoke-virtual {v0, v7, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_5d
    add-int/lit8 v7, v7, 0x1

    goto :goto_48

    :cond_5e
    iget-object v0, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v33

    :cond_5f
    return-wide v33

    :cond_60
    move-wide/from16 v76, v3

    move/from16 v67, v11

    move-object/from16 v73, v13

    move-object v4, v14

    move/from16 v2, v30

    move-wide/from16 v71, v31

    move/from16 v11, v35

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    move-wide v13, v5

    move-wide/from16 v6, v42

    move/from16 v98, v12

    move-object v12, v8

    move/from16 v8, v98

    move/from16 v32, v1

    move/from16 v42, v2

    move/from16 v56, v8

    move v1, v10

    move-object/from16 v81, v15

    move/from16 v16, v18

    move-wide/from16 v51, v38

    move-wide/from16 v58, v40

    move-object/from16 v0, v73

    move-wide/from16 v10, v76

    const/16 v18, 0xd2

    const/16 v31, 0x14

    const/16 v57, 0xe6

    move-object v15, v4

    move-wide/from16 v39, v36

    move-wide/from16 v37, v6

    goto/16 :goto_55

    :cond_61
    move-wide/from16 v76, v3

    move/from16 v67, v11

    move-object/from16 v73, v13

    move-object v4, v14

    move/from16 v2, v30

    move-wide/from16 v71, v31

    move/from16 v11, v35

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v30, 0xd2

    const/16 v31, 0x2a8

    move-wide v13, v5

    move/from16 v98, v12

    move-object v12, v8

    move/from16 v8, v98

    move/from16 v42, v2

    move v0, v7

    move/from16 v56, v8

    const/16 v35, 0x14

    goto/16 :goto_50

    :cond_62
    move-wide/from16 v76, v3

    move/from16 v67, v11

    move-object/from16 v73, v13

    move-object v4, v14

    move/from16 v2, v30

    move-wide/from16 v71, v31

    move/from16 v11, v35

    const/16 v7, 0x28a

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v30, 0xd2

    const/16 v31, 0x2a8

    move/from16 v35, v0

    move-wide v13, v5

    const/4 v5, -0x1

    move/from16 v98, v12

    move-object v12, v8

    move/from16 v8, v98

    invoke-static/range {v35 .. v35}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    iget v0, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    if-eqz v0, :cond_69

    move/from16 v0, v18

    move v1, v0

    :goto_49
    if-ge v0, v9, :cond_65

    move/from16 v3, v18

    :goto_4a
    if-gt v3, v0, :cond_64

    if-ge v3, v0, :cond_63

    iget-object v6, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v42

    iget-object v5, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    iget-object v5, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v56

    mul-double v53, v53, v56

    move/from16 v56, v8

    add-double v7, v42, v53

    invoke-virtual {v6, v0, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_4b

    :cond_63
    move/from16 v56, v8

    :goto_4b
    iget-object v5, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    iget-object v8, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v42

    iget-object v8, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    mul-double v42, v42, v53

    add-double v6, v6, v42

    invoke-virtual {v5, v3, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    move/from16 v8, v56

    const/4 v5, -0x1

    const/16 v7, 0x28a

    goto :goto_4a

    :cond_64
    move/from16 v56, v8

    add-int/lit8 v0, v0, 0x1

    const/4 v5, -0x1

    const/16 v7, 0x28a

    goto :goto_49

    :cond_65
    move/from16 v56, v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getEvaluations()I

    move-result v0

    if-le v0, v10, :cond_68

    move/from16 v0, v18

    :goto_4c
    if-ge v0, v10, :cond_68

    move-wide/from16 v5, v16

    move/from16 v1, v18

    :goto_4d
    if-ge v1, v9, :cond_66

    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v7

    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v42

    mul-double v7, v7, v42

    add-double/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    :cond_66
    iget-object v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    mul-double/2addr v5, v7

    move/from16 v1, v18

    :goto_4e
    if-ge v1, v9, :cond_67

    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    move/from16 v42, v2

    iget-object v2, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v53

    mul-double v53, v53, v5

    add-double v7, v7, v53

    invoke-virtual {v3, v1, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v42

    goto :goto_4e

    :cond_67
    move/from16 v42, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_68
    move/from16 v42, v2

    :goto_4f
    const/16 v0, 0x3c

    goto :goto_50

    :cond_69
    move/from16 v42, v2

    move/from16 v56, v8

    goto :goto_4f

    :goto_50
    invoke-static {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v5, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    new-instance v6, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v6, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    new-instance v7, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v7, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v76

    move/from16 v43, v10

    move/from16 v53, v11

    move-wide/from16 v10, v76

    move-object/from16 v81, v15

    move-object v15, v4

    move-object v4, v5

    const/16 v54, -0x1

    move-object v5, v6

    move-object v6, v7

    move/from16 v16, v18

    move/from16 v18, v30

    move/from16 v55, v31

    move/from16 v31, v35

    move/from16 v17, v54

    const/16 v30, 0x28a

    const/16 v32, 0x5a

    const/16 v57, 0xe6

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trsbox(DLorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)[D

    move-result-object v0

    aget-wide v1, v0, v16

    aget-wide v3, v0, v62

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    invoke-static {v10, v11, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    mul-double v7, v13, v60

    cmpg-double v0, v5, v7

    if-gez v0, :cond_72

    mul-double v7, v13, v51

    mul-double v48, v7, v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getEvaluations()I

    move-result v0

    add-int/lit8 v7, v19, 0x2

    if-gt v0, v7, :cond_6a

    move-wide v0, v1

    move-wide v3, v10

    move-object v8, v12

    move/from16 v35, v17

    move/from16 v2, v30

    move/from16 v30, v42

    move/from16 v10, v43

    move/from16 v12, v56

    move/from16 v11, v67

    move-wide/from16 v31, v71

    move-wide/from16 v42, v5

    move-wide v5, v13

    move-object v14, v15

    move-object/from16 v13, v73

    move-object/from16 v15, v81

    goto/16 :goto_1

    :cond_6a
    move-wide/from16 v7, v36

    move-wide/from16 v35, v1

    move-wide/from16 v0, v38

    move-wide/from16 v37, v5

    invoke-static {v7, v8, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    move-wide/from16 v51, v0

    move-wide/from16 v0, v40

    invoke-static {v5, v6, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    const-wide/high16 v39, 0x3fc0000000000000L    # 0.125

    mul-double v39, v39, v13

    mul-double v39, v39, v13

    move-wide/from16 v58, v0

    const-wide/16 v0, 0x0

    cmpl-double v2, v3, v0

    if-lez v2, :cond_6b

    mul-double v39, v39, v3

    cmpl-double v2, v5, v39

    if-lez v2, :cond_6b

    move-wide v3, v10

    move-wide v5, v13

    move-object v14, v15

    move/from16 v2, v30

    move-wide/from16 v0, v35

    move/from16 v30, v42

    move/from16 v10, v43

    move-wide/from16 v40, v58

    move/from16 v11, v67

    move-wide/from16 v31, v71

    move-object/from16 v13, v73

    move-object/from16 v15, v81

    move/from16 v35, v17

    move-wide/from16 v42, v37

    move-wide/from16 v38, v51

    move-wide/from16 v36, v7

    move-object v8, v12

    move/from16 v12, v56

    goto/16 :goto_1

    :cond_6b
    div-double/2addr v5, v13

    move/from16 v2, v16

    :goto_51
    if-ge v2, v9, :cond_71

    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v0, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    cmpl-double v0, v3, v0

    if-nez v0, :cond_6c

    move-object/from16 v0, v73

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    goto :goto_52

    :cond_6c
    move-object/from16 v0, v73

    move-wide v3, v5

    :goto_52
    iget-object v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v39

    iget-object v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    cmpl-double v1, v39, v53

    if-nez v1, :cond_6d

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    neg-double v3, v3

    :cond_6d
    cmpg-double v1, v3, v5

    if-gez v1, :cond_6f

    iget-object v1, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    mul-int v18, v2, v2

    add-int v18, v2, v18

    move-wide/from16 v39, v7

    div-int/lit8 v7, v18, 0x2

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    move-wide/from16 v53, v7

    move/from16 v7, v16

    move/from16 v1, v43

    :goto_53
    if-ge v7, v1, :cond_6e

    iget-object v8, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v8, v7, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v62

    iget-object v8, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v64

    mul-double v62, v62, v62

    mul-double v64, v64, v62

    add-double v53, v53, v64

    add-int/lit8 v7, v7, 0x1

    goto :goto_53

    :cond_6e
    mul-double v53, v53, v60

    mul-double v53, v53, v13

    add-double v3, v3, v53

    cmpg-double v3, v3, v5

    if-gez v3, :cond_70

    goto :goto_54

    :cond_6f
    move-wide/from16 v39, v7

    move/from16 v1, v43

    :cond_70
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v73, v0

    move/from16 v43, v1

    move-wide/from16 v7, v39

    const-wide/16 v0, 0x0

    goto :goto_51

    :cond_71
    move-wide/from16 v39, v7

    move/from16 v1, v43

    move-object/from16 v0, v73

    :goto_54
    move-wide v3, v10

    move-object v8, v12

    move-wide v5, v13

    move-object v14, v15

    move/from16 v30, v42

    move/from16 v2, v55

    move/from16 v12, v56

    move/from16 v11, v67

    move-wide/from16 v31, v71

    move-object/from16 v15, v81

    move-object v13, v0

    move v10, v1

    move-wide/from16 v0, v35

    move-wide/from16 v42, v37

    move-wide/from16 v36, v39

    move-wide/from16 v38, v51

    move-wide/from16 v40, v58

    move/from16 v35, v17

    goto/16 :goto_1

    :cond_72
    move-wide/from16 v51, v38

    move-wide/from16 v58, v40

    move-object/from16 v0, v73

    move-wide/from16 v39, v36

    move-wide/from16 v35, v1

    move-wide/from16 v37, v5

    move/from16 v1, v43

    add-int/lit8 v2, v53, 0x1

    move-wide/from16 v63, v35

    move/from16 v35, v2

    :goto_55
    invoke-static/range {v32 .. v32}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v2, v2, v20

    cmpg-double v2, v63, v2

    if-gtz v2, :cond_82

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double v2, v2, v20

    move/from16 v7, v16

    const-wide/16 v5, 0x0

    :goto_56
    const-wide/high16 v53, -0x4020000000000000L    # -0.5

    if-ge v7, v1, :cond_76

    iget-object v4, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v65

    add-double v5, v5, v65

    mul-double v53, v53, v20

    move-wide/from16 v65, v5

    move/from16 v4, v16

    move-wide/from16 v5, v53

    :goto_57
    if-ge v4, v9, :cond_73

    iget-object v8, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v8, v7, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v53

    iget-object v8, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v68

    mul-double v53, v53, v68

    add-double v5, v5, v53

    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    :cond_73
    invoke-virtual {v15, v7, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    mul-double v53, v5, v60

    sub-double v53, v2, v53

    move/from16 v4, v16

    :goto_58
    if-ge v4, v9, :cond_75

    iget-object v8, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v76, v10

    invoke-virtual {v8, v7, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v10

    invoke-virtual {v0, v4, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v8, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v10, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v7, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v10

    mul-double/2addr v10, v5

    move-wide/from16 v68, v5

    iget-object v5, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    mul-double v5, v5, v53

    add-double/2addr v10, v5

    invoke-virtual {v8, v4, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int v10, v1, v4

    move/from16 v5, v16

    :goto_59
    if-gt v5, v4, :cond_74

    iget-object v6, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v6, v10, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v73

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v78

    iget-object v8, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    mul-double v78, v78, v82

    add-double v73, v73, v78

    iget-object v8, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v78

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    mul-double v78, v78, v82

    move-wide/from16 v96, v13

    add-double v13, v73, v78

    invoke-virtual {v6, v10, v5, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v13, v96

    goto :goto_59

    :cond_74
    move-wide/from16 v96, v13

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v5, v68

    move-wide/from16 v10, v76

    goto :goto_58

    :cond_75
    move-wide/from16 v76, v10

    move-wide/from16 v96, v13

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v5, v65

    goto/16 :goto_56

    :cond_76
    move-wide/from16 v76, v10

    move-wide/from16 v96, v13

    move/from16 v7, v16

    move/from16 v10, v67

    :goto_5a
    if-ge v7, v10, :cond_7d

    move/from16 v4, v16

    const-wide/16 v13, 0x0

    const-wide/16 v20, 0x0

    :goto_5b
    if-ge v4, v1, :cond_77

    iget-object v8, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v8, v4, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v65

    add-double v13, v13, v65

    iget-object v8, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v65

    iget-object v11, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v4, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v67

    move/from16 v82, v10

    mul-double v10, v65, v67

    invoke-virtual {v8, v4, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v8, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    add-double v20, v20, v10

    add-int/lit8 v4, v4, 0x1

    move/from16 v10, v82

    goto :goto_5b

    :cond_77
    move/from16 v82, v10

    move/from16 v4, v16

    :goto_5c
    if-ge v4, v9, :cond_7a

    mul-double v10, v2, v13

    mul-double v65, v20, v60

    sub-double v10, v10, v65

    iget-object v8, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v65

    mul-double v10, v10, v65

    move/from16 v8, v16

    :goto_5d
    if-ge v8, v1, :cond_78

    move-wide/from16 v65, v2

    iget-object v2, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    move-wide/from16 v67, v13

    iget-object v13, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v13, v8, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    mul-double/2addr v2, v13

    add-double/2addr v10, v2

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v2, v65

    move-wide/from16 v13, v67

    goto :goto_5d

    :cond_78
    move-wide/from16 v65, v2

    move-wide/from16 v67, v13

    invoke-virtual {v0, v4, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    move/from16 v2, v16

    :goto_5e
    if-ge v2, v1, :cond_79

    iget-object v3, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v2, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    iget-object v8, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v8, v2, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v69

    mul-double v69, v69, v10

    add-double v13, v13, v69

    invoke-virtual {v3, v2, v4, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :cond_79
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v2, v65

    move-wide/from16 v13, v67

    goto :goto_5c

    :cond_7a
    move-wide/from16 v65, v2

    move/from16 v2, v16

    :goto_5f
    if-ge v2, v9, :cond_7c

    add-int v10, v2, v1

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    move/from16 v8, v16

    :goto_60
    if-gt v8, v2, :cond_7b

    iget-object v11, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v10, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    invoke-virtual {v0, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    mul-double v20, v20, v3

    add-double v13, v13, v20

    invoke-virtual {v11, v10, v8, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_60

    :cond_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    :cond_7c
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v2, v65

    move/from16 v10, v82

    goto/16 :goto_5a

    :cond_7d
    move/from16 v82, v10

    move/from16 v2, v16

    move v7, v2

    :goto_61
    if-ge v7, v9, :cond_80

    mul-double v3, v5, v53

    iget-object v8, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    mul-double/2addr v3, v10

    invoke-virtual {v0, v7, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    move/from16 v3, v16

    :goto_62
    if-ge v3, v1, :cond_7e

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    iget-object v4, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    iget-object v4, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v3, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v20

    mul-double v13, v13, v20

    add-double/2addr v10, v13

    invoke-virtual {v0, v7, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v4, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v3, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v10

    iget-object v8, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    sub-double/2addr v10, v13

    invoke-virtual {v4, v3, v7, v10, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    :cond_7e
    move/from16 v3, v16

    :goto_63
    if-gt v3, v7, :cond_7f

    iget-object v4, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    iget-object v8, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    mul-double v13, v13, v20

    add-double/2addr v10, v13

    iget-object v8, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    mul-double v13, v13, v20

    add-double/2addr v10, v13

    invoke-virtual {v4, v2, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v4, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    add-int v10, v1, v3

    add-int v8, v1, v7

    invoke-virtual {v4, v8, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    invoke-virtual {v4, v10, v7, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    :cond_7f
    add-int/lit8 v7, v7, 0x1

    goto :goto_61

    :cond_80
    move/from16 v7, v16

    :goto_64
    if-ge v7, v9, :cond_81

    iget-object v2, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v5, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-virtual {v2, v7, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v2, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v5, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-virtual {v2, v7, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v2, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v5, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-virtual {v2, v7, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v2, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v5, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-virtual {v2, v7, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v2, v12, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_64

    :cond_81
    const-wide/16 v3, 0x0

    move-wide/from16 v20, v3

    goto :goto_65

    :cond_82
    move-wide/from16 v76, v10

    move-wide/from16 v96, v13

    move/from16 v82, v67

    const-wide/16 v3, 0x0

    :goto_65
    if-nez v35, :cond_83

    move-object v13, v0

    move v10, v1

    move-object v8, v12

    move-object v14, v15

    move/from16 v2, v18

    move/from16 v30, v42

    move/from16 v12, v56

    :goto_66
    move-wide/from16 v0, v63

    move-wide/from16 v31, v71

    move-wide/from16 v3, v76

    move-object/from16 v15, v81

    move/from16 v11, v82

    move-wide/from16 v5, v96

    move-wide/from16 v42, v37

    move-wide/from16 v36, v39

    move-wide/from16 v38, v51

    move-wide/from16 v40, v58

    goto/16 :goto_1

    :cond_83
    move-object v13, v0

    move v10, v1

    move-object v8, v12

    move-object v14, v15

    move/from16 v30, v42

    move/from16 v12, v56

    move/from16 v2, v57

    goto :goto_66
.end method

.method private static caller(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object p0, v0, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private prelim([D[D)V
    .locals 43

    move-object/from16 v0, p0

    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v1

    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v3

    iget-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    mul-double/2addr v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v8, v6, v4

    add-int/lit8 v10, v1, 0x1

    const/4 v12, 0x0

    :goto_0
    const-wide/16 v13, 0x0

    if-ge v12, v1, :cond_2

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    invoke-virtual {v15, v12, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_0

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v6, v12, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_1

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v6, v12, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v12, v12, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_2
    mul-int v3, v1, v10

    const/4 v6, 0x2

    div-int/2addr v3, v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v3, :cond_3

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v7, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_5

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v3, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    sub-int v7, v2, v10

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v7, :cond_4

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v15, v3, v12, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    const-wide/high16 v18, 0x7ff8000000000000L    # Double.NaN

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getEvaluations()I

    move-result v12

    sub-int v15, v12, v1

    add-int/lit8 v6, v12, -0x1

    add-int/lit8 v11, v15, -0x1

    mul-int/lit8 v13, v1, 0x2

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    const/4 v14, 0x1

    if-gt v12, v13, :cond_b

    if-lt v12, v14, :cond_7

    if-gt v12, v1, :cond_7

    move/from16 v26, v15

    iget-wide v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    move/from16 v28, v3

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v29

    const-wide/16 v22, 0x0

    cmpl-double v3, v29, v22

    if-nez v3, :cond_6

    neg-double v14, v14

    :cond_6
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v12, v6, v14, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    move-wide/from16 v31, v8

    move/from16 v3, v28

    :goto_7
    move-wide/from16 v28, v4

    const-wide/16 v4, 0x0

    goto/16 :goto_9

    :cond_7
    move/from16 v28, v3

    move/from16 v26, v15

    if-le v12, v1, :cond_a

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v14, v26

    invoke-virtual {v3, v14, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v29

    move v3, v7

    move-wide/from16 v31, v8

    iget-wide v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v7, v7

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v33

    const-wide/16 v22, 0x0

    cmpl-double v9, v33, v22

    if-nez v9, :cond_8

    iget-wide v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    mul-double v7, v7, v24

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v26, v14

    invoke-virtual {v9, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    invoke-static {v7, v8, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v7

    goto :goto_8

    :cond_8
    move/from16 v26, v14

    :goto_8
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    cmpl-double v9, v14, v22

    if-nez v9, :cond_9

    const-wide/high16 v7, -0x4000000000000000L    # -2.0

    iget-wide v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    mul-double/2addr v14, v7

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    invoke-static {v14, v15, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    :cond_9
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v9, v12, v11, v7, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    move-wide/from16 v14, v29

    move-wide/from16 v41, v7

    move v7, v3

    move/from16 v3, v28

    move-wide/from16 v28, v4

    move-wide/from16 v4, v41

    goto :goto_9

    :cond_a
    move v3, v7

    move-wide/from16 v31, v8

    move/from16 v3, v28

    const-wide/16 v14, 0x0

    goto :goto_7

    :cond_b
    move-wide/from16 v31, v8

    move/from16 v26, v15

    sub-int v3, v12, v10

    div-int/2addr v3, v1

    mul-int v7, v3, v1

    sub-int v7, v12, v7

    sub-int/2addr v7, v1

    add-int/2addr v3, v7

    if-le v3, v1, :cond_c

    sub-int/2addr v3, v1

    move/from16 v41, v7

    move v7, v3

    move/from16 v3, v41

    :cond_c
    add-int/lit8 v8, v3, -0x1

    add-int/lit8 v9, v7, -0x1

    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v28, v4

    invoke-virtual {v14, v3, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-virtual {v14, v12, v8, v4, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v7, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    invoke-virtual {v4, v12, v9, v14, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    const-wide/16 v4, 0x0

    const-wide/16 v14, 0x0

    :goto_9
    const/4 v8, 0x0

    :goto_a
    if-ge v8, v1, :cond_f

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v30, v3

    move-wide/from16 v33, v4

    aget-wide v3, p1, v8

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v35

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v12, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v37

    move v5, v1

    move/from16 v39, v2

    add-double v1, v35, v37

    invoke-static {v3, v4, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    aget-wide v3, p2, v8

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    invoke-virtual {v9, v8, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v12, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v1

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_d

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v2, p1, v8

    invoke-virtual {v1, v8, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_d
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v12, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v1

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_e

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v2, p2, v8

    invoke-virtual {v1, v8, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_e
    add-int/lit8 v8, v8, 0x1

    move v1, v5

    move/from16 v3, v30

    move-wide/from16 v4, v33

    move/from16 v2, v39

    goto :goto_a

    :cond_f
    move/from16 v39, v2

    move/from16 v30, v3

    move-wide/from16 v33, v4

    move v5, v1

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->computeObjectiveValue([D)D

    move-result-wide v1

    iget-boolean v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->isMinimize:Z

    if-eqz v3, :cond_10

    goto :goto_b

    :cond_10
    neg-double v1, v1

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getEvaluations()I

    move-result v3

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v12, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11

    const/4 v4, 0x0

    iput v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    move-wide/from16 v18, v1

    goto :goto_c

    :cond_11
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v4, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    cmpg-double v4, v1, v8

    if-gez v4, :cond_12

    iput v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    :cond_12
    :goto_c
    add-int/lit8 v13, v13, 0x1

    if-gt v3, v13, :cond_19

    const-wide/high16 v8, -0x4020000000000000L    # -0.5

    const/4 v4, 0x2

    if-lt v3, v4, :cond_14

    if-gt v3, v10, :cond_14

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    sub-double v1, v1, v18

    div-double/2addr v1, v14

    invoke-virtual {v4, v6, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/2addr v3, v5

    move/from16 v4, v39

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    if-ge v4, v3, :cond_13

    div-double v1, v16, v14

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    neg-double v13, v1

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v6, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v12, v6, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    add-int v2, v4, v6

    mul-double v8, v8, v28

    invoke-virtual {v1, v2, v6, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    :cond_13
    move/from16 v39, v4

    move v13, v5

    move/from16 v14, v30

    move-wide/from16 v5, v31

    const/4 v4, 0x0

    const/4 v9, 0x2

    const-wide/16 v22, 0x0

    goto/16 :goto_10

    :cond_14
    move/from16 v4, v39

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v6, v5, 0x2

    if-lt v3, v6, :cond_18

    add-int/lit8 v3, v26, 0x1

    mul-int v3, v3, v26

    const/4 v6, 0x2

    div-int/2addr v3, v6

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    sub-double v35, v1, v18

    div-double v35, v35, v33

    sub-double v37, v33, v14

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v39

    sub-double v39, v35, v39

    mul-double v39, v39, v24

    div-double v8, v39, v37

    invoke-virtual {v6, v3, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    mul-double v8, v8, v33

    mul-double v35, v35, v14

    sub-double v8, v8, v35

    div-double v8, v8, v37

    invoke-virtual {v3, v11, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    mul-double v8, v14, v33

    const-wide/16 v22, 0x0

    cmpg-double v3, v8, v22

    if-gez v3, :cond_17

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v6, v26

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v26

    cmpg-double v3, v1, v26

    if-gez v3, :cond_16

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v39, v4

    move v13, v5

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    invoke-virtual {v3, v12, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v6, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    if-ne v1, v12, :cond_15

    iput v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    :cond_15
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v2, v33

    invoke-virtual {v1, v6, v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v12, v11, v14, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    goto :goto_e

    :cond_16
    move/from16 v39, v4

    move v13, v5

    :goto_d
    move-wide/from16 v2, v33

    goto :goto_e

    :cond_17
    move/from16 v39, v4

    move v13, v5

    move/from16 v6, v26

    goto :goto_d

    :goto_e
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    add-double/2addr v14, v2

    neg-double v2, v14

    div-double/2addr v2, v8

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v6, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    const-wide/high16 v14, -0x4020000000000000L    # -0.5

    div-double v2, v14, v2

    invoke-virtual {v1, v12, v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v4, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    neg-double v2, v2

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v12, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    sub-double/2addr v2, v14

    invoke-virtual {v1, v6, v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v2, v8

    invoke-virtual {v1, v4, v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double v2, v2, v28

    invoke-virtual {v1, v12, v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v4, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    neg-double v2, v2

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v12, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v8

    sub-double/2addr v2, v8

    invoke-virtual {v1, v6, v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    :goto_f
    move/from16 v14, v30

    move-wide/from16 v5, v31

    const/4 v9, 0x2

    goto :goto_10

    :cond_18
    move/from16 v39, v4

    move v13, v5

    const/4 v4, 0x0

    const-wide/16 v22, 0x0

    goto :goto_f

    :cond_19
    move v13, v5

    const/4 v4, 0x0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/16 v22, 0x0

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v5, v31

    invoke-virtual {v3, v4, v11, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v12, v11, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    neg-double v8, v5

    move/from16 v14, v30

    invoke-virtual {v3, v14, v11, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v7, v11, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v3, v14, -0x1

    mul-int v8, v14, v3

    const/4 v9, 0x2

    div-int/2addr v8, v9

    add-int/2addr v8, v7

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v12, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v20

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    add-int/lit8 v11, v7, -0x1

    invoke-virtual {v3, v12, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v11

    mul-double v20, v20, v11

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    sub-double v11, v18, v11

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v24

    sub-double v11, v11, v24

    add-double/2addr v11, v1

    div-double v11, v11, v20

    invoke-virtual {v3, v8, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :goto_10
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getEvaluations()I

    move-result v1

    move/from16 v2, v39

    if-lt v1, v2, :cond_1a

    return-void

    :cond_1a
    move v1, v13

    move v3, v14

    move-wide/from16 v13, v22

    move-wide/from16 v41, v5

    move v6, v9

    move-wide/from16 v8, v41

    move-wide/from16 v4, v28

    goto/16 :goto_6
.end method

.method private static printMethod()V
    .locals 0

    return-void
.end method

.method private static printState(I)V
    .locals 0

    return-void
.end method

.method private setup([D[D)V
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getStartPoint()[D

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_3

    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v1, 0x1

    mul-int v6, v4, v5

    div-int/2addr v6, v3

    filled-new-array {v4, v6}, [I

    move-result-object v4

    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    const/4 v7, 0x0

    aget v8, v4, v7

    if-lt v6, v8, :cond_2

    aget v8, v4, v2

    if-gt v6, v8, :cond_2

    new-array v4, v1, [D

    iput-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->boundDifference:[D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    iget-wide v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    mul-double/2addr v10, v8

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_0
    if-ge v7, v1, :cond_0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->boundDifference:[D

    aget-wide v12, p2, v7

    aget-wide v14, p1, v7

    sub-double/2addr v12, v14

    aput-wide v12, v4, v7

    invoke-static {v8, v9, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    cmpg-double v4, v8, v10

    if-gez v4, :cond_1

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v8, v6

    iput-wide v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    :cond_1
    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    add-int/2addr v6, v1

    invoke-direct {v4, v6, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    sub-int v7, v6, v1

    sub-int/2addr v7, v2

    invoke-direct {v4, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-direct {v2, v4, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-direct {v2, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-direct {v2, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    add-int/2addr v4, v1

    invoke-direct {v2, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    mul-int/2addr v1, v5

    div-int/2addr v1, v3

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    return-void

    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_INTERPOLATION_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget v6, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v5, v6, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    :cond_3
    new-instance v4, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v1, v3, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v4
.end method

.method private trsbox(DLorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)[D
    .locals 74

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    const/4 v6, 0x1

    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v7

    iget v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    const-wide/16 v14, 0x0

    if-ge v10, v7, :cond_3

    invoke-virtual {v2, v10, v14, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v18

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    cmpg-double v9, v18, v20

    if-gtz v9, :cond_0

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    cmpl-double v9, v16, v14

    if-ltz v9, :cond_1

    invoke-virtual {v2, v10, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    :cond_0
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v18

    cmpl-double v9, v12, v18

    if-ltz v9, :cond_1

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    cmpg-double v9, v12, v14

    if-gtz v9, :cond_1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v10, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_1
    :goto_1
    invoke-virtual {v2, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    cmpl-double v9, v12, v14

    if-eqz v9, :cond_2

    add-int/2addr v11, v6

    :cond_2
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v10, v14, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    invoke-virtual {v1, v10, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/2addr v10, v6

    goto :goto_0

    :cond_3
    mul-double v9, p1, p1

    const/16 v12, 0x14

    move v13, v12

    move-wide/from16 v20, v14

    move-wide/from16 v23, v20

    move-wide/from16 v25, v23

    move-wide/from16 v27, v25

    move-wide/from16 v29, v27

    move-wide/from16 v31, v29

    move-wide/from16 v33, v31

    move-wide/from16 v38, v33

    move-wide/from16 v40, v38

    move-wide/from16 v42, v40

    move-wide/from16 v44, v42

    move-wide/from16 v47, v44

    move-wide/from16 v50, v47

    const/16 v22, 0x0

    const/16 v35, 0x0

    const-wide/high16 v36, -0x4010000000000000L    # -1.0

    const/16 v46, -0x1

    const/16 v49, 0x0

    :goto_2
    const-wide v52, 0x3f1a36e2eb1c432dL    # 1.0E-4

    const/16 v6, 0x1e

    const/16 v15, 0xbe

    if-eq v13, v12, :cond_42

    if-eq v13, v6, :cond_41

    const-wide v56, 0x3f847ae147ae147bL    # 0.01

    const/16 v6, 0x64

    const/16 v12, 0x5a

    const/16 v14, 0x32

    const-wide/high16 v59, 0x3fe0000000000000L    # 0.5

    if-eq v13, v14, :cond_2a

    if-eq v13, v12, :cond_29

    if-eq v13, v6, :cond_28

    const/16 v12, 0x78

    if-eq v13, v12, :cond_1f

    const/16 v6, 0x96

    if-eq v13, v6, :cond_f

    if-eq v13, v15, :cond_e

    const/16 v14, 0xd2

    if-ne v13, v14, :cond_d

    invoke-static {v14}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    if-ge v13, v7, :cond_6

    move/from16 v58, v7

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v13, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v6, 0x0

    :goto_4
    if-gt v6, v13, :cond_5

    if-ge v6, v13, :cond_4

    invoke-virtual {v4, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v52

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v56

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v59

    mul-double v56, v56, v59

    move-wide/from16 v61, v9

    add-double v9, v52, v56

    invoke-virtual {v4, v13, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_5

    :cond_4
    move-wide/from16 v61, v9

    :goto_5
    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v52

    invoke-virtual {v3, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v56

    mul-double v52, v52, v56

    add-double v9, v9, v52

    invoke-virtual {v4, v6, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v7, 0x1

    add-int/2addr v14, v7

    add-int/2addr v6, v7

    move-wide/from16 v9, v61

    goto :goto_4

    :cond_5
    move-wide/from16 v61, v9

    const/4 v7, 0x1

    add-int/2addr v13, v7

    move/from16 v7, v58

    const/16 v6, 0x96

    goto :goto_3

    :cond_6
    move/from16 v58, v7

    move-wide/from16 v61, v9

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v6, v3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v6

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/linear/RealVector;->ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v6

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v8, :cond_9

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmpl-double v9, v9, v13

    if-eqz v9, :cond_8

    move/from16 v9, v58

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v9, :cond_7

    invoke-virtual {v4, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v52

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v15, v7, v10}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v56

    mul-double v52, v52, v56

    add-double v13, v13, v52

    invoke-virtual {v4, v10, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v13, 0x1

    add-int/2addr v10, v13

    goto :goto_7

    :cond_7
    :goto_8
    const/4 v13, 0x1

    goto :goto_9

    :cond_8
    move/from16 v9, v58

    goto :goto_8

    :goto_9
    add-int/2addr v7, v13

    move/from16 v58, v9

    goto :goto_6

    :cond_9
    move-wide/from16 v14, v36

    move/from16 v9, v58

    const/4 v13, 0x1

    const-wide/16 v36, 0x0

    cmpl-double v6, v14, v36

    if-eqz v6, :cond_a

    move v7, v9

    move v6, v13

    move-wide/from16 v36, v14

    move-wide/from16 v9, v61

    const/16 v12, 0x14

    const/16 v13, 0x32

    :goto_a
    const-wide/16 v14, 0x0

    goto/16 :goto_2

    :cond_a
    move/from16 v6, v22

    move/from16 v7, v35

    if-le v6, v7, :cond_b

    move/from16 v22, v6

    move/from16 v35, v7

    move v7, v9

    move v6, v13

    move-wide/from16 v36, v14

    move-wide/from16 v9, v61

    const/16 v12, 0x14

    const/16 v13, 0x96

    goto :goto_a

    :cond_b
    const/4 v10, 0x0

    :goto_b
    if-ge v10, v9, :cond_c

    move/from16 v35, v7

    move/from16 v22, v8

    invoke-virtual {v4, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    invoke-virtual {v5, v10, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/2addr v10, v13

    move/from16 v8, v22

    move/from16 v7, v35

    goto :goto_b

    :cond_c
    move/from16 v35, v7

    move/from16 v22, v6

    move v7, v9

    move v6, v13

    move-wide/from16 v36, v14

    move-wide/from16 v9, v61

    const-wide/16 v14, 0x0

    move v13, v12

    :goto_c
    const/16 v12, 0x14

    goto/16 :goto_2

    :cond_d
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIMPLE_MESSAGE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const-string v3, "trsbox"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_e
    move-object v13, v2

    move/from16 v65, v7

    move v2, v15

    move-wide/from16 v67, v36

    goto/16 :goto_14

    :cond_f
    move-wide/from16 v61, v9

    move v10, v6

    move v9, v7

    move/from16 v6, v22

    move/from16 v22, v8

    move-wide/from16 v7, v36

    invoke-static {v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v36, 0x0

    const-wide/16 v52, 0x0

    :goto_d
    if-ge v10, v9, :cond_11

    invoke-virtual {v2, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v63

    const-wide/16 v54, 0x0

    cmpl-double v58, v63, v54

    if-nez v58, :cond_10

    invoke-virtual {v3, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v63

    invoke-virtual {v4, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v65

    mul-double v63, v63, v65

    add-double v13, v13, v63

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v63

    invoke-virtual {v4, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v65

    mul-double v63, v63, v65

    add-double v36, v36, v63

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v63

    invoke-virtual {v5, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v65

    mul-double v63, v63, v65

    add-double v52, v52, v63

    :cond_10
    const/4 v12, 0x1

    add-int/2addr v10, v12

    const/16 v12, 0x78

    goto :goto_d

    :cond_11
    const-wide/high16 v63, 0x4031000000000000L    # 17.0

    mul-double v63, v63, v31

    const-wide v65, 0x4008cccccccccccdL    # 3.1

    move-wide/from16 v67, v7

    move v8, v6

    add-double v6, v63, v65

    double-to-int v6, v6

    const/4 v7, 0x0

    const/4 v10, -0x1

    const-wide/16 v63, 0x0

    const-wide/16 v65, 0x0

    :goto_e
    if-ge v7, v6, :cond_14

    move/from16 v58, v11

    int-to-double v11, v7

    mul-double v11, v11, v31

    int-to-double v2, v6

    div-double v38, v11, v2

    add-double v2, v38, v38

    mul-double v11, v38, v38

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v11, v11, v16

    div-double/2addr v2, v11

    mul-double v11, v38, v52

    sub-double v11, v11, v36

    sub-double v11, v11, v36

    mul-double v11, v11, v38

    add-double/2addr v11, v13

    mul-double v69, v38, v25

    sub-double v69, v69, v44

    mul-double v71, v2, v59

    mul-double v71, v71, v11

    sub-double v69, v69, v71

    mul-double v2, v2, v69

    cmpl-double v11, v2, v63

    if-lez v11, :cond_12

    move-wide/from16 v63, v2

    move v10, v7

    move-wide/from16 v40, v65

    const/4 v11, 0x1

    goto :goto_f

    :cond_12
    const/4 v11, 0x1

    add-int/lit8 v12, v10, 0x1

    if-ne v7, v12, :cond_13

    move-wide/from16 v42, v2

    :cond_13
    :goto_f
    add-int/2addr v7, v11

    move-wide/from16 v65, v2

    move/from16 v11, v58

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    goto :goto_e

    :cond_14
    move/from16 v58, v11

    if-gez v10, :cond_15

    :goto_10
    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move v7, v9

    move v13, v15

    move/from16 v11, v58

    move-wide/from16 v9, v61

    move-wide/from16 v36, v67

    const/4 v6, 0x1

    const/16 v12, 0x14

    :goto_11
    const-wide/16 v14, 0x0

    move/from16 v73, v22

    move/from16 v22, v8

    move/from16 v8, v73

    goto/16 :goto_2

    :cond_15
    if-ge v10, v6, :cond_16

    sub-double v2, v42, v40

    add-double v63, v63, v63

    sub-double v63, v63, v40

    sub-double v63, v63, v42

    div-double v2, v2, v63

    int-to-double v11, v10

    mul-double v2, v2, v59

    add-double/2addr v11, v2

    mul-double v11, v11, v31

    int-to-double v2, v6

    div-double/2addr v11, v2

    move-wide/from16 v38, v11

    :cond_16
    mul-double v2, v38, v38

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double v63, v11, v2

    add-double/2addr v2, v11

    div-double v63, v63, v2

    add-double v11, v38, v38

    div-double/2addr v11, v2

    mul-double v52, v52, v38

    sub-double v52, v52, v36

    sub-double v52, v52, v36

    mul-double v52, v52, v38

    add-double v13, v13, v52

    mul-double v2, v38, v25

    sub-double v2, v2, v44

    mul-double v59, v59, v11

    mul-double v59, v59, v13

    sub-double v2, v2, v59

    mul-double/2addr v2, v11

    const-wide/16 v13, 0x0

    cmpg-double v7, v2, v13

    if-gtz v7, :cond_17

    goto :goto_10

    :cond_17
    const/4 v7, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v25, 0x0

    :goto_12
    if-ge v7, v9, :cond_19

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v36, v63, v16

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v52

    mul-double v36, v36, v52

    add-double v13, v13, v36

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    mul-double v36, v36, v11

    add-double v13, v13, v36

    invoke-virtual {v1, v7, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    move-object/from16 v13, p4

    invoke-virtual {v13, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    const-wide/16 v52, 0x0

    cmpl-double v14, v36, v52

    if-nez v14, :cond_18

    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    mul-double v36, v36, v63

    move-object/from16 v15, p5

    invoke-virtual {v15, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v52

    mul-double v52, v52, v11

    move/from16 v66, v8

    move/from16 v65, v9

    add-double v8, v36, v52

    invoke-virtual {v14, v7, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    mul-double v8, v8, v36

    add-double v25, v25, v8

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    mul-double/2addr v8, v8

    add-double v20, v20, v8

    goto :goto_13

    :cond_18
    move-object/from16 v15, p5

    move/from16 v66, v8

    move/from16 v65, v9

    :goto_13
    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    mul-double v8, v8, v63

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    mul-double v36, v36, v11

    add-double v8, v8, v36

    invoke-virtual {v5, v7, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v8, 0x1

    add-int/2addr v7, v8

    move/from16 v9, v65

    move/from16 v8, v66

    const/16 v15, 0xbe

    goto :goto_12

    :cond_19
    move-object/from16 v13, p4

    move-object/from16 v15, p5

    move/from16 v66, v8

    move/from16 v65, v9

    const/4 v8, 0x1

    add-double v27, v27, v2

    move/from16 v7, v46

    if-ltz v7, :cond_1a

    if-ne v10, v6, :cond_1a

    add-int/lit8 v11, v58, 0x1

    move-wide/from16 v8, v47

    invoke-virtual {v13, v7, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    move/from16 v46, v7

    move-object v2, v13

    move-object v3, v15

    move/from16 v8, v22

    move-wide/from16 v9, v61

    move/from16 v7, v65

    move/from16 v22, v66

    move-wide/from16 v36, v67

    const/4 v6, 0x1

    const/16 v12, 0x14

    const/16 v13, 0x64

    goto/16 :goto_a

    :cond_1a
    move-wide/from16 v8, v47

    mul-double v56, v56, v27

    cmpl-double v2, v2, v56

    if-lez v2, :cond_1b

    move/from16 v46, v7

    move-wide/from16 v47, v8

    move-object v2, v13

    move-object v3, v15

    move/from16 v8, v22

    move/from16 v11, v58

    move-wide/from16 v9, v61

    move/from16 v7, v65

    move/from16 v22, v66

    move-wide/from16 v36, v67

    const/4 v6, 0x1

    const/16 v12, 0x14

    const/16 v13, 0x78

    goto/16 :goto_a

    :cond_1b
    const/16 v2, 0xbe

    :goto_14
    invoke-static {v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    move/from16 v3, v65

    const/4 v1, 0x0

    const-wide/16 v14, 0x0

    :goto_15
    if-ge v1, v3, :cond_1e

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    add-double/2addr v4, v6

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    invoke-virtual {v13, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v2, v4, v6

    if-nez v2, :cond_1c

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_1c
    invoke-virtual {v13, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v4, v6

    if-nez v2, :cond_1d

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_1d
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {v2, v1, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    mul-double/2addr v4, v4

    add-double/2addr v14, v4

    const/4 v6, 0x1

    add-int/2addr v1, v6

    goto :goto_15

    :cond_1e
    const/4 v6, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v10, 0x0

    aput-wide v14, v1, v10

    aput-wide v67, v1, v6

    return-object v1

    :cond_1f
    move-object v13, v2

    move-wide/from16 v61, v9

    move/from16 v58, v11

    move v11, v12

    move v2, v15

    move/from16 v66, v22

    move-wide/from16 v67, v36

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/16 v14, 0xd2

    move-object v15, v3

    move v3, v7

    move/from16 v22, v8

    move/from16 v7, v46

    move-wide/from16 v8, v47

    invoke-static {v11}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    add-int/lit8 v11, v66, 0x1

    mul-double v36, v20, v23

    mul-double v46, v25, v25

    sub-double v36, v36, v46

    mul-double v52, v52, v27

    mul-double v52, v52, v27

    cmpg-double v6, v36, v52

    if-gtz v6, :cond_20

    move/from16 v46, v7

    move-wide/from16 v47, v8

    move/from16 v8, v22

    move-wide/from16 v9, v61

    move-wide/from16 v36, v67

    const/4 v6, 0x1

    const/16 v12, 0x14

    move v7, v3

    move/from16 v22, v11

    move-object v3, v15

    move/from16 v11, v58

    const-wide/16 v14, 0x0

    move-object/from16 v73, v13

    move v13, v2

    :goto_16
    move-object/from16 v2, v73

    goto/16 :goto_2

    :cond_20
    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    move v2, v10

    :goto_17
    if-ge v2, v3, :cond_22

    invoke-virtual {v13, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v31

    move/from16 p2, v11

    const-wide/16 v10, 0x0

    cmpl-double v12, v31, v10

    if-nez v12, :cond_21

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v31

    mul-double v31, v31, v25

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    mul-double v36, v36, v23

    sub-double v31, v31, v36

    div-double v10, v31, v6

    invoke-virtual {v15, v2, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const-wide/16 v10, 0x0

    :goto_18
    const/4 v12, 0x1

    goto :goto_19

    :cond_21
    invoke-virtual {v15, v2, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_18

    :goto_19
    add-int/2addr v2, v12

    move/from16 v11, p2

    const/4 v10, 0x0

    goto :goto_17

    :cond_22
    move/from16 p2, v11

    const-wide/16 v10, 0x0

    neg-double v6, v6

    move-wide/from16 v47, v8

    const/4 v2, 0x0

    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    const/16 v46, -0x1

    :goto_1a
    if-ge v2, v3, :cond_27

    invoke-virtual {v13, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    cmpl-double v8, v8, v10

    if-nez v8, :cond_26

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    add-double/2addr v8, v10

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    sub-double/2addr v8, v10

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    sub-double v10, v10, v36

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    sub-double v10, v10, v36

    const-wide/16 v36, 0x0

    cmpg-double v12, v8, v36

    if-gtz v12, :cond_23

    const/4 v12, 0x1

    add-int/lit8 v11, v58, 0x1

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-virtual {v13, v2, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto/16 :goto_1c

    :cond_23
    const/4 v12, 0x1

    cmpg-double v44, v10, v36

    if-gtz v44, :cond_24

    add-int/lit8 v11, v58, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v13, v2, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto/16 :goto_1c

    :cond_24
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    invoke-virtual {v15, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    mul-double v36, v36, v36

    mul-double v44, v44, v44

    add-double v36, v36, v44

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v52

    sub-double v44, v44, v52

    mul-double v44, v44, v44

    sub-double v44, v36, v44

    const-wide/16 v52, 0x0

    cmpl-double v12, v44, v52

    if-lez v12, :cond_25

    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v44

    invoke-virtual {v15, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v52

    sub-double v44, v44, v52

    mul-double v52, v31, v44

    cmpl-double v12, v52, v8

    if-lez v12, :cond_25

    div-double v31, v8, v44

    move/from16 v46, v2

    const-wide/high16 v47, -0x4010000000000000L    # -1.0

    :cond_25
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    sub-double v8, v8, v44

    mul-double/2addr v8, v8

    sub-double v36, v36, v8

    const-wide/16 v8, 0x0

    cmpl-double v12, v36, v8

    if-lez v12, :cond_26

    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    invoke-virtual {v15, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    add-double v8, v8, v36

    mul-double v36, v31, v8

    cmpl-double v12, v36, v10

    if-lez v12, :cond_26

    div-double/2addr v10, v8

    move/from16 v46, v2

    move-wide/from16 v31, v10

    const/4 v8, 0x1

    const-wide/high16 v47, 0x3ff0000000000000L    # 1.0

    goto :goto_1b

    :cond_26
    const/4 v8, 0x1

    :goto_1b
    add-int/2addr v2, v8

    const-wide/16 v10, 0x0

    goto/16 :goto_1a

    :cond_27
    move/from16 v11, v58

    :goto_1c
    move-wide/from16 v44, v6

    move-object v2, v13

    move v13, v14

    move/from16 v8, v22

    move-wide/from16 v9, v61

    move-wide/from16 v36, v67

    const/4 v6, 0x1

    const/16 v12, 0x14

    move/from16 v22, p2

    move v7, v3

    move-object v3, v15

    goto/16 :goto_a

    :cond_28
    move-object v13, v2

    move-wide/from16 v61, v9

    move/from16 v58, v11

    move v2, v15

    move/from16 v66, v22

    move-wide/from16 v67, v36

    const/16 v14, 0xd2

    move-object v15, v3

    move v3, v7

    move/from16 v22, v8

    move/from16 v7, v46

    move v2, v7

    move-object v12, v13

    move-wide/from16 v63, v47

    move/from16 v8, v66

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move v7, v6

    move/from16 v6, v49

    goto/16 :goto_2b

    :cond_29
    move-object v13, v2

    move-wide/from16 v61, v9

    move/from16 v58, v11

    move v2, v15

    move/from16 v66, v22

    const/16 v14, 0xd2

    move-object v15, v3

    move v3, v7

    move/from16 v22, v8

    move/from16 v7, v46

    move v2, v7

    move v7, v12

    move-object v12, v13

    move-wide/from16 v63, v47

    move/from16 v6, v49

    move/from16 v8, v66

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_2a

    :cond_2a
    move-object v13, v2

    move-wide/from16 v61, v9

    move/from16 v58, v11

    move v6, v14

    move v2, v15

    move/from16 v66, v22

    move-wide/from16 v67, v36

    const/16 v14, 0xd2

    move-object v15, v3

    move v3, v7

    move/from16 v22, v8

    move/from16 v7, v46

    move-wide/from16 v8, v47

    invoke-static {v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    move-wide/from16 v46, v61

    const/4 v6, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v36, 0x0

    :goto_1d
    if-ge v6, v3, :cond_2c

    invoke-virtual {v13, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v52

    const-wide/16 v54, 0x0

    cmpl-double v48, v52, v54

    if-nez v48, :cond_2b

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v52

    mul-double v52, v52, v52

    sub-double v46, v46, v52

    invoke-virtual {v15, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v52

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v63

    mul-double v52, v52, v63

    add-double v10, v10, v52

    invoke-virtual {v15, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v52

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v63

    mul-double v52, v52, v63

    add-double v36, v36, v52

    :cond_2b
    const/4 v2, 0x1

    add-int/2addr v6, v2

    const/16 v2, 0xbe

    goto :goto_1d

    :cond_2c
    const-wide/16 v52, 0x0

    cmpg-double v2, v46, v52

    if-gtz v2, :cond_2d

    move/from16 v46, v7

    move-wide/from16 v47, v8

    move-object v2, v13

    move/from16 v8, v22

    move/from16 v11, v58

    move-wide/from16 v9, v61

    move/from16 v22, v66

    move-wide/from16 v36, v67

    const/4 v6, 0x1

    move v7, v3

    move v13, v12

    move-object v3, v15

    move-wide/from16 v14, v52

    goto/16 :goto_c

    :cond_2d
    mul-double v6, v29, v46

    mul-double v54, v10, v10

    add-double v6, v6, v54

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    cmpg-double v2, v10, v52

    if-gez v2, :cond_2e

    sub-double/2addr v6, v10

    div-double v6, v6, v29

    goto :goto_1e

    :cond_2e
    add-double/2addr v6, v10

    div-double v6, v46, v6

    :goto_1e
    cmpl-double v2, v36, v52

    if-lez v2, :cond_2f

    div-double v10, v20, v36

    invoke-static {v6, v7, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v10

    goto :goto_1f

    :cond_2f
    move-wide v10, v6

    :goto_1f
    const/4 v2, -0x1

    const/4 v14, 0x0

    :goto_20
    if-ge v14, v3, :cond_32

    invoke-virtual {v15, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v47

    cmpl-double v47, v47, v52

    if-eqz v47, :cond_31

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v54

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v63

    add-double v63, v54, v63

    invoke-virtual {v15, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v54

    cmpl-double v12, v54, v52

    if-lez v12, :cond_30

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v52

    sub-double v52, v52, v63

    invoke-virtual {v15, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v63

    :goto_21
    div-double v52, v52, v63

    goto :goto_22

    :cond_30
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v52

    sub-double v52, v52, v63

    invoke-virtual {v15, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v63

    goto :goto_21

    :goto_22
    cmpg-double v12, v52, v10

    if-gez v12, :cond_31

    move v2, v14

    move-wide/from16 v10, v52

    :cond_31
    const/4 v12, 0x1

    add-int/2addr v14, v12

    const/16 v12, 0x5a

    const-wide/16 v52, 0x0

    goto :goto_20

    :cond_32
    const/4 v12, 0x1

    cmpl-double v14, v10, v52

    if-lez v14, :cond_37

    add-int/lit8 v14, v66, 0x1

    move-wide/from16 v63, v8

    div-double v8, v36, v29

    const/4 v12, -0x1

    if-ne v2, v12, :cond_33

    cmpl-double v48, v8, v52

    if-lez v48, :cond_33

    move-wide/from16 v12, v67

    invoke-static {v12, v13, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v12

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    cmpl-double v48, v12, v18

    if-nez v48, :cond_34

    move-wide v12, v8

    goto :goto_23

    :cond_33
    move-wide/from16 v12, v67

    :cond_34
    :goto_23
    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    :goto_24
    if-ge v5, v3, :cond_36

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v50

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v52

    mul-double v52, v52, v10

    move-wide/from16 v65, v12

    add-double v12, v50, v52

    invoke-virtual {v1, v5, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    move-object/from16 v12, p4

    invoke-virtual {v12, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v50

    const-wide/16 v52, 0x0

    cmpl-double v13, v50, v52

    if-nez v13, :cond_35

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v50

    mul-double v50, v50, v50

    add-double v8, v8, v50

    :cond_35
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v50

    invoke-virtual {v15, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v52

    mul-double v52, v52, v10

    move-wide/from16 v67, v8

    add-double v8, v50, v52

    invoke-virtual {v13, v5, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v13, 0x1

    add-int/2addr v5, v13

    move-wide/from16 v12, v65

    move-wide/from16 v8, v67

    goto :goto_24

    :cond_36
    move-wide/from16 v65, v12

    const/4 v13, 0x1

    move-object/from16 v12, p4

    mul-double v59, v59, v10

    mul-double v59, v59, v36

    sub-double v36, v20, v59

    move v5, v14

    mul-double v13, v10, v36

    move/from16 v36, v5

    const-wide/16 v4, 0x0

    invoke-static {v13, v14, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v54

    add-double v27, v27, v54

    move-wide/from16 v50, v20

    move-wide/from16 v13, v54

    move-wide/from16 v20, v8

    move/from16 v8, v36

    move-wide/from16 v36, v65

    goto :goto_25

    :cond_37
    move-wide/from16 v63, v8

    move-object v12, v13

    move-wide/from16 v4, v52

    move-wide v13, v4

    move/from16 v8, v66

    move-wide/from16 v36, v67

    :goto_25
    if-ltz v2, :cond_3a

    const/4 v9, 0x1

    add-int/lit8 v11, v58, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v12, v2, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    invoke-virtual {v15, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    cmpg-double v9, v9, v4

    if-gez v9, :cond_38

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v12, v2, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_26

    :cond_38
    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    :goto_26
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    mul-double/2addr v13, v13

    sub-double v13, v61, v13

    cmpg-double v16, v13, v4

    if-gtz v16, :cond_39

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v46, v2

    move v7, v3

    move-object v2, v12

    move-wide v9, v13

    move-object v3, v15

    :goto_27
    move-wide/from16 v47, v63

    const/4 v6, 0x1

    const/16 v12, 0x14

    const/16 v13, 0xbe

    goto/16 :goto_11

    :cond_39
    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v46, v2

    move v7, v3

    move-object v2, v12

    move-wide v9, v13

    move-object v3, v15

    move-wide/from16 v47, v63

    const/4 v6, 0x1

    const/16 v12, 0x14

    const/16 v13, 0x14

    goto/16 :goto_11

    :cond_3a
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v10, v6

    if-gez v6, :cond_3d

    move/from16 v6, v49

    if-ne v8, v6, :cond_3b

    :goto_28
    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v46, v2

    move v7, v3

    move/from16 v49, v6

    move-object v2, v12

    move-object v3, v15

    move/from16 v11, v58

    :goto_29
    move-wide/from16 v9, v61

    goto :goto_27

    :cond_3b
    mul-double v56, v56, v27

    cmpg-double v7, v13, v56

    if-gtz v7, :cond_3c

    goto :goto_28

    :cond_3c
    div-double v33, v20, v50

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v46, v2

    move v7, v3

    move/from16 v49, v6

    move-object v2, v12

    move-object v3, v15

    move/from16 v11, v58

    move-wide/from16 v9, v61

    move-wide/from16 v47, v63

    const/4 v6, 0x1

    const/16 v12, 0x14

    const/16 v13, 0x1e

    goto/16 :goto_11

    :cond_3d
    move/from16 v6, v49

    const/16 v7, 0x5a

    :goto_2a
    invoke-static {v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/16 v7, 0x64

    const-wide/16 v36, 0x0

    :goto_2b
    invoke-static {v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v7, 0x1

    add-int/lit8 v9, v3, -0x1

    move/from16 v11, v58

    if-lt v11, v9, :cond_3e

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v46, v2

    move v7, v3

    move/from16 v49, v6

    move-object v2, v12

    move-object v3, v15

    goto :goto_29

    :cond_3e
    const/4 v7, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    :goto_2c
    if-ge v7, v3, :cond_40

    invoke-virtual {v12, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmpl-double v9, v9, v13

    if-nez v9, :cond_3f

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    mul-double/2addr v9, v9

    add-double v23, v23, v9

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    mul-double/2addr v9, v13

    add-double v25, v25, v9

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    mul-double/2addr v9, v9

    add-double v20, v20, v9

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    invoke-virtual {v15, v7, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :goto_2d
    const/4 v9, 0x1

    goto :goto_2e

    :cond_3f
    const-wide/16 v9, 0x0

    invoke-virtual {v15, v7, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_2d

    :goto_2e
    add-int/2addr v7, v9

    goto :goto_2c

    :cond_40
    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v46, v2

    move v7, v3

    move/from16 v49, v6

    move/from16 v35, v8

    move-object v2, v12

    move-object v3, v15

    move-wide/from16 v9, v61

    move-wide/from16 v47, v63

    const/4 v6, 0x1

    const/16 v12, 0x14

    const/16 v13, 0xd2

    const-wide/16 v14, 0x0

    move/from16 v8, v22

    move/from16 v22, v35

    goto/16 :goto_2

    :cond_41
    move-object v12, v2

    move-object v15, v3

    move v3, v7

    move-wide/from16 v61, v9

    move/from16 v66, v22

    move-wide/from16 v67, v36

    move/from16 v7, v46

    move-wide/from16 v63, v47

    move/from16 v6, v49

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move/from16 v22, v8

    const/16 v2, 0x14

    const/16 v8, 0x1e

    goto :goto_2f

    :cond_42
    move-object v15, v3

    move v3, v7

    move-wide/from16 v61, v9

    move/from16 v66, v22

    move-wide/from16 v67, v36

    move/from16 v7, v46

    move-wide/from16 v63, v47

    move/from16 v6, v49

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move/from16 v22, v8

    move/from16 v73, v12

    move-object v12, v2

    move/from16 v2, v73

    invoke-static {v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/16 v8, 0x1e

    const-wide/16 v33, 0x0

    :goto_2f
    invoke-static {v8}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v8, 0x0

    const-wide/16 v29, 0x0

    :goto_30
    if-ge v8, v3, :cond_45

    invoke-virtual {v12, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmpl-double v9, v9, v13

    if-eqz v9, :cond_43

    invoke-virtual {v15, v8, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_31

    :cond_43
    cmpl-double v9, v33, v13

    if-nez v9, :cond_44

    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    neg-double v9, v9

    invoke-virtual {v15, v8, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_31

    :cond_44
    invoke-virtual {v15, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    mul-double v9, v9, v33

    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    sub-double/2addr v9, v13

    invoke-virtual {v15, v8, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :goto_31
    invoke-virtual {v15, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    mul-double/2addr v9, v9

    add-double v29, v29, v9

    const/4 v9, 0x1

    add-int/2addr v8, v9

    goto :goto_30

    :cond_45
    const/4 v9, 0x1

    const-wide/16 v13, 0x0

    cmpl-double v8, v29, v13

    if-nez v8, :cond_46

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v49, v6

    :goto_32
    move/from16 v46, v7

    move v6, v9

    move/from16 v8, v22

    move-wide/from16 v9, v61

    move-wide/from16 v47, v63

    move/from16 v22, v66

    move-wide/from16 v36, v67

    move v7, v3

    move-object v3, v15

    move-wide v14, v13

    const/16 v13, 0xbe

    :goto_33
    move-object/from16 v73, v12

    move v12, v2

    goto/16 :goto_16

    :cond_46
    cmpl-double v8, v33, v13

    if-nez v8, :cond_47

    add-int v6, v66, v3

    sub-int/2addr v6, v11

    move/from16 v49, v6

    move-wide/from16 v20, v29

    goto :goto_34

    :cond_47
    move/from16 v49, v6

    :goto_34
    mul-double v18, v20, v61

    mul-double v52, v52, v27

    mul-double v52, v52, v27

    cmpg-double v6, v18, v52

    if-gtz v6, :cond_48

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    goto :goto_32

    :cond_48
    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v46, v7

    move v6, v9

    move/from16 v8, v22

    move-wide/from16 v9, v61

    move-wide/from16 v47, v63

    move/from16 v22, v66

    move-wide/from16 v36, v67

    move v7, v3

    move-object v3, v15

    move-wide v14, v13

    const/16 v13, 0xd2

    goto :goto_33
.end method

.method private update(DDI)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v2

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    sub-int v4, v3, v2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    new-instance v6, Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int v7, v3, v2

    invoke-direct {v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const/4 v9, 0x0

    move v10, v9

    const-wide/16 v11, 0x0

    :goto_0
    if-ge v10, v3, :cond_1

    move v13, v9

    :goto_1
    if-ge v13, v4, :cond_0

    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v10, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    invoke-static {v11, v12, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v11

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const-wide v13, 0x3bc79ca10c924223L    # 1.0E-20

    mul-double/2addr v11, v13

    :goto_2
    if-ge v5, v4, :cond_3

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v1, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    cmpl-double v10, v13, v11

    if-lez v10, :cond_2

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v1, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v1, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v15

    mul-double/2addr v13, v13

    mul-double/2addr v15, v15

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v1, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v15

    div-double/2addr v15, v13

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v1, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v17

    div-double v17, v17, v13

    move v10, v9

    :goto_3
    if-ge v10, v3, :cond_2

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v13, v10, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    mul-double/2addr v13, v15

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v10, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v7

    mul-double v7, v7, v17

    add-double/2addr v13, v7

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v10, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v21

    mul-double v21, v21, v15

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v8, v10, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v23

    mul-double v23, v23, v17

    move-wide/from16 v25, v11

    sub-double v11, v21, v23

    invoke-virtual {v7, v10, v5, v11, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v10, v9, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v11, v25

    goto :goto_3

    :cond_2
    move-wide/from16 v25, v11

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v1, v5, v10, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v11, v25

    goto :goto_2

    :cond_3
    move v4, v9

    :goto_4
    if-ge v4, v3, :cond_4

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v1, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v7

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v4, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v10

    mul-double/2addr v7, v10

    invoke-virtual {v6, v4, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v11, v13

    invoke-virtual {v10, v1, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    invoke-static/range {p3 .. p4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    div-double v12, v7, v10

    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v1, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    div-double/2addr v14, v10

    move v10, v9

    :goto_5
    if-ge v10, v3, :cond_5

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v10, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v16

    mul-double v16, v16, v12

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v19

    mul-double v19, v19, v14

    move-wide/from16 v21, v12

    sub-double v12, v16, v19

    const/4 v9, 0x0

    invoke-virtual {v11, v10, v9, v12, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v12, v21

    goto :goto_5

    :cond_5
    move v10, v9

    :goto_6
    if-ge v10, v2, :cond_8

    add-int v11, v3, v10

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v1, v10}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v12

    invoke-virtual {v6, v11, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    mul-double/2addr v12, v4

    invoke-virtual {v6, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    mul-double/2addr v14, v7

    sub-double/2addr v12, v14

    div-double v12, v12, p3

    move-wide/from16 v14, p1

    move/from16 v16, v10

    neg-double v9, v14

    invoke-virtual {v6, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v19

    mul-double v9, v9, v19

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v19

    mul-double v19, v19, v7

    sub-double v9, v9, v19

    div-double v9, v9, p3

    const/4 v1, 0x0

    :goto_7
    if-gt v1, v11, :cond_7

    move/from16 v17, v2

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v19, v4

    move/from16 v4, v16

    invoke-virtual {v2, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v21

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v23

    mul-double v23, v23, v12

    add-double v21, v21, v23

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v23

    mul-double v23, v23, v9

    move-object/from16 v16, v6

    add-double v5, v21, v23

    invoke-virtual {v2, v1, v4, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    if-lt v1, v3, :cond_6

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    sub-int v5, v1, v3

    move-wide/from16 v21, v7

    invoke-virtual {v2, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v6

    invoke-virtual {v2, v11, v5, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    goto :goto_8

    :cond_6
    move-wide/from16 v21, v7

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v6, v16

    move/from16 v2, v17

    move-wide/from16 v7, v21

    move/from16 v16, v4

    move-wide/from16 v4, v19

    goto :goto_7

    :cond_7
    move/from16 v17, v2

    move-wide/from16 v19, v4

    move-wide/from16 v21, v7

    move/from16 v4, v16

    move-object/from16 v16, v6

    add-int/lit8 v10, v4, 0x1

    move/from16 v1, p5

    move-wide/from16 v4, v19

    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_8
    return-void
.end method


# virtual methods
.method public bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method public doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 5

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getLowerBound()[D

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getUpperBound()[D

    move-result-object v1

    .line 4
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->setup([D[D)V

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->isMinimize:Z

    .line 6
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getStartPoint()[D

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 7
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bobyqa([D[D)D

    move-result-wide v0

    .line 8
    new-instance v2, Lorg/apache/commons/math3/optim/PointValuePair;

    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v3

    iget-boolean v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->isMinimize:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    neg-double v0, v0

    :goto_1
    invoke-direct {v2, v3, v0, v1}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    return-object v2
.end method
