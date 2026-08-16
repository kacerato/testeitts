.class public Ljavax/vecmath/AxisAngle4f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final EPS:D = 1.0E-6

.field static final serialVersionUID:J = -0x243f7b21bcc1c49L


# instance fields
.field public angle:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    .line 28
    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 29
    iput v1, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    .line 30
    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    .line 3
    iput p2, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 4
    iput p3, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    .line 5
    iput p4, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/AxisAngle4d;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget-wide v0, p1, Ljavax/vecmath/AxisAngle4d;->x:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    .line 18
    iget-wide v0, p1, Ljavax/vecmath/AxisAngle4d;->y:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 19
    iget-wide v0, p1, Ljavax/vecmath/AxisAngle4d;->z:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    .line 20
    iget-wide v0, p1, Ljavax/vecmath/AxisAngle4d;->angle:D

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/AxisAngle4f;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iget v0, p1, Ljavax/vecmath/AxisAngle4f;->x:F

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    .line 13
    iget v0, p1, Ljavax/vecmath/AxisAngle4f;->y:F

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 14
    iget v0, p1, Ljavax/vecmath/AxisAngle4f;->z:F

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    .line 15
    iget p1, p1, Ljavax/vecmath/AxisAngle4f;->angle:F

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Vector3f;F)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iget v0, p1, Ljavax/vecmath/Tuple3f;->x:F

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    .line 23
    iget v0, p1, Ljavax/vecmath/Tuple3f;->y:F

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 24
    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    .line 25
    iput p2, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    const/4 v0, 0x1

    .line 8
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    const/4 v0, 0x2

    .line 9
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    const/4 v0, 0x3

    .line 10
    aget p1, p1, v0

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

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

