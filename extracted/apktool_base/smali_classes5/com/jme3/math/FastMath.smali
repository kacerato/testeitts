.class public final Lcom/jme3/math/FastMath;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DBL_EPSILON:D = 2.220446049250313E-16

.field public static final DEG_TO_RAD:F = 0.017453292f

.field public static final FLT_EPSILON:F = 1.1920929E-7f

.field public static final HALF_PI:F = 1.5707964f

.field public static final INV_PI:F = 0.31830987f

.field public static final INV_TWO_PI:F = 0.15915494f

.field public static final ONE_THIRD:F = 0.33333334f

.field public static final PI:F = 3.1415927f

.field public static final QUARTER_PI:F = 0.7853982f

.field public static final RAD_TO_DEG:F = 57.295776f

.field public static final TWO_PI:F = 6.2831855f

.field public static final ZERO_TOLERANCE:F = 1.0E-4f

.field public static final rand:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/jme3/math/FastMath;->rand:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abs(F)F
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    neg-float p0, p0

    :cond_0
    return p0
.end method

.method public static acos(F)F
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, v0, p0

    if-gez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const p0, 0x40490fdb    # (float)Math.PI

    return p0
.end method

.method public static alignToPowerOfTwo(II)I
    .locals 2

    invoke-static {p1}, Lcom/jme3/math/FastMath;->isPowerOfTwo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p1, p1, -0x1

    or-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "p must be a power of two, got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static approximateEquals(FF)Z
    .locals 2

    cmpl-float v0, p0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sub-float v0, p0, p1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    invoke-static {p0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p0

    invoke-static {p1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    div-float/2addr v0, p0

    const p0, 0x3727c5ac    # 1.0E-5f

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static asin(F)F
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, v0, p0

    if-gez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_0
    const p0, 0x3fc90fdb

    return p0

    :cond_1
    const p0, -0x4036f025

    return p0
.end method

.method public static atan(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static atan2(FF)F
    .locals 2

    float-to-double v0, p0

    float-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static cartesianToSpherical(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    const/high16 v0, 0x34000000

    :cond_1
    mul-float v2, v0, v0

    iget v3, p0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v2

    iput v2, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p0, Lcom/jme3/math/Vector3f;->z:F

    div-float/2addr v2, v0

    invoke-static {v2}, Lcom/jme3/math/FastMath;->atan(F)F

    move-result v2

    iput v2, p1, Lcom/jme3/math/Vector3f;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const v0, 0x40490fdb    # (float)Math.PI

    add-float/2addr v2, v0

    iput v2, p1, Lcom/jme3/math/Vector3f;->y:F

    :cond_2
    iget p0, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    div-float/2addr p0, v0

    invoke-static {p0}, Lcom/jme3/math/FastMath;->asin(F)F

    move-result p0

    iput p0, p1, Lcom/jme3/math/Vector3f;->z:F

    return-object p1
.end method

.method public static cartesianZToSpherical(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    const/high16 v0, 0x34000000

    :cond_1
    mul-float v2, v0, v0

    iget v3, p0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v2

    iput v2, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p0, Lcom/jme3/math/Vector3f;->z:F

    div-float/2addr v2, v0

    invoke-static {v2}, Lcom/jme3/math/FastMath;->atan(F)F

    move-result v2

    iput v2, p1, Lcom/jme3/math/Vector3f;->z:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const v0, 0x40490fdb    # (float)Math.PI

    add-float/2addr v2, v0

    iput v2, p1, Lcom/jme3/math/Vector3f;->z:F

    :cond_2
    iget p0, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    div-float/2addr p0, v0

    invoke-static {p0}, Lcom/jme3/math/FastMath;->asin(F)F

    move-result p0

    iput p0, p1, Lcom/jme3/math/Vector3f;->y:F

    return-object p1
.end method

.method public static ceil(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static clamp(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static computeNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object p0

    return-object p0
.end method

.method public static convertFloatToHalf(F)S
    .locals 4

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p0, v0

    const/16 v1, 0x7c00

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    const/16 p0, -0x400

    return p0

    :cond_1
    const/4 v0, 0x0

    cmpl-float v2, p0, v0

    if-nez v2, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/high16 v3, -0x80000000

    cmpl-float v3, p0, v3

    if-nez v3, :cond_3

    const/16 p0, -0x8000

    return p0

    :cond_3
    const v3, 0x477fe000    # 65504.0f

    cmpl-float v3, p0, v3

    if-lez v3, :cond_4

    const/16 p0, 0x7bff

    return p0

    :cond_4
    const v3, -0x38802000    # -65504.0f

    cmpg-float v3, p0, v3

    if-gez v3, :cond_5

    const/16 p0, -0x401

    return p0

    :cond_5
    if-lez v2, :cond_6

    const v2, 0x38002000

    cmpg-float v2, p0, v2

    if-gez v2, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    cmpg-float v0, p0, v0

    if-gez v0, :cond_7

    const v0, -0x47ffe000

    cmpl-float v0, p0, v0

    if-lez v0, :cond_7

    const/16 p0, -0x7fff

    return p0

    :cond_7
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    shr-int/lit8 v0, p0, 0x10

    const v2, 0x8000

    and-int/2addr v0, v2

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v2, p0

    const/high16 v3, 0x38000000

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0xd

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shr-int/lit8 p0, p0, 0xd

    and-int/lit16 p0, p0, 0x3ff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0

    :cond_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "NaN to half conversion not supported!"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertHalfToFloat(S)F
    .locals 3

    if-eqz p0, :cond_3

    const/16 v0, 0x7c00

    if-eq p0, v0, :cond_2

    const v0, 0x8000

    if-eq p0, v0, :cond_1

    const v1, 0xfc00

    if-eq p0, v1, :cond_0

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x10

    and-int/lit16 v1, p0, 0x7c00

    const v2, 0x1c000

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0xd

    or-int/2addr v0, v1

    and-int/lit16 p0, p0, 0x3ff

    shl-int/lit8 p0, p0, 0xd

    or-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, -0x800000    # Float.NEGATIVE_INFINITY

    return p0

    :cond_1
    const/high16 p0, -0x80000000

    return p0

    :cond_2
    const/high16 p0, 0x7f800000    # Float.POSITIVE_INFINITY

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static copysign(FF)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_0

    neg-float p0, p0

    return p0

    :cond_0
    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    cmpl-float p1, p0, v0

    if-ltz p1, :cond_1

    neg-float p0, p0

    :cond_1
    return p0
.end method

.method public static cos(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static counterClockwise(Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)I
    .locals 5

    iget v0, p1, Lcom/jme3/math/Vector2f;->x:F

    iget v1, p0, Lcom/jme3/math/Vector2f;->x:F

    sub-float/2addr v0, v1

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    iget p0, p0, Lcom/jme3/math/Vector2f;->y:F

    sub-float/2addr p1, p0

    iget v2, p2, Lcom/jme3/math/Vector2f;->x:F

    sub-float/2addr v2, v1

    iget p2, p2, Lcom/jme3/math/Vector2f;->y:F

    sub-float/2addr p2, p0

    mul-float p0, v0, p2

    mul-float v1, p1, v2

    cmpl-float v3, p0, v1

    const/4 v4, 0x1

    if-lez v3, :cond_0

    return v4

    :cond_0
    cmpg-float p0, p0, v1

    const/4 v1, -0x1

    if-gez p0, :cond_1

    return v1

    :cond_1
    mul-float p0, v0, v2

    const/4 v3, 0x0

    cmpg-float p0, p0, v3

    if-ltz p0, :cond_4

    mul-float p0, p1, p2

    cmpg-float p0, p0, v3

    if-gez p0, :cond_2

    goto :goto_0

    :cond_2
    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    mul-float/2addr v2, v2

    mul-float/2addr p2, p2

    add-float/2addr v2, p2

    cmpg-float p0, v0, v2

    if-gez p0, :cond_3

    return v4

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public static determinant(DDDDDDDDDDDDDDDD)F
    .locals 16

    mul-double v0, p16, p26

    mul-double v2, p18, p24

    sub-double/2addr v0, v2

    mul-double v2, p16, p28

    mul-double v4, p20, p24

    sub-double/2addr v2, v4

    mul-double v4, p16, p30

    mul-double v6, p22, p24

    sub-double/2addr v4, v6

    mul-double v6, p18, p28

    mul-double v8, p20, p26

    sub-double/2addr v6, v8

    mul-double v8, p18, p30

    mul-double v10, p22, p26

    sub-double/2addr v8, v10

    mul-double v10, p20, p30

    mul-double v12, p22, p28

    sub-double/2addr v10, v12

    mul-double v12, p10, v10

    mul-double v14, p12, v8

    sub-double/2addr v12, v14

    mul-double v14, p14, v6

    add-double/2addr v12, v14

    mul-double v12, v12, p0

    mul-double v10, v10, p8

    mul-double v14, p12, v4

    sub-double/2addr v10, v14

    mul-double v14, p14, v2

    add-double/2addr v10, v14

    mul-double v10, v10, p2

    sub-double/2addr v12, v10

    mul-double v8, v8, p8

    mul-double v4, v4, p10

    sub-double/2addr v8, v4

    mul-double v4, p14, v0

    add-double/2addr v8, v4

    mul-double v4, p4, v8

    add-double/2addr v12, v4

    mul-double v4, p8, v6

    mul-double v2, v2, p10

    sub-double/2addr v4, v2

    mul-double v0, v0, p12

    add-double/2addr v4, v0

    mul-double v0, p6, v4

    sub-double/2addr v12, v0

    double-to-float v0, v12

    return v0
.end method

.method public static exp(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static extrapolateLinear(FFF)F
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    mul-float/2addr p0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static extrapolateLinear(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, p2, v0}, Lcom/jme3/math/FastMath;->extrapolateLinear(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    return-object p0
.end method

.method public static extrapolateLinear(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p2, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {p0, v0, v1}, Lcom/jme3/math/FastMath;->extrapolateLinear(FFF)F

    move-result v0

    iput v0, p3, Lcom/jme3/math/Vector3f;->x:F

    .line 4
    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p2, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {p0, v0, v1}, Lcom/jme3/math/FastMath;->extrapolateLinear(FFF)F

    move-result v0

    iput v0, p3, Lcom/jme3/math/Vector3f;->y:F

    .line 5
    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {p0, p1, p2}, Lcom/jme3/math/FastMath;->extrapolateLinear(FFF)F

    move-result p0

    iput p0, p3, Lcom/jme3/math/Vector3f;->z:F

    return-object p3
.end method

.method public static fastInvSqrt(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    shr-int/lit8 p0, p0, 0x1

    const v1, 0x5f375a86

    sub-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    const/high16 v1, 0x3fc00000    # 1.5f

    sub-float/2addr v1, v0

    mul-float/2addr p0, v1

    return p0
.end method

.method public static floor(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static getBezierP1toP2Length(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F
    .locals 10

    invoke-virtual {p0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    new-instance v7, Lcom/jme3/math/Vector3f;

    invoke-direct {v7}, Lcom/jme3/math/Vector3f;-><init>()V

    const/4 v1, 0x0

    move v8, v1

    move v9, v8

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v8, v1

    if-gtz v1, :cond_0

    move v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lcom/jme3/math/FastMath;->interpolateBezier(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v7}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->length()F

    move-result v1

    add-float/2addr v9, v1

    invoke-virtual {v0, v7}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const v1, 0x3ca3d70a    # 0.02f

    add-float/2addr v8, v1

    goto :goto_0

    :cond_0
    return v9
.end method

.method public static getCatmullRomP1toP2Length(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FFF)F
    .locals 11

    add-float v0, p4, p5

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v8, v0, v1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v9

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_0

    move v0, p4

    move/from16 v1, p6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Lcom/jme3/math/FastMath;->interpolateCatmullRom(FFLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_0
    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v10

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p5, v0

    if-eqz v0, :cond_1

    move/from16 v0, p5

    move/from16 v1, p6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v10

    invoke-static/range {v0 .. v6}, Lcom/jme3/math/FastMath;->interpolateCatmullRom(FFLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_1
    move v2, v8

    move/from16 v3, p6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/jme3/math/FastMath;->interpolateCatmullRom(FFLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v10, v9}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->length()F

    move-result v1

    invoke-virtual {v0, v9}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->length()F

    move-result v2

    invoke-virtual {v10, v0}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->length()F

    move-result v0

    add-float v3, v2, v0

    const v4, 0x3a83126f    # 0.001f

    add-float/2addr v1, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, v8

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/jme3/math/FastMath;->getCatmullRomP1toP2Length(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FFF)F

    move-result v7

    move v4, v8

    move/from16 v5, p5

    invoke-static/range {v0 .. v6}, Lcom/jme3/math/FastMath;->getCatmullRomP1toP2Length(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FFF)F

    move-result v0

    move v2, v7

    :cond_2
    add-float/2addr v2, v0

    return v2
.end method

.method public static insideUnitCircle()Lcom/jme3/math/Vector2f;
    .locals 3

    const v0, 0x40c90fdb

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    invoke-static {v1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v2

    mul-float/2addr v2, v0

    invoke-static {v1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v1

    mul-float/2addr v0, v1

    new-instance v1, Lcom/jme3/math/Vector2f;

    invoke-direct {v1, v2, v0}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    return-object v1
.end method

.method public static insideUnitSphere()Lcom/jme3/math/Vector3f;
    .locals 5

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v0

    const v1, 0x40c90fdb

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v2

    mul-float/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v3

    mul-float/2addr v3, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    invoke-static {v3}, Lcom/jme3/math/FastMath;->acos(F)F

    move-result v1

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    invoke-static {v1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v3

    mul-float/2addr v3, v0

    invoke-static {v2}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v4

    mul-float/2addr v4, v3

    invoke-static {v2}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v2

    mul-float/2addr v3, v2

    invoke-static {v1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v1

    mul-float/2addr v0, v1

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1, v4, v3, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    return-object v1
.end method

.method public static interpolateBezier(FFFFF)F
    .locals 4

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    mul-float v1, v0, v0

    mul-float v2, p0, p0

    mul-float/2addr p1, v1

    mul-float/2addr p1, v0

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr p2, v3

    mul-float/2addr p2, p0

    mul-float/2addr p2, v1

    add-float/2addr p1, p2

    mul-float/2addr p3, v3

    mul-float/2addr p3, v2

    mul-float/2addr p3, v0

    add-float/2addr p1, p3

    mul-float/2addr p4, v2

    mul-float/2addr p4, p0

    add-float/2addr p1, p4

    return p1
.end method

.method public static interpolateBezier(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 6

    const/4 v5, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/jme3/math/FastMath;->interpolateBezier(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    return-object p0
.end method

.method public static interpolateBezier(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4

    if-nez p5, :cond_0

    .line 2
    new-instance p5, Lcom/jme3/math/Vector3f;

    invoke-direct {p5}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p3, Lcom/jme3/math/Vector3f;->x:F

    iget v3, p4, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {p0, v0, v1, v2, v3}, Lcom/jme3/math/FastMath;->interpolateBezier(FFFFF)F

    move-result v0

    iput v0, p5, Lcom/jme3/math/Vector3f;->x:F

    .line 4
    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p3, Lcom/jme3/math/Vector3f;->y:F

    iget v3, p4, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {p0, v0, v1, v2, v3}, Lcom/jme3/math/FastMath;->interpolateBezier(FFFFF)F

    move-result v0

    iput v0, p5, Lcom/jme3/math/Vector3f;->y:F

    .line 5
    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    iget p3, p3, Lcom/jme3/math/Vector3f;->z:F

    iget p4, p4, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {p0, p1, p2, p3, p4}, Lcom/jme3/math/FastMath;->interpolateBezier(FFFFF)F

    move-result p0

    iput p0, p5, Lcom/jme3/math/Vector3f;->z:F

    return-object p5
.end method

.method public static interpolateCatmullRom(FFFFFF)F
    .locals 6

    .line 1
    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p2

    mul-float v1, p1, p4

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, p1, v1

    mul-float v3, v2, p2

    const/high16 v4, 0x40400000    # 3.0f

    sub-float v5, p1, v4

    mul-float/2addr v5, p3

    add-float/2addr v3, v5

    sub-float/2addr v4, v2

    mul-float/2addr v4, p4

    add-float/2addr v3, v4

    neg-float v2, p1

    mul-float v4, v2, p5

    add-float/2addr v3, v4

    mul-float/2addr v2, p2

    sub-float p2, v1, p1

    mul-float/2addr p2, p3

    add-float/2addr v2, p2

    sub-float p2, p1, v1

    mul-float/2addr p2, p4

    add-float/2addr v2, p2

    mul-float/2addr p1, p5

    add-float/2addr v2, p1

    mul-float/2addr v2, p0

    add-float/2addr v2, v3

    mul-float/2addr v2, p0

    add-float/2addr v2, v0

    mul-float/2addr v2, p0

    add-float/2addr v2, p3

    return v2
.end method

.method public static interpolateCatmullRom(FFLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 7

    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 6
    invoke-static/range {v0 .. v6}, Lcom/jme3/math/FastMath;->interpolateCatmullRom(FFLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    return-object p0
.end method

.method public static interpolateCatmullRom(FFLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 7

    if-nez p6, :cond_0

    .line 2
    new-instance p6, Lcom/jme3/math/Vector3f;

    invoke-direct {p6}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    iget v2, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v3, p3, Lcom/jme3/math/Vector3f;->x:F

    iget v4, p4, Lcom/jme3/math/Vector3f;->x:F

    iget v5, p5, Lcom/jme3/math/Vector3f;->x:F

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/jme3/math/FastMath;->interpolateCatmullRom(FFFFFF)F

    move-result v0

    iput v0, p6, Lcom/jme3/math/Vector3f;->x:F

    .line 4
    iget v3, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v4, p3, Lcom/jme3/math/Vector3f;->y:F

    iget v5, p4, Lcom/jme3/math/Vector3f;->y:F

    iget v6, p5, Lcom/jme3/math/Vector3f;->y:F

    move v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lcom/jme3/math/FastMath;->interpolateCatmullRom(FFFFFF)F

    move-result v0

    iput v0, p6, Lcom/jme3/math/Vector3f;->y:F

    .line 5
    iget v3, p2, Lcom/jme3/math/Vector3f;->z:F

    iget v4, p3, Lcom/jme3/math/Vector3f;->z:F

    iget v5, p4, Lcom/jme3/math/Vector3f;->z:F

    iget v6, p5, Lcom/jme3/math/Vector3f;->z:F

    invoke-static/range {v1 .. v6}, Lcom/jme3/math/FastMath;->interpolateCatmullRom(FFFFFF)F

    move-result p0

    iput p0, p6, Lcom/jme3/math/Vector3f;->z:F

    return-object p6
.end method

.method public static interpolateLinear(FFF)F
    .locals 2

    .line 1
    cmpl-float v0, p1, p2

    if-nez v0, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1

    return p1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_2

    return p2

    :cond_2
    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    mul-float/2addr p0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static interpolateLinear(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, p2, v0}, Lcom/jme3/math/FastMath;->interpolateLinear(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    return-object p0
.end method

.method public static interpolateLinear(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p2, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {p0, v0, v1}, Lcom/jme3/math/FastMath;->interpolateLinear(FFF)F

    move-result v0

    iput v0, p3, Lcom/jme3/math/Vector3f;->x:F

    .line 4
    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p2, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {p0, v0, v1}, Lcom/jme3/math/FastMath;->interpolateLinear(FFF)F

    move-result v0

    iput v0, p3, Lcom/jme3/math/Vector3f;->y:F

    .line 5
    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {p0, p1, p2}, Lcom/jme3/math/FastMath;->interpolateLinear(FFF)F

    move-result p0

    iput p0, p3, Lcom/jme3/math/Vector3f;->z:F

    return-object p3
.end method

.method public static invSqrt(F)F
    .locals 4

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    double-to-float p0, v2

    return p0
.end method

.method public static isPowerOfTwo(I)Z
    .locals 1

    if-lez p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static log(F)F
    .locals 2

    float-to-double v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static log(FF)F
    .locals 2

    float-to-double v0, p0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public static nearestPowerOfTwo(I)I
    .locals 1

    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p0, v0

    return p0
.end method

.method public static nextRandomFloat()F
    .locals 1

    .line 1
    sget-object v0, Lcom/jme3/math/FastMath;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public static nextRandomFloat(FF)F
    .locals 1

    sub-float/2addr p1, p0

    .line 2
    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v0

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    return p0
.end method

.method public static nextRandomInt()I
    .locals 1

    .line 1
    sget-object v0, Lcom/jme3/math/FastMath;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public static nextRandomInt(II)I
    .locals 1

    .line 2
    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v0

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    add-int/2addr p1, p0

    return p1
.end method

.method public static normalize(FFF)F
    .locals 2

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    sub-float v0, p2, p1

    :goto_0
    cmpl-float v1, p0, p2

    if-lez v1, :cond_1

    sub-float/2addr p0, v0

    goto :goto_0

    :cond_1
    :goto_1
    cmpg-float p2, p0, p1

    if-gez p2, :cond_2

    add-float/2addr p0, v0

    goto :goto_1

    :cond_2
    return p0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public static onUnitSphere()Lcom/jme3/math/Vector3f;
    .locals 5

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v0

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v1

    const v2, 0x40c90fdb

    mul-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v2

    invoke-static {v1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v3

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v0

    new-instance v4, Lcom/jme3/math/Vector3f;

    mul-float/2addr v3, v1

    mul-float/2addr v0, v1

    invoke-direct {v4, v3, v0, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    return-object v4
.end method

.method public static pointInsideTriangle(Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)I
    .locals 3

    invoke-static {p0, p1, p3}, Lcom/jme3/math/FastMath;->counterClockwise(Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/jme3/math/FastMath;->counterClockwise(Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)I

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    return v2

    :cond_2
    invoke-static {p2, p0, p3}, Lcom/jme3/math/FastMath;->counterClockwise(Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)I

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    if-eq p0, v0, :cond_4

    return v2

    :cond_4
    return p0
.end method

.method public static pow(FF)F
    .locals 2

    float-to-double v0, p0

    float-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static saturate(F)F
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Lcom/jme3/math/FastMath;->clamp(FFF)F

    move-result p0

    return p0
.end method

.method public static sign(F)F
    .locals 0

    .line 2
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    return p0
.end method

.method public static sign(I)I
    .locals 0

    .line 1
    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static sin(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static sphericalToCartesian(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p0, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p0, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v1

    mul-float/2addr v1, v0

    iput v1, p1, Lcom/jme3/math/Vector3f;->x:F

    iget p0, p0, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {p0}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result p0

    mul-float/2addr v0, p0

    iput v0, p1, Lcom/jme3/math/Vector3f;->z:F

    return-object p1
.end method

.method public static sphericalToCartesianZ(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v1

    mul-float/2addr v1, v0

    iput v1, p1, Lcom/jme3/math/Vector3f;->x:F

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {p0}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result p0

    mul-float/2addr v0, p0

    iput v0, p1, Lcom/jme3/math/Vector3f;->z:F

    return-object p1
.end method

.method public static sqr(F)F
    .locals 0

    mul-float/2addr p0, p0

    return p0
.end method

.method public static sqrt(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static tan(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static toMultipleOf(II)I
    .locals 2

    if-lez p1, :cond_2

    invoke-static {p1}, Lcom/jme3/math/FastMath;->isPowerOfTwo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p1, p1, -0x1

    or-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    rem-int v0, p0, p1

    if-nez v0, :cond_1

    return p0

    :cond_1
    sub-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "p must be positive, got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unInterpolateLinear(FFF)F
    .locals 0

    sub-float/2addr p0, p1

    sub-float/2addr p2, p1

    div-float/2addr p0, p2

    return p0
.end method
