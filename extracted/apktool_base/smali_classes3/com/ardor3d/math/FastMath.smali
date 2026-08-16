.class public final Lcom/ardor3d/math/FastMath;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EPSILON_ACOS:D = 0.0014

.field public static final EPSILON_ASIN:D = 0.0014

.field public static final EPSILON_ATAN:D = 0.005

.field public static final EPSILON_COS:D = 0.0011

.field public static final EPSILON_SIN:D = 0.0011

.field public static final EPSILON_SIN2COS2:D = 0.002

.field private static final _asin_a:D = -0.048129527683101345

.field private static final _asin_b:D = -0.3438359939479152

.field private static final _asin_c:D = 0.9627618484259132

.field private static final _asin_d:D = 1.0013894086010704

.field private static final _atan_a:D = 0.280872

.field private static final _sin_a:D = -0.4052847345693511

.field private static final _sin_b:D = 1.2732395447351628

.field private static final _sin_p:D = 0.225


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final acos(D)D
    .locals 2

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {p0, p1}, Lcom/ardor3d/math/FastMath;->asin(D)D

    move-result-wide p0

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method public static final asin(D)D
    .locals 6

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, -0x40575b910942205aL    # -0.048129527683101345

    mul-double/2addr v2, v4

    const-wide v4, -0x4029fe9750b39654L    # -0.3438359939479152

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide v2, 0x3feecef1ef9a6d01L    # 0.9627618484259132

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p0, p0

    sub-double/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide v4, 0x3ff005b0e68809beL    # 1.0013894086010704

    sub-double/2addr v4, p0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static final atan(D)D
    .locals 6

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    const-wide v4, 0x3fd1f9ce8d972cd8L    # 0.280872

    if-gez v0, :cond_0

    mul-double/2addr v4, p0

    mul-double/2addr v4, p0

    add-double/2addr v4, v2

    div-double/2addr p0, v4

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v0, v2

    mul-double v2, p0, p0

    add-double/2addr v2, v4

    div-double/2addr p0, v2

    sub-double p0, v0, p0

    :goto_0
    return-wide p0
.end method

.method public static final cos(D)D
    .locals 3

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const-wide v0, -0x3fed268380ccde2eL    # -4.71238898038469

    :cond_0
    add-double/2addr p0, v0

    invoke-static {p0, p1}, Lcom/ardor3d/math/FastMath;->sin(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final inverseSqrt(D)D
    .locals 4

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const/4 v2, 0x1

    shr-long/2addr p0, v2

    const-wide v2, 0x5fe6eb50c7b537aaL    # 9.60300780304811E153

    sub-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    sub-double/2addr v2, v0

    mul-double/2addr p0, v2

    return-wide p0
.end method

.method public static final sin(D)D
    .locals 4

    const-wide v0, -0x40260fd09ddd38e0L    # -0.4052847345693511

    mul-double/2addr v0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide v2, 0x3ff45f306dc9c883L    # 1.2732395447351628

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    mul-double/2addr p0, v0

    sub-double/2addr p0, v0

    const-wide v2, 0x3fcccccccccccccdL    # 0.225

    mul-double/2addr p0, v2

    add-double/2addr p0, v0

    return-wide p0
.end method

.method public static final sqrt(D)D
    .locals 2

    invoke-static {p0, p1}, Lcom/ardor3d/math/FastMath;->inverseSqrt(D)D

    move-result-wide v0

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public static final tan(D)D
    .locals 2

    invoke-static {p0, p1}, Lcom/ardor3d/math/FastMath;->sin(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Lcom/ardor3d/math/FastMath;->cos(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    return-wide v0
.end method
