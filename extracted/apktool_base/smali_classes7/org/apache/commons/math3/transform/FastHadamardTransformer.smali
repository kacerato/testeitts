.class public Lorg/apache/commons/math3/transform/FastHadamardTransformer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/transform/RealTransformer;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1330293L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fht([D)[D
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    div-int/lit8 v1, v0, 0x2

    int-to-long v2, v0

    .line 3
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->isPowerOfTwo(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    new-array v2, v0, [D

    .line 5
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    move-object v11, v2

    move-object v2, p1

    move-object p1, v11

    if-ge v4, v0, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_0

    mul-int/lit8 v6, v5, 0x2

    .line 6
    aget-wide v7, v2, v6

    add-int/2addr v6, v3

    aget-wide v9, v2, v6

    add-double/2addr v7, v9

    aput-wide v7, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_2
    if-ge v5, v0, :cond_1

    mul-int/lit8 v6, v5, 0x2

    sub-int/2addr v6, v0

    .line 7
    aget-wide v7, v2, v6

    add-int/2addr v6, v3

    aget-wide v9, v2, v6

    sub-double/2addr v7, v9

    aput-wide v7, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    shl-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    .line 8
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POWER_OF_TWO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public fht([I)[I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 9
    array-length v0, p1

    .line 10
    div-int/lit8 v1, v0, 0x2

    int-to-long v2, v0

    .line 11
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->isPowerOfTwo(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    new-array v2, v0, [I

    .line 13
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    if-ge v4, v0, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_0

    mul-int/lit8 v6, v5, 0x2

    .line 14
    aget v7, v2, v6

    add-int/2addr v6, v3

    aget v6, v2, v6

    add-int/2addr v7, v6

    aput v7, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_2
    if-ge v5, v0, :cond_1

    mul-int/lit8 v6, v5, 0x2

    sub-int/2addr v6, v0

    .line 15
    aget v7, v2, v6

    add-int/2addr v6, v3

    aget v6, v2, v6

    sub-int/2addr v7, v6

    aput v7, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    shl-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    .line 16
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POWER_OF_TWO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public transform(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDILorg/apache/commons/math3/transform/TransformType;)[D
    .locals 0

    .line 4
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/analysis/FunctionUtils;->sample(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDI)[D

    move-result-object p1

    invoke-virtual {p0, p1, p7}, Lorg/apache/commons/math3/transform/FastHadamardTransformer;->transform([DLorg/apache/commons/math3/transform/TransformType;)[D

    move-result-object p1

    return-object p1
.end method

.method public transform([DLorg/apache/commons/math3/transform/TransformType;)[D
    .locals 4

    .line 1
    sget-object v0, Lorg/apache/commons/math3/transform/TransformType;->FORWARD:Lorg/apache/commons/math3/transform/TransformType;

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastHadamardTransformer;->fht([D)[D

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastHadamardTransformer;->fht([D)[D

    move-result-object p2

    array-length p1, p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    invoke-static {p2, v2, v3}, Lorg/apache/commons/math3/transform/TransformUtils;->scaleArray([DD)[D

    move-result-object p1

    return-object p1
.end method

.method public transform([I)[I
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastHadamardTransformer;->fht([I)[I

    move-result-object p1

    return-object p1
.end method
