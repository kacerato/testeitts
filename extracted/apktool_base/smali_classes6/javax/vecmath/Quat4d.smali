.class public Ljavax/vecmath/Quat4d;
.super Ljavax/vecmath/Tuple4d;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final EPS:D = 1.0E-12

.field static final EPS2:D = 1.0E-30

.field static final PIO2:D = 1.57079632679

.field static final serialVersionUID:J = 0x69289dcfc9cb668bL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljavax/vecmath/Tuple4d;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljavax/vecmath/Tuple4d;-><init>()V

    mul-double v0, p1, p1

    mul-double v2, p3, p3

    add-double/2addr v0, v2

    mul-double v2, p5, p5

    add-double/2addr v0, v2

    mul-double v2, p7, p7

    add-double/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    mul-double/2addr p1, v2

    .line 3
    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr p3, v2

    .line 4
    iput-wide p3, p0, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr p5, v2

    .line 5
    iput-wide p5, p0, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr p7, v2

    .line 6
    iput-wide p7, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Quat4d;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple4d;-><init>(Ljavax/vecmath/Tuple4d;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Quat4f;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple4d;-><init>(Ljavax/vecmath/Tuple4f;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple4d;)V
    .locals 4

    .line 21
    invoke-direct {p0}, Ljavax/vecmath/Tuple4d;-><init>()V

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

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 24
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 25
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 26
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple4f;)V
    .locals 4

    .line 15
    invoke-direct {p0}, Ljavax/vecmath/Tuple4d;-><init>()V

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

    .line 17
    iget v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    float-to-double v0, v0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 18
    iget v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    float-to-double v0, v0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 19
    iget v0, p1, Ljavax/vecmath/Tuple4f;->z:F

    float-to-double v0, v0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 20
    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    float-to-double v0, p1

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 8

    .line 7
    invoke-direct {p0}, Ljavax/vecmath/Tuple4d;-><init>()V

    const/4 v0, 0x0

    .line 8
    aget-wide v1, p1, v0

    mul-double/2addr v1, v1

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    mul-double/2addr v4, v4

    add-double/2addr v1, v4

    const/4 v4, 0x2

    aget-wide v5, p1, v4

    mul-double/2addr v5, v5

    add-double/2addr v1, v5

    const/4 v5, 0x3

    aget-wide v6, p1, v5

    mul-double/2addr v6, v6

    add-double/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double/2addr v6, v1

    .line 9
    aget-wide v0, p1, v0

    mul-double/2addr v0, v6

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 10
    aget-wide v0, p1, v3

    mul-double/2addr v0, v6

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 11
    aget-wide v0, p1, v4

    mul-double/2addr v0, v6

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 12
    aget-wide v0, p1, v5

    mul-double/2addr v0, v6

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method


# virtual methods
.method public final conjugate()V
    .locals 2

    .line 5
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    return-void
.end method

.method public final conjugate(Ljavax/vecmath/Quat4d;)V
    .locals 2

    .line 1
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 2
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 3
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->z:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 4
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->w:D

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public final interpolate(Ljavax/vecmath/Quat4d;D)V
    .locals 12

    .line 1
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Tuple4d;->y:D

    iget-wide v6, p1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    iget-wide v4, p0, Ljavax/vecmath/Tuple4d;->z:D

    iget-wide v8, p1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v4, v8

    add-double/2addr v0, v4

    iget-wide v4, p0, Ljavax/vecmath/Tuple4d;->w:D

    iget-wide v10, p1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v4, v10

    add-double/2addr v0, v4

    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    neg-double v2, v2

    .line 2
    iput-wide v2, p1, Ljavax/vecmath/Tuple4d;->x:D

    neg-double v2, v6

    iput-wide v2, p1, Ljavax/vecmath/Tuple4d;->y:D

    neg-double v2, v8

    iput-wide v2, p1, Ljavax/vecmath/Tuple4d;->z:D

    neg-double v2, v10

    iput-wide v2, p1, Ljavax/vecmath/Tuple4d;->w:D

    neg-double v0, v0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v4, v2, v0

    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    sub-double/2addr v2, p2

    mul-double/2addr v2, v0

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    div-double/2addr v2, v4

    mul-double/2addr p2, v0

    .line 6
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    div-double/2addr p2, v4

    goto :goto_0

    :cond_1
    sub-double/2addr v2, p2

    .line 7
    :goto_0
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v0, v2

    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v4, p2

    add-double/2addr v0, v4

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    .line 8
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v0, v2

    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v4, p2

    add-double/2addr v0, v4

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 9
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v0, v2

    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v4, p2

    add-double/2addr v0, v4

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 10
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v2, v0

    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr p2, v0

    add-double/2addr v2, p2

    iput-wide v2, p0, Ljavax/vecmath/Tuple4d;->z:D

    return-void
