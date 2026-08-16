.class public Ljavax/vecmath/AxisAngle4d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final EPS:D = 1.0E-12

.field static final serialVersionUID:J = 0x32932416f31765edL


# instance fields
.field public angle:D

.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 28
    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 29
    iput-wide v2, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    .line 30
    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 3
    iput-wide p3, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 4
    iput-wide p5, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    .line 5
    iput-wide p7, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/AxisAngle4d;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iget-wide v0, p1, Ljavax/vecmath/AxisAngle4d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 13
    iget-wide v0, p1, Ljavax/vecmath/AxisAngle4d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 14
    iget-wide v0, p1, Ljavax/vecmath/AxisAngle4d;->z:D

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    .line 15
    iget-wide v0, p1, Ljavax/vecmath/AxisAngle4d;->angle:D

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/AxisAngle4f;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget v0, p1, Ljavax/vecmath/AxisAngle4f;->x:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 18
    iget v0, p1, Ljavax/vecmath/AxisAngle4f;->y:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 19
    iget v0, p1, Ljavax/vecmath/AxisAngle4f;->z:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    .line 20
    iget p1, p1, Ljavax/vecmath/AxisAngle4f;->angle:F

    float-to-double v0, p1

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Vector3d;D)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iget-wide v0, p1, Ljavax/vecmath/Tuple3d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 23
    iget-wide v0, p1, Ljavax/vecmath/Tuple3d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 24
    iget-wide v0, p1, Ljavax/vecmath/Tuple3d;->z:D

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    .line 25
    iput-wide p2, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    const/4 v0, 0x1

    .line 8
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    const/4 v0, 0x2

    .line 9
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    const/4 v0, 0x3

    .line 10
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public epsilonEquals(Ljavax/vecmath/AxisAngle4d;D)Z
    .locals 8

    iget-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/AxisAngle4d;->x:D

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    neg-double v0, v0

    :cond_0
    cmpl-double v0, v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_1

    return v1

    :cond_1
    iget-wide v4, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    iget-wide v6, p1, Ljavax/vecmath/AxisAngle4d;->y:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_2

    neg-double v4, v4

    :cond_2
    cmpl-double v0, v4, p2

    if-lez v0, :cond_3

    return v1

    :cond_3
    iget-wide v4, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    iget-wide v6, p1, Ljavax/vecmath/AxisAngle4d;->z:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_4

    neg-double v4, v4

    :cond_4
    cmpl-double v0, v4, p2

    if-lez v0, :cond_5

    return v1

    :cond_5
    iget-wide v4, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    iget-wide v6, p1, Ljavax/vecmath/AxisAngle4d;->angle:D

    sub-double/2addr v4, v6

    cmpg-double p1, v4, v2

    if-gez p1, :cond_6

    neg-double v4, v4

    :cond_6
    cmpl-double p1, v4, p2

    if-lez p1, :cond_7

    return v1

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    .line 2
    :try_start_0
    check-cast p1, Ljavax/vecmath/AxisAngle4d;

    .line 3
    iget-wide v1, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    iget-wide v3, p1, Ljavax/vecmath/AxisAngle4d;->x:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    iget-wide v3, p1, Ljavax/vecmath/AxisAngle4d;->y:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    iget-wide v3, p1, Ljavax/vecmath/AxisAngle4d;->z:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    iget-wide v3, p1, Ljavax/vecmath/AxisAngle4d;->angle:D
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public equals(Ljavax/vecmath/AxisAngle4d;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-wide v1, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    iget-wide v3, p1, Ljavax/vecmath/AxisAngle4d;->x:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    iget-wide v3, p1, Ljavax/vecmath/AxisAngle4d;->y:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    iget-wide v3, p1, Ljavax/vecmath/AxisAngle4d;->z:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    iget-wide v3, p1, Ljavax/vecmath/AxisAngle4d;->angle:D
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public final get([D)V
    .locals 3

    const/4 v0, 0x0

    iget-wide v1, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    iget-wide v1, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    aput-wide v1, p1, v0

    const/4 v0, 0x2

    iget-wide v1, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    aput-wide v1, p1, v0

    const/4 v0, 0x3

    iget-wide v1, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    aput-wide v1, p1, v0

    return-void
.end method

.method public final getAngle()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    return-wide v0
.end method

.method public getX()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    return-wide v0
.end method

.method public final getY()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    return-wide v0
.end method

.method public getZ()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    iget-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    invoke-static {v0, v1}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1f

    add-long/2addr v0, v2

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    invoke-static {v2, v3}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    const/16 v2, 0x20

    shr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final set(DDDD)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 2
    iput-wide p3, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 3
    iput-wide p5, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    .line 4
    iput-wide p7, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    return-void
.end method

.method public final set(Ljavax/vecmath/AxisAngle4d;)V
    .locals 2

    .line 9
    iget-wide v0, p1, Ljavax/vecmath/AxisAngle4d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 10
    iget-wide v0, p1, Ljavax/vecmath/AxisAngle4d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 11
    iget-wide v0, p1, Ljavax/vecmath/AxisAngle4d;->z:D

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    .line 12
    iget-wide v0, p1, Ljavax/vecmath/AxisAngle4d;->angle:D

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    return-void
.end method

.method public final set(Ljavax/vecmath/AxisAngle4f;)V
    .locals 2

    .line 13
    iget v0, p1, Ljavax/vecmath/AxisAngle4f;->x:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 14
    iget v0, p1, Ljavax/vecmath/AxisAngle4f;->y:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 15
    iget v0, p1, Ljavax/vecmath/AxisAngle4f;->z:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    .line 16
    iget p1, p1, Ljavax/vecmath/AxisAngle4f;->angle:F

    float-to-double v0, p1

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix3d;)V
    .locals 13

    .line 64
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m21:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m12:D

    sub-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 65
    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v4, p1, Ljavax/vecmath/Matrix3d;->m20:D

    sub-double/2addr v2, v4

    double-to-float v2, v2

    float-to-double v2, v2

    iput-wide v2, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 66
    iget-wide v4, p1, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix3d;->m01:D

    sub-double/2addr v4, v6

    double-to-float v4, v4

    float-to-double v4, v4

    iput-wide v4, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    const-wide v2, 0x3d719799812dea11L    # 1.0E-12

    cmpl-double v2, v0, v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-lez v2, :cond_0

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v7, v0, v5

    .line 68
    iget-wide v9, p1, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v11, p1, Ljavax/vecmath/Matrix3d;->m11:D

    add-double/2addr v9, v11

    iget-wide v11, p1, Ljavax/vecmath/Matrix3d;->m22:D

    add-double/2addr v9, v11

    sub-double/2addr v9, v3

    mul-double/2addr v9, v5

    .line 69
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float p1, v5

    float-to-double v5, p1

    iput-wide v5, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    div-double/2addr v3, v0

    .line 70
    iget-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    mul-double/2addr v0, v3

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 71
    iget-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    mul-double/2addr v0, v3

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 72
    iget-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    mul-double/2addr v0, v3

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 73
    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 74
    iput-wide v3, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 75
    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    .line 76
    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    :goto_0
    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix3f;)V
    .locals 11

    .line 51
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m21:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m12:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 52
    iget v2, p1, Ljavax/vecmath/Matrix3f;->m02:F

    iget v3, p1, Ljavax/vecmath/Matrix3f;->m20:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    iput-wide v2, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 53
    iget v4, p1, Ljavax/vecmath/Matrix3f;->m10:F

    iget v5, p1, Ljavax/vecmath/Matrix3f;->m01:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iput-wide v4, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    const-wide v2, 0x3d719799812dea11L    # 1.0E-12

    cmpl-double v2, v0, v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-lez v2, :cond_0

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v7, v0, v5

    .line 55
    iget v2, p1, Ljavax/vecmath/Matrix3f;->m00:F

    iget v9, p1, Ljavax/vecmath/Matrix3f;->m11:F

    add-float/2addr v2, v9

    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    add-float/2addr v2, p1

    float-to-double v9, v2

    sub-double/2addr v9, v3

    mul-double/2addr v9, v5

    .line 56
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float p1, v5

    float-to-double v5, p1

    iput-wide v5, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    div-double/2addr v3, v0

    .line 57
    iget-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    mul-double/2addr v0, v3

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 58
    iget-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    mul-double/2addr v0, v3

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 59
    iget-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    mul-double/2addr v0, v3

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 61
    iput-wide v3, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 62
    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    .line 63
    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    :goto_0
    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix4d;)V
    .locals 13

    .line 36
    new-instance v0, Ljavax/vecmath/Matrix3d;

    invoke-direct {v0}, Ljavax/vecmath/Matrix3d;-><init>()V

    .line 37
    invoke-virtual {p1, v0}, Ljavax/vecmath/Matrix4d;->get(Ljavax/vecmath/Matrix3d;)V

    .line 38
    iget-wide v1, v0, Ljavax/vecmath/Matrix3d;->m21:D

    iget-wide v3, v0, Ljavax/vecmath/Matrix3d;->m12:D

    sub-double/2addr v1, v3

    double-to-float p1, v1

    float-to-double v1, p1

    iput-wide v1, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 39
    iget-wide v3, v0, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v5, v0, Ljavax/vecmath/Matrix3d;->m20:D

    sub-double/2addr v3, v5

    double-to-float p1, v3

    float-to-double v3, p1

    iput-wide v3, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 40
    iget-wide v5, v0, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v7, v0, Ljavax/vecmath/Matrix3d;->m01:D

    sub-double/2addr v5, v7

    double-to-float p1, v5

    float-to-double v5, p1

    iput-wide v5, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    mul-double/2addr v1, v1

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    mul-double/2addr v5, v5

    add-double/2addr v1, v5

    const-wide v3, 0x3d719799812dea11L    # 1.0E-12

    cmpl-double p1, v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-lez p1, :cond_0

    .line 41
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v7, v1, v5

    .line 42
    iget-wide v9, v0, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v11, v0, Ljavax/vecmath/Matrix3d;->m11:D

    add-double/2addr v9, v11

    iget-wide v11, v0, Ljavax/vecmath/Matrix3d;->m22:D

    add-double/2addr v9, v11

    sub-double/2addr v9, v3

    mul-double/2addr v9, v5

    .line 43
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float p1, v5

    float-to-double v5, p1

    iput-wide v5, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    div-double/2addr v3, v1

    .line 44
    iget-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    mul-double/2addr v0, v3

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 45
    iget-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    mul-double/2addr v0, v3

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 46
    iget-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    mul-double/2addr v0, v3

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 48
    iput-wide v3, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 49
    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    .line 50
    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    :goto_0
    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix4f;)V
    .locals 13

    .line 21
    new-instance v0, Ljavax/vecmath/Matrix3d;

    invoke-direct {v0}, Ljavax/vecmath/Matrix3d;-><init>()V

    .line 22
    invoke-virtual {p1, v0}, Ljavax/vecmath/Matrix4f;->get(Ljavax/vecmath/Matrix3d;)V

    .line 23
    iget-wide v1, v0, Ljavax/vecmath/Matrix3d;->m21:D

    iget-wide v3, v0, Ljavax/vecmath/Matrix3d;->m12:D

    sub-double/2addr v1, v3

    double-to-float p1, v1

    float-to-double v1, p1

    iput-wide v1, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 24
    iget-wide v3, v0, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v5, v0, Ljavax/vecmath/Matrix3d;->m20:D

    sub-double/2addr v3, v5

    double-to-float p1, v3

    float-to-double v3, p1

    iput-wide v3, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 25
    iget-wide v5, v0, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v7, v0, Ljavax/vecmath/Matrix3d;->m01:D

    sub-double/2addr v5, v7

    double-to-float p1, v5

    float-to-double v5, p1

    iput-wide v5, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    mul-double/2addr v1, v1

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    mul-double/2addr v5, v5

    add-double/2addr v1, v5

    const-wide v3, 0x3d719799812dea11L    # 1.0E-12

    cmpl-double p1, v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-lez p1, :cond_0

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v7, v1, v5

    .line 27
    iget-wide v9, v0, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v11, v0, Ljavax/vecmath/Matrix3d;->m11:D

    add-double/2addr v9, v11

    iget-wide v11, v0, Ljavax/vecmath/Matrix3d;->m22:D

    add-double/2addr v9, v11

    sub-double/2addr v9, v3

    mul-double/2addr v9, v5

    .line 28
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float p1, v5

    float-to-double v5, p1

    iput-wide v5, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    div-double/2addr v3, v1

    .line 29
    iget-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    mul-double/2addr v0, v3

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 30
    iget-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    mul-double/2addr v0, v3

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 31
    iget-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    mul-double/2addr v0, v3

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 33
    iput-wide v3, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 34
    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    .line 35
    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    :goto_0
    return-void
