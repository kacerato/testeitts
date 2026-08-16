.class public Ljavax/vecmath/Quat4f;
.super Ljavax/vecmath/Tuple4f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final EPS:D = 1.0E-6

.field static final EPS2:D = 1.0E-30

.field static final PIO2:D = 1.57079632679

.field static final serialVersionUID:J = 0x2522d3980053434fL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljavax/vecmath/Tuple4f;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljavax/vecmath/Tuple4f;-><init>()V

    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    mul-float v1, p4, p4

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    double-to-float v0, v2

    mul-float/2addr p1, v0

    .line 3
    iput p1, p0, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr p2, v0

    .line 4
    iput p2, p0, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr p3, v0

    .line 5
    iput p3, p0, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr p4, v0

    .line 6
    iput p4, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Quat4d;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple4f;-><init>(Ljavax/vecmath/Tuple4d;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Quat4f;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple4f;-><init>(Ljavax/vecmath/Tuple4f;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple4d;)V
    .locals 4

    .line 21
    invoke-direct {p0}, Ljavax/vecmath/Tuple4f;-><init>()V

    .line 22
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    .line 23
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 24
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 25
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 26
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v0, v2

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple4f;)V
    .locals 4

    .line 15
    invoke-direct {p0}, Ljavax/vecmath/Tuple4f;-><init>()V

    .line 16
    iget v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, v0

    iget v1, p1, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    double-to-float v0, v2

    .line 17
    iget v1, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v1, v0

    iput v1, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 18
    iget v1, p1, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v1, v0

    iput v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 19
    iget v1, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v1, v0

    iput v1, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 20
    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr p1, v0

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public constructor <init>([F)V
    .locals 9

    .line 7
    invoke-direct {p0}, Ljavax/vecmath/Tuple4f;-><init>()V

    const/4 v0, 0x0

    .line 8
    aget v1, p1, v0

    mul-float/2addr v1, v1

    const/4 v2, 0x1

    aget v3, p1, v2

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    mul-float/2addr v4, v4

    add-float/2addr v1, v4

    const/4 v4, 0x3

    aget v5, p1, v4

    mul-float/2addr v5, v5

    add-float/2addr v1, v5

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double/2addr v7, v5

    double-to-float v1, v7

    .line 9
    aget v0, p1, v0

    mul-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 10
    aget v0, p1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 11
    aget v0, p1, v3

    mul-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 12
    aget p1, p1, v4

    mul-float/2addr p1, v1

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method


# virtual methods
.method public final conjugate()V
    .locals 1

    .line 5
    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 6
    iget v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 7
    iget v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    return-void
.end method

.method public final conjugate(Ljavax/vecmath/Quat4f;)V
    .locals 1

    .line 1
    iget v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 2
    iget v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 3
    iget v0, p1, Ljavax/vecmath/Tuple4f;->z:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 4
    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public final interpolate(Ljavax/vecmath/Quat4f;F)V
    .locals 10

    .line 1
    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, v1

    iget v2, p0, Ljavax/vecmath/Tuple4f;->y:F

    iget v3, p1, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Ljavax/vecmath/Tuple4f;->z:F

    iget v4, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    iget v2, p0, Ljavax/vecmath/Tuple4f;->w:F

    iget v5, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    float-to-double v6, v0

    const-wide/16 v8, 0x0

    cmpg-double v0, v6, v8

    if-gez v0, :cond_0

    neg-float v0, v1

    .line 2
    iput v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    neg-float v0, v3

    iput v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    neg-float v0, v4

    iput v0, p1, Ljavax/vecmath/Tuple4f;->z:F

    neg-float v0, v5

    iput v0, p1, Ljavax/vecmath/Tuple4f;->w:F

    neg-double v6, v6

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, v6

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 3
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    float-to-double v6, p2

    sub-double/2addr v0, v6

    mul-double/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    div-double/2addr v0, v4

    mul-double/2addr v6, v2

    .line 6
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    div-double/2addr v2, v4

    goto :goto_0

    :cond_1
    float-to-double v2, p2

    sub-double/2addr v0, v2

    .line 7
    :goto_0
    iget p2, p0, Ljavax/vecmath/Tuple4f;->w:F

    float-to-double v4, p2

    mul-double/2addr v4, v0

    iget p2, p1, Ljavax/vecmath/Tuple4f;->w:F

    float-to-double v6, p2

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    double-to-float p2, v4

    iput p2, p0, Ljavax/vecmath/Tuple4f;->w:F

    .line 8
    iget p2, p0, Ljavax/vecmath/Tuple4f;->x:F

    float-to-double v4, p2

    mul-double/2addr v4, v0

    iget p2, p1, Ljavax/vecmath/Tuple4f;->x:F

    float-to-double v6, p2

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    double-to-float p2, v4

    iput p2, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 9
    iget p2, p0, Ljavax/vecmath/Tuple4f;->y:F

    float-to-double v4, p2

    mul-double/2addr v4, v0

    iget p2, p1, Ljavax/vecmath/Tuple4f;->y:F

    float-to-double v6, p2

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    double-to-float p2, v4

    iput p2, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 10
    iget p2, p0, Ljavax/vecmath/Tuple4f;->z:F

    float-to-double v4, p2

    mul-double/2addr v0, v4

    iget p1, p1, Ljavax/vecmath/Tuple4f;->z:F

    float-to-double p1, p1

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/Tuple4f;->z:F

    return-void
.end method

.method public final interpolate(Ljavax/vecmath/Quat4f;Ljavax/vecmath/Quat4f;F)V
    .locals 10

    .line 11
    iget v0, p2, Ljavax/vecmath/Tuple4f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, v1

    iget v2, p2, Ljavax/vecmath/Tuple4f;->y:F

    iget v3, p1, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p2, Ljavax/vecmath/Tuple4f;->z:F

    iget v4, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    iget v2, p2, Ljavax/vecmath/Tuple4f;->w:F

    iget v5, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    float-to-double v6, v0

    const-wide/16 v8, 0x0

    cmpg-double v0, v6, v8

    if-gez v0, :cond_0

    neg-float v0, v1

    .line 12
    iput v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    neg-float v0, v3

    iput v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    neg-float v0, v4

    iput v0, p1, Ljavax/vecmath/Tuple4f;->z:F

    neg-float v0, v5

    iput v0, p1, Ljavax/vecmath/Tuple4f;->w:F

    neg-double v6, v6

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, v6

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 13
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    float-to-double v6, p3

    sub-double/2addr v0, v6

    mul-double/2addr v0, v2

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    div-double/2addr v0, v4

    mul-double/2addr v6, v2

    .line 16
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    div-double/2addr v2, v4

    goto :goto_0

    :cond_1
    float-to-double v2, p3

    sub-double/2addr v0, v2

    .line 17
    :goto_0
    iget p3, p1, Ljavax/vecmath/Tuple4f;->w:F

    float-to-double v4, p3

    mul-double/2addr v4, v0

    iget p3, p2, Ljavax/vecmath/Tuple4f;->w:F

    float-to-double v6, p3

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    double-to-float p3, v4

    iput p3, p0, Ljavax/vecmath/Tuple4f;->w:F

    .line 18
    iget p3, p1, Ljavax/vecmath/Tuple4f;->x:F

    float-to-double v4, p3

    mul-double/2addr v4, v0

    iget p3, p2, Ljavax/vecmath/Tuple4f;->x:F

    float-to-double v6, p3

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    double-to-float p3, v4

    iput p3, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 19
    iget p3, p1, Ljavax/vecmath/Tuple4f;->y:F

    float-to-double v4, p3

    mul-double/2addr v4, v0

    iget p3, p2, Ljavax/vecmath/Tuple4f;->y:F

    float-to-double v6, p3

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    double-to-float p3, v4

    iput p3, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 20
    iget p1, p1, Ljavax/vecmath/Tuple4f;->z:F

    float-to-double v4, p1

    mul-double/2addr v0, v4

    iget p1, p2, Ljavax/vecmath/Tuple4f;->z:F

    float-to-double p1, p1

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/Tuple4f;->z:F

    return-void
.end method

.method public final inverse()V
    .locals 6

    .line 6
    iget v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    mul-float v1, v0, v0

    iget v2, p0, Ljavax/vecmath/Tuple4f;->x:F

    mul-float v3, v2, v2

    add-float/2addr v1, v3

    iget v3, p0, Ljavax/vecmath/Tuple4f;->y:F

    mul-float v4, v3, v3

    add-float/2addr v1, v4

    iget v4, p0, Ljavax/vecmath/Tuple4f;->z:F

    mul-float v5, v4, v4

    add-float/2addr v1, v5

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v1

    mul-float/2addr v0, v5

    .line 7
    iput v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    neg-float v0, v5

    mul-float/2addr v2, v0

    .line 8
    iput v2, p0, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v3, v0

    .line 9
    iput v3, p0, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v4, v0

    .line 10
    iput v4, p0, Ljavax/vecmath/Tuple4f;->z:F

    return-void
.end method

.method public final inverse(Ljavax/vecmath/Quat4f;)V
    .locals 5

    .line 1
    iget v0, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float v1, v0, v0

    iget v2, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float v3, v2, v2

    add-float/2addr v1, v3

    iget v3, p1, Ljavax/vecmath/Tuple4f;->y:F

    mul-float v4, v3, v3

    add-float/2addr v1, v4

    iget p1, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float v4, p1, p1

    add-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v1

    mul-float/2addr v0, v4

    .line 2
    iput v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    neg-float v0, v4

    mul-float/2addr v2, v0

    .line 3
    iput v2, p0, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v3, v0

    .line 4
    iput v3, p0, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v0, p1

    .line 5
    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    return-void
.end method

.method public final mul(Ljavax/vecmath/Quat4f;)V
    .locals 11

    .line 10
    iget v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    iget v1, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float v2, v0, v1

    iget v3, p0, Ljavax/vecmath/Tuple4f;->x:F

    iget v4, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float v5, v3, v4

    sub-float/2addr v2, v5

    iget v5, p0, Ljavax/vecmath/Tuple4f;->y:F

    iget v6, p1, Ljavax/vecmath/Tuple4f;->y:F

    mul-float v7, v5, v6

    sub-float/2addr v2, v7

    iget v7, p0, Ljavax/vecmath/Tuple4f;->z:F

    iget p1, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float v8, v7, p1

    sub-float/2addr v2, v8

    mul-float v8, v0, v4

    mul-float v9, v1, v3

    add-float/2addr v8, v9

    mul-float v9, v5, p1

    add-float/2addr v8, v9

    mul-float v9, v7, v6

    sub-float/2addr v8, v9

    mul-float v9, v0, v6

    mul-float v10, v1, v5

    add-float/2addr v9, v10

    mul-float v10, v3, p1

    sub-float/2addr v9, v10

    mul-float v10, v7, v4

    add-float/2addr v9, v10

    mul-float/2addr v0, p1

    mul-float/2addr v1, v7

    add-float/2addr v0, v1

    mul-float/2addr v3, v6

    add-float/2addr v0, v3

    mul-float/2addr v5, v4

    sub-float/2addr v0, v5

    .line 11
    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 12
    iput v2, p0, Ljavax/vecmath/Tuple4f;->w:F

    .line 13
    iput v8, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 14
    iput v9, p0, Ljavax/vecmath/Tuple4f;->y:F

    return-void
.end method

.method public final mul(Ljavax/vecmath/Quat4f;Ljavax/vecmath/Quat4f;)V
    .locals 10

    if-eq p0, p1, :cond_0

    if-eq p0, p2, :cond_0

    .line 1
    iget v0, p1, Ljavax/vecmath/Tuple4f;->w:F

    iget v1, p2, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr v0, v1

    iget v1, p1, Ljavax/vecmath/Tuple4f;->x:F

    iget v2, p2, Ljavax/vecmath/Tuple4f;->x:F

    mul-float v3, v1, v2

    sub-float/2addr v0, v3

    iget v3, p1, Ljavax/vecmath/Tuple4f;->y:F

    iget v4, p2, Ljavax/vecmath/Tuple4f;->y:F

    mul-float v5, v3, v4

    sub-float/2addr v0, v5

    iget v5, p1, Ljavax/vecmath/Tuple4f;->z:F

    iget v6, p2, Ljavax/vecmath/Tuple4f;->z:F

    mul-float v7, v5, v6

    sub-float/2addr v0, v7

    iput v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    .line 2
    iget v0, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr v2, v0

    iget v7, p2, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr v1, v7

    add-float/2addr v2, v1

    mul-float v1, v3, v6

    add-float/2addr v2, v1

    mul-float v1, v5, v4

    sub-float/2addr v2, v1

    iput v2, p0, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v4, v0

    mul-float/2addr v3, v7

    add-float/2addr v4, v3

    .line 3
    iget v1, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float v2, v1, v6

    sub-float/2addr v4, v2

    iget v2, p2, Ljavax/vecmath/Tuple4f;->x:F

    mul-float v3, v5, v2

    add-float/2addr v4, v3

    iput v4, p0, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v0, v6

    mul-float/2addr v7, v5

    add-float/2addr v0, v7

    .line 4
    iget p2, p2, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget p1, p1, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr p1, v2

    sub-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p1, Ljavax/vecmath/Tuple4f;->w:F

    iget v1, p2, Ljavax/vecmath/Tuple4f;->w:F

    mul-float v2, v0, v1

    iget v3, p1, Ljavax/vecmath/Tuple4f;->x:F

    iget v4, p2, Ljavax/vecmath/Tuple4f;->x:F

    mul-float v5, v3, v4

    sub-float/2addr v2, v5

    iget v5, p1, Ljavax/vecmath/Tuple4f;->y:F

    iget v6, p2, Ljavax/vecmath/Tuple4f;->y:F

    mul-float v7, v5, v6

    sub-float/2addr v2, v7

    iget p1, p1, Ljavax/vecmath/Tuple4f;->z:F

    iget p2, p2, Ljavax/vecmath/Tuple4f;->z:F

    mul-float v7, p1, p2

    sub-float/2addr v2, v7

    mul-float v7, v0, v4

    mul-float v8, v1, v3

    add-float/2addr v7, v8

    mul-float v8, v5, p2

    add-float/2addr v7, v8

    mul-float v8, p1, v6

    sub-float/2addr v7, v8

    mul-float v8, v0, v6

    mul-float v9, v1, v5

    add-float/2addr v8, v9

    mul-float v9, v3, p2

    sub-float/2addr v8, v9

    mul-float v9, p1, v4

    add-float/2addr v8, v9

    mul-float/2addr v0, p2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    mul-float/2addr v3, v6

    add-float/2addr v0, v3

    mul-float/2addr v5, v4

    sub-float/2addr v0, v5

    .line 6
    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 7
    iput v2, p0, Ljavax/vecmath/Tuple4f;->w:F

    .line 8
    iput v7, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 9
    iput v8, p0, Ljavax/vecmath/Tuple4f;->y:F

    :goto_0
    return-void
.end method

.method public final mulInverse(Ljavax/vecmath/Quat4f;)V
    .locals 1

    .line 4
    new-instance v0, Ljavax/vecmath/Quat4f;

    invoke-direct {v0, p1}, Ljavax/vecmath/Quat4f;-><init>(Ljavax/vecmath/Quat4f;)V

    .line 5
    invoke-virtual {v0}, Ljavax/vecmath/Quat4f;->inverse()V

    .line 6
    invoke-virtual {p0, v0}, Ljavax/vecmath/Quat4f;->mul(Ljavax/vecmath/Quat4f;)V

    return-void
.end method

.method public final mulInverse(Ljavax/vecmath/Quat4f;Ljavax/vecmath/Quat4f;)V
    .locals 1

    .line 1
    new-instance v0, Ljavax/vecmath/Quat4f;

    invoke-direct {v0, p2}, Ljavax/vecmath/Quat4f;-><init>(Ljavax/vecmath/Quat4f;)V

    .line 2
    invoke-virtual {v0}, Ljavax/vecmath/Quat4f;->inverse()V

    .line 3
    invoke-virtual {p0, p1, v0}, Ljavax/vecmath/Quat4f;->mul(Ljavax/vecmath/Quat4f;Ljavax/vecmath/Quat4f;)V

    return-void
.end method

.method public final normalize()V
    .locals 3

    .line 11
    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    float-to-double v0, v0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 13
    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 14
    iget v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 15
    iget v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 16
    iget v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    goto :goto_0

    .line 17
    :cond_0
    iput v1, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 18
    iput v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 19
    iput v1, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 20
    iput v1, p0, Ljavax/vecmath/Tuple4f;->w:F

    :goto_0
    return-void
.end method

.method public final normalize(Ljavax/vecmath/Quat4f;)V
    .locals 3

    .line 1
    iget v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, v0

    iget v1, p1, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    float-to-double v0, v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 3
    iget v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 4
    iget v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 5
    iget v0, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 6
    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr v1, p1

    iput v1, p0, Ljavax/vecmath/Tuple4f;->w:F

    goto :goto_0

    .line 7
    :cond_0
    iput v1, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 8
    iput v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 9
    iput v1, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 10
    iput v1, p0, Ljavax/vecmath/Tuple4f;->w:F

    :goto_0
    return-void
.end method

.method public final set(Ljavax/vecmath/AxisAngle4d;)V
    .locals 6

    .line 95
    iget-wide v0, p1, Ljavax/vecmath/AxisAngle4d;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p1, Ljavax/vecmath/AxisAngle4d;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p1, Ljavax/vecmath/AxisAngle4d;->z:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    double-to-float v0, v2

    float-to-double v1, v0

    const-wide v3, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    const/4 p1, 0x0

    .line 96
    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    .line 97
    iput p1, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 98
    iput p1, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 99
    iput p1, p0, Ljavax/vecmath/Tuple4f;->z:F

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 100
    iget-wide v2, p1, Ljavax/vecmath/AxisAngle4d;->angle:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 101
    iget-wide v2, p1, Ljavax/vecmath/AxisAngle4d;->angle:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Ljavax/vecmath/Tuple4f;->w:F

    .line 102
    iget-wide v2, p1, Ljavax/vecmath/AxisAngle4d;->x:D

    double-to-float v2, v2

    mul-float/2addr v2, v1

    mul-float/2addr v2, v0

    iput v2, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 103
    iget-wide v2, p1, Ljavax/vecmath/AxisAngle4d;->y:D

    double-to-float v2, v2

    mul-float/2addr v2, v1

    mul-float/2addr v2, v0

    iput v2, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 104
    iget-wide v2, p1, Ljavax/vecmath/AxisAngle4d;->z:D

    double-to-float p1, v2

    mul-float/2addr p1, v1

    mul-float/2addr p1, v0

    iput p1, p0, Ljavax/vecmath/Tuple4f;->z:F

    :goto_0
    return-void
.end method

.method public final set(Ljavax/vecmath/AxisAngle4f;)V
    .locals 6

    .line 85
    iget v0, p1, Ljavax/vecmath/AxisAngle4f;->x:F

    mul-float/2addr v0, v0

    iget v1, p1, Ljavax/vecmath/AxisAngle4f;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p1, Ljavax/vecmath/AxisAngle4f;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, v0

    const-wide v3, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    const/4 p1, 0x0

    .line 86
    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    .line 87
    iput p1, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 88
    iput p1, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 89
    iput p1, p0, Ljavax/vecmath/Tuple4f;->z:F

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 90
    iget v0, p1, Ljavax/vecmath/AxisAngle4f;->angle:F

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 91
    iget v2, p1, Ljavax/vecmath/AxisAngle4f;->angle:F

    float-to-double v2, v2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Ljavax/vecmath/Tuple4f;->w:F

    .line 92
    iget v2, p1, Ljavax/vecmath/AxisAngle4f;->x:F

    mul-float/2addr v2, v1

    mul-float/2addr v2, v0

    iput v2, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 93
    iget v2, p1, Ljavax/vecmath/AxisAngle4f;->y:F

    mul-float/2addr v2, v1

    mul-float/2addr v2, v0

    iput v2, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 94
    iget p1, p1, Ljavax/vecmath/AxisAngle4f;->z:F

    mul-float/2addr p1, v1

    mul-float/2addr p1, v0

    iput p1, p0, Ljavax/vecmath/Tuple4f;->z:F

    :goto_0
    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix3d;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 64
    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v4, v1, Ljavax/vecmath/Matrix3d;->m11:D

    add-double/2addr v2, v4

    iget-wide v6, v1, Ljavax/vecmath/Matrix3d;->m22:D

    add-double/2addr v2, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v8

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v2, v10

    const-wide/16 v12, 0x0

    cmpl-double v14, v2, v12

    const/4 v15, 0x0

    if-ltz v14, :cond_4

    const-wide v16, 0x39b4484bfeebc2a0L    # 1.0E-30

    cmpl-double v14, v2, v16

    if-ltz v14, :cond_0

    .line 65
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Tuple4f;->w:F

    float-to-double v2, v2

    div-double/2addr v10, v2

    .line 66
    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m21:D

    iget-wide v4, v1, Ljavax/vecmath/Matrix3d;->m12:D

    sub-double/2addr v2, v4

    mul-double/2addr v2, v10

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Tuple4f;->x:F

    .line 67
    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v4, v1, Ljavax/vecmath/Matrix3d;->m20:D

    sub-double/2addr v2, v4

    mul-double/2addr v2, v10

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Tuple4f;->y:F

    .line 68
    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v4, v1, Ljavax/vecmath/Matrix3d;->m01:D

    sub-double/2addr v2, v4

    mul-double/2addr v2, v10

    double-to-float v1, v2

    iput v1, v0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    .line 69
    :cond_0
    iput v15, v0, Ljavax/vecmath/Tuple4f;->w:F

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    add-double/2addr v4, v6

    mul-double/2addr v4, v2

    cmpl-double v2, v4, v12

    if-ltz v2, :cond_3

    cmpl-double v2, v4, v16

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    if-ltz v2, :cond_1

    .line 70
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Tuple4f;->x:F

    float-to-double v2, v2

    div-double/2addr v10, v2

    .line 71
    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double/2addr v2, v10

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Tuple4f;->y:F

    .line 72
    iget-wide v1, v1, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v1, v10

    double-to-float v1, v1

    iput v1, v0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    .line 73
    :cond_1
    iput v15, v0, Ljavax/vecmath/Tuple4f;->x:F

    sub-double/2addr v8, v6

    mul-double/2addr v8, v10

    cmpl-double v2, v8, v16

    if-ltz v2, :cond_2

    .line 74
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Tuple4f;->y:F

    .line 75
    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m21:D

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    float-to-double v1, v2

    mul-double/2addr v1, v5

    div-double/2addr v3, v1

    double-to-float v1, v3

    iput v1, v0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    .line 76
    :cond_2
    iput v15, v0, Ljavax/vecmath/Tuple4f;->y:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 77
    iput v1, v0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 78
    iput v15, v0, Ljavax/vecmath/Tuple4f;->x:F

    .line 79
    iput v15, v0, Ljavax/vecmath/Tuple4f;->y:F

    .line 80
    iput v1, v0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 81
    iput v15, v0, Ljavax/vecmath/Tuple4f;->w:F

    .line 82
    iput v15, v0, Ljavax/vecmath/Tuple4f;->x:F

    .line 83
    iput v15, v0, Ljavax/vecmath/Tuple4f;->y:F

    .line 84
    iput v1, v0, Ljavax/vecmath/Tuple4f;->z:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix3f;)V
    .locals 10

    .line 43
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m11:F

    add-float/2addr v0, v1

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m22:F

    add-float/2addr v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v0, v3

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v0, v4

    const/4 v5, 0x0

    cmpl-float v6, v0, v5

    if-ltz v6, :cond_4

    float-to-double v6, v0

    const-wide v8, 0x39b4484bfeebc2a0L    # 1.0E-30

    cmpl-double v0, v6, v8

    if-ltz v0, :cond_0

    .line 44
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    div-float/2addr v4, v0

    .line 45
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m21:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m12:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v4

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 46
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m20:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v4

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 47
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m10:F

    iget p1, p1, Ljavax/vecmath/Matrix3f;->m01:F

    sub-float/2addr v0, p1

    mul-float/2addr v0, v4

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    .line 48
    :cond_0
    iput v5, p0, Ljavax/vecmath/Tuple4f;->w:F

    const/high16 v0, -0x41000000    # -0.5f

    add-float/2addr v1, v2

    mul-float/2addr v1, v0

    cmpl-float v0, v1, v5

    if-ltz v0, :cond_3

    float-to-double v0, v1

    cmpl-double v4, v0, v8

    const/high16 v6, 0x3f000000    # 0.5f

    if-ltz v4, :cond_1

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    div-float/2addr v6, v0

    .line 50
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float/2addr v0, v6

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 51
    iget p1, p1, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr p1, v6

    iput p1, p0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    .line 52
    :cond_1
    iput v5, p0, Ljavax/vecmath/Tuple4f;->x:F

    sub-float v0, v3, v2

    mul-float/2addr v0, v6

    float-to-double v0, v0

    cmpl-double v2, v0, v8

    if-ltz v2, :cond_2

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 54
    iget p1, p1, Ljavax/vecmath/Matrix3f;->m21:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    div-float/2addr p1, v0

    iput p1, p0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    .line 55
    :cond_2
    iput v5, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 56
    iput v3, p0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    .line 57
    :cond_3
    iput v5, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 58
    iput v5, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 59
    iput v3, p0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    .line 60
    :cond_4
    iput v5, p0, Ljavax/vecmath/Tuple4f;->w:F

    .line 61
    iput v5, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 62
    iput v5, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 63
    iput v3, p0, Ljavax/vecmath/Tuple4f;->z:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix4d;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 22
    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v4, v1, Ljavax/vecmath/Matrix4d;->m11:D

    add-double/2addr v2, v4

    iget-wide v6, v1, Ljavax/vecmath/Matrix4d;->m22:D

    add-double/2addr v2, v6

    iget-wide v8, v1, Ljavax/vecmath/Matrix4d;->m33:D

    add-double/2addr v2, v8

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v2, v8

    const-wide/16 v10, 0x0

    cmpl-double v12, v2, v10

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    if-ltz v12, :cond_4

    const-wide v15, 0x39b4484bfeebc2a0L    # 1.0E-30

    cmpl-double v12, v2, v15

    if-ltz v12, :cond_0

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Tuple4f;->w:F

    float-to-double v2, v2

    div-double/2addr v8, v2

    .line 24
    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m21:D

    iget-wide v4, v1, Ljavax/vecmath/Matrix4d;->m12:D

    sub-double/2addr v2, v4

    mul-double/2addr v2, v8

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Tuple4f;->x:F

    .line 25
    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v4, v1, Ljavax/vecmath/Matrix4d;->m20:D

    sub-double/2addr v2, v4

    mul-double/2addr v2, v8

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Tuple4f;->y:F

    .line 26
    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m10:D

    iget-wide v4, v1, Ljavax/vecmath/Matrix4d;->m01:D

    sub-double/2addr v2, v4

    mul-double/2addr v2, v8

    double-to-float v1, v2

    iput v1, v0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    .line 27
    :cond_0
    iput v14, v0, Ljavax/vecmath/Tuple4f;->w:F

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    add-double/2addr v4, v6

    mul-double/2addr v4, v2

    cmpl-double v2, v4, v10

    if-ltz v2, :cond_3

    cmpl-double v2, v4, v15

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    if-ltz v2, :cond_1

    .line 28
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Tuple4f;->x:F

    float-to-double v2, v2

    div-double/2addr v8, v2

    .line 29
    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double/2addr v2, v8

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Tuple4f;->y:F

    .line 30
    iget-wide v1, v1, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double/2addr v1, v8

    double-to-float v1, v1

    iput v1, v0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    .line 31
    :cond_1
    iput v14, v0, Ljavax/vecmath/Tuple4f;->x:F

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v6

    mul-double/2addr v2, v8

    cmpl-double v4, v2, v15

    if-ltz v4, :cond_2

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Tuple4f;->y:F

    .line 33
    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m21:D

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    float-to-double v1, v2

    mul-double/2addr v1, v5

    div-double/2addr v3, v1

    double-to-float v1, v3

    iput v1, v0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    .line 34
    :cond_2
    iput v14, v0, Ljavax/vecmath/Tuple4f;->y:F

    .line 35
    iput v13, v0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    .line 36
    :cond_3
    iput v14, v0, Ljavax/vecmath/Tuple4f;->x:F

    .line 37
    iput v14, v0, Ljavax/vecmath/Tuple4f;->y:F

    .line 38
    iput v13, v0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    .line 39
    :cond_4
    iput v14, v0, Ljavax/vecmath/Tuple4f;->w:F

    .line 40
    iput v14, v0, Ljavax/vecmath/Tuple4f;->x:F

    .line 41
    iput v14, v0, Ljavax/vecmath/Tuple4f;->y:F

    .line 42
    iput v13, v0, Ljavax/vecmath/Tuple4f;->z:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix4f;)V
    .locals 11

    .line 1
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m00:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m11:F

    add-float/2addr v0, v1

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m22:F

    add-float/2addr v0, v2

    iget v3, p1, Ljavax/vecmath/Matrix4f;->m33:F

    add-float/2addr v0, v3

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v0, v3

    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    const/high16 v6, 0x3f800000    # 1.0f

    if-ltz v5, :cond_4

    float-to-double v7, v0

    const-wide v9, 0x39b4484bfeebc2a0L    # 1.0E-30

    cmpl-double v0, v7, v9

    if-ltz v0, :cond_0

    .line 2
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    div-float/2addr v3, v0

    .line 3
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m21:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m12:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 4
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m02:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m20:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 5
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m10:F

    iget p1, p1, Ljavax/vecmath/Matrix4f;->m01:F

    sub-float/2addr v0, p1

    mul-float/2addr v0, v3

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    .line 6
    :cond_0
    iput v4, p0, Ljavax/vecmath/Tuple4f;->w:F

    const/high16 v0, -0x41000000    # -0.5f

    add-float/2addr v1, v2

    mul-float/2addr v1, v0

    cmpl-float v0, v1, v4

    if-ltz v0, :cond_3

    float-to-double v0, v1

    cmpl-double v3, v0, v9

    const/high16 v5, 0x40000000    # 2.0f

    if-ltz v3, :cond_1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, v5

    div-float/2addr v6, v0

    .line 8
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float/2addr v0, v6

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 9
    iget p1, p1, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float/2addr p1, v6

    iput p1, p0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    .line 10
    :cond_1
    iput v4, p0, Ljavax/vecmath/Tuple4f;->x:F

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v1, v6, v2

    mul-float/2addr v1, v0

    float-to-double v0, v1

    cmpl-double v2, v0, v9

    if-ltz v2, :cond_2

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 12
    iget p1, p1, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float/2addr v0, v5

    div-float/2addr p1, v0

    iput p1, p0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    .line 13
    :cond_2
    iput v4, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 14
    iput v6, p0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    .line 15
    :cond_3
    iput v4, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 16
    iput v4, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 17
    iput v6, p0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    .line 18
    :cond_4
    iput v4, p0, Ljavax/vecmath/Tuple4f;->w:F

    .line 19
    iput v4, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 20
    iput v4, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 21
    iput v6, p0, Ljavax/vecmath/Tuple4f;->z:F

    return-void
.end method
