.class final Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->createJacobiPolynomial(III)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$v:I

.field final synthetic val$w:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$v:I

    iput p2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$w:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(I)[Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 7

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$v:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$w:I

    add-int/2addr v0, v1

    add-int v1, v0, p1

    add-int/lit8 v2, v1, -0x1

    add-int/lit8 v3, v1, -0x2

    mul-int/lit8 v4, p1, 0x2

    mul-int/2addr v4, v0

    mul-int/2addr v4, v3

    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget v5, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$v:I

    mul-int/2addr v5, v5

    iget v6, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$w:I

    mul-int/2addr v6, v6

    sub-int/2addr v5, v6

    mul-int/2addr v5, v2

    invoke-direct {v0, v5, v4}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    new-instance v5, Lorg/apache/commons/math3/fraction/BigFraction;

    mul-int/2addr v2, v1

    mul-int/2addr v2, v3

    invoke-direct {v5, v2, v4}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    new-instance v2, Lorg/apache/commons/math3/fraction/BigFraction;

    iget v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$v:I

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x2

    iget v6, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$w:I

    add-int/2addr p1, v6

    add-int/lit8 p1, p1, -0x1

    mul-int/2addr v3, p1

    mul-int/2addr v3, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    filled-new-array {v0, v5, v2}, [Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method
