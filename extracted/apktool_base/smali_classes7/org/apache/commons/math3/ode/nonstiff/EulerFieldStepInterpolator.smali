.class Lorg/apache/commons/math3/ode/nonstiff/EulerFieldStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;Z[[TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-void
.end method


# virtual methods
.method public computeInterpolatedStateAndDerivatives(Lorg/apache/commons/math3/ode/FieldEquationsMapper;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;TT;TT;TT;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->getGlobalPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpg-double p3, v1, v3

    if-gtz p3, :cond_0

    new-array p3, v0, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object p4, p3, p1

    invoke-virtual {p0, p3}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->previousStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p3

    invoke-interface {p2}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p4

    invoke-interface {p4}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/commons/math3/RealFieldElement;

    new-array p5, v0, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object p4, p5, p1

    invoke-virtual {p0, p5}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p5}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/math3/RealFieldElement;

    new-array p4, v0, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object p3, p4, p1

    invoke-virtual {p0, p4}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->currentStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p3

    invoke-interface {p2}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p4

    invoke-interface {p4}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/commons/math3/RealFieldElement;

    new-array p5, v0, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object p4, p5, p1

    invoke-virtual {p0, p5}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    :goto_0
    new-instance p4, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-direct {p4, p2, p3, p1}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    return-object p4
.end method

.method public create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/EulerFieldStepInterpolator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;Z[[TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;)",
            "Lorg/apache/commons/math3/ode/nonstiff/EulerFieldStepInterpolator<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v9, Lorg/apache/commons/math3/ode/nonstiff/EulerFieldStepInterpolator;

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/EulerFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v9
.end method

.method public bridge synthetic create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/EulerFieldStepInterpolator;->create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/EulerFieldStepInterpolator;

    move-result-object p1

    return-object p1
.end method