.end method

.method public final set(Ljavax/vecmath/Quat4d;)V
    .locals 7

    .line 87
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    const-wide v2, 0x3d719799812dea11L    # 1.0E-12

    cmpl-double v2, v0, v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-lez v2, :cond_0

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v3, v0

    .line 89
    iget-wide v5, p1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v5, v3

    iput-wide v5, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 90
    iget-wide v5, p1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v5, v3

    iput-wide v5, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 91
    iget-wide v5, p1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v5, v3

    iput-wide v5, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    .line 92
    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->w:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 93
    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 94
    iput-wide v3, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 95
    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    .line 96
    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    :goto_0
    return-void
.end method

.method public final set(Ljavax/vecmath/Quat4f;)V
    .locals 7

    .line 77
    iget v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, v0

    iget v1, p1, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3d719799812dea11L    # 1.0E-12

    cmpl-double v2, v0, v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-lez v2, :cond_0

    .line 78
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v3, v0

    .line 79
    iget v2, p1, Ljavax/vecmath/Tuple4f;->x:F

    float-to-double v5, v2

    mul-double/2addr v5, v3

    iput-wide v5, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 80
    iget v2, p1, Ljavax/vecmath/Tuple4f;->y:F

    float-to-double v5, v2

    mul-double/2addr v5, v3

    iput-wide v5, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 81
    iget v2, p1, Ljavax/vecmath/Tuple4f;->z:F

    float-to-double v5, v2

    mul-double/2addr v5, v3

    iput-wide v5, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    .line 82
    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 83
    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 84
    iput-wide v3, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 85
    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    .line 86
    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    :goto_0
    return-void
.end method

.method public final set(Ljavax/vecmath/Vector3d;D)V
    .locals 2

    .line 17
    iget-wide v0, p1, Ljavax/vecmath/Tuple3d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    .line 18
    iget-wide v0, p1, Ljavax/vecmath/Tuple3d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    .line 19
    iget-wide v0, p1, Ljavax/vecmath/Tuple3d;->z:D

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    .line 20
    iput-wide p2, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    return-void
.end method

.method public final set([D)V
    .locals 2

    const/4 v0, 0x0

    .line 5
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    const/4 v0, 0x1

    .line 6
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    const/4 v0, 0x2

    .line 7
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    const/4 v0, 0x3

    .line 8
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    return-void
.end method

.method public final setAngle(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    return-void
.end method

.method public final setX(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    return-void
.end method

.method public final setY(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    return-void
.end method

.method public final setZ(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljavax/vecmath/AxisAngle4d;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljavax/vecmath/AxisAngle4d;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljavax/vecmath/AxisAngle4d;->z:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljavax/vecmath/AxisAngle4d;->angle:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
