.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ABS_TOL_UNUSED:D = 4.9E-324

.field private static final REL_TOL_UNUSED:D = 1.0E-15


# instance fields
.field private final bracket:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

.field private final initialBracketingRange:D

.field private final lineOptimizer:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

.field private final mainOptimizer:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;DDD)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    invoke-direct {v0}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->bracket:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->mainOptimizer:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;

    new-instance p1, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;

    new-instance v6, Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;

    invoke-direct {v6, p2, p3, p4, p5}, Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;-><init>(DD)V

    const-wide v2, 0x3cd203af9ee75616L    # 1.0E-15

    const-wide/16 v4, 0x1

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;-><init>(DDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->lineOptimizer:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

    iput-wide p6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->initialBracketingRange:D

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;)Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->mainOptimizer:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;

    return-object p0
.end method


# virtual methods
.method public search([D[D)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    new-instance v10, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch$1;

    move-object/from16 v3, p2

    invoke-direct {v10, v0, v2, v1, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch$1;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;I[D[D)V

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->mainOptimizer:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v1

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->bracket:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    const-wide/16 v6, 0x0

    iget-wide v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->initialBracketingRange:D

    move-object v4, v10

    move-object v5, v1

    invoke-virtual/range {v3 .. v9}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->search(Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;DD)V

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->lineOptimizer:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

    new-instance v3, Lorg/apache/commons/math3/optim/MaxEval;

    const v4, 0x7fffffff

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/optim/MaxEval;-><init>(I)V

    new-instance v4, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;

    invoke-direct {v4, v10}, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;-><init>(Lorg/apache/commons/math3/analysis/UnivariateFunction;)V

    new-instance v5, Lorg/apache/commons/math3/optim/univariate/SearchInterval;

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->bracket:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    invoke-virtual {v6}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->getLo()D

    move-result-wide v12

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->bracket:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    invoke-virtual {v6}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->getHi()D

    move-result-wide v14

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->bracket:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    invoke-virtual {v6}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->getMid()D

    move-result-wide v16

    move-object v11, v5

    invoke-direct/range {v11 .. v17}, Lorg/apache/commons/math3/optim/univariate/SearchInterval;-><init>(DDD)V

    const/4 v6, 0x4

    new-array v6, v6, [Lorg/apache/commons/math3/optim/OptimizationData;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v4, v6, v3

    const/4 v3, 0x2

    aput-object v1, v6, v3

    const/4 v1, 0x3

    aput-object v5, v6, v1

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v1

    return-object v1
.end method