.method public epsilonEquals(Ljavax/vecmath/AxisAngle4f;F)Z
    .locals 4

    iget v0, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    iget v1, p1, Ljavax/vecmath/AxisAngle4f;->x:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    neg-float v0, v0

    :cond_0
    cmpl-float v0, v0, p2

    const/4 v2, 0x0

    if-lez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    iget v3, p1, Ljavax/vecmath/AxisAngle4f;->y:F

    sub-float/2addr v0, v3

    cmpg-float v3, v0, v1

    if-gez v3, :cond_2

    neg-float v0, v0

    :cond_2
    cmpl-float v0, v0, p2

    if-lez v0, :cond_3

    return v2

    :cond_3
    iget v0, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    iget v3, p1, Ljavax/vecmath/AxisAngle4f;->z:F

    sub-float/2addr v0, v3

    cmpg-float v3, v0, v1

    if-gez v3, :cond_4

    neg-float v0, v0

    :cond_4
    cmpl-float v0, v0, p2

    if-lez v0, :cond_5

    return v2

    :cond_5
    iget v0, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    iget p1, p1, Ljavax/vecmath/AxisAngle4f;->angle:F

    sub-float/2addr v0, p1

    cmpg-float p1, v0, v1

    if-gez p1, :cond_6

    neg-float v0, v0

    :cond_6
    cmpl-float p1, v0, p2

    if-lez p1, :cond_7

    return v2

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    .line 2
    :try_start_0
    check-cast p1, Ljavax/vecmath/AxisAngle4f;

    .line 3
    iget v1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    iget v2, p1, Ljavax/vecmath/AxisAngle4f;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    iget v2, p1, Ljavax/vecmath/AxisAngle4f;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    iget v2, p1, Ljavax/vecmath/AxisAngle4f;->z:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    iget p1, p1, Ljavax/vecmath/AxisAngle4f;->angle:F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float p1, v1, p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public equals(Ljavax/vecmath/AxisAngle4f;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget v1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    iget v2, p1, Ljavax/vecmath/AxisAngle4f;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    iget v2, p1, Ljavax/vecmath/AxisAngle4f;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    iget v2, p1, Ljavax/vecmath/AxisAngle4f;->z:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    iget p1, p1, Ljavax/vecmath/AxisAngle4f;->angle:F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float p1, v1, p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public final get([F)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    aput v1, p1, v0

    const/4 v0, 0x2

    iget v1, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    aput v1, p1, v0

    const/4 v0, 0x3

    iget v1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    aput v1, p1, v0

    return-void
.end method

.method public final getAngle()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    return v0
.end method

.method public final getX()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    return v0
.end method

.method public final getY()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    return v0
.end method

.method public final getZ()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    return v0
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    invoke-static {v0}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1f

    add-long/2addr v0, v2

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v2, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    invoke-static {v2}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const/16 v2, 0x20

    shr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final set(FFFF)V
    .locals 0

    .line 1
    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    .line 2
    iput p2, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 3
    iput p3, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    .line 4
    iput p4, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    return-void
.end method

.method public final set(Ljavax/vecmath/AxisAngle4d;)V
    .locals 2

    .line 13
    iget-wide v0, p1, Ljavax/vecmath/AxisAngle4d;->x:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    .line 14
    iget-wide v0, p1, Ljavax/vecmath/AxisAngle4d;->y:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 15
    iget-wide v0, p1, Ljavax/vecmath/AxisAngle4d;->z:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    .line 16
    iget-wide v0, p1, Ljavax/vecmath/AxisAngle4d;->angle:D

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    return-void
.end method

.method public final set(Ljavax/vecmath/AxisAngle4f;)V
    .locals 1

    .line 9
    iget v0, p1, Ljavax/vecmath/AxisAngle4f;->x:F

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    .line 10
    iget v0, p1, Ljavax/vecmath/AxisAngle4f;->y:F

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 11
    iget v0, p1, Ljavax/vecmath/AxisAngle4f;->z:F

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    .line 12
    iget p1, p1, Ljavax/vecmath/AxisAngle4f;->angle:F

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix3d;)V
    .locals 10

    .line 84
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m21:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m12:D

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    .line 85
    iget-wide v1, p1, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix3d;->m20:D

    sub-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 86
    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v4, p1, Ljavax/vecmath/Matrix3d;->m01:D

    sub-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    float-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v4, v0, v2

    .line 88
    iget-wide v6, p1, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v8, p1, Ljavax/vecmath/Matrix3d;->m11:D

    add-double/2addr v6, v8

    iget-wide v8, p1, Ljavax/vecmath/Matrix3d;->m22:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    mul-double/2addr v6, v2

    .line 89
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float p1, v2

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    div-double/2addr v8, v0

    .line 90
    iget p1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    float-to-double v0, p1

    mul-double/2addr v0, v8

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    .line 91
    iget p1, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    float-to-double v0, p1

    mul-double/2addr v0, v8

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 92
    iget p1, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    float-to-double v0, p1

    mul-double/2addr v0, v8

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 93
    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 94
    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 95
    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    .line 96
    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    :goto_0
    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix3f;)V
    .locals 10

    .line 71
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m21:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m12:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    .line 72
    iget v1, p1, Ljavax/vecmath/Matrix3f;->m02:F

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m20:F

    sub-float/2addr v1, v2

    iput v1, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 73
    iget v2, p1, Ljavax/vecmath/Matrix3f;->m10:F

    iget v3, p1, Ljavax/vecmath/Matrix3f;->m01:F

    sub-float/2addr v2, v3

    iput v2, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    float-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 74
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v4, v0, v2

    .line 75
    iget v6, p1, Ljavax/vecmath/Matrix3f;->m00:F

    iget v7, p1, Ljavax/vecmath/Matrix3f;->m11:F

    add-float/2addr v6, v7

    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    add-float/2addr v6, p1

    float-to-double v6, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    mul-double/2addr v6, v2

    .line 76
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float p1, v2

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    div-double/2addr v8, v0

    .line 77
    iget p1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    float-to-double v0, p1

    mul-double/2addr v0, v8

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    .line 78
    iget p1, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    float-to-double v0, p1

    mul-double/2addr v0, v8

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 79
    iget p1, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    float-to-double v0, p1

    mul-double/2addr v0, v8

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 80
    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 81
    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 82
    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    .line 83
    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    :goto_0
    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix4d;)V
    .locals 11

    .line 56
    new-instance v0, Ljavax/vecmath/Matrix3d;

    invoke-direct {v0}, Ljavax/vecmath/Matrix3d;-><init>()V

    .line 57
    invoke-virtual {p1, v0}, Ljavax/vecmath/Matrix4d;->get(Ljavax/vecmath/Matrix3d;)V

    .line 58
    iget-wide v1, v0, Ljavax/vecmath/Matrix3d;->m21:D

    iget-wide v3, v0, Ljavax/vecmath/Matrix3d;->m12:D

    sub-double/2addr v1, v3

    double-to-float p1, v1

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    .line 59
    iget-wide v1, v0, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v3, v0, Ljavax/vecmath/Matrix3d;->m20:D

    sub-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 60
    iget-wide v2, v0, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v4, v0, Ljavax/vecmath/Matrix3d;->m01:D

    sub-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    mul-float/2addr p1, p1

    mul-float/2addr v1, v1

    add-float/2addr p1, v1

    mul-float/2addr v2, v2

    add-float/2addr p1, v2

    float-to-double v1, p1

    const-wide v3, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double p1, v1, v3

    if-lez p1, :cond_0

    .line 61
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double v5, v1, v3

    .line 62
    iget-wide v7, v0, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v9, v0, Ljavax/vecmath/Matrix3d;->m11:D

    add-double/2addr v7, v9

    iget-wide v9, v0, Ljavax/vecmath/Matrix3d;->m22:D

    add-double/2addr v7, v9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v9

    mul-double/2addr v7, v3

    .line 63
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float p1, v3

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    div-double/2addr v9, v1

    .line 64
    iget p1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    float-to-double v0, p1

    mul-double/2addr v0, v9

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    .line 65
    iget p1, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    float-to-double v0, p1

    mul-double/2addr v0, v9

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 66
    iget p1, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    float-to-double v0, p1

    mul-double/2addr v0, v9

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 67
    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 68
    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 69
    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    .line 70
    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    :goto_0
    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix4f;)V
    .locals 11

    .line 41
    new-instance v0, Ljavax/vecmath/Matrix3f;

    invoke-direct {v0}, Ljavax/vecmath/Matrix3f;-><init>()V

    .line 42
    invoke-virtual {p1, v0}, Ljavax/vecmath/Matrix4f;->get(Ljavax/vecmath/Matrix3f;)V

    .line 43
    iget p1, v0, Ljavax/vecmath/Matrix3f;->m21:F

    iget v1, v0, Ljavax/vecmath/Matrix3f;->m12:F

    sub-float/2addr p1, v1

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    .line 44
    iget v1, v0, Ljavax/vecmath/Matrix3f;->m02:F

    iget v2, v0, Ljavax/vecmath/Matrix3f;->m20:F

    sub-float/2addr v1, v2

    iput v1, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 45
    iget v2, v0, Ljavax/vecmath/Matrix3f;->m10:F

    iget v3, v0, Ljavax/vecmath/Matrix3f;->m01:F

    sub-float/2addr v2, v3

    iput v2, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    mul-float/2addr p1, p1

    mul-float/2addr v1, v1

    add-float/2addr p1, v1

    mul-float/2addr v2, v2

    add-float/2addr p1, v2

    float-to-double v1, p1

    const-wide v3, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double p1, v1, v3

    if-lez p1, :cond_0

    .line 46
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double v5, v1, v3

    .line 47
    iget p1, v0, Ljavax/vecmath/Matrix3f;->m00:F

    iget v7, v0, Ljavax/vecmath/Matrix3f;->m11:F

    add-float/2addr p1, v7

    iget v0, v0, Ljavax/vecmath/Matrix3f;->m22:F

    add-float/2addr p1, v0

    float-to-double v7, p1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v9

    mul-double/2addr v7, v3

    .line 48
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float p1, v3

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    div-double/2addr v9, v1

    .line 49
    iget p1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    float-to-double v0, p1

    mul-double/2addr v0, v9

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    .line 50
    iget p1, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    float-to-double v0, p1

    mul-double/2addr v0, v9

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 51
    iget p1, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    float-to-double v0, p1

    mul-double/2addr v0, v9

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 52
    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 53
    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 54
    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    .line 55
    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    :goto_0
    return-void
