.class public Lorg/apache/commons/math3/ode/events/EventState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;
    }
.end annotation


# instance fields
.field private final convergence:D

.field private expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

.field private forward:Z

.field private g0:D

.field private g0Positive:Z

.field private final handler:Lorg/apache/commons/math3/ode/events/EventHandler;

.field private increasing:Z

.field private final maxCheckInterval:D

.field private final maxIterationCount:I

.field private nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

.field private pendingEvent:Z

.field private pendingEventTime:D

.field private previousEventTime:D

.field private final solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

.field private t0:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    iput-wide p2, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxCheckInterval:D

    invoke-static {p4, p5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    iput p6, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    iput-object p7, p0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    const/4 p3, 0x1

    iput-boolean p3, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    const/4 p4, 0x0

    iput-boolean p4, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    iput-boolean p3, p0, Lorg/apache/commons/math3/ode/events/EventState;->increasing:Z

    sget-object p1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/commons/math3/ode/events/EventState;)Lorg/apache/commons/math3/ode/events/EventHandler;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    return-object p0
.end method

.method private getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D
    .locals 7

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTotalDimension()I

    move-result v0

    new-array v0, v0, [D

    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    add-int/lit8 v6, v4, 0x1

    invoke-interface {p1, v4}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v4

    invoke-virtual {v5, v4, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public evaluateStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->isForward()Z

    move-result v2

    iput-boolean v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v2

    iget-wide v4, v1, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    sub-double v4, v2, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    iget-wide v8, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v6, v6, v8

    const/4 v7, 0x0

    if-gez v6, :cond_0

    return v7

    :cond_0
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    iget-wide v10, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxCheckInterval:D

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v8

    double-to-int v6, v8

    const/4 v8, 0x1

    invoke-static {v8, v6}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v6

    int-to-double v9, v6

    div-double/2addr v4, v9

    new-instance v14, Lorg/apache/commons/math3/ode/events/EventState$1;

    invoke-direct {v14, v1, v0}, Lorg/apache/commons/math3/ode/events/EventState$1;-><init>(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)V

    iget-wide v9, v1, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    iget-wide v11, v1, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    move v15, v7

    move-wide/from16 v19, v9

    :goto_0
    if-ge v15, v6, :cond_13

    add-int/lit8 v9, v6, -0x1

    if-ne v15, v9, :cond_1

    move-wide v7, v2

    goto :goto_1

    :cond_1
    iget-wide v9, v1, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    add-int/lit8 v13, v15, 0x1

    int-to-double v7, v13

    mul-double/2addr v7, v4

    add-double/2addr v9, v7

    move-wide v7, v9

    :goto_1
    invoke-interface {v0, v7, v8}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    iget-object v9, v1, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object v10

    invoke-interface {v9, v7, v8, v10}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v21

    iget-boolean v9, v1, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    const-wide/16 v23, 0x0

    cmpl-double v10, v21, v23

    if-ltz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    xor-int/2addr v9, v10

    if-eqz v9, :cond_12

    cmpl-double v9, v21, v11

    if-ltz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    iput-boolean v9, v1, Lorg/apache/commons/math3/ode/events/EventState;->increasing:Z

    iget-object v9, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    instance-of v10, v9, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;

    if-eqz v10, :cond_5

    check-cast v9, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;

    iget-boolean v10, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v10, :cond_4

    iget v10, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    sget-object v16, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->RIGHT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object v11, v14

    move-wide/from16 v12, v19

    move-object/from16 v26, v14

    move/from16 v25, v15

    move-wide v14, v7

    invoke-interface/range {v9 .. v16}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v9

    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_13

    :cond_4
    move-object/from16 v26, v14

    move/from16 v25, v15

    iget v10, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    sget-object v16, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->LEFT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object/from16 v11, v26

    move-wide v12, v7

    move-wide/from16 v14, v19

    invoke-interface/range {v9 .. v16}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v9

    :goto_4
    move-wide/from16 v27, v2

    goto :goto_8

    :cond_5
    move-object/from16 v26, v14

    move/from16 v25, v15

    iget-boolean v10, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v10, :cond_6

    iget v10, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    move-object/from16 v11, v26

    move-wide/from16 v12, v19

    move-wide v14, v7

    invoke-interface/range {v9 .. v15}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v9

    :goto_5
    move-wide v12, v9

    goto :goto_6

    :cond_6
    iget v10, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    move-object/from16 v11, v26

    move-wide v12, v7

    move-wide/from16 v14, v19

    invoke-interface/range {v9 .. v15}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v9

    goto :goto_5

    :goto_6
    iget v9, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    iget-object v10, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v10}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->getEvaluations()I

    move-result v10

    sub-int/2addr v9, v10

    new-instance v11, Lorg/apache/commons/math3/analysis/solvers/PegasusSolver;

    iget-object v10, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v10}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v14

    iget-object v10, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    move-wide/from16 v27, v2

    invoke-interface {v10}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v2

    invoke-direct {v11, v14, v15, v2, v3}, Lorg/apache/commons/math3/analysis/solvers/PegasusSolver;-><init>(DD)V

    iget-boolean v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v2, :cond_7

    sget-object v18, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->RIGHT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object/from16 v10, v26

    move-wide/from16 v14, v19

    move-wide/from16 v16, v7

    invoke-static/range {v9 .. v18}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->forceSide(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v2

    :goto_7
    move-wide v9, v2

    goto :goto_8

    :cond_7
    sget-object v18, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->LEFT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object/from16 v10, v26

    move-wide v14, v7

    move-wide/from16 v16, v19

    invoke-static/range {v9 .. v18}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->forceSide(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v2

    goto :goto_7

    :goto_8
    iget-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_f

    sub-double v2, v9, v19

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v11, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v2, v2, v11

    if-gtz v2, :cond_f

    iget-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    sub-double v2, v9, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v11, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v2, v2, v11

    if-gtz v2, :cond_f

    :goto_9
    iget-boolean v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v2, :cond_8

    iget-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    add-double v19, v19, v2

    :goto_a
    move-wide/from16 v2, v19

    move-object/from16 v11, v26

    goto :goto_b

    :cond_8
    iget-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    sub-double v19, v19, v2

    goto :goto_a

    :goto_b
    invoke-interface {v11, v2, v3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v21

    iget-boolean v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    cmpl-double v13, v21, v23

    if-ltz v13, :cond_9

    const/4 v13, 0x1

    goto :goto_c

    :cond_9
    const/4 v13, 0x0

    :goto_c
    xor-int/2addr v12, v13

    if-eqz v12, :cond_c

    iget-boolean v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    cmpl-double v13, v2, v7

    if-ltz v13, :cond_a

    const/4 v13, 0x1

    goto :goto_d

    :cond_a
    const/4 v13, 0x0

    :goto_d
    xor-int/2addr v12, v13

    if-nez v12, :cond_b

    goto :goto_e

    :cond_b
    move-wide/from16 v19, v2

    move-object/from16 v26, v11

    goto :goto_9

    :cond_c
    :goto_e
    iget-boolean v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    cmpl-double v7, v2, v7

    if-ltz v7, :cond_d

    const/4 v7, 0x1

    goto :goto_f

    :cond_d
    const/4 v7, 0x0

    :goto_f
    xor-int/2addr v7, v12

    if-eqz v7, :cond_e

    add-int/lit8 v15, v25, -0x1

    move-wide v7, v2

    goto :goto_10

    :cond_e
    iput-wide v9, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    return v0

    :cond_f
    move-object/from16 v11, v26

    iget-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_11

    iget-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    sub-double/2addr v2, v9

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpl-double v2, v2, v12

    if-lez v2, :cond_10

    goto :goto_11

    :cond_10
    move/from16 v15, v25

    :goto_10
    move-wide/from16 v19, v7

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    :goto_11
    iput-wide v9, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    return v0

    :cond_12
    move-wide/from16 v27, v2

    move-object v11, v14

    move/from16 v25, v15

    goto :goto_10

    :goto_12
    add-int/2addr v15, v2

    move v8, v2

    move-object v14, v11

    move-wide/from16 v11, v21

    move-wide/from16 v2, v27

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_13
    move v0, v7

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    iput-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D
    :try_end_0
    .catch Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_13
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;->getException()Lorg/apache/commons/math3/exception/MaxCountExceededException;

    move-result-object v0

    throw v0
.end method

.method public getConvergence()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    return-wide v0
.end method

.method public getEventHandler()Lorg/apache/commons/math3/ode/events/EventHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    return-object v0
.end method

.method public getEventTime()D
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_0
    return-wide v0
.end method

.method public getMaxCheckInterval()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxCheckInterval:D

    return-wide v0
.end method

.method public getMaxIterationCount()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    return v0
.end method

.method public reinitializeBegin(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    iget-wide v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v0

    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v4}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v6

    add-double/2addr v4, v0

    invoke-interface {p1, v4, v5}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object p1

    invoke-interface {v0, v4, v5, p1}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    return-void
.end method

.method public reset(D[D)Z
    .locals 6

    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    sub-double/2addr v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object v2, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_STATE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/math3/ode/events/EventHandler;->resetState(D[D)V

    :cond_1
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    iget-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-eq p1, v2, :cond_2

    sget-object p2, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_DERIVATIVES:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-ne p1, p2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public setExpandable(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    return-void
.end method

.method public stepAccepted(D[D)V
    .locals 6

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    sub-double/2addr v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_0

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->increasing:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    iget-object v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    iget-boolean v3, p0, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    xor-int/2addr v0, v3

    xor-int/2addr v0, v1

    invoke-interface {v2, p1, p2, p3, v0}, Lorg/apache/commons/math3/ode/events/EventHandler;->eventOccurred(D[DZ)Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    goto :goto_1

    :cond_0
    iget-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    const-wide/16 v2, 0x0

    cmpl-double p1, p1, v2

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    sget-object p1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    :goto_1
    return-void
.end method

.method public stop()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object v1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->STOP:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
