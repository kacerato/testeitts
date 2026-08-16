.class public abstract Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optimization/linear/LinearOptimizer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_MAX_ITERATIONS:I = 0x64


# instance fields
.field private function:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

.field private goal:Lorg/apache/commons/math3/optimization/GoalType;

.field private iterations:I

.field private linearConstraints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/optimization/linear/LinearConstraint;",
            ">;"
        }
    .end annotation
.end field

.field private maxIterations:I

.field private nonNegative:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->setMaxIterations(I)V

    return-void
.end method


# virtual methods
.method public abstract doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation
.end method

.method public getConstraints()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/optimization/linear/LinearConstraint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->linearConstraints:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getFunction()Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->function:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    return-object v0
.end method

.method public getGoalType()Lorg/apache/commons/math3/optimization/GoalType;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->goal:Lorg/apache/commons/math3/optimization/GoalType;

    return-object v0
.end method

.method public getIterations()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->iterations:I

    return v0
.end method

.method public getMaxIterations()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->maxIterations:I

    return v0
.end method

.method public incrementIterationsCounter()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->iterations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->iterations:I

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->maxIterations:I

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->maxIterations:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method public optimize(Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;Ljava/util/Collection;Lorg/apache/commons/math3/optimization/GoalType;Z)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/optimization/linear/LinearConstraint;",
            ">;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "Z)",
            "Lorg/apache/commons/math3/optimization/PointValuePair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->function:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    iput-object p2, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->linearConstraints:Ljava/util/Collection;

    iput-object p3, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->goal:Lorg/apache/commons/math3/optimization/GoalType;

    iput-boolean p4, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->nonNegative:Z

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->iterations:I

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object p1

    return-object p1
.end method

.method public restrictToNonNegative()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->nonNegative:Z

    return v0
.end method

.method public setMaxIterations(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->maxIterations:I

    return-void
.end method