.end method

.method public final set(Ljavax/vecmath/Quat4d;)V
    .locals 6

    .line 31
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    .line 33
    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v4, v2

    double-to-float v4, v4

    iput v4, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    .line 34
    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v4, v2

    double-to-float v4, v4

    iput v4, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 35
    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v4, v2

    double-to-float v2, v4

    iput v2, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    .line 36
    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->w:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 37
    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 38
    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 39
    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    .line 40
    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    :goto_0
    return-void
.end method

.method public final set(Ljavax/vecmath/Quat4f;)V
    .locals 6

    .line 21
    iget v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, v0

    iget v1, p1, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    .line 23
    iget v4, p1, Ljavax/vecmath/Tuple4f;->x:F

    float-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-float v4, v4

    iput v4, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    .line 24
    iget v4, p1, Ljavax/vecmath/Tuple4f;->y:F

    float-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-float v4, v4

    iput v4, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 25
    iget v4, p1, Ljavax/vecmath/Tuple4f;->z:F

    float-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-float v2, v4

    iput v2, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    .line 26
    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 27
    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 29
    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    .line 30
    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    :goto_0
    return-void
.end method

.method public final set(Ljavax/vecmath/Vector3f;F)V
    .locals 1

    .line 17
    iget v0, p1, Ljavax/vecmath/Tuple3f;->x:F

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    .line 18
    iget v0, p1, Ljavax/vecmath/Tuple3f;->y:F

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    .line 19
    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    .line 20
    iput p2, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    return-void
.end method

.method public final set([F)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    const/4 v0, 0x1

    .line 6
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    const/4 v0, 0x2

    .line 7
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    const/4 v0, 0x3

    .line 8
    aget p1, p1, v0

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    return-void
.end method

.method public final setAngle(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    return-void
.end method

.method public final setX(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    return-void
.end method

.method public final setY(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    return-void
.end method

.method public final setZ(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljavax/vecmath/AxisAngle4f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljavax/vecmath/AxisAngle4f;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljavax/vecmath/AxisAngle4f;->z:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljavax/vecmath/AxisAngle4f;->angle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
