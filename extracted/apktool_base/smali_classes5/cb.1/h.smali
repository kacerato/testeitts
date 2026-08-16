.class public final Lcb/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcb/h$a;
    }
.end annotation


# static fields
.field public static final a:F = 1.0E-9f

.field public static final b:F = 1.0E-6f

.field public static final c:F = 3.1415927f

.field public static final d:F = 6.2831855f

.field public static final e:F = 1.5707964f

.field public static final f:F = 2.7182817f

.field public static final g:I = 0xe

.field public static final h:I = 0x3fff

.field public static final i:I = 0x4000

.field public static final j:F = 6.2831855f

.field public static final k:F = 360.0f

.field public static final l:F = 2607.5945f

.field public static final m:F = 45.511112f

.field public static final n:F = 57.295776f

.field public static final o:F = 57.295776f

.field public static final p:F = 0.017453292f

.field public static final q:F = 0.017453292f

.field public static r:Ljava/util/Random; = null

.field public static final s:I = 0x4000

.field public static final t:D = 16384.0

.field public static final u:D = 0.9999999

.field public static final v:D = 16384.999999999996

.field public static final w:D = 16384.5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcb/r;

    invoke-direct {v0}, Lcb/r;-><init>()V

    sput-object v0, Lcb/h;->r:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(FFFFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inRangeStart",
            "inRangeEnd",
            "outRangeStart",
            "outRangeEnd",
            "value"
        }
    .end annotation

    sub-float/2addr p4, p0

    sub-float/2addr p3, p2

    mul-float/2addr p4, p3

    sub-float/2addr p1, p0

    div-float/2addr p4, p1

    add-float/2addr p2, p4

    return p2
.end method

