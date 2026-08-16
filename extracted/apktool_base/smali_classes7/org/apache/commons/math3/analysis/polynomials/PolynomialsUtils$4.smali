.class final Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->createLegendrePolynomial(I)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
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
    .locals 4

    add-int/lit8 v0, p1, 0x1

    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    new-instance v2, Lorg/apache/commons/math3/fraction/BigFraction;

    add-int v3, p1, v0

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v3, p1, v0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    filled-new-array {v1, v2, v3}, [Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method
