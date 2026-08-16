.class public final LNc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:D = 2.220446049250313E-16

.field public static final b:F = 1.1920929E-7f

.field public static final c:F = 1.0E-4f

.field public static final d:F = 0.33333334f

.field public static final e:F = 3.1415927f

.field public static final f:F = 6.2831855f

.field public static final g:F = 1.5707964f

.field public static final h:F = 0.7853982f

.field public static final i:F = 0.31830987f

.field public static final j:F = 0.15915494f

.field public static final k:F = 0.017453292f

.field public static final l:F = 57.295776f

.field public static final m:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, LNc/a;->m:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(FF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fBase",
            "fExponent"
        }
    .end annotation

    float-to-double v0, p0

    float-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static B(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, LNc/a;->h(FFF)F

    move-result p0

    return p0
.end method

.method public static C(F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fValue"
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    return p0
.end method

.method public static D(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iValue"
        }
    .end annotation

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

.method public static E(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static F(F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fValue"
        }
    .end annotation

    mul-float/2addr p0, p0

    return p0
.end method

.method public static G(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fValue"
        }
    .end annotation

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static H(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fValue"
        }
    .end annotation

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static I(FFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "min",
            "max"
        }
    .end annotation

    sub-float/2addr p0, p1

    sub-float/2addr p2, p1

    div-float/2addr p0, p2

    return p0
.end method

.method public static a(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fValue"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    neg-float p0, p0

    :cond_0
    return p0
.end method

.method public static b(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fValue"
        }
    .end annotation

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

.method public static c(FF)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    cmpl-float v0, p0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sub-float v0, p0, p1

    invoke-static {v0}, LNc/a;->a(F)F

    move-result v0

    invoke-static {p0}, LNc/a;->a(F)F

    move-result p0

    invoke-static {p1}, LNc/a;->a(F)F

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

.method public static d(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fValue"
        }
    .end annotation

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

.method public static e(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fValue"
        }
    .end annotation

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static f(FF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fY",
            "fX"
        }
    .end annotation

    float-to-double v0, p0

    float-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static g(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fValue"
        }
    .end annotation

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static h(FFF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "min",
            "max"
        }
    .end annotation

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

.method public static i(F)S
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flt"
        }
    .end annotation

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

.method public static j(S)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "half"
        }
    .end annotation

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

.method public static k(FF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

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

.method public static l(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static m(DDDDDDDDDDDDDDDD)F
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "m00",
            "m01",
            "m02",
            "m03",
            "m10",
            "m11",
            "m12",
            "m13",
            "m20",
            "m21",
            "m22",
            "m23",
            "m30",
            "m31",
            "m32",
            "m33"
        }
    .end annotation

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

.method public static n(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fValue"
        }
    .end annotation

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static o(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

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

.method public static p(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fValue"
        }
    .end annotation

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static q(FFF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scale",
            "startValue",
            "endValue"
        }
    .end annotation

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

.method public static r(F)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fValue"
        }
    .end annotation

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    double-to-float p0, v2

    return p0
.end method

.method public static s(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

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

.method public static t(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fValue"
        }
    .end annotation

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static u(FF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "base"
        }
    .end annotation

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public static v(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

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

.method public static w()F
    .locals 1

    sget-object v0, LNc/a;->m:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public static x()I
    .locals 1

    sget-object v0, LNc/a;->m:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public static y(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "min",
            "max"
        }
    .end annotation

    invoke-static {}, LNc/a;->w()F

    move-result v0

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    add-int/2addr p1, p0

    return p1
.end method

.method public static z(FFF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "val",
            "min",
            "max"
        }
    .end annotation

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