.method public static B(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 v1, p0, 0x1

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x2

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x4

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x8

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x10

    or-int/2addr p0, v1

    add-int/2addr p0, v0

    return p0
.end method

.method public static C(FFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rangeStart",
            "rangeEnd",
            "value"
        }
    .end annotation

    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    return p2
.end method

.method public static D()F
    .locals 1

    sget-object v0, Lcb/h;->r:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public static E(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    sget-object v0, Lcb/h;->r:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static F(FF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    sget-object v0, Lcb/h;->r:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float/2addr p1, p0

    mul-float/2addr v0, p1

    add-float/2addr p0, v0

    return p0
.end method

.method public static G(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    sget-object v0, Lcb/h;->r:Ljava/util/Random;

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    return p0
.end method

.method public static H(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    sget-object v0, Lcb/h;->r:Ljava/util/Random;

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static I(J)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Lcb/h;->J(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static J(JJ)J
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    sget-object v0, Lcb/h;->r:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    cmp-long v2, p2, p0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v7, p0

    move-wide p0, p2

    move-wide p2, v7

    :goto_0
    sub-long/2addr p0, p2

    const-wide/16 v2, 0x1

    add-long/2addr p0, v2

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    and-long/2addr v2, p0

    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    ushr-long/2addr p0, v6

    mul-long/2addr v2, v0

    ushr-long/2addr v2, v6

    add-long/2addr p2, v2

    mul-long/2addr v4, p0

    ushr-long v2, v4, v6

    add-long/2addr p2, v2

    mul-long/2addr v0, p0

    add-long/2addr p2, v0

    return-wide p2
.end method

.method public static K()Z
    .locals 1

    sget-object v0, Lcb/h;->r:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public static L(F)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chance"
        }
    .end annotation

    invoke-static {}, Lcb/h;->D()F

    move-result v0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static M()I
    .locals 1

    sget-object v0, Lcb/h;->r:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1f

    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static N()F
    .locals 2

    sget-object v0, Lcb/h;->r:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sget-object v1, Lcb/h;->r:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public static O(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "max"
        }
    .end annotation

    sget-object v0, Lcb/h;->r:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sget-object v1, Lcb/h;->r:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static P(FF)F
    .locals 2
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

    add-float v0, p0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-static {p0, p1, v0}, Lcb/h;->Q(FFF)F

    move-result p0

    return p0
.end method

.method public static Q(FFF)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "min",
            "max",
            "mode"
        }
    .end annotation

    sget-object v0, Lcb/h;->r:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float v1, p1, p0

    sub-float v2, p2, p0

    div-float v3, v2, v1

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    mul-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-double p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    add-float/2addr p0, p1

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v0

    mul-float/2addr p0, v1

    sub-float p2, p1, p2

    mul-float/2addr p0, p2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method public static R(F)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    float-to-double v0, p0

    const-wide v2, 0x40d0002000000000L    # 16384.5

    add-double/2addr v0, v2

    double-to-int p0, v0

    add-int/lit16 p0, p0, -0x4000

    return p0
.end method

.method public static S(F)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static T(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radians"
        }
    .end annotation

    sget-object v0, Lcb/h$a;->a:[F

    const v1, 0x4522f983

    mul-float/2addr p0, v1

    float-to-int p0, p0

    and-int/lit16 p0, p0, 0x3fff

    aget p0, v0, p0

    return p0
.end method

.method public static U(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "degrees"
        }
    .end annotation

    sget-object v0, Lcb/h$a;->a:[F

    const v1, 0x42360b61

    mul-float/2addr p0, v1

    float-to-int p0, p0

    and-int/lit16 p0, p0, 0x3fff

    aget p0, v0, p0

    return p0
.end method

.method public static a(F)F
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    mul-float v0, p0, p0

    mul-float v1, p0, v0

    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    const v3, 0x3c996e30

    const v4, 0x3d981627

    const v5, 0x3e593484

    const v6, 0x3fc90da4

    const/high16 v7, 0x3f800000    # 1.0f

    if-ltz v2, :cond_0

    sub-float/2addr v7, p0

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    mul-float/2addr p0, v5

    sub-float/2addr v6, p0

    mul-float/2addr v0, v4

    add-float/2addr v6, v0

    mul-float/2addr v1, v3

    sub-float/2addr v6, v1

    mul-float/2addr v2, v6

    return v2

    :cond_0
    add-float/2addr v7, p0

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    mul-float/2addr p0, v5

    add-float/2addr p0, v6

    mul-float/2addr v0, v4

    add-float/2addr p0, v0

    mul-float/2addr v1, v3

    add-float/2addr p0, v1

    mul-float/2addr v2, p0

    const p0, 0x40490fdb    # (float)Math.PI

    sub-float/2addr p0, v2

    return p0
.end method

.method public static b(F)F
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    mul-float v0, p0, p0

    mul-float v1, p0, v0

    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    const v3, 0x3c996e30

    const v4, 0x3d981627

    const v5, 0x3e593484

    const v6, 0x3fc90da4

    const/high16 v7, 0x3f800000    # 1.0f

    if-ltz v2, :cond_0

    sub-float/2addr v7, p0

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    mul-float/2addr p0, v5

    sub-float/2addr v6, p0

    mul-float/2addr v0, v4

    add-float/2addr v6, v0

    mul-float/2addr v1, v3

    sub-float/2addr v6, v1

    mul-float/2addr v2, v6

    const p0, 0x3fc90fdb

    sub-float/2addr p0, v2

    return p0

    :cond_0
    add-float/2addr v7, p0

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    mul-float/2addr p0, v5

    add-float/2addr p0, v6

    mul-float/2addr v0, v4

    add-float/2addr p0, v0

    mul-float/2addr v1, v3

    add-float/2addr p0, v1

    mul-float/2addr v2, p0

    const p0, -0x4036f025

    add-float/2addr v2, p0

    return v2
.end method

.method public static c(F)F
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v4, v0, v2

    add-double/2addr v0, v2

    div-double/2addr v4, v0

    mul-double v0, v4, v4

    mul-double v2, v4, v0

    mul-double v6, v2, v0

    mul-double v8, v6, v0

    mul-double v10, v8, v0

    mul-double/2addr v0, v10

    const-wide v12, 0x3fefffd04f8e32b3L    # 0.99997726

    mul-double/2addr v4, v12

    const-wide v12, 0x3fd549b3f3620ce5L    # 0.33262347

    mul-double/2addr v2, v12

    sub-double/2addr v4, v2

    const-wide v2, 0x3fc8c6083786ffe4L    # 0.19354346

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    const-wide v2, 0x3fbdce8b68d454d6L    # 0.11643287

    mul-double/2addr v8, v2

    sub-double/2addr v4, v8

    const-wide v2, 0x3faaf5603eda0570L    # 0.05265332

    mul-double/2addr v10, v2

    add-double/2addr v4, v10

    const-wide v2, 0x3f880148d55be787L    # 0.0117212

    mul-double/2addr v0, v2

    sub-double/2addr v4, v0

    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v4, v0

    float-to-double v0, p0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static d(FF)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "y",
            "x"
        }
    .end annotation

    div-float v0, p0, p1

    cmpl-float v1, v0, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    cmpl-float v0, p0, p1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_1
    sub-float v1, v0, v0

    cmpl-float v1, v1, v1

    if-eqz v1, :cond_2

    move p1, v2

    :cond_2
    :goto_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_3

    float-to-double p0, v0

    invoke-static {p0, p1}, Lcb/h;->e(D)F

    move-result p0

    return p0

    :cond_3
    cmpg-float v1, p1, v2

    if-gez v1, :cond_5

    cmpl-float p0, p0, v2

    const p1, 0x40490fdb    # (float)Math.PI

    if-ltz p0, :cond_4

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcb/h;->e(D)F

    move-result p0

    add-float/2addr p0, p1

    return p0

    :cond_4
    float-to-double v0, v0

    invoke-static {v0, v1}, Lcb/h;->e(D)F

    move-result p0

    sub-float/2addr p0, p1

    return p0

    :cond_5
    cmpl-float v0, p0, v2

    const v1, 0x3fc90fdb

    if-lez v0, :cond_6

    add-float/2addr p1, v1

    return p1

    :cond_6
    cmpg-float v0, p0, v2

    if-gez v0, :cond_7

    sub-float/2addr p1, v1

    return p1

    :cond_7
    add-float/2addr p1, p0

    return p1
.end method

.method public static e(D)F
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v4, v0, v2

    add-double/2addr v0, v2

    div-double/2addr v4, v0

    mul-double v0, v4, v4

    mul-double v2, v4, v0

    mul-double v6, v2, v0

    mul-double v8, v6, v0

    mul-double v10, v8, v0

    mul-double/2addr v0, v10

    const-wide v12, 0x3fefffd04f8e32b3L    # 0.99997726

    mul-double/2addr v4, v12

    const-wide v12, 0x3fd549b3f3620ce5L    # 0.33262347

    mul-double/2addr v2, v12

    sub-double/2addr v4, v2

    const-wide v2, 0x3fc8c6083786ffe4L    # 0.19354346

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    const-wide v2, 0x3fbdce8b68d454d6L    # 0.11643287

    mul-double/2addr v8, v2

    sub-double/2addr v4, v8

    const-wide v2, 0x3faaf5603eda0570L    # 0.05265332

    mul-double/2addr v10, v2

    add-double/2addr v4, v10

    const-wide v2, 0x3f880148d55be787L    # 0.0117212

    mul-double/2addr v0, v2

    sub-double/2addr v4, v0

    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v4, v0

    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static f(F)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const-wide/high16 v0, 0x40d0000000000000L    # 16384.0

    float-to-double v2, p0

    sub-double/2addr v0, v2

    double-to-int p0, v0

    rsub-int p0, p0, 0x4000

    return p0
.end method

.method public static g(F)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    float-to-double v0, p0

    const-wide v2, 0x3fefffffca501acbL    # 0.9999999

    add-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public static h(DDD)D
    .locals 1
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

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    return-wide p2

    :cond_0
    cmpl-double p2, p0, p4

    if-lez p2, :cond_1

    return-wide p4

    :cond_1
    return-wide p0
.end method

.method public static i(FFF)F
    .locals 1
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

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static j(III)I
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

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static k(JJJ)J
    .locals 1
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

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    return-wide p2

    :cond_0
    cmp-long p2, p0, p4

    if-lez p2, :cond_1

    return-wide p4

    :cond_1
    return-wide p0
.end method

.method public static l(SSS)S
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

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static m(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radians"
        }
    .end annotation

    sget-object v0, Lcb/h$a;->a:[F

    const v1, 0x3fc90fdb

    add-float/2addr p0, v1

    const v1, 0x4522f983

    mul-float/2addr p0, v1

    float-to-int p0, p0

    and-int/lit16 p0, p0, 0x3fff

    aget p0, v0, p0

    return p0
.end method

.method public static n(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "degrees"
        }
    .end annotation

    sget-object v0, Lcb/h$a;->a:[F

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr p0, v1

    const v1, 0x42360b61

    mul-float/2addr p0, v1

    float-to-int p0, p0

    and-int/lit16 p0, p0, 0x3fff

    aget p0, v0, p0

    return p0
.end method

.method public static o(F)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    float-to-double v0, p0

    const-wide/high16 v2, 0x40d0000000000000L    # 16384.0

    add-double/2addr v0, v2

    double-to-int p0, v0

    add-int/lit16 p0, p0, -0x4000

    return p0
.end method

.method public static p(F)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    float-to-int p0, p0

    return p0
.end method

.method public static q(FF)Z
    .locals 0
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

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd    # 1.0E-6f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static r(FFF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "tolerance"
        }
    .end annotation

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static s(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_0

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

.method public static t(F)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x358637bd    # 1.0E-6f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static u(FF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "tolerance"
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static v(FFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromValue",
            "toValue",
            "progress"
        }
    .end annotation

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method public static w(FFF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromRadians",
            "toRadians",
            "progress"
        }
    .end annotation

    sub-float/2addr p1, p0

    const v0, 0x40c90fdb

    add-float/2addr p1, v0

    const v1, 0x40490fdb    # (float)Math.PI

    add-float/2addr p1, v1

    rem-float/2addr p1, v0

    sub-float/2addr p1, v1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    add-float/2addr p0, v0

    rem-float/2addr p0, v0

    return p0
.end method

.method public static x(FFF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromDegrees",
            "toDegrees",
            "progress"
        }
    .end annotation

    sub-float/2addr p1, p0

    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p1, v0

    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr p1, v1

    rem-float/2addr p1, v0

    sub-float/2addr p1, v1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    add-float/2addr p0, v0

    rem-float/2addr p0, v0

    return p0
.end method

.method public static y(FF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "value"
        }
    .end annotation

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public static z(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p0}, Lcb/h;->y(FF)F

    move-result p0

    return p0
.end method
