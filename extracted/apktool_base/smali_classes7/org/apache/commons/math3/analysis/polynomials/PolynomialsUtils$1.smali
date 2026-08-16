.class final Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->createChebyshevPolynomial(I)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field private final coeffs:[Lorg/apache/commons/math3/fraction/BigFraction;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->TWO:Lorg/apache/commons/math3/fraction/BigFraction;

    sget-object v2, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    filled-new-array {v0, v1, v2}, [Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$1;->coeffs:[Lorg/apache/commons/math3/fraction/BigFraction;

    return-void
.end method


# virtual methods
.method public generate(I)[Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 0

    iget-object p1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$1;->coeffs:[Lorg/apache/commons/math3/fraction/BigFraction;

    return-object p1
.end method
