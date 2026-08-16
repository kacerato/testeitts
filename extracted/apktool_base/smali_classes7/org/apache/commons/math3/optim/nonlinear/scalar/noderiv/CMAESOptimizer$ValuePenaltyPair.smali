.class Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValuePenaltyPair"
.end annotation


# instance fields
.field private penalty:D

.field private value:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->value:D

    iput-wide p3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->penalty:D

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->value:D

    return-wide v0
.end method

.method public static synthetic access$100(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->penalty:D

    return-wide v0
.end method