.end method

.method public final interpolate(Ljavax/vecmath/Quat4d;Ljavax/vecmath/Quat4d;D)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 11
    iget-wide v3, v2, Ljavax/vecmath/Tuple4d;->x:D

    iget-wide v5, v1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v3, v5

    iget-wide v7, v2, Ljavax/vecmath/Tuple4d;->y:D

    iget-wide v9, v1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    iget-wide v7, v2, Ljavax/vecmath/Tuple4d;->z:D

    iget-wide v11, v1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v7, v11

    add-double/2addr v3, v7

    iget-wide v7, v2, Ljavax/vecmath/Tuple4d;->w:D

    iget-wide v13, v1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v7, v13

    add-double/2addr v3, v7

    const-wide/16 v7, 0x0

    cmpg-double v7, v3, v7

    if-gez v7, :cond_0

    neg-double v5, v5

    .line 12
    iput-wide v5, v1, Ljavax/vecmath/Tuple4d;->x:D

    neg-double v5, v9

    iput-wide v5, v1, Ljavax/vecmath/Tuple4d;->y:D

    neg-double v5, v11

    iput-wide v5, v1, Ljavax/vecmath/Tuple4d;->z:D

    neg-double v5, v13

    iput-wide v5, v1, Ljavax/vecmath/Tuple4d;->w:D

    neg-double v3, v3

    :cond_0
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v7, v5, v3

    const-wide v9, 0x3d719799812dea11L    # 1.0E-12

    cmpl-double v7, v7, v9

    if-lez v7, :cond_1

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    .line 14
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    sub-double v5, v5, p3

    mul-double/2addr v5, v3

    .line 15
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    div-double/2addr v5, v7

    mul-double v3, v3, p3

    .line 16
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    div-double/2addr v3, v7

    goto :goto_0

    :cond_1
    sub-double v5, v5, p3

    move-wide/from16 v3, p3

    .line 17
    :goto_0
    iget-wide v7, v1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v7, v5

    iget-wide v9, v2, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v9, v3

    add-double/2addr v7, v9

    iput-wide v7, v0, Ljavax/vecmath/Tuple4d;->w:D

    .line 18
    iget-wide v7, v1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v7, v5

    iget-wide v9, v2, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v9, v3

    add-double/2addr v7, v9

    iput-wide v7, v0, Ljavax/vecmath/Tuple4d;->x:D

    .line 19
    iget-wide v7, v1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v7, v5

    iget-wide v9, v2, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v9, v3

    add-double/2addr v7, v9

    iput-wide v7, v0, Ljavax/vecmath/Tuple4d;->y:D

    .line 20
    iget-wide v7, v1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v5, v7

    iget-wide v1, v2, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v3, v1

    add-double/2addr v5, v3

    iput-wide v5, v0, Ljavax/vecmath/Tuple4d;->z:D

    return-void
.end method

.method public final inverse()V
    .locals 12

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    mul-double v2, v0, v0

    iget-wide v4, p0, Ljavax/vecmath/Tuple4d;->x:D

    mul-double v6, v4, v4

    add-double/2addr v2, v6

    iget-wide v6, p0, Ljavax/vecmath/Tuple4d;->y:D

    mul-double v8, v6, v6

    add-double/2addr v2, v8

    iget-wide v8, p0, Ljavax/vecmath/Tuple4d;->z:D

    mul-double v10, v8, v8

    add-double/2addr v2, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double/2addr v10, v2

    mul-double/2addr v0, v10

    .line 7
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    neg-double v0, v10

    mul-double/2addr v4, v0

    .line 8
    iput-wide v4, p0, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v6, v0

    .line 9
    iput-wide v6, p0, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v8, v0

    .line 10
    iput-wide v8, p0, Ljavax/vecmath/Tuple4d;->z:D

    return-void
