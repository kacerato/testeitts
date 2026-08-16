.class final Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->createHermitePolynomial(I)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(I)[Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3

    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->TWO:Lorg/apache/commons/math3/fraction/BigFraction;

    new-instance v2, Lorg/apache/commons/math3/fraction/BigFraction;

    mul-int/lit8 p1, p1, 0x2

    invoke-direct {v2, p1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(I)V

    filled-new-array {v0, v1, v2}, [Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method
