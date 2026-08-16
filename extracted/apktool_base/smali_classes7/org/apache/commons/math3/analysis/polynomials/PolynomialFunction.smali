.class public Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b3a15b67b0ea49fL


# instance fields
.field private final coefficients:[D


# direct methods
.method public constructor <init>([D)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, p1

    if-eqz v0, :cond_1

    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget-wide v1, p1, v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p1, v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p1
.end method

.method public static differentiate([D)[D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    array-length v1, p0

    if-eqz v1, :cond_2

    if-ne v1, v0, :cond_0

    new-array p0, v0, [D

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    aput-wide v0, p0, v2

    return-object p0

    :cond_0
    sub-int/2addr v1, v0

    new-array v2, v1, [D

    :goto_0
    if-lez v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    int-to-double v4, v1

    aget-wide v6, p0, v1

    mul-double/2addr v4, v6

    aput-wide v4, v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p0
.end method

.method public static evaluate([DD)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, p0

    if-eqz v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-wide v1, p0, v1

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_0

    mul-double/2addr v1, p1

    aget-wide v3, p0, v0

    add-double/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-wide v1

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p0
.end method

.method private static toString(D)Ljava/lang/String;
    .locals 1

    .line 21
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    .line 22
    const-string p1, ".0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 9

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v0, v0

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v1, v1

    iget-object v2, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v2, v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v1

    new-array v2, v1, [D

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v5, v4, v3

    iget-object v4, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v7, v4, v3

    add-double/2addr v5, v7

    aput-wide v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v4, v3

    iget-object p1, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v5, p1

    if-ge v4, v5, :cond_1

    move-object v3, p1

    :cond_1
    sub-int/2addr v1, v0

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {p1, v2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    return-object p1
.end method

.method public degree()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->polynomialDerivative()Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    iget-object p1, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getCoefficients()[D
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public multiply(Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 13

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v0, v0

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v3

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v5, v5

    sub-int v5, v4, v5

    invoke-static {v2, v5}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v5

    :goto_1
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v6, v6

    invoke-static {v6, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_0

    aget-wide v6, v1, v3

    iget-object v8, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v9, v8, v5

    iget-object v8, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    sub-int v11, v3, v5

    aget-wide v11, v8, v11

    mul-double/2addr v9, v11

    add-double/2addr v6, v9

    aput-wide v6, v1, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {p1, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    return-object p1
.end method

.method public negate()Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v0, v0

    new-array v0, v0, [D

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-wide v3, v2, v1

    neg-double v2, v3

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    return-object v1
.end method

.method public polynomialDerivative()Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 2

    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    invoke-static {v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->differentiate([D)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 9

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v0, v0

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v1, v1

    iget-object v2, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v2, v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v1

    new-array v2, v1, [D

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v5, v4, v3

    iget-object v4, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v7, v4, v3

    sub-double/2addr v5, v7

    aput-wide v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v4, v3

    iget-object v5, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v5, v5

    if-ge v4, v5, :cond_1

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v3, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v4, v3, v0

    neg-double v3, v4

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sub-int/2addr v1, v0

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    new-instance p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {p1, v2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    const/4 v7, 0x1

    if-nez v6, :cond_0

    .line 3
    array-length v1, v1

    if-ne v1, v7, :cond_1

    .line 4
    const-string v0, "0"

    return-object v0

    .line 5
    :cond_0
    invoke-static {v2, v3}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move v1, v7

    .line 6
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v3, v2

    if-ge v1, v3, :cond_7

    .line 7
    aget-wide v8, v2, v1

    cmpl-double v2, v8, v4

    if-eqz v2, :cond_6

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 9
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v8, v2, v1

    cmpg-double v2, v8, v4

    if-gez v2, :cond_2

    .line 10
    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 11
    :cond_2
    const-string v2, " + "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 12
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v8, v2, v1

    cmpg-double v2, v8, v4

    if-gez v2, :cond_4

    .line 13
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v8, v2, v1

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v8, v2, v8

    cmpl-double v6, v8, v4

    if-eqz v6, :cond_5

    .line 15
    invoke-static {v2, v3}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    :cond_5
    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v1, v7, :cond_6

    const/16 v2, 0x5e

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value(D)D
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    invoke-static {v0, p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->evaluate([DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v0, v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    add-int/lit8 v5, v0, -0x1

    aget-wide v5, v4, v5

    invoke-direct {v1, v2, v3, v5, v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_0

    .line 5
    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v3, v2, v0

    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 6
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p1, v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p1
.end method