.end method

.method public final inverse(Ljavax/vecmath/Quat4d;)V
    .locals 12

    .line 1
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double v2, v0, v0

    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double v6, v4, v4

    add-double/2addr v2, v6

    iget-wide v6, p1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double v8, v6, v6

    add-double/2addr v2, v8

    iget-wide v8, p1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double v10, v8, v8

    add-double/2addr v2, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double/2addr v10, v2

    mul-double/2addr v0, v10

    .line 2
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    neg-double v0, v10

    mul-double/2addr v4, v0

    .line 3
    iput-wide v4, p0, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v6, v0

    .line 4
    iput-wide v6, p0, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v0, v8

    .line 5
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    return-void
.end method

.method public final mul(Ljavax/vecmath/Quat4d;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 10
    iget-wide v2, v0, Ljavax/vecmath/Tuple4d;->w:D

    iget-wide v4, v1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double v6, v2, v4

    iget-wide v8, v0, Ljavax/vecmath/Tuple4d;->x:D

    iget-wide v10, v1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double v12, v8, v10

    sub-double/2addr v6, v12

    iget-wide v12, v0, Ljavax/vecmath/Tuple4d;->y:D

    iget-wide v14, v1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double v16, v12, v14

    sub-double v6, v6, v16

    move-wide/from16 v16, v14

    iget-wide v14, v0, Ljavax/vecmath/Tuple4d;->z:D

    iget-wide v0, v1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double v18, v14, v0

    sub-double v6, v6, v18

    mul-double v18, v2, v10

    mul-double v20, v4, v8

    add-double v18, v18, v20

    mul-double v20, v12, v0

    add-double v18, v18, v20

    mul-double v20, v14, v16

    move-wide/from16 v22, v6

    sub-double v6, v18, v20

    mul-double v18, v2, v16

    mul-double v20, v4, v12

    add-double v18, v18, v20

    mul-double v20, v8, v0

    sub-double v18, v18, v20

    mul-double v20, v14, v10

    move-wide/from16 v24, v6

    add-double v6, v18, v20

    mul-double/2addr v2, v0

    mul-double/2addr v4, v14

    add-double/2addr v2, v4

    mul-double v8, v8, v16

    add-double/2addr v2, v8

    mul-double/2addr v12, v10

    sub-double/2addr v2, v12

    move-object/from16 v0, p0

    .line 11
    iput-wide v2, v0, Ljavax/vecmath/Tuple4d;->z:D

    move-wide/from16 v1, v22

    .line 12
    iput-wide v1, v0, Ljavax/vecmath/Tuple4d;->w:D

    move-wide/from16 v1, v24

    .line 13
    iput-wide v1, v0, Ljavax/vecmath/Tuple4d;->x:D

    .line 14
    iput-wide v6, v0, Ljavax/vecmath/Tuple4d;->y:D

    return-void
.end method

.method public final mul(Ljavax/vecmath/Quat4d;Ljavax/vecmath/Quat4d;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    .line 1
    iget-wide v3, v1, Ljavax/vecmath/Tuple4d;->w:D

    iget-wide v5, v2, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v3, v5

    iget-wide v5, v1, Ljavax/vecmath/Tuple4d;->x:D

    iget-wide v7, v2, Ljavax/vecmath/Tuple4d;->x:D

    mul-double v9, v5, v7

    sub-double/2addr v3, v9

    iget-wide v9, v1, Ljavax/vecmath/Tuple4d;->y:D

    iget-wide v11, v2, Ljavax/vecmath/Tuple4d;->y:D

    mul-double v13, v9, v11

    sub-double/2addr v3, v13

    iget-wide v13, v1, Ljavax/vecmath/Tuple4d;->z:D

    move-wide v15, v11

    iget-wide v11, v2, Ljavax/vecmath/Tuple4d;->z:D

    mul-double v17, v13, v11

    sub-double v3, v3, v17

    iput-wide v3, v0, Ljavax/vecmath/Tuple4d;->w:D

    .line 2
    iget-wide v3, v1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v7, v3

    move-wide/from16 v17, v3

    iget-wide v3, v2, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v5, v3

    add-double/2addr v7, v5

    mul-double v5, v9, v11

    add-double/2addr v7, v5

    mul-double v5, v13, v15

    sub-double/2addr v7, v5

    iput-wide v7, v0, Ljavax/vecmath/Tuple4d;->x:D

    mul-double v5, v17, v15

    mul-double/2addr v9, v3

    add-double/2addr v5, v9

    .line 3
    iget-wide v7, v1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double v9, v7, v11

    sub-double/2addr v5, v9

    iget-wide v9, v2, Ljavax/vecmath/Tuple4d;->x:D

    mul-double v15, v13, v9

    add-double/2addr v5, v15

    iput-wide v5, v0, Ljavax/vecmath/Tuple4d;->y:D

    mul-double v5, v17, v11

    mul-double/2addr v3, v13

    add-double/2addr v5, v3

    .line 4
    iget-wide v2, v2, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v7, v2

    add-double/2addr v5, v7

    iget-wide v1, v1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v1, v9

    sub-double/2addr v5, v1

    iput-wide v5, v0, Ljavax/vecmath/Tuple4d;->z:D

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v3, v1, Ljavax/vecmath/Tuple4d;->w:D

    iget-wide v5, v2, Ljavax/vecmath/Tuple4d;->w:D

    mul-double v7, v3, v5

    iget-wide v9, v1, Ljavax/vecmath/Tuple4d;->x:D

    iget-wide v11, v2, Ljavax/vecmath/Tuple4d;->x:D

    mul-double v13, v9, v11

    sub-double/2addr v7, v13

    iget-wide v13, v1, Ljavax/vecmath/Tuple4d;->y:D

    move-wide v15, v5

    iget-wide v5, v2, Ljavax/vecmath/Tuple4d;->y:D

    mul-double v17, v13, v5

    sub-double v7, v7, v17

    iget-wide v0, v1, Ljavax/vecmath/Tuple4d;->z:D

    move-wide/from16 v17, v5

    iget-wide v5, v2, Ljavax/vecmath/Tuple4d;->z:D

    mul-double v19, v0, v5

    sub-double v7, v7, v19

    mul-double v19, v3, v11

    mul-double v21, v15, v9

    add-double v19, v19, v21

    mul-double v21, v13, v5

    add-double v19, v19, v21

    mul-double v21, v0, v17

    move-wide/from16 p1, v7

    sub-double v7, v19, v21

    mul-double v19, v3, v17

    mul-double v21, v15, v13

    add-double v19, v19, v21

    mul-double v21, v9, v5

    sub-double v19, v19, v21

    mul-double v21, v0, v11

    move-wide/from16 v23, v7

    add-double v7, v19, v21

    mul-double/2addr v3, v5

    mul-double v5, v15, v0

    add-double/2addr v3, v5

    mul-double v9, v9, v17

    add-double/2addr v3, v9

    mul-double/2addr v13, v11

    sub-double/2addr v3, v13

    move-object/from16 v0, p0

    .line 6
    iput-wide v3, v0, Ljavax/vecmath/Tuple4d;->z:D

    move-wide/from16 v1, p1

    .line 7
    iput-wide v1, v0, Ljavax/vecmath/Tuple4d;->w:D

    move-wide/from16 v1, v23

    .line 8
    iput-wide v1, v0, Ljavax/vecmath/Tuple4d;->x:D

    .line 9
    iput-wide v7, v0, Ljavax/vecmath/Tuple4d;->y:D

    :goto_0
    return-void
.end method

.method public final mulInverse(Ljavax/vecmath/Quat4d;)V
    .locals 1

    .line 4
    new-instance v0, Ljavax/vecmath/Quat4d;

    invoke-direct {v0, p1}, Ljavax/vecmath/Quat4d;-><init>(Ljavax/vecmath/Quat4d;)V

    .line 5
    invoke-virtual {v0}, Ljavax/vecmath/Quat4d;->inverse()V

    .line 6
    invoke-virtual {p0, v0}, Ljavax/vecmath/Quat4d;->mul(Ljavax/vecmath/Quat4d;)V

    return-void
.end method

.method public final mulInverse(Ljavax/vecmath/Quat4d;Ljavax/vecmath/Quat4d;)V
    .locals 1

    .line 1
    new-instance v0, Ljavax/vecmath/Quat4d;

    invoke-direct {v0, p2}, Ljavax/vecmath/Quat4d;-><init>(Ljavax/vecmath/Quat4d;)V

    .line 2
    invoke-virtual {v0}, Ljavax/vecmath/Quat4d;->inverse()V

    .line 3
    invoke-virtual {p0, p1, v0}, Ljavax/vecmath/Quat4d;->mul(Ljavax/vecmath/Quat4d;Ljavax/vecmath/Quat4d;)V

    return-void
.end method

.method public final normalize()V
    .locals 5

    .line 11
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    .line 13
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 14
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 15
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 16
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    goto :goto_0

    .line 17
    :cond_0
    iput-wide v2, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 18
    iput-wide v2, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 19
    iput-wide v2, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 20
    iput-wide v2, p0, Ljavax/vecmath/Tuple4d;->w:D

    :goto_0
    return-void
.end method

.method public final normalize(Ljavax/vecmath/Quat4d;)V
    .locals 5

    .line 1
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

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    .line 3
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 4
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 5
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 6
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v2, v0

    iput-wide v2, p0, Ljavax/vecmath/Tuple4d;->w:D

    goto :goto_0

    .line 7
    :cond_0
    iput-wide v2, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 8
    iput-wide v2, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 9
    iput-wide v2, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 10
    iput-wide v2, p0, Ljavax/vecmath/Tuple4d;->w:D

    :goto_0
    return-void
.end method

.method public final set(Ljavax/vecmath/AxisAngle4d;)V
    .locals 8

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

    const-wide v2, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v0, 0x0

    .line 96
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    .line 97
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 98
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 99
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    .line 100
    iget-wide v0, p1, Ljavax/vecmath/AxisAngle4d;->angle:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 101
    iget-wide v6, p1, Ljavax/vecmath/AxisAngle4d;->angle:D

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iput-wide v4, p0, Ljavax/vecmath/Tuple4d;->w:D

    .line 102
    iget-wide v4, p1, Ljavax/vecmath/AxisAngle4d;->x:D

    mul-double/2addr v4, v2

    mul-double/2addr v4, v0

    iput-wide v4, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 103
    iget-wide v4, p1, Ljavax/vecmath/AxisAngle4d;->y:D

    mul-double/2addr v4, v2

    mul-double/2addr v4, v0

    iput-wide v4, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 104
    iget-wide v4, p1, Ljavax/vecmath/AxisAngle4d;->z:D

    mul-double/2addr v4, v2

    mul-double/2addr v4, v0

    iput-wide v4, p0, Ljavax/vecmath/Tuple4d;->z:D

    :goto_0
    return-void
.end method

.method public final set(Ljavax/vecmath/AxisAngle4f;)V
    .locals 8

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

    const-wide v2, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v0, 0x0

    .line 86
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    .line 87
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 88
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 89
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    goto :goto_0

    .line 90
    :cond_0
    iget v2, p1, Ljavax/vecmath/AxisAngle4f;->angle:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double/2addr v6, v0

    .line 91
    iget v0, p1, Ljavax/vecmath/AxisAngle4f;->angle:F

    float-to-double v0, v0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    .line 92
    iget v0, p1, Ljavax/vecmath/AxisAngle4f;->x:F

    float-to-double v0, v0

    mul-double/2addr v0, v6

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 93
    iget v0, p1, Ljavax/vecmath/AxisAngle4f;->y:F

    float-to-double v0, v0

    mul-double/2addr v0, v6

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 94
    iget p1, p1, Ljavax/vecmath/AxisAngle4f;->z:F

    float-to-double v0, p1

    mul-double/2addr v0, v6

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    :goto_0
    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix3d;)V
    .locals 17

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

    if-ltz v14, :cond_4

    const-wide v14, 0x39b4484bfeebc2a0L    # 1.0E-30

    cmpl-double v16, v2, v14

    if-ltz v16, :cond_0

    .line 65
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, v0, Ljavax/vecmath/Tuple4d;->w:D

    div-double/2addr v10, v2

    .line 66
    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m21:D

    iget-wide v4, v1, Ljavax/vecmath/Matrix3d;->m12:D

    sub-double/2addr v2, v4

    mul-double/2addr v2, v10

    iput-wide v2, v0, Ljavax/vecmath/Tuple4d;->x:D

    .line 67
    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v4, v1, Ljavax/vecmath/Matrix3d;->m20:D

    sub-double/2addr v2, v4

    mul-double/2addr v2, v10

    iput-wide v2, v0, Ljavax/vecmath/Tuple4d;->y:D

    .line 68
    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v4, v1, Ljavax/vecmath/Matrix3d;->m01:D

    sub-double/2addr v2, v4

    mul-double/2addr v2, v10

    iput-wide v2, v0, Ljavax/vecmath/Tuple4d;->z:D

    return-void

    .line 69
    :cond_0
    iput-wide v12, v0, Ljavax/vecmath/Tuple4d;->w:D

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    add-double/2addr v4, v6

    mul-double/2addr v4, v2

    cmpl-double v2, v4, v12

    if-ltz v2, :cond_3

    cmpl-double v2, v4, v14

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    if-ltz v2, :cond_1

    .line 70
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, v0, Ljavax/vecmath/Tuple4d;->x:D

    div-double/2addr v10, v2

    .line 71
    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double/2addr v2, v10

    iput-wide v2, v0, Ljavax/vecmath/Tuple4d;->y:D

    .line 72
    iget-wide v1, v1, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v1, v10

    iput-wide v1, v0, Ljavax/vecmath/Tuple4d;->z:D

    return-void

    .line 73
    :cond_1
    iput-wide v12, v0, Ljavax/vecmath/Tuple4d;->x:D

    sub-double v2, v8, v6

    mul-double/2addr v2, v10

    cmpl-double v4, v2, v14

    if-ltz v4, :cond_2

    .line 74
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, v0, Ljavax/vecmath/Tuple4d;->y:D

    .line 75
    iget-wide v4, v1, Ljavax/vecmath/Matrix3d;->m21:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v6

    div-double/2addr v4, v2

    iput-wide v4, v0, Ljavax/vecmath/Tuple4d;->z:D

    return-void

    .line 76
    :cond_2
    iput-wide v12, v0, Ljavax/vecmath/Tuple4d;->y:D

    .line 77
    iput-wide v8, v0, Ljavax/vecmath/Tuple4d;->z:D

    return-void

    .line 78
    :cond_3
    iput-wide v12, v0, Ljavax/vecmath/Tuple4d;->x:D

    .line 79
    iput-wide v12, v0, Ljavax/vecmath/Tuple4d;->y:D

    .line 80
    iput-wide v8, v0, Ljavax/vecmath/Tuple4d;->z:D

    return-void

    .line 81
    :cond_4
    iput-wide v12, v0, Ljavax/vecmath/Tuple4d;->w:D

    .line 82
    iput-wide v12, v0, Ljavax/vecmath/Tuple4d;->x:D

    .line 83
    iput-wide v12, v0, Ljavax/vecmath/Tuple4d;->y:D

    .line 84
    iput-wide v8, v0, Ljavax/vecmath/Tuple4d;->z:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix3f;)V
    .locals 13

    .line 43
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m11:F

    add-float/2addr v0, v1

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m22:F

    add-float/2addr v0, v2

    float-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v3, v7

    const-wide/16 v9, 0x0

    cmpl-double v0, v3, v9

    if-ltz v0, :cond_4

    const-wide v11, 0x39b4484bfeebc2a0L    # 1.0E-30

    cmpl-double v0, v3, v11

    if-ltz v0, :cond_0

    .line 44
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    div-double/2addr v7, v0

    .line 45
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m21:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m12:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    mul-double/2addr v0, v7

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 46
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m20:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    mul-double/2addr v0, v7

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 47
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m10:F

    iget p1, p1, Ljavax/vecmath/Matrix3f;->m01:F

    sub-float/2addr v0, p1

    float-to-double v0, v0

    mul-double/2addr v0, v7

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    return-void

    .line 48
    :cond_0
    iput-wide v9, p0, Ljavax/vecmath/Tuple4d;->w:D

    add-float/2addr v1, v2

    float-to-double v0, v1

    const-wide/high16 v3, -0x4020000000000000L    # -0.5

    mul-double/2addr v0, v3

    cmpl-double v3, v0, v9

    if-ltz v3, :cond_3

    cmpl-double v3, v0, v11

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    if-ltz v3, :cond_1

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    div-double/2addr v7, v0

    .line 50
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m10:F

    float-to-double v0, v0

    mul-double/2addr v0, v7

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 51
    iget p1, p1, Ljavax/vecmath/Matrix3f;->m20:F

    float-to-double v0, p1

    mul-double/2addr v0, v7

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    return-void

    .line 52
    :cond_1
    iput-wide v9, p0, Ljavax/vecmath/Tuple4d;->x:D

    float-to-double v0, v2

    sub-double v0, v5, v0

    mul-double/2addr v0, v7

    cmpl-double v2, v0, v11

    if-ltz v2, :cond_2

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 54
    iget p1, p1, Ljavax/vecmath/Matrix3f;->m21:F

    float-to-double v2, p1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v7

    div-double/2addr v2, v0

    iput-wide v2, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 55
    :cond_2
    iput-wide v9, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 56
    iput-wide v5, p0, Ljavax/vecmath/Tuple4d;->z:D

    return-void

    .line 57
    :cond_3
    iput-wide v9, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 58
    iput-wide v9, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 59
    iput-wide v5, p0, Ljavax/vecmath/Tuple4d;->z:D

    return-void

    .line 60
    :cond_4
    iput-wide v9, p0, Ljavax/vecmath/Tuple4d;->w:D

    .line 61
    iput-wide v9, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 62
    iput-wide v9, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 63
    iput-wide v5, p0, Ljavax/vecmath/Tuple4d;->z:D

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

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-ltz v12, :cond_4

    const-wide v15, 0x39b4484bfeebc2a0L    # 1.0E-30

    cmpl-double v12, v2, v15

    if-ltz v12, :cond_0

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, v0, Ljavax/vecmath/Tuple4d;->w:D

    div-double/2addr v8, v2

    .line 24
    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m21:D

    iget-wide v4, v1, Ljavax/vecmath/Matrix4d;->m12:D

    sub-double/2addr v2, v4

    mul-double/2addr v2, v8

    iput-wide v2, v0, Ljavax/vecmath/Tuple4d;->x:D

    .line 25
    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v4, v1, Ljavax/vecmath/Matrix4d;->m20:D

    sub-double/2addr v2, v4

    mul-double/2addr v2, v8

    iput-wide v2, v0, Ljavax/vecmath/Tuple4d;->y:D

    .line 26
    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m10:D

    iget-wide v4, v1, Ljavax/vecmath/Matrix4d;->m01:D

    sub-double/2addr v2, v4

    mul-double/2addr v2, v8

    iput-wide v2, v0, Ljavax/vecmath/Tuple4d;->z:D

    return-void

    .line 27
    :cond_0
    iput-wide v10, v0, Ljavax/vecmath/Tuple4d;->w:D

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

    iput-wide v2, v0, Ljavax/vecmath/Tuple4d;->x:D

    div-double/2addr v8, v2

    .line 29
    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double/2addr v2, v8

    iput-wide v2, v0, Ljavax/vecmath/Tuple4d;->y:D

    .line 30
    iget-wide v1, v1, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double/2addr v1, v8

    iput-wide v1, v0, Ljavax/vecmath/Tuple4d;->z:D

    return-void

    .line 31
    :cond_1
    iput-wide v10, v0, Ljavax/vecmath/Tuple4d;->x:D

    sub-double v2, v13, v6

    mul-double/2addr v2, v8

    cmpl-double v4, v2, v15

    if-ltz v4, :cond_2

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, v0, Ljavax/vecmath/Tuple4d;->y:D

    .line 33
    iget-wide v4, v1, Ljavax/vecmath/Matrix4d;->m21:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v6

    div-double/2addr v4, v2

    iput-wide v4, v0, Ljavax/vecmath/Tuple4d;->z:D

    return-void

    .line 34
    :cond_2
    iput-wide v10, v0, Ljavax/vecmath/Tuple4d;->y:D

    .line 35
    iput-wide v13, v0, Ljavax/vecmath/Tuple4d;->z:D

    return-void

    .line 36
    :cond_3
    iput-wide v10, v0, Ljavax/vecmath/Tuple4d;->x:D

    .line 37
    iput-wide v10, v0, Ljavax/vecmath/Tuple4d;->y:D

    .line 38
    iput-wide v13, v0, Ljavax/vecmath/Tuple4d;->z:D

    return-void

    .line 39
    :cond_4
    iput-wide v10, v0, Ljavax/vecmath/Tuple4d;->w:D

    .line 40
    iput-wide v10, v0, Ljavax/vecmath/Tuple4d;->x:D

    .line 41
    iput-wide v10, v0, Ljavax/vecmath/Tuple4d;->y:D

    .line 42
    iput-wide v13, v0, Ljavax/vecmath/Tuple4d;->z:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix4f;)V
    .locals 13

    .line 1
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m00:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m11:F

    add-float/2addr v0, v1

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m22:F

    add-float/2addr v0, v2

    iget v3, p1, Ljavax/vecmath/Matrix4f;->m33:F

    add-float/2addr v0, v3

    float-to-double v3, v0

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v3, v5

    const-wide/16 v7, 0x0

    cmpl-double v0, v3, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-ltz v0, :cond_4

    const-wide v11, 0x39b4484bfeebc2a0L    # 1.0E-30

    cmpl-double v0, v3, v11

    if-ltz v0, :cond_0

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    div-double/2addr v5, v0

    .line 3
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m21:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m12:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    mul-double/2addr v0, v5

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 4
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m02:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m20:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    mul-double/2addr v0, v5

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 5
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m10:F

    iget p1, p1, Ljavax/vecmath/Matrix4f;->m01:F

    sub-float/2addr v0, p1

    float-to-double v0, v0

    mul-double/2addr v0, v5

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    return-void

    .line 6
    :cond_0
    iput-wide v7, p0, Ljavax/vecmath/Tuple4d;->w:D

    add-float/2addr v1, v2

    float-to-double v0, v1

    const-wide/high16 v3, -0x4020000000000000L    # -0.5

    mul-double/2addr v0, v3

    cmpl-double v3, v0, v7

    if-ltz v3, :cond_3

    cmpl-double v3, v0, v11

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    if-ltz v3, :cond_1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v0, v4

    div-double/2addr v9, v0

    .line 8
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m10:F

    float-to-double v0, v0

    mul-double/2addr v0, v9

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 9
    iget p1, p1, Ljavax/vecmath/Matrix4f;->m20:F

    float-to-double v0, p1

    mul-double/2addr v0, v9

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    return-void

    .line 10
    :cond_1
    iput-wide v7, p0, Ljavax/vecmath/Tuple4d;->x:D

    float-to-double v0, v2

    sub-double v0, v9, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    cmpl-double v2, v0, v11

    if-ltz v2, :cond_2

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 12
    iget p1, p1, Ljavax/vecmath/Matrix4f;->m21:F

    float-to-double v2, p1

    mul-double/2addr v0, v4

    div-double/2addr v2, v0

    iput-wide v2, p0, Ljavax/vecmath/Tuple4d;->z:D

    return-void

    .line 13
    :cond_2
    iput-wide v7, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 14
    iput-wide v9, p0, Ljavax/vecmath/Tuple4d;->z:D

    return-void

    .line 15
    :cond_3
    iput-wide v7, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 16
    iput-wide v7, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 17
    iput-wide v9, p0, Ljavax/vecmath/Tuple4d;->z:D

    return-void

    .line 18
    :cond_4
    iput-wide v7, p0, Ljavax/vecmath/Tuple4d;->w:D

    .line 19
    iput-wide v7, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 20
    iput-wide v7, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 21
    iput-wide v9, p0, Ljavax/vecmath/Tuple4d;->z:D

    return-void
.end method
