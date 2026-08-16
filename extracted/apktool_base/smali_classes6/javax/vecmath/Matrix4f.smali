.class public Ljavax/vecmath/Matrix4f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final EPS:D = 1.0E-8

.field static final serialVersionUID:J = -0x74a4afbe0efa23a9L


# instance fields
.field public m00:F

.field public m01:F

.field public m02:F

.field public m03:F

.field public m10:F

.field public m11:F

.field public m12:F

.field public m13:F

.field public m20:F

.field public m21:F

.field public m22:F

.field public m23:F

.field public m30:F

.field public m31:F

.field public m32:F

.field public m33:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 105
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 106
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 107
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 108
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 109
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 110
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 111
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 112
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 113
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 114
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 115
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 116
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 117
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 118
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 119
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public constructor <init>(FFFFFFFFFFFFFFFF)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 2
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m00:F

    move v1, p2

    .line 3
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m01:F

    move v1, p3

    .line 4
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m02:F

    move v1, p4

    .line 5
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m03:F

    move v1, p5

    .line 6
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m10:F

    move v1, p6

    .line 7
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m11:F

    move v1, p7

    .line 8
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m12:F

    move v1, p8

    .line 9
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m13:F

    move v1, p9

    .line 10
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m20:F

    move v1, p10

    .line 11
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m21:F

    move v1, p11

    .line 12
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m22:F

    move v1, p12

    .line 13
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m23:F

    move v1, p13

    .line 14
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m30:F

    move/from16 v1, p14

    .line 15
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m31:F

    move/from16 v1, p15

    .line 16
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m32:F

    move/from16 v1, p16

    .line 17
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Vector3f;F)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float/2addr v0, p3

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 88
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float/2addr v0, p3

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 89
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v0, p3

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 90
    iget v0, p2, Ljavax/vecmath/Tuple3f;->x:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 91
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float/2addr v0, p3

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 92
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v0, p3

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 93
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v0, p3

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 94
    iget v0, p2, Ljavax/vecmath/Tuple3f;->y:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 95
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v0, p3

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 96
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v0, p3

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 97
    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr p1, p3

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 98
    iget p1, p2, Ljavax/vecmath/Tuple3f;->z:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    const/4 p1, 0x0

    .line 99
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 100
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 101
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 102
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Matrix4d;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m00:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 54
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m01:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 55
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m02:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 56
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m03:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 57
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m10:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 58
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m11:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 59
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m12:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 60
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m13:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 61
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m20:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 62
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m21:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 63
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m22:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 64
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m23:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 65
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m30:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 66
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m31:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 67
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m32:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 68
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m33:D

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Matrix4f;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m00:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 71
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m01:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 72
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m02:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 73
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m03:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 74
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m10:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 75
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m11:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 76
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m12:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 77
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m13:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 78
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m20:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 79
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m21:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 80
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m22:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 81
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m23:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 82
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m30:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 83
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m31:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 84
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m32:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 85
    iget p1, p1, Ljavax/vecmath/Matrix4f;->m33:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Quat4f;Ljavax/vecmath/Vector3f;F)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move/from16 v3, p3

    float-to-double v3, v3

    .line 36
    iget v5, v1, Ljavax/vecmath/Tuple4f;->y:F

    float-to-double v6, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    float-to-double v10, v5

    mul-double/2addr v6, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v6, v10, v6

    iget v12, v1, Ljavax/vecmath/Tuple4f;->z:F

    float-to-double v13, v12

    mul-double/2addr v13, v8

    float-to-double v10, v12

    mul-double/2addr v13, v10

    sub-double/2addr v6, v13

    mul-double/2addr v6, v3

    double-to-float v6, v6

    iput v6, v0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 37
    iget v6, v1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float v7, v6, v5

    iget v1, v1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float v10, v1, v12

    add-float/2addr v7, v10

    float-to-double v10, v7

    mul-double/2addr v10, v8

    mul-double/2addr v10, v3

    double-to-float v7, v10

    iput v7, v0, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float v7, v6, v12

    mul-float v10, v1, v5

    sub-float/2addr v7, v10

    float-to-double v10, v7

    mul-double/2addr v10, v8

    mul-double/2addr v10, v3

    double-to-float v7, v10

    .line 38
    iput v7, v0, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v7, v6, v5

    mul-float v10, v1, v12

    sub-float/2addr v7, v10

    float-to-double v10, v7

    mul-double/2addr v10, v8

    mul-double/2addr v10, v3

    double-to-float v7, v10

    .line 39
    iput v7, v0, Ljavax/vecmath/Matrix4f;->m01:F

    float-to-double v10, v6

    mul-double/2addr v10, v8

    float-to-double v13, v6

    mul-double/2addr v10, v13

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double v10, v13, v10

    float-to-double v13, v12

    mul-double/2addr v13, v8

    float-to-double v8, v12

    mul-double/2addr v13, v8

    sub-double/2addr v10, v13

    mul-double/2addr v10, v3

    double-to-float v7, v10

    .line 40
    iput v7, v0, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float v7, v5, v12

    mul-float v8, v1, v6

    add-float/2addr v7, v8

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    mul-double/2addr v7, v3

    double-to-float v7, v7

    .line 41
    iput v7, v0, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v7, v6, v12

    mul-float v8, v1, v5

    add-float/2addr v7, v8

    float-to-double v7, v7

    mul-double/2addr v7, v9

    mul-double/2addr v7, v3

    double-to-float v7, v7

    .line 42
    iput v7, v0, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float/2addr v12, v5

    mul-float/2addr v1, v6

    sub-float/2addr v12, v1

    float-to-double v7, v12

    mul-double/2addr v7, v9

    mul-double/2addr v7, v3

    double-to-float v1, v7

    .line 43
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m12:F

    float-to-double v7, v6

    mul-double/2addr v7, v9

    float-to-double v11, v6

    mul-double/2addr v7, v11

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double v6, v11, v7

    float-to-double v11, v5

    mul-double/2addr v11, v9

    float-to-double v8, v5

    mul-double/2addr v11, v8

    sub-double/2addr v6, v11

    mul-double/2addr v3, v6

    double-to-float v1, v3

    .line 44
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 45
    iget v1, v2, Ljavax/vecmath/Tuple3f;->x:F

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 46
    iget v1, v2, Ljavax/vecmath/Tuple3f;->y:F

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 47
    iget v1, v2, Ljavax/vecmath/Tuple3f;->z:F

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m23:F

    const/4 v1, 0x0

    .line 48
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 49
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 50
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m32:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 51
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    const/4 v0, 0x1

    .line 20
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    const/4 v0, 0x2

    .line 21
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    const/4 v0, 0x3

    .line 22
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    const/4 v0, 0x4

    .line 23
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    const/4 v0, 0x5

    .line 24
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    const/4 v0, 0x6

    .line 25
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    const/4 v0, 0x7

    .line 26
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    const/16 v0, 0x8

    .line 27
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    const/16 v0, 0x9

    .line 28
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    const/16 v0, 0xa

    .line 29
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    const/16 v0, 0xb

    .line 30
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    const/16 v0, 0xc

    .line 31
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    const/16 v0, 0xd

    .line 32
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    const/16 v0, 0xe

    .line 33
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    const/16 v0, 0xf

    .line 34
    aget p1, p1, v0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method private final getScaleRotate([D[D)V
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Ljavax/vecmath/Matrix4f;->m00:F

    float-to-double v1, v1

    iget v3, v0, Ljavax/vecmath/Matrix4f;->m01:F

    float-to-double v3, v3

    iget v5, v0, Ljavax/vecmath/Matrix4f;->m02:F

    float-to-double v5, v5

    iget v7, v0, Ljavax/vecmath/Matrix4f;->m10:F

    float-to-double v7, v7

    iget v9, v0, Ljavax/vecmath/Matrix4f;->m11:F

    float-to-double v9, v9

    iget v11, v0, Ljavax/vecmath/Matrix4f;->m12:F

    float-to-double v11, v11

    iget v13, v0, Ljavax/vecmath/Matrix4f;->m20:F

    float-to-double v13, v13

    iget v15, v0, Ljavax/vecmath/Matrix4f;->m21:F

    move-wide/from16 v16, v13

    float-to-double v13, v15

    iget v15, v0, Ljavax/vecmath/Matrix4f;->m22:F

    move-wide/from16 v18, v13

    float-to-double v13, v15

    const/16 v15, 0x9

    new-array v15, v15, [D

    const/16 v20, 0x0

    aput-wide v1, v15, v20

    const/4 v1, 0x1

    aput-wide v3, v15, v1

    const/4 v1, 0x2

    aput-wide v5, v15, v1

    const/4 v1, 0x3

    aput-wide v7, v15, v1

    const/4 v1, 0x4

    aput-wide v9, v15, v1

    const/4 v1, 0x5

    aput-wide v11, v15, v1

    const/4 v1, 0x6

    aput-wide v16, v15, v1

    const/4 v1, 0x7

    aput-wide v18, v15, v1

    const/16 v1, 0x8

    aput-wide v13, v15, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v15, v1, v2}, Ljavax/vecmath/Matrix3d;->compute_svd([D[D[D)V

    return-void
.end method

.method public static luBacksubstitution([D[I[D)V
    .locals 14

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_3

    const/4 v3, -0x1

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_2

    aget v5, p1, v4

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    aget-wide v6, p2, v5

    mul-int/lit8 v8, v4, 0x4

    add-int v9, v1, v8

    aget-wide v10, p2, v9

    aput-wide v10, p2, v5

    if-ltz v3, :cond_0

    move v5, v3

    :goto_2
    add-int/lit8 v10, v4, -0x1

    if-gt v5, v10, :cond_1

    add-int v10, v8, v5

    aget-wide v10, p0, v10

    mul-int/lit8 v12, v5, 0x4

    add-int/2addr v12, v1

    aget-wide v12, p2, v12

    mul-double/2addr v10, v12

    sub-double/2addr v6, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    const-wide/16 v10, 0x0

    cmpl-double v5, v6, v10

    if-eqz v5, :cond_1

    move v3, v4

    :cond_1
    aput-wide v6, p2, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v1, 0xc

    aget-wide v3, p2, v2

    const/16 v5, 0xf

    aget-wide v5, p0, v5

    div-double/2addr v3, v5

    aput-wide v3, p2, v2

    add-int/lit8 v5, v1, 0x8

    aget-wide v6, p2, v5

    const/16 v8, 0xb

    aget-wide v8, p0, v8

    mul-double/2addr v8, v3

    sub-double/2addr v6, v8

    const/16 v3, 0xa

    aget-wide v3, p0, v3

    div-double/2addr v6, v3

    aput-wide v6, p2, v5

    add-int/lit8 v3, v1, 0x4

    aget-wide v8, p2, v3

    const/4 v4, 0x6

    aget-wide v10, p0, v4

    mul-double/2addr v10, v6

    sub-double/2addr v8, v10

    const/4 v4, 0x7

    aget-wide v6, p0, v4

    aget-wide v10, p2, v2

    mul-double/2addr v6, v10

    sub-double/2addr v8, v6

    const/4 v4, 0x5

    aget-wide v6, p0, v4

    div-double/2addr v8, v6

    aput-wide v8, p2, v3

    aget-wide v3, p2, v1

    const/4 v6, 0x1

    aget-wide v6, p0, v6

    mul-double/2addr v6, v8

    sub-double/2addr v3, v6

    const/4 v6, 0x2

    aget-wide v6, p0, v6

    aget-wide v8, p2, v5

    mul-double/2addr v6, v8

    sub-double/2addr v3, v6

    const/4 v5, 0x3

    aget-wide v5, p0, v5

    aget-wide v7, p2, v2

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    aget-wide v5, p0, v0

    div-double/2addr v3, v5

    aput-wide v3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public static luDecomposition([D[I)Z
    .locals 24

    const/4 v0, 0x4

    new-array v1, v0, [D

    const/4 v2, 0x0

    move v3, v0

    move v4, v2

    move v5, v4

    :goto_0
    add-int/lit8 v6, v3, -0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/16 v9, 0x0

    if-eqz v3, :cond_3

    move v3, v0

    move-wide v11, v9

    :goto_1
    add-int/lit8 v13, v3, -0x1

    if-eqz v3, :cond_1

    add-int/lit8 v3, v4, 0x1

    aget-wide v14, p0, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpl-double v4, v14, v11

    if-lez v4, :cond_0

    move v4, v3

    move v3, v13

    move-wide v11, v14

    goto :goto_1

    :cond_0
    move v4, v3

    move v3, v13

    goto :goto_1

    :cond_1
    cmpl-double v3, v11, v9

    if-nez v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v5, 0x1

    div-double/2addr v7, v11

    aput-wide v7, v1, v5

    move v5, v3

    move v3, v6

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_2
    const/4 v4, 0x1

    if-ge v3, v0, :cond_e

    move v5, v2

    :goto_3
    if-ge v5, v3, :cond_5

    mul-int/lit8 v6, v5, 0x4

    add-int v11, v6, v3

    aget-wide v12, p0, v11

    move v15, v3

    move v14, v5

    :goto_4
    add-int/lit8 v16, v14, -0x1

    if-eqz v14, :cond_4

    aget-wide v17, p0, v6

    aget-wide v19, p0, v15

    mul-double v17, v17, v19

    sub-double v12, v12, v17

    add-int/2addr v6, v4

    add-int/2addr v15, v0

    move/from16 v14, v16

    goto :goto_4

    :cond_4
    aput-wide v12, p0, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, -0x1

    move v6, v3

    move-wide v11, v9

    :goto_5
    if-ge v6, v0, :cond_8

    mul-int/lit8 v13, v6, 0x4

    add-int v14, v13, v3

    aget-wide v15, p0, v14

    move/from16 v17, v3

    move/from16 v18, v17

    :goto_6
    add-int/lit8 v19, v17, -0x1

    if-eqz v17, :cond_6

    aget-wide v20, p0, v13

    aget-wide v22, p0, v18

    mul-double v20, v20, v22

    sub-double v15, v15, v20

    add-int/2addr v13, v4

    add-int/lit8 v18, v18, 0x4

    move/from16 v17, v19

    goto :goto_6

    :cond_6
    aput-wide v15, p0, v14

    aget-wide v13, v1, v6

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    cmpl-double v15, v13, v11

    if-ltz v15, :cond_7

    move v5, v6

    move-wide v11, v13

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    if-ltz v5, :cond_d

    if-eq v3, v5, :cond_a

    mul-int/lit8 v4, v5, 0x4

    mul-int/lit8 v6, v3, 0x4

    move v11, v0

    :goto_7
    add-int/lit8 v12, v11, -0x1

    if-eqz v11, :cond_9

    aget-wide v13, p0, v4

    add-int/lit8 v11, v4, 0x1

    aget-wide v15, p0, v6

    aput-wide v15, p0, v4

    add-int/lit8 v4, v6, 0x1

    aput-wide v13, p0, v6

    move v6, v4

    move v4, v11

    move v11, v12

    goto :goto_7

    :cond_9
    aget-wide v11, v1, v3

    aput-wide v11, v1, v5

    :cond_a
    aput v5, p1, v3

    mul-int/lit8 v4, v3, 0x4

    add-int/2addr v4, v3

    aget-wide v4, p0, v4

    cmpl-double v6, v4, v9

    if-nez v6, :cond_b

    return v2

    :cond_b
    const/4 v6, 0x3

    if-eq v3, v6, :cond_c

    div-double v4, v7, v4

    add-int/lit8 v6, v3, 0x1

    mul-int/2addr v6, v0

    add-int/2addr v6, v3

    rsub-int/lit8 v11, v3, 0x3

    :goto_8
    add-int/lit8 v12, v11, -0x1

    if-eqz v11, :cond_c

    aget-wide v13, p0, v6

    mul-double/2addr v13, v4

    aput-wide v13, p0, v6

    add-int/2addr v6, v0

    move v11, v12

    goto :goto_8

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Matrix4f13"

    invoke-static {v1}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return v4
.end method


# virtual methods
.method public final add(F)V
    .locals 1

    .line 1
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 2
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 3
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 4
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 5
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 6
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 7
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 8
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 9
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 10
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 11
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 12
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 13
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 14
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 15
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 16
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m33:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final add(FLjavax/vecmath/Matrix4f;)V
    .locals 1

    .line 17
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m00:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 18
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m01:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 19
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m02:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 20
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m03:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 21
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m10:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 22
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m11:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 23
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m12:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 24
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m13:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 25
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m20:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 26
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m21:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 27
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m22:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 28
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m23:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 29
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m30:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 30
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m31:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 31
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m32:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 32
    iget p2, p2, Ljavax/vecmath/Matrix4f;->m33:F

    add-float/2addr p2, p1

    iput p2, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final add(Ljavax/vecmath/Matrix4f;)V
    .locals 2

    .line 49
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m00:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 50
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m01:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 51
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m02:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 52
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m03:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 53
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m10:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 54
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m11:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 55
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m12:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 56
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m13:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 57
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m20:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 58
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m21:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 59
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m22:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 60
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m23:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 61
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m30:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 62
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m31:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 63
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m32:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 64
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m33:F

    iget p1, p1, Ljavax/vecmath/Matrix4f;->m33:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final add(Ljavax/vecmath/Matrix4f;Ljavax/vecmath/Matrix4f;)V
    .locals 2

    .line 33
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m00:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m00:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 34
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m01:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m01:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 35
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m02:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m02:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 36
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m03:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m03:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 37
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m10:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m10:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 38
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m11:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m11:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 39
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m12:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m12:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 40
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m13:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m13:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 41
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m20:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m20:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 42
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m21:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m21:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 43
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m22:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m22:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 44
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m23:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m23:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 45
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m30:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m30:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 46
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m31:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m31:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 47
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m32:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m32:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 48
    iget p1, p1, Ljavax/vecmath/Matrix4f;->m33:F

    iget p2, p2, Ljavax/vecmath/Matrix4f;->m33:F

    add-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/vecmath/Matrix4f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final determinant()F
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Ljavax/vecmath/Matrix4f;->m00:F

    iget v2, v0, Ljavax/vecmath/Matrix4f;->m11:F

    iget v3, v0, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float v4, v2, v3

    iget v5, v0, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float/2addr v4, v5

    iget v6, v0, Ljavax/vecmath/Matrix4f;->m12:F

    iget v7, v0, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float v8, v6, v7

    iget v9, v0, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float/2addr v8, v9

    add-float/2addr v4, v8

    iget v8, v0, Ljavax/vecmath/Matrix4f;->m13:F

    iget v10, v0, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v11, v8, v10

    iget v12, v0, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float/2addr v11, v12

    add-float/2addr v4, v11

    mul-float v11, v8, v3

    mul-float/2addr v11, v9

    sub-float/2addr v4, v11

    mul-float v11, v2, v7

    mul-float/2addr v11, v12

    sub-float/2addr v4, v11

    mul-float v11, v6, v10

    mul-float/2addr v11, v5

    sub-float/2addr v4, v11

    mul-float/2addr v1, v4

    iget v4, v0, Ljavax/vecmath/Matrix4f;->m01:F

    iget v11, v0, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float v13, v11, v3

    mul-float/2addr v13, v5

    mul-float v14, v6, v7

    iget v15, v0, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    iget v14, v0, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v16, v8, v14

    mul-float v16, v16, v12

    add-float v13, v13, v16

    mul-float v16, v8, v3

    mul-float v16, v16, v15

    sub-float v13, v13, v16

    mul-float v16, v11, v7

    mul-float v16, v16, v12

    sub-float v13, v13, v16

    mul-float v16, v6, v14

    mul-float v16, v16, v5

    sub-float v13, v13, v16

    mul-float/2addr v4, v13

    sub-float/2addr v1, v4

    iget v4, v0, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float v13, v11, v10

    mul-float/2addr v13, v5

    mul-float v16, v2, v7

    mul-float v16, v16, v15

    add-float v13, v13, v16

    mul-float v16, v8, v14

    mul-float v16, v16, v9

    add-float v13, v13, v16

    mul-float/2addr v8, v10

    mul-float/2addr v8, v15

    sub-float/2addr v13, v8

    mul-float/2addr v7, v11

    mul-float/2addr v7, v9

    sub-float/2addr v13, v7

    mul-float v7, v2, v14

    mul-float/2addr v7, v5

    sub-float/2addr v13, v7

    mul-float/2addr v4, v13

    add-float/2addr v1, v4

    iget v4, v0, Ljavax/vecmath/Matrix4f;->m03:F

    mul-float v5, v11, v10

    mul-float/2addr v5, v12

    mul-float v7, v2, v3

    mul-float/2addr v7, v15

    add-float/2addr v5, v7

    mul-float v7, v6, v14

    mul-float/2addr v7, v9

    add-float/2addr v5, v7

    mul-float/2addr v6, v10

    mul-float/2addr v6, v15

    sub-float/2addr v5, v6

    mul-float/2addr v11, v3

    mul-float/2addr v11, v9

    sub-float/2addr v5, v11

    mul-float/2addr v2, v14

    mul-float/2addr v2, v12

    sub-float/2addr v5, v2

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    return v1
.end method

.method public epsilonEquals(Ljavax/vecmath/Matrix4f;F)Z
    .locals 4

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m00:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iget v3, p1, Ljavax/vecmath/Matrix4f;->m01:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_1

    move v0, v1

    :cond_1
    iget v2, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iget v3, p1, Ljavax/vecmath/Matrix4f;->m02:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_2

    move v0, v1

    :cond_2
    iget v2, p0, Ljavax/vecmath/Matrix4f;->m03:F

    iget v3, p1, Ljavax/vecmath/Matrix4f;->m03:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_3

    move v0, v1

    :cond_3
    iget v2, p0, Ljavax/vecmath/Matrix4f;->m10:F

    iget v3, p1, Ljavax/vecmath/Matrix4f;->m10:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_4

    move v0, v1

    :cond_4
    iget v2, p0, Ljavax/vecmath/Matrix4f;->m11:F

    iget v3, p1, Ljavax/vecmath/Matrix4f;->m11:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_5

    move v0, v1

    :cond_5
    iget v2, p0, Ljavax/vecmath/Matrix4f;->m12:F

    iget v3, p1, Ljavax/vecmath/Matrix4f;->m12:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_6

    move v0, v1

    :cond_6
    iget v2, p0, Ljavax/vecmath/Matrix4f;->m13:F

    iget v3, p1, Ljavax/vecmath/Matrix4f;->m13:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_7

    move v0, v1

    :cond_7
    iget v2, p0, Ljavax/vecmath/Matrix4f;->m20:F

    iget v3, p1, Ljavax/vecmath/Matrix4f;->m20:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_8

    move v0, v1

    :cond_8
    iget v2, p0, Ljavax/vecmath/Matrix4f;->m21:F

    iget v3, p1, Ljavax/vecmath/Matrix4f;->m21:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_9

    move v0, v1

    :cond_9
    iget v2, p0, Ljavax/vecmath/Matrix4f;->m22:F

    iget v3, p1, Ljavax/vecmath/Matrix4f;->m22:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_a

    move v0, v1

    :cond_a
    iget v2, p0, Ljavax/vecmath/Matrix4f;->m23:F

    iget v3, p1, Ljavax/vecmath/Matrix4f;->m23:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_b

    move v0, v1

    :cond_b
    iget v2, p0, Ljavax/vecmath/Matrix4f;->m30:F

    iget v3, p1, Ljavax/vecmath/Matrix4f;->m30:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_c

    move v0, v1

    :cond_c
    iget v2, p0, Ljavax/vecmath/Matrix4f;->m31:F

    iget v3, p1, Ljavax/vecmath/Matrix4f;->m31:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_d

    move v0, v1

    :cond_d
    iget v2, p0, Ljavax/vecmath/Matrix4f;->m32:F

    iget v3, p1, Ljavax/vecmath/Matrix4f;->m32:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_e

    move v0, v1

    :cond_e
    iget v2, p0, Ljavax/vecmath/Matrix4f;->m33:F

    iget p1, p1, Ljavax/vecmath/Matrix4f;->m33:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_f

    goto :goto_1

    :cond_f
    move v1, v0

    :goto_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    .line 2
    :try_start_0
    check-cast p1, Ljavax/vecmath/Matrix4f;

    .line 3
    iget v1, p0, Ljavax/vecmath/Matrix4f;->m00:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m00:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m01:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m02:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m03:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m03:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m10:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m10:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m11:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m11:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m12:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m12:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m13:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m13:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m20:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m20:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m21:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m22:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m23:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m30:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m30:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m31:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m32:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    iget p1, p1, Ljavax/vecmath/Matrix4f;->m33:F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float p1, v1, p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public equals(Ljavax/vecmath/Matrix4f;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget v1, p0, Ljavax/vecmath/Matrix4f;->m00:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m00:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m01:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m02:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m03:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m03:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m10:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m10:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m11:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m11:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m12:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m12:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m13:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m13:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m20:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m20:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m21:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m22:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m23:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m30:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m30:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m31:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m32:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    iget p1, p1, Ljavax/vecmath/Matrix4f;->m33:F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float p1, v1, p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public final get(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Vector3f;)F
    .locals 5

    const/16 v0, 0x9

    .line 25
    new-array v0, v0, [D

    const/4 v1, 0x3

    .line 26
    new-array v2, v1, [D

    .line 27
    invoke-direct {p0, v2, v0}, Ljavax/vecmath/Matrix4f;->getScaleRotate([D[D)V

    const/4 v3, 0x0

    .line 28
    aget-wide v3, v0, v3

    double-to-float v3, v3

    iput v3, p1, Ljavax/vecmath/Matrix3f;->m00:F

    const/4 v3, 0x1

    .line 29
    aget-wide v3, v0, v3

    double-to-float v3, v3

    iput v3, p1, Ljavax/vecmath/Matrix3f;->m01:F

    const/4 v3, 0x2

    .line 30
    aget-wide v3, v0, v3

    double-to-float v3, v3

    iput v3, p1, Ljavax/vecmath/Matrix3f;->m02:F

    .line 31
    aget-wide v3, v0, v1

    double-to-float v1, v3

    iput v1, p1, Ljavax/vecmath/Matrix3f;->m10:F

    const/4 v1, 0x4

    .line 32
    aget-wide v3, v0, v1

    double-to-float v1, v3

    iput v1, p1, Ljavax/vecmath/Matrix3f;->m11:F

    const/4 v1, 0x5

    .line 33
    aget-wide v3, v0, v1

    double-to-float v1, v3

    iput v1, p1, Ljavax/vecmath/Matrix3f;->m12:F

    const/4 v1, 0x6

    .line 34
    aget-wide v3, v0, v1

    double-to-float v1, v3

    iput v1, p1, Ljavax/vecmath/Matrix3f;->m20:F

    const/4 v1, 0x7

    .line 35
    aget-wide v3, v0, v1

    double-to-float v1, v3

    iput v1, p1, Ljavax/vecmath/Matrix3f;->m21:F

    const/16 v1, 0x8

    .line 36
    aget-wide v3, v0, v1

    double-to-float v0, v3

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m22:F

    .line 37
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m03:F

    iput p1, p2, Ljavax/vecmath/Tuple3f;->x:F

    .line 38
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m13:F

    iput p1, p2, Ljavax/vecmath/Tuple3f;->y:F

    .line 39
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    iput p1, p2, Ljavax/vecmath/Tuple3f;->z:F

    .line 40
    invoke-static {v2}, Ljavax/vecmath/Matrix3d;->max3([D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public final get(Ljavax/vecmath/Matrix3d;)V
    .locals 4

    const/16 v0, 0x9

    .line 1
    new-array v0, v0, [D

    const/4 v1, 0x3

    .line 2
    new-array v2, v1, [D

    .line 3
    invoke-direct {p0, v2, v0}, Ljavax/vecmath/Matrix4f;->getScaleRotate([D[D)V

    const/4 v2, 0x0

    .line 4
    aget-wide v2, v0, v2

    iput-wide v2, p1, Ljavax/vecmath/Matrix3d;->m00:D

    const/4 v2, 0x1

    .line 5
    aget-wide v2, v0, v2

    iput-wide v2, p1, Ljavax/vecmath/Matrix3d;->m01:D

    const/4 v2, 0x2

    .line 6
    aget-wide v2, v0, v2

    iput-wide v2, p1, Ljavax/vecmath/Matrix3d;->m02:D

    .line 7
    aget-wide v1, v0, v1

    iput-wide v1, p1, Ljavax/vecmath/Matrix3d;->m10:D

    const/4 v1, 0x4

    .line 8
    aget-wide v1, v0, v1

    iput-wide v1, p1, Ljavax/vecmath/Matrix3d;->m11:D

    const/4 v1, 0x5

    .line 9
    aget-wide v1, v0, v1

    iput-wide v1, p1, Ljavax/vecmath/Matrix3d;->m12:D

    const/4 v1, 0x6

    .line 10
    aget-wide v1, v0, v1

    iput-wide v1, p1, Ljavax/vecmath/Matrix3d;->m20:D

    const/4 v1, 0x7

    .line 11
    aget-wide v1, v0, v1

    iput-wide v1, p1, Ljavax/vecmath/Matrix3d;->m21:D

    const/16 v1, 0x8

    .line 12
    aget-wide v1, v0, v1

    iput-wide v1, p1, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final get(Ljavax/vecmath/Matrix3f;)V
    .locals 4

    const/16 v0, 0x9

    .line 13
    new-array v0, v0, [D

    const/4 v1, 0x3

    .line 14
    new-array v2, v1, [D

    .line 15
    invoke-direct {p0, v2, v0}, Ljavax/vecmath/Matrix4f;->getScaleRotate([D[D)V

    const/4 v2, 0x0

    .line 16
    aget-wide v2, v0, v2

    double-to-float v2, v2

    iput v2, p1, Ljavax/vecmath/Matrix3f;->m00:F

    const/4 v2, 0x1

    .line 17
    aget-wide v2, v0, v2

    double-to-float v2, v2

    iput v2, p1, Ljavax/vecmath/Matrix3f;->m01:F

    const/4 v2, 0x2

    .line 18
    aget-wide v2, v0, v2

    double-to-float v2, v2

    iput v2, p1, Ljavax/vecmath/Matrix3f;->m02:F

    .line 19
    aget-wide v1, v0, v1

    double-to-float v1, v1

    iput v1, p1, Ljavax/vecmath/Matrix3f;->m10:F

    const/4 v1, 0x4

    .line 20
    aget-wide v1, v0, v1

    double-to-float v1, v1

    iput v1, p1, Ljavax/vecmath/Matrix3f;->m11:F

    const/4 v1, 0x5

    .line 21
    aget-wide v1, v0, v1

    double-to-float v1, v1

    iput v1, p1, Ljavax/vecmath/Matrix3f;->m12:F

    const/4 v1, 0x6

    .line 22
    aget-wide v1, v0, v1

    double-to-float v1, v1

    iput v1, p1, Ljavax/vecmath/Matrix3f;->m20:F

    const/4 v1, 0x7

    .line 23
    aget-wide v1, v0, v1

    double-to-float v1, v1

    iput v1, p1, Ljavax/vecmath/Matrix3f;->m21:F

    const/16 v1, 0x8

    .line 24
    aget-wide v1, v0, v1

    double-to-float v0, v1

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final get(Ljavax/vecmath/Quat4f;)V
    .locals 19

    move-object/from16 v0, p1

    const/16 v1, 0x9

    .line 41
    new-array v1, v1, [D

    const/4 v2, 0x3

    .line 42
    new-array v3, v2, [D

    move-object/from16 v4, p0

    .line 43
    invoke-direct {v4, v3, v1}, Ljavax/vecmath/Matrix4f;->getScaleRotate([D[D)V

    const/4 v3, 0x0

    .line 44
    aget-wide v5, v1, v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v7

    const/4 v3, 0x4

    aget-wide v9, v1, v3

    add-double/2addr v5, v9

    const/16 v3, 0x8

    aget-wide v11, v1, v3

    add-double/2addr v5, v11

    const-wide/high16 v13, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v5, v13

    const-wide/16 v15, 0x0

    cmpg-double v3, v5, v15

    if-gez v3, :cond_0

    neg-double v7, v5

    goto :goto_0

    :cond_0
    move-wide v7, v5

    :goto_0
    const-wide v17, 0x39b4484bfeebc2a0L    # 1.0E-30

    cmpg-double v3, v7, v17

    const/4 v7, 0x6

    const/4 v8, 0x7

    if-ltz v3, :cond_1

    .line 45
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v3, v5

    iput v3, v0, Ljavax/vecmath/Tuple4f;->w:F

    float-to-double v5, v3

    div-double/2addr v13, v5

    .line 46
    aget-wide v5, v1, v8

    const/4 v3, 0x5

    aget-wide v8, v1, v3

    sub-double/2addr v5, v8

    mul-double/2addr v5, v13

    double-to-float v3, v5

    iput v3, v0, Ljavax/vecmath/Tuple4f;->x:F

    const/4 v3, 0x2

    .line 47
    aget-wide v5, v1, v3

    aget-wide v7, v1, v7

    sub-double/2addr v5, v7

    mul-double/2addr v5, v13

    double-to-float v3, v5

    iput v3, v0, Ljavax/vecmath/Tuple4f;->y:F

    .line 48
    aget-wide v2, v1, v2

    const/4 v5, 0x1

    aget-wide v5, v1, v5

    sub-double/2addr v2, v5

    mul-double/2addr v2, v13

    double-to-float v1, v2

    iput v1, v0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 49
    iput v3, v0, Ljavax/vecmath/Tuple4f;->w:F

    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    add-double/2addr v9, v11

    mul-double/2addr v9, v5

    cmpg-double v5, v9, v15

    if-gez v5, :cond_2

    neg-double v5, v9

    goto :goto_1

    :cond_2
    move-wide v5, v9

    :goto_1
    cmpg-double v5, v5, v17

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    if-ltz v5, :cond_3

    .line 50
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v3, v5

    iput v3, v0, Ljavax/vecmath/Tuple4f;->x:F

    float-to-double v5, v3

    div-double/2addr v13, v5

    .line 51
    aget-wide v2, v1, v2

    mul-double/2addr v2, v13

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Tuple4f;->y:F

    .line 52
    aget-wide v2, v1, v7

    mul-double/2addr v2, v13

    double-to-float v1, v2

    iput v1, v0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    .line 53
    :cond_3
    iput v3, v0, Ljavax/vecmath/Tuple4f;->x:F

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v11

    mul-double/2addr v5, v13

    cmpg-double v2, v5, v15

    if-gez v2, :cond_4

    neg-double v9, v5

    goto :goto_2

    :cond_4
    move-wide v9, v5

    :goto_2
    cmpg-double v2, v9, v17

    if-ltz v2, :cond_5

    .line 54
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Tuple4f;->y:F

    .line 55
    aget-wide v5, v1, v8

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    float-to-double v1, v2

    mul-double/2addr v1, v7

    div-double/2addr v5, v1

    double-to-float v1, v5

    iput v1, v0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    .line 56
    :cond_5
    iput v3, v0, Ljavax/vecmath/Tuple4f;->y:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 57
    iput v1, v0, Ljavax/vecmath/Tuple4f;->z:F

    return-void
.end method

.method public final get(Ljavax/vecmath/Vector3f;)V
    .locals 1

    .line 58
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    iput v0, p1, Ljavax/vecmath/Tuple3f;->x:F

    .line 59
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    iput v0, p1, Ljavax/vecmath/Tuple3f;->y:F

    .line 60
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    iput v0, p1, Ljavax/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public final getColumn(ILjavax/vecmath/Vector4f;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m00:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->x:F

    .line 2
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m10:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->y:F

    .line 3
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m20:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->z:F

    .line 4
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m30:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->w:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->x:F

    .line 6
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m11:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->y:F

    .line 7
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->z:F

    .line 8
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->w:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 9
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->x:F

    .line 10
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m12:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->y:F

    .line 11
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->z:F

    .line 12
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->w:F

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 13
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m03:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->x:F

    .line 14
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m13:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->y:F

    .line 15
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->z:F

    .line 16
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->w:F

    :goto_0
    return-void

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix4f4"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getColumn(I[F)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 18
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m00:F

    aput p1, p2, v0

    .line 19
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m10:F

    aput p1, p2, v3

    .line 20
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m20:F

    aput p1, p2, v2

    .line 21
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m30:F

    aput p1, p2, v1

    goto :goto_0

    :cond_0
    if-ne p1, v3, :cond_1

    .line 22
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m01:F

    aput p1, p2, v0

    .line 23
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m11:F

    aput p1, p2, v3

    .line 24
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    aput p1, p2, v2

    .line 25
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    aput p1, p2, v1

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 26
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m02:F

    aput p1, p2, v0

    .line 27
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m12:F

    aput p1, p2, v3

    .line 28
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    aput p1, p2, v2

    .line 29
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    aput p1, p2, v1

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 30
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m03:F

    aput p1, p2, v0

    .line 31
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m13:F

    aput p1, p2, v3

    .line 32
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    aput p1, p2, v2

    .line 33
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    aput p1, p2, v1

    :goto_0
    return-void

    .line 34
    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix4f4"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getElement(II)F
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_b

    if-eq p1, v2, :cond_7

    if-eq p1, v1, :cond_3

    if-ne p1, v0, :cond_c

    if-eqz p2, :cond_2

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_0

    if-ne p2, v0, :cond_c

    iget p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return p1

    :cond_0
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    return p1

    :cond_1
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    return p1

    :cond_2
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m30:F

    return p1

    :cond_3
    if-eqz p2, :cond_6

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_4

    if-ne p2, v0, :cond_c

    iget p1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    return p1

    :cond_4
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    return p1

    :cond_5
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    return p1

    :cond_6
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m20:F

    return p1

    :cond_7
    if-eqz p2, :cond_a

    if-eq p2, v2, :cond_9

    if-eq p2, v1, :cond_8

    if-ne p2, v0, :cond_c

    iget p1, p0, Ljavax/vecmath/Matrix4f;->m13:F

    return p1

    :cond_8
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m12:F

    return p1

    :cond_9
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m11:F

    return p1

    :cond_a
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m10:F

    return p1

    :cond_b
    if-eqz p2, :cond_f

    if-eq p2, v2, :cond_e

    if-eq p2, v1, :cond_d

    if-ne p2, v0, :cond_c

    iget p1, p0, Ljavax/vecmath/Matrix4f;->m03:F

    return p1

    :cond_c
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix4f1"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m02:F

    return p1

    :cond_e
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m01:F

    return p1

    :cond_f
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m00:F

    return p1
.end method

.method public final getM00()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    return v0
.end method

.method public final getM01()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    return v0
.end method

.method public final getM02()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    return v0
.end method

.method public final getM03()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    return v0
.end method

.method public final getM10()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    return v0
.end method

.method public final getM11()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    return v0
.end method

.method public final getM12()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    return v0
.end method

.method public final getM13()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    return v0
.end method

.method public final getM20()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    return v0
.end method

.method public final getM21()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    return v0
.end method

.method public final getM22()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    return v0
.end method

.method public final getM23()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    return v0
.end method

.method public final getM30()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    return v0
.end method

.method public final getM31()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    return v0
.end method

.method public final getM32()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    return v0
.end method

.method public final getM33()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return v0
.end method

.method public final getRotationScale(Ljavax/vecmath/Matrix3f;)V
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m10:F

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m11:F

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m12:F

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m20:F

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m21:F

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final getRow(ILjavax/vecmath/Vector4f;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m00:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->x:F

    .line 2
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->y:F

    .line 3
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->z:F

    .line 4
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m03:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->w:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m10:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->x:F

    .line 6
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m11:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->y:F

    .line 7
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m12:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->z:F

    .line 8
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m13:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->w:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 9
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m20:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->x:F

    .line 10
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->y:F

    .line 11
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->z:F

    .line 12
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->w:F

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 13
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m30:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->x:F

    .line 14
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->y:F

    .line 15
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->z:F

    .line 16
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    iput p1, p2, Ljavax/vecmath/Tuple4f;->w:F

    :goto_0
    return-void

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix4f2"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getRow(I[F)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 18
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m00:F

    aput p1, p2, v0

    .line 19
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m01:F

    aput p1, p2, v3

    .line 20
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m02:F

    aput p1, p2, v2

    .line 21
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m03:F

    aput p1, p2, v1

    goto :goto_0

    :cond_0
    if-ne p1, v3, :cond_1

    .line 22
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m10:F

    aput p1, p2, v0

    .line 23
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m11:F

    aput p1, p2, v3

    .line 24
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m12:F

    aput p1, p2, v2

    .line 25
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m13:F

    aput p1, p2, v1

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 26
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m20:F

    aput p1, p2, v0

    .line 27
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    aput p1, p2, v3

    .line 28
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    aput p1, p2, v2

    .line 29
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    aput p1, p2, v1

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 30
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m30:F

    aput p1, p2, v0

    .line 31
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    aput p1, p2, v3

    .line 32
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    aput p1, p2, v2

    .line 33
    iget p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    aput p1, p2, v1

    :goto_0
    return-void

    .line 34
    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix4f2"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getScale()F
    .locals 2

    const/16 v0, 0x9

    new-array v0, v0, [D

    const/4 v1, 0x3

    new-array v1, v1, [D

    invoke-direct {p0, v1, v0}, Ljavax/vecmath/Matrix4f;->getScaleRotate([D[D)V

    invoke-static {v1}, Ljavax/vecmath/Matrix3d;->max3([D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    invoke-static {v0}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1f

    add-long/2addr v0, v2

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m01:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m02:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m03:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m10:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m11:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m12:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m13:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m20:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m21:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m22:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m23:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m30:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m31:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m32:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m33:F

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

.method public final invert()V
    .locals 0

    .line 2
    invoke-virtual {p0, p0}, Ljavax/vecmath/Matrix4f;->invertGeneral(Ljavax/vecmath/Matrix4f;)V

    return-void
.end method

.method public final invert(Ljavax/vecmath/Matrix4f;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljavax/vecmath/Matrix4f;->invertGeneral(Ljavax/vecmath/Matrix4f;)V

    return-void
.end method

.method public final invertGeneral(Ljavax/vecmath/Matrix4f;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x10

    new-array v3, v2, [D

    const/4 v4, 0x4

    new-array v5, v4, [I

    iget v6, v1, Ljavax/vecmath/Matrix4f;->m00:F

    float-to-double v6, v6

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m01:F

    float-to-double v8, v8

    iget v10, v1, Ljavax/vecmath/Matrix4f;->m02:F

    float-to-double v10, v10

    iget v12, v1, Ljavax/vecmath/Matrix4f;->m03:F

    float-to-double v12, v12

    iget v14, v1, Ljavax/vecmath/Matrix4f;->m10:F

    float-to-double v14, v14

    iget v4, v1, Ljavax/vecmath/Matrix4f;->m11:F

    move-object/from16 v16, v3

    float-to-double v2, v4

    iget v4, v1, Ljavax/vecmath/Matrix4f;->m12:F

    move-object/from16 v17, v5

    float-to-double v4, v4

    iget v0, v1, Ljavax/vecmath/Matrix4f;->m13:F

    move-wide/from16 v18, v4

    float-to-double v4, v0

    iget v0, v1, Ljavax/vecmath/Matrix4f;->m20:F

    move-wide/from16 v20, v4

    float-to-double v4, v0

    iget v0, v1, Ljavax/vecmath/Matrix4f;->m21:F

    move-wide/from16 v22, v4

    float-to-double v4, v0

    iget v0, v1, Ljavax/vecmath/Matrix4f;->m22:F

    move-wide/from16 v24, v4

    float-to-double v4, v0

    iget v0, v1, Ljavax/vecmath/Matrix4f;->m23:F

    move-wide/from16 v26, v4

    float-to-double v4, v0

    iget v0, v1, Ljavax/vecmath/Matrix4f;->m30:F

    move-wide/from16 v28, v4

    float-to-double v4, v0

    iget v0, v1, Ljavax/vecmath/Matrix4f;->m31:F

    move-wide/from16 v30, v4

    float-to-double v4, v0

    iget v0, v1, Ljavax/vecmath/Matrix4f;->m32:F

    move-wide/from16 v32, v4

    float-to-double v4, v0

    iget v0, v1, Ljavax/vecmath/Matrix4f;->m33:F

    float-to-double v0, v0

    move-wide/from16 v34, v0

    const/16 v0, 0x10

    new-array v1, v0, [D

    const/4 v0, 0x0

    aput-wide v6, v1, v0

    const/4 v6, 0x1

    aput-wide v8, v1, v6

    const/4 v7, 0x2

    aput-wide v10, v1, v7

    const/4 v8, 0x3

    aput-wide v12, v1, v8

    const/4 v9, 0x4

    aput-wide v14, v1, v9

    const/4 v9, 0x5

    aput-wide v2, v1, v9

    const/4 v2, 0x6

    aput-wide v18, v1, v2

    const/4 v3, 0x7

    aput-wide v20, v1, v3

    const/16 v10, 0x8

    aput-wide v22, v1, v10

    const/16 v11, 0x9

    aput-wide v24, v1, v11

    const/16 v12, 0xa

    aput-wide v26, v1, v12

    const/16 v13, 0xb

    aput-wide v28, v1, v13

    const/16 v14, 0xc

    aput-wide v30, v1, v14

    const/16 v15, 0xd

    aput-wide v32, v1, v15

    const/16 v18, 0xe

    aput-wide v4, v1, v18

    const/16 v4, 0xf

    aput-wide v34, v1, v4

    move-object/from16 v5, v17

    invoke-static {v1, v5}, Ljavax/vecmath/Matrix4f;->luDecomposition([D[I)Z

    move-result v17

    if-eqz v17, :cond_1

    move v14, v0

    const/16 v15, 0x10

    :goto_0
    if-ge v14, v15, :cond_0

    const-wide/16 v19, 0x0

    aput-wide v19, v16, v14

    add-int/2addr v14, v6

    goto :goto_0

    :cond_0
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    aput-wide v14, v16, v0

    aput-wide v14, v16, v9

    aput-wide v14, v16, v12

    aput-wide v14, v16, v4

    move-object/from16 v14, v16

    invoke-static {v1, v5, v14}, Ljavax/vecmath/Matrix4f;->luBacksubstitution([D[I[D)V

    aget-wide v0, v14, v0

    double-to-float v0, v0

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/vecmath/Matrix4f;->m00:F

    aget-wide v5, v14, v6

    double-to-float v0, v5

    iput v0, v1, Ljavax/vecmath/Matrix4f;->m01:F

    aget-wide v5, v14, v7

    double-to-float v0, v5

    iput v0, v1, Ljavax/vecmath/Matrix4f;->m02:F

    aget-wide v5, v14, v8

    double-to-float v0, v5

    iput v0, v1, Ljavax/vecmath/Matrix4f;->m03:F

    const/4 v0, 0x4

    aget-wide v5, v14, v0

    double-to-float v0, v5

    iput v0, v1, Ljavax/vecmath/Matrix4f;->m10:F

    aget-wide v5, v14, v9

    double-to-float v0, v5

    iput v0, v1, Ljavax/vecmath/Matrix4f;->m11:F

    aget-wide v5, v14, v2

    double-to-float v0, v5

    iput v0, v1, Ljavax/vecmath/Matrix4f;->m12:F

    aget-wide v2, v14, v3

    double-to-float v0, v2

    iput v0, v1, Ljavax/vecmath/Matrix4f;->m13:F

    aget-wide v2, v14, v10

    double-to-float v0, v2

    iput v0, v1, Ljavax/vecmath/Matrix4f;->m20:F

    aget-wide v2, v14, v11

    double-to-float v0, v2

    iput v0, v1, Ljavax/vecmath/Matrix4f;->m21:F

    aget-wide v2, v14, v12

    double-to-float v0, v2

    iput v0, v1, Ljavax/vecmath/Matrix4f;->m22:F

    aget-wide v2, v14, v13

    double-to-float v0, v2

    iput v0, v1, Ljavax/vecmath/Matrix4f;->m23:F

    const/16 v0, 0xc

    aget-wide v2, v14, v0

    double-to-float v0, v2

    iput v0, v1, Ljavax/vecmath/Matrix4f;->m30:F

    const/16 v0, 0xd

    aget-wide v2, v14, v0

    double-to-float v0, v2

    iput v0, v1, Ljavax/vecmath/Matrix4f;->m31:F

    aget-wide v2, v14, v18

    double-to-float v0, v2

    iput v0, v1, Ljavax/vecmath/Matrix4f;->m32:F

    aget-wide v2, v14, v4

    double-to-float v0, v2

    iput v0, v1, Ljavax/vecmath/Matrix4f;->m33:F

    return-void

    :cond_1
    move-object/from16 v1, p0

    new-instance v0, Ljavax/vecmath/SingularMatrixException;

    const-string v2, "Matrix4f12"

    invoke-static {v2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/vecmath/SingularMatrixException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final mul(F)V
    .locals 1

    .line 1
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 2
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 3
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 4
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 5
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 6
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 7
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 8
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 9
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 10
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 11
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 12
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 13
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 14
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 15
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 16
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final mul(FLjavax/vecmath/Matrix4f;)V
    .locals 1

    .line 17
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m00:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 18
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m01:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 19
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 20
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m03:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 21
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 22
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 23
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 24
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 25
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 26
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 27
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 28
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 29
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 30
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 31
    iget v0, p2, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 32
    iget p2, p2, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float/2addr p2, p1

    iput p2, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final mul(Ljavax/vecmath/Matrix4f;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 33
    iget v2, v0, Ljavax/vecmath/Matrix4f;->m00:F

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m00:F

    mul-float v4, v2, v3

    iget v5, v0, Ljavax/vecmath/Matrix4f;->m01:F

    iget v6, v1, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float v7, v5, v6

    add-float/2addr v4, v7

    iget v7, v0, Ljavax/vecmath/Matrix4f;->m02:F

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v9, v7, v8

    add-float/2addr v4, v9

    iget v9, v0, Ljavax/vecmath/Matrix4f;->m03:F

    iget v10, v1, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float v11, v9, v10

    add-float/2addr v4, v11

    .line 34
    iget v11, v1, Ljavax/vecmath/Matrix4f;->m01:F

    mul-float v12, v2, v11

    iget v13, v1, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float v14, v5, v13

    add-float/2addr v12, v14

    iget v14, v1, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v15, v7, v14

    add-float/2addr v12, v15

    iget v15, v1, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float v16, v9, v15

    add-float v12, v12, v16

    move/from16 v16, v12

    .line 35
    iget v12, v1, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float v17, v2, v12

    move/from16 v18, v4

    iget v4, v1, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float v19, v5, v4

    add-float v17, v17, v19

    move/from16 v19, v4

    iget v4, v1, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float v20, v7, v4

    add-float v17, v17, v20

    move/from16 v20, v4

    iget v4, v1, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float v21, v9, v4

    move/from16 v22, v4

    add-float v4, v17, v21

    move/from16 v17, v4

    .line 36
    iget v4, v1, Ljavax/vecmath/Matrix4f;->m03:F

    mul-float/2addr v2, v4

    move/from16 v21, v4

    iget v4, v1, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    iget v5, v1, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float/2addr v7, v5

    add-float/2addr v2, v7

    iget v1, v1, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float/2addr v9, v1

    add-float/2addr v2, v9

    .line 37
    iget v7, v0, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float v9, v7, v3

    move/from16 p1, v2

    iget v2, v0, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float v23, v2, v6

    add-float v9, v9, v23

    move/from16 v23, v6

    iget v6, v0, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float v24, v6, v8

    add-float v9, v9, v24

    move/from16 v24, v8

    iget v8, v0, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float v25, v8, v10

    add-float v9, v9, v25

    mul-float v25, v7, v11

    mul-float v26, v2, v13

    add-float v25, v25, v26

    mul-float v26, v6, v14

    add-float v25, v25, v26

    mul-float v26, v8, v15

    move/from16 v27, v9

    add-float v9, v25, v26

    mul-float v25, v7, v12

    mul-float v26, v2, v19

    add-float v25, v25, v26

    mul-float v26, v6, v20

    add-float v25, v25, v26

    mul-float v26, v8, v22

    move/from16 v28, v9

    add-float v9, v25, v26

    mul-float v7, v7, v21

    mul-float/2addr v2, v4

    add-float/2addr v7, v2

    mul-float/2addr v6, v5

    add-float/2addr v7, v6

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    .line 38
    iget v2, v0, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v6, v2, v3

    iget v8, v0, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v25, v8, v23

    add-float v6, v6, v25

    move/from16 v25, v7

    iget v7, v0, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float v26, v7, v24

    add-float v6, v6, v26

    move/from16 v26, v9

    iget v9, v0, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float v29, v9, v10

    add-float v6, v6, v29

    mul-float v29, v2, v11

    mul-float v30, v8, v13

    add-float v29, v29, v30

    mul-float v30, v7, v14

    add-float v29, v29, v30

    mul-float v30, v9, v15

    move/from16 v31, v6

    add-float v6, v29, v30

    mul-float v29, v2, v12

    mul-float v30, v8, v19

    add-float v29, v29, v30

    mul-float v30, v7, v20

    add-float v29, v29, v30

    mul-float v30, v9, v22

    move/from16 v32, v6

    add-float v6, v29, v30

    mul-float v2, v2, v21

    mul-float/2addr v8, v4

    add-float/2addr v2, v8

    mul-float/2addr v7, v5

    add-float/2addr v2, v7

    mul-float/2addr v9, v1

    add-float/2addr v2, v9

    .line 39
    iget v7, v0, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float/2addr v3, v7

    iget v8, v0, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float v9, v8, v23

    add-float/2addr v3, v9

    iget v9, v0, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float v23, v9, v24

    add-float v3, v3, v23

    move/from16 v23, v2

    iget v2, v0, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float/2addr v10, v2

    add-float/2addr v3, v10

    mul-float/2addr v11, v7

    mul-float/2addr v13, v8

    add-float/2addr v11, v13

    mul-float/2addr v14, v9

    add-float/2addr v11, v14

    mul-float/2addr v15, v2

    add-float/2addr v11, v15

    mul-float/2addr v12, v7

    mul-float v10, v8, v19

    add-float/2addr v12, v10

    mul-float v10, v9, v20

    add-float/2addr v12, v10

    mul-float v10, v2, v22

    add-float/2addr v12, v10

    mul-float v7, v7, v21

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    mul-float/2addr v9, v5

    add-float/2addr v7, v9

    mul-float/2addr v2, v1

    add-float/2addr v7, v2

    move/from16 v4, v18

    .line 40
    iput v4, v0, Ljavax/vecmath/Matrix4f;->m00:F

    move/from16 v1, v16

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m01:F

    move/from16 v1, v17

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m02:F

    move/from16 v2, p1

    iput v2, v0, Ljavax/vecmath/Matrix4f;->m03:F

    move/from16 v9, v27

    .line 41
    iput v9, v0, Ljavax/vecmath/Matrix4f;->m10:F

    move/from16 v1, v28

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m11:F

    move/from16 v1, v26

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m12:F

    move/from16 v1, v25

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m13:F

    move/from16 v1, v31

    .line 42
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m20:F

    move/from16 v1, v32

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m21:F

    iput v6, v0, Ljavax/vecmath/Matrix4f;->m22:F

    move/from16 v2, v23

    iput v2, v0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 43
    iput v3, v0, Ljavax/vecmath/Matrix4f;->m30:F

    iput v11, v0, Ljavax/vecmath/Matrix4f;->m31:F

    iput v12, v0, Ljavax/vecmath/Matrix4f;->m32:F

    iput v7, v0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final mul(Ljavax/vecmath/Matrix4f;Ljavax/vecmath/Matrix4f;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    .line 44
    iget v3, v1, Ljavax/vecmath/Matrix4f;->m00:F

    iget v4, v2, Ljavax/vecmath/Matrix4f;->m00:F

    mul-float/2addr v3, v4

    iget v4, v1, Ljavax/vecmath/Matrix4f;->m01:F

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float v6, v4, v5

    add-float/2addr v3, v6

    iget v6, v1, Ljavax/vecmath/Matrix4f;->m02:F

    iget v7, v2, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v8, v6, v7

    add-float/2addr v3, v8

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m03:F

    iget v9, v2, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float v10, v8, v9

    add-float/2addr v3, v10

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 45
    iget v3, v1, Ljavax/vecmath/Matrix4f;->m00:F

    iget v10, v2, Ljavax/vecmath/Matrix4f;->m01:F

    mul-float/2addr v10, v3

    iget v11, v2, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float/2addr v4, v11

    add-float/2addr v10, v4

    iget v4, v2, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v12, v6, v4

    add-float/2addr v10, v12

    iget v12, v2, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float v13, v8, v12

    add-float/2addr v10, v13

    iput v10, v0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 46
    iget v10, v2, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float/2addr v10, v3

    iget v13, v1, Ljavax/vecmath/Matrix4f;->m01:F

    iget v14, v2, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float v15, v13, v14

    add-float/2addr v10, v15

    iget v15, v2, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float/2addr v6, v15

    add-float/2addr v10, v6

    iget v6, v2, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float v16, v8, v6

    add-float v10, v10, v16

    iput v10, v0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 47
    iget v10, v2, Ljavax/vecmath/Matrix4f;->m03:F

    mul-float/2addr v3, v10

    iget v10, v2, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float/2addr v13, v10

    add-float/2addr v3, v13

    iget v13, v1, Ljavax/vecmath/Matrix4f;->m02:F

    move/from16 v16, v10

    iget v10, v2, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float/2addr v13, v10

    add-float/2addr v3, v13

    iget v13, v2, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float/2addr v8, v13

    add-float/2addr v3, v8

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 48
    iget v3, v1, Ljavax/vecmath/Matrix4f;->m10:F

    iget v8, v2, Ljavax/vecmath/Matrix4f;->m00:F

    mul-float/2addr v3, v8

    move/from16 v17, v8

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float/2addr v5, v8

    add-float/2addr v3, v5

    iget v5, v1, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float v18, v5, v7

    add-float v3, v3, v18

    move/from16 v18, v7

    iget v7, v1, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float v19, v7, v9

    add-float v3, v3, v19

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 49
    iget v3, v1, Ljavax/vecmath/Matrix4f;->m10:F

    move/from16 v19, v9

    iget v9, v2, Ljavax/vecmath/Matrix4f;->m01:F

    mul-float v20, v3, v9

    mul-float/2addr v8, v11

    add-float v20, v20, v8

    mul-float v8, v5, v4

    add-float v20, v20, v8

    mul-float v8, v7, v12

    add-float v8, v20, v8

    iput v8, v0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 50
    iget v8, v2, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float v11, v3, v8

    move/from16 v20, v8

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float/2addr v14, v8

    add-float/2addr v11, v14

    mul-float/2addr v5, v15

    add-float/2addr v11, v5

    mul-float v5, v7, v6

    add-float/2addr v11, v5

    iput v11, v0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 51
    iget v5, v2, Ljavax/vecmath/Matrix4f;->m03:F

    mul-float/2addr v3, v5

    mul-float v8, v8, v16

    add-float/2addr v3, v8

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float/2addr v8, v10

    add-float/2addr v3, v8

    mul-float/2addr v7, v13

    add-float/2addr v3, v7

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 52
    iget v3, v1, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v3, v3, v17

    iget v7, v1, Ljavax/vecmath/Matrix4f;->m21:F

    iget v8, v2, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float v11, v7, v8

    add-float/2addr v3, v11

    iget v11, v1, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float v14, v11, v18

    add-float/2addr v3, v14

    iget v14, v1, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float v16, v14, v19

    add-float v3, v3, v16

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 53
    iget v3, v1, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v16, v3, v9

    move/from16 v18, v9

    iget v9, v2, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float/2addr v7, v9

    add-float v16, v16, v7

    mul-float/2addr v4, v11

    add-float v16, v16, v4

    mul-float v4, v14, v12

    add-float v4, v16, v4

    iput v4, v0, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v4, v3, v20

    .line 54
    iget v7, v1, Ljavax/vecmath/Matrix4f;->m21:F

    move/from16 v16, v12

    iget v12, v2, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float v21, v7, v12

    add-float v4, v4, v21

    mul-float/2addr v11, v15

    add-float/2addr v4, v11

    mul-float v11, v14, v6

    add-float/2addr v4, v11

    iput v4, v0, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float/2addr v3, v5

    .line 55
    iget v4, v2, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float/2addr v7, v4

    add-float/2addr v3, v7

    iget v7, v1, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float/2addr v7, v10

    add-float/2addr v3, v7

    mul-float/2addr v14, v13

    add-float/2addr v3, v14

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 56
    iget v3, v1, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float v3, v3, v17

    iget v7, v1, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float/2addr v8, v7

    add-float/2addr v3, v8

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m32:F

    iget v10, v2, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float/2addr v10, v8

    add-float/2addr v3, v10

    iget v10, v1, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float v11, v10, v19

    add-float/2addr v3, v11

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 57
    iget v3, v1, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float v11, v3, v18

    mul-float/2addr v7, v9

    add-float/2addr v11, v7

    iget v7, v2, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float/2addr v7, v8

    add-float/2addr v11, v7

    mul-float v7, v10, v16

    add-float/2addr v11, v7

    iput v11, v0, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float v7, v3, v20

    .line 58
    iget v9, v1, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float/2addr v12, v9

    add-float/2addr v7, v12

    iget v11, v2, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float/2addr v8, v11

    add-float/2addr v7, v8

    mul-float/2addr v6, v10

    add-float/2addr v7, v6

    iput v7, v0, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float/2addr v3, v5

    mul-float/2addr v9, v4

    add-float/2addr v3, v9

    .line 59
    iget v1, v1, Ljavax/vecmath/Matrix4f;->m32:F

    iget v2, v2, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    mul-float/2addr v10, v13

    add-float/2addr v3, v10

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m33:F

    goto/16 :goto_0

    .line 60
    :cond_0
    iget v3, v1, Ljavax/vecmath/Matrix4f;->m00:F

    iget v4, v2, Ljavax/vecmath/Matrix4f;->m00:F

    mul-float v5, v3, v4

    iget v6, v1, Ljavax/vecmath/Matrix4f;->m01:F

    iget v7, v2, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float v8, v6, v7

    add-float/2addr v5, v8

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m02:F

    iget v9, v2, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v10, v8, v9

    add-float/2addr v5, v10

    iget v10, v1, Ljavax/vecmath/Matrix4f;->m03:F

    iget v11, v2, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float v12, v10, v11

    add-float/2addr v5, v12

    .line 61
    iget v12, v2, Ljavax/vecmath/Matrix4f;->m01:F

    mul-float v13, v3, v12

    iget v14, v2, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float v15, v6, v14

    add-float/2addr v13, v15

    iget v15, v2, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v16, v8, v15

    add-float v13, v13, v16

    iget v0, v2, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float v16, v10, v0

    add-float v13, v13, v16

    move/from16 v16, v13

    .line 62
    iget v13, v2, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float v17, v3, v13

    move/from16 v18, v5

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float v19, v6, v5

    add-float v17, v17, v19

    move/from16 v19, v5

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float v20, v8, v5

    add-float v17, v17, v20

    move/from16 v20, v5

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float v21, v10, v5

    move/from16 v22, v5

    add-float v5, v17, v21

    move/from16 v17, v5

    .line 63
    iget v5, v2, Ljavax/vecmath/Matrix4f;->m03:F

    mul-float/2addr v3, v5

    move/from16 v21, v5

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float/2addr v6, v5

    add-float/2addr v3, v6

    iget v6, v2, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float/2addr v8, v6

    add-float/2addr v3, v8

    iget v2, v2, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float/2addr v10, v2

    add-float/2addr v3, v10

    .line 64
    iget v8, v1, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float v10, v8, v4

    move/from16 p2, v3

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float v23, v3, v7

    add-float v10, v10, v23

    move/from16 v23, v7

    iget v7, v1, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float v24, v7, v9

    add-float v10, v10, v24

    move/from16 v24, v9

    iget v9, v1, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float v25, v9, v11

    add-float v10, v10, v25

    mul-float v25, v8, v12

    mul-float v26, v3, v14

    add-float v25, v25, v26

    mul-float v26, v7, v15

    add-float v25, v25, v26

    mul-float v26, v9, v0

    move/from16 v27, v10

    add-float v10, v25, v26

    mul-float v25, v8, v13

    mul-float v26, v3, v19

    add-float v25, v25, v26

    mul-float v26, v7, v20

    add-float v25, v25, v26

    mul-float v26, v9, v22

    move/from16 v28, v10

    add-float v10, v25, v26

    mul-float v8, v8, v21

    mul-float/2addr v3, v5

    add-float/2addr v8, v3

    mul-float/2addr v7, v6

    add-float/2addr v8, v7

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    .line 65
    iget v3, v1, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v7, v3, v4

    iget v9, v1, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v25, v9, v23

    add-float v7, v7, v25

    move/from16 v25, v8

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float v26, v8, v24

    add-float v7, v7, v26

    move/from16 v26, v10

    iget v10, v1, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float v29, v10, v11

    add-float v7, v7, v29

    mul-float v29, v3, v12

    mul-float v30, v9, v14

    add-float v29, v29, v30

    mul-float v30, v8, v15

    add-float v29, v29, v30

    mul-float v30, v10, v0

    move/from16 v31, v7

    add-float v7, v29, v30

    mul-float v29, v3, v13

    mul-float v30, v9, v19

    add-float v29, v29, v30

    mul-float v30, v8, v20

    add-float v29, v29, v30

    mul-float v30, v10, v22

    move/from16 v32, v7

    add-float v7, v29, v30

    mul-float v3, v3, v21

    mul-float/2addr v9, v5

    add-float/2addr v3, v9

    mul-float/2addr v8, v6

    add-float/2addr v3, v8

    mul-float/2addr v10, v2

    add-float/2addr v3, v10

    .line 66
    iget v8, v1, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float/2addr v4, v8

    iget v9, v1, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float v10, v9, v23

    add-float/2addr v4, v10

    iget v10, v1, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float v23, v10, v24

    add-float v4, v4, v23

    iget v1, v1, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float/2addr v11, v1

    add-float/2addr v4, v11

    mul-float/2addr v12, v8

    mul-float/2addr v14, v9

    add-float/2addr v12, v14

    mul-float/2addr v15, v10

    add-float/2addr v12, v15

    mul-float/2addr v0, v1

    add-float/2addr v12, v0

    mul-float/2addr v13, v8

    mul-float v0, v9, v19

    add-float/2addr v13, v0

    mul-float v0, v10, v20

    add-float/2addr v13, v0

    mul-float v0, v1, v22

    add-float/2addr v13, v0

    mul-float v8, v8, v21

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v10, v6

    add-float/2addr v8, v10

    mul-float/2addr v1, v2

    add-float/2addr v8, v1

    move-object/from16 v0, p0

    move/from16 v5, v18

    .line 67
    iput v5, v0, Ljavax/vecmath/Matrix4f;->m00:F

    move/from16 v1, v16

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m01:F

    move/from16 v1, v17

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m02:F

    move/from16 v1, p2

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m03:F

    move/from16 v10, v27

    .line 68
    iput v10, v0, Ljavax/vecmath/Matrix4f;->m10:F

    move/from16 v1, v28

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m11:F

    move/from16 v1, v26

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m12:F

    move/from16 v1, v25

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m13:F

    move/from16 v1, v31

    .line 69
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m20:F

    move/from16 v1, v32

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m21:F

    iput v7, v0, Ljavax/vecmath/Matrix4f;->m22:F

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 70
    iput v4, v0, Ljavax/vecmath/Matrix4f;->m30:F

    iput v12, v0, Ljavax/vecmath/Matrix4f;->m31:F

    iput v13, v0, Ljavax/vecmath/Matrix4f;->m32:F

    iput v8, v0, Ljavax/vecmath/Matrix4f;->m33:F

    :goto_0
    return-void
.end method

.method public final mulTransposeBoth(Ljavax/vecmath/Matrix4f;Ljavax/vecmath/Matrix4f;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m00:F

    iget v4, v2, Ljavax/vecmath/Matrix4f;->m00:F

    mul-float/2addr v3, v4

    iget v4, v1, Ljavax/vecmath/Matrix4f;->m10:F

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m01:F

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    iget v5, v1, Ljavax/vecmath/Matrix4f;->m20:F

    iget v6, v2, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float/2addr v6, v5

    add-float/2addr v3, v6

    iget v6, v1, Ljavax/vecmath/Matrix4f;->m30:F

    iget v7, v2, Ljavax/vecmath/Matrix4f;->m03:F

    mul-float/2addr v7, v6

    add-float/2addr v3, v7

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m00:F

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m00:F

    iget v7, v2, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float/2addr v7, v3

    iget v8, v2, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float v9, v4, v8

    add-float/2addr v7, v9

    iget v9, v2, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float v10, v5, v9

    add-float/2addr v7, v10

    iget v10, v2, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float v11, v6, v10

    add-float/2addr v7, v11

    iput v7, v0, Ljavax/vecmath/Matrix4f;->m01:F

    iget v7, v2, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v11, v3, v7

    iget v12, v2, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v13, v4, v12

    add-float/2addr v11, v13

    iget v13, v2, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float v14, v5, v13

    add-float/2addr v11, v14

    iget v14, v2, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float v15, v6, v14

    add-float/2addr v11, v15

    iput v11, v0, Ljavax/vecmath/Matrix4f;->m02:F

    iget v11, v2, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float/2addr v3, v11

    iget v15, v2, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float/2addr v4, v15

    add-float/2addr v3, v4

    iget v4, v2, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float/2addr v6, v5

    add-float/2addr v3, v6

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m03:F

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m01:F

    iget v6, v2, Ljavax/vecmath/Matrix4f;->m00:F

    mul-float v16, v3, v6

    move/from16 v17, v6

    iget v6, v1, Ljavax/vecmath/Matrix4f;->m11:F

    move/from16 v18, v5

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m01:F

    mul-float v19, v6, v5

    add-float v16, v16, v19

    move/from16 v19, v5

    iget v5, v1, Ljavax/vecmath/Matrix4f;->m21:F

    move/from16 v20, v4

    iget v4, v2, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float v21, v5, v4

    add-float v16, v16, v21

    move/from16 v21, v4

    iget v4, v1, Ljavax/vecmath/Matrix4f;->m31:F

    move/from16 v22, v15

    iget v15, v2, Ljavax/vecmath/Matrix4f;->m03:F

    mul-float v23, v4, v15

    move/from16 v24, v15

    add-float v15, v16, v23

    iput v15, v0, Ljavax/vecmath/Matrix4f;->m10:F

    iget v15, v2, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float v16, v3, v15

    mul-float/2addr v6, v8

    add-float v16, v16, v6

    mul-float/2addr v9, v5

    add-float v16, v16, v9

    mul-float/2addr v10, v4

    add-float v6, v16, v10

    iput v6, v0, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float/2addr v7, v3

    iget v6, v1, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float/2addr v12, v6

    add-float/2addr v7, v12

    mul-float v8, v5, v13

    add-float/2addr v7, v8

    mul-float v8, v4, v14

    add-float/2addr v7, v8

    iput v7, v0, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float/2addr v3, v11

    mul-float v6, v6, v22

    add-float/2addr v3, v6

    mul-float v5, v5, v20

    add-float/2addr v3, v5

    mul-float v4, v4, v18

    add-float/2addr v3, v4

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m13:F

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float v6, v3, v17

    iget v4, v1, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float v5, v4, v19

    add-float/2addr v6, v5

    iget v5, v1, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float v7, v5, v21

    add-float/2addr v6, v7

    iget v7, v1, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float v8, v7, v24

    add-float/2addr v6, v8

    iput v6, v0, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v6, v3, v15

    iget v8, v2, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float v9, v4, v8

    add-float/2addr v6, v9

    iget v9, v2, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float v10, v5, v9

    add-float/2addr v6, v10

    iget v10, v2, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float v12, v7, v10

    add-float/2addr v6, v12

    iput v6, v0, Ljavax/vecmath/Matrix4f;->m21:F

    iget v6, v2, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v12, v3, v6

    move/from16 v16, v6

    iget v6, v2, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v23, v4, v6

    add-float v12, v12, v23

    mul-float/2addr v5, v13

    add-float/2addr v12, v5

    mul-float/2addr v14, v7

    add-float/2addr v12, v14

    iput v12, v0, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float/2addr v3, v11

    mul-float v4, v4, v22

    add-float/2addr v3, v4

    iget v4, v1, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float v4, v4, v20

    add-float/2addr v3, v4

    mul-float v7, v7, v18

    add-float/2addr v3, v7

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m23:F

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m03:F

    mul-float v4, v3, v17

    iget v5, v1, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float v7, v5, v19

    add-float/2addr v4, v7

    iget v7, v1, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float v11, v7, v21

    add-float/2addr v4, v11

    iget v1, v1, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float v11, v1, v24

    add-float/2addr v4, v11

    iput v4, v0, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float/2addr v15, v3

    mul-float/2addr v8, v5

    add-float/2addr v15, v8

    mul-float/2addr v9, v7

    add-float/2addr v15, v9

    mul-float/2addr v10, v1

    add-float/2addr v15, v10

    iput v15, v0, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float v4, v3, v16

    mul-float/2addr v6, v5

    add-float/2addr v4, v6

    iget v6, v2, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    iget v6, v2, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float/2addr v6, v1

    add-float/2addr v4, v6

    iput v4, v0, Ljavax/vecmath/Matrix4f;->m32:F

    iget v4, v2, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float/2addr v3, v4

    iget v4, v2, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    iget v2, v2, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float/2addr v7, v2

    add-float/2addr v3, v7

    mul-float v1, v1, v18

    add-float/2addr v3, v1

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m33:F

    goto/16 :goto_0

    :cond_0
    iget v3, v1, Ljavax/vecmath/Matrix4f;->m00:F

    iget v4, v2, Ljavax/vecmath/Matrix4f;->m00:F

    mul-float v5, v3, v4

    iget v6, v1, Ljavax/vecmath/Matrix4f;->m10:F

    iget v7, v2, Ljavax/vecmath/Matrix4f;->m01:F

    mul-float v8, v6, v7

    add-float/2addr v5, v8

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m20:F

    iget v9, v2, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float v10, v8, v9

    add-float/2addr v5, v10

    iget v10, v1, Ljavax/vecmath/Matrix4f;->m30:F

    iget v11, v2, Ljavax/vecmath/Matrix4f;->m03:F

    mul-float v12, v10, v11

    add-float/2addr v5, v12

    iget v12, v2, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float v13, v3, v12

    iget v14, v2, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float v15, v6, v14

    add-float/2addr v13, v15

    iget v15, v2, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float v16, v8, v15

    add-float v13, v13, v16

    iget v0, v2, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float v16, v10, v0

    add-float v13, v13, v16

    move/from16 v16, v13

    iget v13, v2, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v17, v3, v13

    move/from16 v18, v5

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v19, v6, v5

    add-float v17, v17, v19

    move/from16 v19, v5

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float v20, v8, v5

    add-float v17, v17, v20

    move/from16 v20, v5

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float v21, v10, v5

    move/from16 v22, v5

    add-float v5, v17, v21

    move/from16 v17, v5

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float/2addr v3, v5

    move/from16 v21, v5

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float/2addr v6, v5

    add-float/2addr v3, v6

    iget v6, v2, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float/2addr v8, v6

    add-float/2addr v3, v8

    iget v2, v2, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float/2addr v10, v2

    add-float/2addr v3, v10

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m01:F

    mul-float v10, v8, v4

    move/from16 p2, v3

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float v23, v3, v7

    add-float v10, v10, v23

    move/from16 v23, v7

    iget v7, v1, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v24, v7, v9

    add-float v10, v10, v24

    move/from16 v24, v9

    iget v9, v1, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float v25, v9, v11

    add-float v10, v10, v25

    mul-float v25, v8, v12

    mul-float v26, v3, v14

    add-float v25, v25, v26

    mul-float v26, v7, v15

    add-float v25, v25, v26

    mul-float v26, v9, v0

    move/from16 v27, v10

    add-float v10, v25, v26

    mul-float v25, v8, v13

    mul-float v26, v3, v19

    add-float v25, v25, v26

    mul-float v26, v7, v20

    add-float v25, v25, v26

    mul-float v26, v9, v22

    move/from16 v28, v10

    add-float v10, v25, v26

    mul-float v8, v8, v21

    mul-float/2addr v3, v5

    add-float/2addr v8, v3

    mul-float/2addr v7, v6

    add-float/2addr v8, v7

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float v7, v3, v4

    iget v9, v1, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float v25, v9, v23

    add-float v7, v7, v25

    move/from16 v25, v8

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float v26, v8, v24

    add-float v7, v7, v26

    move/from16 v26, v10

    iget v10, v1, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float v29, v10, v11

    add-float v7, v7, v29

    mul-float v29, v3, v12

    mul-float v30, v9, v14

    add-float v29, v29, v30

    mul-float v30, v8, v15

    add-float v29, v29, v30

    mul-float v30, v10, v0

    move/from16 v31, v7

    add-float v7, v29, v30

    mul-float v29, v3, v13

    mul-float v30, v9, v19

    add-float v29, v29, v30

    mul-float v30, v8, v20

    add-float v29, v29, v30

    mul-float v30, v10, v22

    move/from16 v32, v7

    add-float v7, v29, v30

    mul-float v3, v3, v21

    mul-float/2addr v9, v5

    add-float/2addr v3, v9

    mul-float/2addr v8, v6

    add-float/2addr v3, v8

    mul-float/2addr v10, v2

    add-float/2addr v3, v10

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m03:F

    mul-float/2addr v4, v8

    iget v9, v1, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float v10, v9, v23

    add-float/2addr v4, v10

    iget v10, v1, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float v23, v10, v24

    add-float v4, v4, v23

    iget v1, v1, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float/2addr v11, v1

    add-float/2addr v4, v11

    mul-float/2addr v12, v8

    mul-float/2addr v14, v9

    add-float/2addr v12, v14

    mul-float/2addr v15, v10

    add-float/2addr v12, v15

    mul-float/2addr v0, v1

    add-float/2addr v12, v0

    mul-float/2addr v13, v8

    mul-float v0, v9, v19

    add-float/2addr v13, v0

    mul-float v0, v10, v20

    add-float/2addr v13, v0

    mul-float v0, v1, v22

    add-float/2addr v13, v0

    mul-float v8, v8, v21

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v10, v6

    add-float/2addr v8, v10

    mul-float/2addr v1, v2

    add-float/2addr v8, v1

    move-object/from16 v0, p0

    move/from16 v5, v18

    iput v5, v0, Ljavax/vecmath/Matrix4f;->m00:F

    move/from16 v1, v16

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m01:F

    move/from16 v1, v17

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m02:F

    move/from16 v1, p2

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m03:F

    move/from16 v10, v27

    iput v10, v0, Ljavax/vecmath/Matrix4f;->m10:F

    move/from16 v1, v28

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m11:F

    move/from16 v1, v26

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m12:F

    move/from16 v1, v25

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m13:F

    move/from16 v1, v31

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m20:F

    move/from16 v1, v32

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m21:F

    iput v7, v0, Ljavax/vecmath/Matrix4f;->m22:F

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m23:F

    iput v4, v0, Ljavax/vecmath/Matrix4f;->m30:F

    iput v12, v0, Ljavax/vecmath/Matrix4f;->m31:F

    iput v13, v0, Ljavax/vecmath/Matrix4f;->m32:F

    iput v8, v0, Ljavax/vecmath/Matrix4f;->m33:F

    :goto_0
    return-void
.end method

.method public final mulTransposeLeft(Ljavax/vecmath/Matrix4f;Ljavax/vecmath/Matrix4f;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m00:F

    iget v4, v2, Ljavax/vecmath/Matrix4f;->m00:F

    mul-float/2addr v3, v4

    iget v4, v1, Ljavax/vecmath/Matrix4f;->m10:F

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float v6, v4, v5

    add-float/2addr v3, v6

    iget v6, v1, Ljavax/vecmath/Matrix4f;->m20:F

    iget v7, v2, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v8, v6, v7

    add-float/2addr v3, v8

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m30:F

    iget v9, v2, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float v10, v8, v9

    add-float/2addr v3, v10

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m00:F

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m00:F

    iget v10, v2, Ljavax/vecmath/Matrix4f;->m01:F

    mul-float/2addr v10, v3

    iget v11, v2, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float v12, v4, v11

    add-float/2addr v10, v12

    iget v12, v2, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v13, v6, v12

    add-float/2addr v10, v13

    iget v13, v2, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float v14, v8, v13

    add-float/2addr v10, v14

    iput v10, v0, Ljavax/vecmath/Matrix4f;->m01:F

    iget v10, v2, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float/2addr v10, v3

    iget v14, v2, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float v15, v4, v14

    add-float/2addr v10, v15

    iget v15, v2, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float v16, v6, v15

    add-float v10, v10, v16

    move/from16 v16, v15

    iget v15, v2, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float v17, v8, v15

    add-float v10, v10, v17

    iput v10, v0, Ljavax/vecmath/Matrix4f;->m02:F

    iget v10, v2, Ljavax/vecmath/Matrix4f;->m03:F

    mul-float/2addr v3, v10

    iget v10, v2, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float/2addr v4, v10

    add-float/2addr v3, v4

    iget v4, v2, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float/2addr v6, v4

    add-float/2addr v3, v6

    iget v6, v2, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float/2addr v8, v6

    add-float/2addr v3, v8

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m03:F

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m01:F

    iget v8, v2, Ljavax/vecmath/Matrix4f;->m00:F

    mul-float v17, v3, v8

    move/from16 v18, v8

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float/2addr v5, v8

    add-float v17, v17, v5

    iget v5, v1, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v19, v5, v7

    add-float v17, v17, v19

    move/from16 v19, v7

    iget v7, v1, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float v20, v7, v9

    move/from16 v21, v9

    add-float v9, v17, v20

    iput v9, v0, Ljavax/vecmath/Matrix4f;->m10:F

    iget v9, v2, Ljavax/vecmath/Matrix4f;->m01:F

    mul-float v17, v3, v9

    mul-float/2addr v8, v11

    add-float v17, v17, v8

    mul-float v8, v5, v12

    add-float v17, v17, v8

    mul-float v8, v7, v13

    add-float v8, v17, v8

    iput v8, v0, Ljavax/vecmath/Matrix4f;->m11:F

    iget v8, v2, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float v11, v3, v8

    move/from16 v17, v8

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float/2addr v14, v8

    add-float/2addr v11, v14

    mul-float v14, v5, v16

    add-float/2addr v11, v14

    mul-float v14, v7, v15

    add-float/2addr v11, v14

    iput v11, v0, Ljavax/vecmath/Matrix4f;->m12:F

    iget v11, v2, Ljavax/vecmath/Matrix4f;->m03:F

    mul-float/2addr v3, v11

    mul-float/2addr v8, v10

    add-float/2addr v3, v8

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    mul-float/2addr v7, v6

    add-float/2addr v3, v7

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m13:F

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float v8, v3, v18

    iget v5, v1, Ljavax/vecmath/Matrix4f;->m12:F

    iget v7, v2, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float v10, v5, v7

    add-float/2addr v8, v10

    iget v10, v1, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float v14, v10, v19

    add-float/2addr v8, v14

    iget v14, v1, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float v19, v14, v21

    add-float v8, v8, v19

    iput v8, v0, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v8, v3, v9

    move/from16 v19, v9

    iget v9, v2, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float v20, v5, v9

    add-float v8, v8, v20

    mul-float/2addr v12, v10

    add-float/2addr v8, v12

    mul-float v12, v14, v13

    add-float/2addr v8, v12

    iput v8, v0, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v8, v3, v17

    iget v12, v2, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float v20, v5, v12

    add-float v8, v8, v20

    mul-float v10, v10, v16

    add-float/2addr v8, v10

    mul-float v10, v14, v15

    add-float/2addr v8, v10

    iput v8, v0, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float/2addr v3, v11

    iget v8, v2, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float/2addr v5, v8

    add-float/2addr v3, v5

    iget v5, v1, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    mul-float/2addr v14, v6

    add-float/2addr v3, v14

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m23:F

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m03:F

    mul-float v4, v3, v18

    iget v5, v1, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float/2addr v7, v5

    add-float/2addr v4, v7

    iget v7, v1, Ljavax/vecmath/Matrix4f;->m23:F

    iget v10, v2, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float/2addr v10, v7

    add-float/2addr v4, v10

    iget v1, v1, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float v10, v1, v21

    add-float/2addr v4, v10

    iput v4, v0, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float v4, v3, v19

    mul-float/2addr v9, v5

    add-float/2addr v4, v9

    iget v9, v2, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float/2addr v9, v7

    add-float/2addr v4, v9

    mul-float/2addr v13, v1

    add-float/2addr v4, v13

    iput v4, v0, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float v4, v3, v17

    mul-float/2addr v12, v5

    add-float/2addr v4, v12

    iget v9, v2, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float/2addr v9, v7

    add-float/2addr v4, v9

    mul-float/2addr v15, v1

    add-float/2addr v4, v15

    iput v4, v0, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float/2addr v3, v11

    mul-float/2addr v5, v8

    add-float/2addr v3, v5

    iget v2, v2, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float/2addr v7, v2

    add-float/2addr v3, v7

    mul-float/2addr v1, v6

    add-float/2addr v3, v1

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m33:F

    goto/16 :goto_0

    :cond_0
    iget v3, v1, Ljavax/vecmath/Matrix4f;->m00:F

    iget v4, v2, Ljavax/vecmath/Matrix4f;->m00:F

    mul-float v5, v3, v4

    iget v6, v1, Ljavax/vecmath/Matrix4f;->m10:F

    iget v7, v2, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float v8, v6, v7

    add-float/2addr v5, v8

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m20:F

    iget v9, v2, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v10, v8, v9

    add-float/2addr v5, v10

    iget v10, v1, Ljavax/vecmath/Matrix4f;->m30:F

    iget v11, v2, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float v12, v10, v11

    add-float/2addr v5, v12

    iget v12, v2, Ljavax/vecmath/Matrix4f;->m01:F

    mul-float v13, v3, v12

    iget v14, v2, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float v15, v6, v14

    add-float/2addr v13, v15

    iget v15, v2, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v16, v8, v15

    add-float v13, v13, v16

    iget v0, v2, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float v16, v10, v0

    add-float v13, v13, v16

    move/from16 v16, v13

    iget v13, v2, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float v17, v3, v13

    move/from16 v18, v5

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float v19, v6, v5

    add-float v17, v17, v19

    move/from16 v19, v5

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float v20, v8, v5

    add-float v17, v17, v20

    move/from16 v20, v5

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float v21, v10, v5

    move/from16 v22, v5

    add-float v5, v17, v21

    move/from16 v17, v5

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m03:F

    mul-float/2addr v3, v5

    move/from16 v21, v5

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float/2addr v6, v5

    add-float/2addr v3, v6

    iget v6, v2, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float/2addr v8, v6

    add-float/2addr v3, v8

    iget v2, v2, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float/2addr v10, v2

    add-float/2addr v3, v10

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m01:F

    mul-float v10, v8, v4

    move/from16 p2, v3

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float v23, v3, v7

    add-float v10, v10, v23

    move/from16 v23, v7

    iget v7, v1, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v24, v7, v9

    add-float v10, v10, v24

    move/from16 v24, v9

    iget v9, v1, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float v25, v9, v11

    add-float v10, v10, v25

    mul-float v25, v8, v12

    mul-float v26, v3, v14

    add-float v25, v25, v26

    mul-float v26, v7, v15

    add-float v25, v25, v26

    mul-float v26, v9, v0

    move/from16 v27, v10

    add-float v10, v25, v26

    mul-float v25, v8, v13

    mul-float v26, v3, v19

    add-float v25, v25, v26

    mul-float v26, v7, v20

    add-float v25, v25, v26

    mul-float v26, v9, v22

    move/from16 v28, v10

    add-float v10, v25, v26

    mul-float v8, v8, v21

    mul-float/2addr v3, v5

    add-float/2addr v8, v3

    mul-float/2addr v7, v6

    add-float/2addr v8, v7

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float v7, v3, v4

    iget v9, v1, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float v25, v9, v23

    add-float v7, v7, v25

    move/from16 v25, v8

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float v26, v8, v24

    add-float v7, v7, v26

    move/from16 v26, v10

    iget v10, v1, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float v29, v10, v11

    add-float v7, v7, v29

    mul-float v29, v3, v12

    mul-float v30, v9, v14

    add-float v29, v29, v30

    mul-float v30, v8, v15

    add-float v29, v29, v30

    mul-float v30, v10, v0

    move/from16 v31, v7

    add-float v7, v29, v30

    mul-float v29, v3, v13

    mul-float v30, v9, v19

    add-float v29, v29, v30

    mul-float v30, v8, v20

    add-float v29, v29, v30

    mul-float v30, v10, v22

    move/from16 v32, v7

    add-float v7, v29, v30

    mul-float v3, v3, v21

    mul-float/2addr v9, v5

    add-float/2addr v3, v9

    mul-float/2addr v8, v6

    add-float/2addr v3, v8

    mul-float/2addr v10, v2

    add-float/2addr v3, v10

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m03:F

    mul-float/2addr v4, v8

    iget v9, v1, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float v10, v9, v23

    add-float/2addr v4, v10

    iget v10, v1, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float v23, v10, v24

    add-float v4, v4, v23

    iget v1, v1, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float/2addr v11, v1

    add-float/2addr v4, v11

    mul-float/2addr v12, v8

    mul-float/2addr v14, v9

    add-float/2addr v12, v14

    mul-float/2addr v15, v10

    add-float/2addr v12, v15

    mul-float/2addr v0, v1

    add-float/2addr v12, v0

    mul-float/2addr v13, v8

    mul-float v0, v9, v19

    add-float/2addr v13, v0

    mul-float v0, v10, v20

    add-float/2addr v13, v0

    mul-float v0, v1, v22

    add-float/2addr v13, v0

    mul-float v8, v8, v21

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v10, v6

    add-float/2addr v8, v10

    mul-float/2addr v1, v2

    add-float/2addr v8, v1

    move-object/from16 v0, p0

    move/from16 v5, v18

    iput v5, v0, Ljavax/vecmath/Matrix4f;->m00:F

    move/from16 v1, v16

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m01:F

    move/from16 v1, v17

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m02:F

    move/from16 v1, p2

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m03:F

    move/from16 v10, v27

    iput v10, v0, Ljavax/vecmath/Matrix4f;->m10:F

    move/from16 v1, v28

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m11:F

    move/from16 v1, v26

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m12:F

    move/from16 v1, v25

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m13:F

    move/from16 v1, v31

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m20:F

    move/from16 v1, v32

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m21:F

    iput v7, v0, Ljavax/vecmath/Matrix4f;->m22:F

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m23:F

    iput v4, v0, Ljavax/vecmath/Matrix4f;->m30:F

    iput v12, v0, Ljavax/vecmath/Matrix4f;->m31:F

    iput v13, v0, Ljavax/vecmath/Matrix4f;->m32:F

    iput v8, v0, Ljavax/vecmath/Matrix4f;->m33:F

    :goto_0
    return-void
.end method

.method public final mulTransposeRight(Ljavax/vecmath/Matrix4f;Ljavax/vecmath/Matrix4f;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m00:F

    iget v4, v2, Ljavax/vecmath/Matrix4f;->m00:F

    mul-float/2addr v3, v4

    iget v4, v1, Ljavax/vecmath/Matrix4f;->m01:F

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m01:F

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    iget v5, v1, Ljavax/vecmath/Matrix4f;->m02:F

    iget v6, v2, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float/2addr v6, v5

    add-float/2addr v3, v6

    iget v6, v1, Ljavax/vecmath/Matrix4f;->m03:F

    iget v7, v2, Ljavax/vecmath/Matrix4f;->m03:F

    mul-float/2addr v7, v6

    add-float/2addr v3, v7

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m00:F

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m00:F

    iget v7, v2, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float/2addr v7, v3

    iget v8, v2, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float/2addr v4, v8

    add-float/2addr v7, v4

    iget v4, v2, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float v9, v5, v4

    add-float/2addr v7, v9

    iget v9, v2, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float v10, v6, v9

    add-float/2addr v7, v10

    iput v7, v0, Ljavax/vecmath/Matrix4f;->m01:F

    iget v7, v2, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v10, v3, v7

    iget v11, v1, Ljavax/vecmath/Matrix4f;->m01:F

    iget v12, v2, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v13, v11, v12

    add-float/2addr v10, v13

    iget v13, v2, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float/2addr v5, v13

    add-float/2addr v10, v5

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float v14, v6, v5

    add-float/2addr v10, v14

    iput v10, v0, Ljavax/vecmath/Matrix4f;->m02:F

    iget v10, v2, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float/2addr v3, v10

    iget v14, v2, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float/2addr v11, v14

    add-float/2addr v3, v11

    iget v11, v1, Ljavax/vecmath/Matrix4f;->m02:F

    iget v15, v2, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float/2addr v11, v15

    add-float/2addr v3, v11

    iget v11, v2, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float/2addr v6, v11

    add-float/2addr v3, v6

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m03:F

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m10:F

    iget v6, v2, Ljavax/vecmath/Matrix4f;->m00:F

    mul-float/2addr v3, v6

    move/from16 v16, v6

    iget v6, v1, Ljavax/vecmath/Matrix4f;->m11:F

    move/from16 v17, v11

    iget v11, v2, Ljavax/vecmath/Matrix4f;->m01:F

    mul-float v18, v6, v11

    add-float v3, v3, v18

    move/from16 v18, v11

    iget v11, v1, Ljavax/vecmath/Matrix4f;->m12:F

    move/from16 v19, v15

    iget v15, v2, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float v20, v11, v15

    add-float v3, v3, v20

    move/from16 v20, v15

    iget v15, v1, Ljavax/vecmath/Matrix4f;->m13:F

    move/from16 v21, v14

    iget v14, v2, Ljavax/vecmath/Matrix4f;->m03:F

    mul-float v22, v15, v14

    add-float v3, v3, v22

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m10:F

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m10:F

    move/from16 v22, v14

    iget v14, v2, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float v23, v3, v14

    mul-float/2addr v6, v8

    add-float v23, v23, v6

    mul-float/2addr v4, v11

    add-float v23, v23, v4

    mul-float/2addr v9, v15

    add-float v4, v23, v9

    iput v4, v0, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float/2addr v7, v3

    iget v4, v1, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float/2addr v12, v4

    add-float/2addr v7, v12

    mul-float/2addr v11, v13

    add-float/2addr v7, v11

    mul-float v6, v15, v5

    add-float/2addr v7, v6

    iput v7, v0, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float/2addr v3, v10

    mul-float v4, v4, v21

    add-float/2addr v3, v4

    iget v4, v1, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float v4, v4, v19

    add-float/2addr v3, v4

    mul-float v15, v15, v17

    add-float/2addr v3, v15

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m13:F

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v3, v3, v16

    iget v4, v1, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v11, v4, v18

    add-float/2addr v3, v11

    iget v6, v1, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float v15, v6, v20

    add-float/2addr v3, v15

    iget v7, v1, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float v8, v7, v22

    add-float/2addr v3, v8

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m20:F

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v8, v3, v14

    iget v9, v2, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float/2addr v4, v9

    add-float/2addr v8, v4

    iget v4, v2, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float v11, v6, v4

    add-float/2addr v8, v11

    iget v11, v2, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float v12, v7, v11

    add-float/2addr v8, v12

    iput v8, v0, Ljavax/vecmath/Matrix4f;->m21:F

    iget v8, v2, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v12, v3, v8

    iget v15, v1, Ljavax/vecmath/Matrix4f;->m21:F

    move/from16 v23, v8

    iget v8, v2, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v24, v15, v8

    add-float v12, v12, v24

    mul-float/2addr v6, v13

    add-float/2addr v12, v6

    mul-float/2addr v5, v7

    add-float/2addr v12, v5

    iput v12, v0, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float/2addr v3, v10

    mul-float v15, v15, v21

    add-float/2addr v3, v15

    iget v5, v1, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float v5, v5, v19

    add-float/2addr v3, v5

    mul-float v7, v7, v17

    add-float/2addr v3, v7

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m23:F

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float v3, v3, v16

    iget v5, v1, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float v6, v5, v18

    add-float/2addr v3, v6

    iget v6, v1, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float v15, v6, v20

    add-float/2addr v3, v15

    iget v7, v1, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float v10, v7, v22

    add-float/2addr v3, v10

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m30:F

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float/2addr v14, v3

    mul-float/2addr v5, v9

    add-float/2addr v14, v5

    mul-float/2addr v4, v6

    add-float/2addr v14, v4

    mul-float/2addr v11, v7

    add-float/2addr v14, v11

    iput v14, v0, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float v4, v3, v23

    iget v5, v1, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float/2addr v8, v5

    add-float/2addr v4, v8

    iget v8, v2, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float/2addr v6, v8

    add-float/2addr v4, v6

    iget v6, v2, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    iput v4, v0, Ljavax/vecmath/Matrix4f;->m32:F

    iget v4, v2, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float/2addr v3, v4

    iget v4, v2, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    iget v1, v1, Ljavax/vecmath/Matrix4f;->m32:F

    iget v2, v2, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    mul-float v7, v7, v17

    add-float/2addr v3, v7

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m33:F

    goto/16 :goto_0

    :cond_0
    iget v3, v1, Ljavax/vecmath/Matrix4f;->m00:F

    iget v4, v2, Ljavax/vecmath/Matrix4f;->m00:F

    mul-float v5, v3, v4

    iget v6, v1, Ljavax/vecmath/Matrix4f;->m01:F

    iget v7, v2, Ljavax/vecmath/Matrix4f;->m01:F

    mul-float v8, v6, v7

    add-float/2addr v5, v8

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m02:F

    iget v9, v2, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float v10, v8, v9

    add-float/2addr v5, v10

    iget v10, v1, Ljavax/vecmath/Matrix4f;->m03:F

    iget v11, v2, Ljavax/vecmath/Matrix4f;->m03:F

    mul-float v12, v10, v11

    add-float/2addr v5, v12

    iget v12, v2, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float v13, v3, v12

    iget v14, v2, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float v15, v6, v14

    add-float/2addr v13, v15

    iget v15, v2, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float v16, v8, v15

    add-float v13, v13, v16

    iget v0, v2, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float v16, v10, v0

    add-float v13, v13, v16

    move/from16 v16, v13

    iget v13, v2, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v17, v3, v13

    move/from16 v18, v5

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v19, v6, v5

    add-float v17, v17, v19

    move/from16 v19, v5

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float v20, v8, v5

    add-float v17, v17, v20

    move/from16 v20, v5

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float v21, v10, v5

    move/from16 v22, v5

    add-float v5, v17, v21

    move/from16 v17, v5

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float/2addr v3, v5

    move/from16 v21, v5

    iget v5, v2, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float/2addr v6, v5

    add-float/2addr v3, v6

    iget v6, v2, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float/2addr v8, v6

    add-float/2addr v3, v8

    iget v2, v2, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float/2addr v10, v2

    add-float/2addr v3, v10

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float v10, v8, v4

    move/from16 p2, v3

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float v23, v3, v7

    add-float v10, v10, v23

    move/from16 v23, v7

    iget v7, v1, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float v24, v7, v9

    add-float v10, v10, v24

    move/from16 v24, v9

    iget v9, v1, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float v25, v9, v11

    add-float v10, v10, v25

    mul-float v25, v8, v12

    mul-float v26, v3, v14

    add-float v25, v25, v26

    mul-float v26, v7, v15

    add-float v25, v25, v26

    mul-float v26, v9, v0

    move/from16 v27, v10

    add-float v10, v25, v26

    mul-float v25, v8, v13

    mul-float v26, v3, v19

    add-float v25, v25, v26

    mul-float v26, v7, v20

    add-float v25, v25, v26

    mul-float v26, v9, v22

    move/from16 v28, v10

    add-float v10, v25, v26

    mul-float v8, v8, v21

    mul-float/2addr v3, v5

    add-float/2addr v8, v3

    mul-float/2addr v7, v6

    add-float/2addr v8, v7

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    iget v3, v1, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v7, v3, v4

    iget v9, v1, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v25, v9, v23

    add-float v7, v7, v25

    move/from16 v25, v8

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float v26, v8, v24

    add-float v7, v7, v26

    move/from16 v26, v10

    iget v10, v1, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float v29, v10, v11

    add-float v7, v7, v29

    mul-float v29, v3, v12

    mul-float v30, v9, v14

    add-float v29, v29, v30

    mul-float v30, v8, v15

    add-float v29, v29, v30

    mul-float v30, v10, v0

    move/from16 v31, v7

    add-float v7, v29, v30

    mul-float v29, v3, v13

    mul-float v30, v9, v19

    add-float v29, v29, v30

    mul-float v30, v8, v20

    add-float v29, v29, v30

    mul-float v30, v10, v22

    move/from16 v32, v7

    add-float v7, v29, v30

    mul-float v3, v3, v21

    mul-float/2addr v9, v5

    add-float/2addr v3, v9

    mul-float/2addr v8, v6

    add-float/2addr v3, v8

    mul-float/2addr v10, v2

    add-float/2addr v3, v10

    iget v8, v1, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float/2addr v4, v8

    iget v9, v1, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float v10, v9, v23

    add-float/2addr v4, v10

    iget v10, v1, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float v23, v10, v24

    add-float v4, v4, v23

    iget v1, v1, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float/2addr v11, v1

    add-float/2addr v4, v11

    mul-float/2addr v12, v8

    mul-float/2addr v14, v9

    add-float/2addr v12, v14

    mul-float/2addr v15, v10

    add-float/2addr v12, v15

    mul-float/2addr v0, v1

    add-float/2addr v12, v0

    mul-float/2addr v13, v8

    mul-float v0, v9, v19

    add-float/2addr v13, v0

    mul-float v0, v10, v20

    add-float/2addr v13, v0

    mul-float v0, v1, v22

    add-float/2addr v13, v0

    mul-float v8, v8, v21

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v10, v6

    add-float/2addr v8, v10

    mul-float/2addr v1, v2

    add-float/2addr v8, v1

    move-object/from16 v0, p0

    move/from16 v5, v18

    iput v5, v0, Ljavax/vecmath/Matrix4f;->m00:F

    move/from16 v1, v16

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m01:F

    move/from16 v1, v17

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m02:F

    move/from16 v1, p2

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m03:F

    move/from16 v10, v27

    iput v10, v0, Ljavax/vecmath/Matrix4f;->m10:F

    move/from16 v1, v28

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m11:F

    move/from16 v1, v26

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m12:F

    move/from16 v1, v25

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m13:F

    move/from16 v1, v31

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m20:F

    move/from16 v1, v32

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m21:F

    iput v7, v0, Ljavax/vecmath/Matrix4f;->m22:F

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m23:F

    iput v4, v0, Ljavax/vecmath/Matrix4f;->m30:F

    iput v12, v0, Ljavax/vecmath/Matrix4f;->m31:F

    iput v13, v0, Ljavax/vecmath/Matrix4f;->m32:F

    iput v8, v0, Ljavax/vecmath/Matrix4f;->m33:F

    :goto_0
    return-void
.end method

.method public final negate()V
    .locals 1

    .line 1
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 2
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 3
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 4
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 5
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 6
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 7
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 8
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 9
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 10
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 11
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 12
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 13
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 14
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 15
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 16
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m33:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final negate(Ljavax/vecmath/Matrix4f;)V
    .locals 1

    .line 17
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m00:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 18
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m01:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 19
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m02:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 20
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m03:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 21
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m10:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 22
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m11:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 23
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m12:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 24
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m13:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 25
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m20:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 26
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m21:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 27
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m22:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 28
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m23:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 29
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m30:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 30
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m31:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 31
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m32:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 32
    iget p1, p1, Ljavax/vecmath/Matrix4f;->m33:F

    neg-float p1, p1

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final rotX(F)V
    .locals 4

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m00:F

    const/4 v2, 0x0

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m03:F

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m10:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    neg-float v3, p1

    iput v3, p0, Ljavax/vecmath/Matrix4f;->m12:F

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m13:F

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m20:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m23:F

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m30:F

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m31:F

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m32:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final rotY(F)V
    .locals 4

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    const/4 v1, 0x0

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m03:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m10:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m11:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m12:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m13:F

    neg-float p1, p1

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m20:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m30:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final rotZ(F)V
    .locals 4

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    neg-float v1, p1

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m01:F

    const/4 v1, 0x0

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m03:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m10:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m12:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m13:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m20:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m30:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final set(F)V
    .locals 1

    .line 167
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m00:F

    const/4 v0, 0x0

    .line 168
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 169
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 170
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 171
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 172
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 173
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 174
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 175
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 176
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 177
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 178
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 179
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 180
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 181
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 182
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final set(FLjavax/vecmath/Vector3f;)V
    .locals 2

    .line 215
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m00:F

    const/4 v0, 0x0

    .line 216
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 217
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 218
    iget v1, p2, Ljavax/vecmath/Tuple3f;->x:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 219
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 220
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 221
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 222
    iget v1, p2, Ljavax/vecmath/Tuple3f;->y:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 223
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 224
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 225
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 226
    iget p1, p2, Ljavax/vecmath/Tuple3f;->z:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 227
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 228
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 229
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 230
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final set(Ljavax/vecmath/AxisAngle4d;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 64
    iget-wide v2, v1, Ljavax/vecmath/AxisAngle4d;->x:D

    mul-double/2addr v2, v2

    iget-wide v4, v1, Ljavax/vecmath/AxisAngle4d;->y:D

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    iget-wide v4, v1, Ljavax/vecmath/AxisAngle4d;->z:D

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v4, v2, v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-gez v4, :cond_0

    .line 65
    iput v5, v0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 66
    iput v6, v0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 67
    iput v6, v0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 68
    iput v6, v0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 69
    iput v5, v0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 70
    iput v6, v0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 71
    iput v6, v0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 72
    iput v6, v0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 73
    iput v5, v0, Ljavax/vecmath/Matrix4f;->m22:F

    move v1, v6

    goto :goto_0

    :cond_0
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double/2addr v7, v2

    .line 74
    iget-wide v2, v1, Ljavax/vecmath/AxisAngle4d;->x:D

    mul-double/2addr v2, v7

    .line 75
    iget-wide v9, v1, Ljavax/vecmath/AxisAngle4d;->y:D

    mul-double/2addr v9, v7

    .line 76
    iget-wide v11, v1, Ljavax/vecmath/AxisAngle4d;->z:D

    mul-double/2addr v11, v7

    .line 77
    iget-wide v7, v1, Ljavax/vecmath/AxisAngle4d;->angle:D

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v4, v7

    .line 78
    iget-wide v7, v1, Ljavax/vecmath/AxisAngle4d;->angle:D

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v1, v7

    sub-float v7, v5, v1

    mul-double v13, v2, v11

    double-to-float v8, v13

    mul-double v13, v2, v9

    double-to-float v13, v13

    mul-double v14, v9, v11

    double-to-float v14, v14

    mul-double v5, v2, v2

    double-to-float v5, v5

    mul-float/2addr v5, v7

    add-float/2addr v5, v1

    .line 79
    iput v5, v0, Ljavax/vecmath/Matrix4f;->m00:F

    mul-float/2addr v13, v7

    double-to-float v5, v11

    mul-float/2addr v5, v4

    sub-float v6, v13, v5

    .line 80
    iput v6, v0, Ljavax/vecmath/Matrix4f;->m01:F

    mul-float/2addr v8, v7

    double-to-float v6, v9

    mul-float/2addr v6, v4

    add-float v15, v8, v6

    .line 81
    iput v15, v0, Ljavax/vecmath/Matrix4f;->m02:F

    add-float/2addr v13, v5

    .line 82
    iput v13, v0, Ljavax/vecmath/Matrix4f;->m10:F

    mul-double/2addr v9, v9

    double-to-float v5, v9

    mul-float/2addr v5, v7

    add-float/2addr v5, v1

    .line 83
    iput v5, v0, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float/2addr v14, v7

    double-to-float v2, v2

    mul-float/2addr v4, v2

    sub-float v2, v14, v4

    .line 84
    iput v2, v0, Ljavax/vecmath/Matrix4f;->m12:F

    sub-float/2addr v8, v6

    .line 85
    iput v8, v0, Ljavax/vecmath/Matrix4f;->m20:F

    add-float/2addr v14, v4

    .line 86
    iput v14, v0, Ljavax/vecmath/Matrix4f;->m21:F

    mul-double/2addr v11, v11

    double-to-float v2, v11

    mul-float/2addr v7, v2

    add-float/2addr v7, v1

    .line 87
    iput v7, v0, Ljavax/vecmath/Matrix4f;->m22:F

    const/4 v1, 0x0

    .line 88
    :goto_0
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 89
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 90
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 91
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 92
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 93
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m32:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 94
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final set(Ljavax/vecmath/AxisAngle4f;)V
    .locals 13

    .line 17
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

    const-wide v3, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v1, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-gez v1, :cond_0

    .line 18
    iput v2, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 19
    iput v3, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 20
    iput v3, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 21
    iput v3, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 22
    iput v2, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 23
    iput v3, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 24
    iput v3, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 25
    iput v3, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 26
    iput v2, p0, Ljavax/vecmath/Matrix4f;->m22:F

    goto :goto_0

    :cond_0
    div-float v0, v2, v0

    .line 27
    iget v1, p1, Ljavax/vecmath/AxisAngle4f;->x:F

    mul-float/2addr v1, v0

    .line 28
    iget v4, p1, Ljavax/vecmath/AxisAngle4f;->y:F

    mul-float/2addr v4, v0

    .line 29
    iget v5, p1, Ljavax/vecmath/AxisAngle4f;->z:F

    mul-float/2addr v5, v0

    .line 30
    iget v0, p1, Ljavax/vecmath/AxisAngle4f;->angle:F

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 31
    iget p1, p1, Ljavax/vecmath/AxisAngle4f;->angle:F

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float p1, v6

    sub-float v6, v2, p1

    mul-float v7, v1, v5

    mul-float v8, v1, v4

    mul-float v9, v4, v5

    mul-float v10, v6, v1

    mul-float/2addr v10, v1

    add-float/2addr v10, p1

    .line 32
    iput v10, p0, Ljavax/vecmath/Matrix4f;->m00:F

    mul-float/2addr v8, v6

    mul-float v10, v0, v5

    sub-float v11, v8, v10

    .line 33
    iput v11, p0, Ljavax/vecmath/Matrix4f;->m01:F

    mul-float/2addr v7, v6

    mul-float v11, v0, v4

    add-float v12, v7, v11

    .line 34
    iput v12, p0, Ljavax/vecmath/Matrix4f;->m02:F

    add-float/2addr v8, v10

    .line 35
    iput v8, p0, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float v8, v6, v4

    mul-float/2addr v8, v4

    add-float/2addr v8, p1

    .line 36
    iput v8, p0, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float/2addr v9, v6

    mul-float/2addr v0, v1

    sub-float v1, v9, v0

    .line 37
    iput v1, p0, Ljavax/vecmath/Matrix4f;->m12:F

    sub-float/2addr v7, v11

    .line 38
    iput v7, p0, Ljavax/vecmath/Matrix4f;->m20:F

    add-float/2addr v9, v0

    .line 39
    iput v9, p0, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float/2addr v6, v5

    mul-float/2addr v6, v5

    add-float/2addr v6, p1

    .line 40
    iput v6, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 41
    :goto_0
    iput v3, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 42
    iput v3, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 43
    iput v3, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 44
    iput v3, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 45
    iput v3, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 46
    iput v3, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 47
    iput v2, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix3d;)V
    .locals 3

    .line 163
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m00:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m01:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m02:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    const/4 v0, 0x0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 164
    iget-wide v1, p1, Ljavax/vecmath/Matrix3d;->m10:D

    double-to-float v1, v1

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m10:F

    iget-wide v1, p1, Ljavax/vecmath/Matrix3d;->m11:D

    double-to-float v1, v1

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m11:F

    iget-wide v1, p1, Ljavax/vecmath/Matrix3d;->m12:D

    double-to-float v1, v1

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m12:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 165
    iget-wide v1, p1, Ljavax/vecmath/Matrix3d;->m20:D

    double-to-float v1, v1

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m20:F

    iget-wide v1, p1, Ljavax/vecmath/Matrix3d;->m21:D

    double-to-float v1, v1

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    iget-wide v1, p1, Ljavax/vecmath/Matrix3d;->m22:D

    double-to-float p1, v1

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 166
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix3d;Ljavax/vecmath/Vector3d;D)V
    .locals 2

    .line 263
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double/2addr v0, p3

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 264
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double/2addr v0, p3

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 265
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double/2addr v0, p3

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 266
    iget-wide v0, p2, Ljavax/vecmath/Tuple3d;->x:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 267
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double/2addr v0, p3

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 268
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v0, p3

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 269
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v0, p3

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 270
    iget-wide v0, p2, Ljavax/vecmath/Tuple3d;->y:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 271
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v0, p3

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 272
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double/2addr v0, p3

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 273
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr v0, p3

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 274
    iget-wide p1, p2, Ljavax/vecmath/Tuple3d;->z:D

    double-to-float p1, p1

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    const/4 p1, 0x0

    .line 275
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 276
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 277
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 278
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix3f;)V
    .locals 2

    .line 159
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    const/4 v0, 0x0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 160
    iget v1, p1, Ljavax/vecmath/Matrix3f;->m10:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m10:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m11:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m11:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m12:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m12:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 161
    iget v1, p1, Ljavax/vecmath/Matrix3f;->m20:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m20:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m21:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 162
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Vector3f;F)V
    .locals 1

    .line 247
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float/2addr v0, p3

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 248
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float/2addr v0, p3

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 249
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v0, p3

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 250
    iget v0, p2, Ljavax/vecmath/Tuple3f;->x:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 251
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float/2addr v0, p3

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 252
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v0, p3

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 253
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v0, p3

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 254
    iget v0, p2, Ljavax/vecmath/Tuple3f;->y:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 255
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v0, p3

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 256
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v0, p3

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 257
    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr p1, p3

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 258
    iget p1, p2, Ljavax/vecmath/Tuple3f;->z:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    const/4 p1, 0x0

    .line 259
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 260
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 261
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 262
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix4d;)V
    .locals 2

    .line 127
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m00:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 128
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m01:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 129
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m02:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 130
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m03:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 131
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m10:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 132
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m11:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 133
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m12:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 134
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m13:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 135
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m20:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 136
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m21:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 137
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m22:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 138
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m23:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 139
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m30:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 140
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m31:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 141
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m32:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 142
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m33:D

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix4f;)V
    .locals 1

    .line 143
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m00:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 144
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m01:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 145
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m02:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 146
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m03:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 147
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m10:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 148
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m11:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 149
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m12:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 150
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m13:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 151
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m20:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 152
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m21:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 153
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m22:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 154
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m23:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 155
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m30:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 156
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m31:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 157
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m32:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 158
    iget p1, p1, Ljavax/vecmath/Matrix4f;->m33:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Quat4d;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 48
    iget-wide v2, v1, Ljavax/vecmath/Tuple4d;->y:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, v2, v4

    mul-double/2addr v6, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v6, v8, v6

    iget-wide v10, v1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double v12, v10, v4

    mul-double/2addr v12, v10

    sub-double/2addr v6, v12

    double-to-float v6, v6

    iput v6, v0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 49
    iget-wide v6, v1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double v12, v6, v2

    iget-wide v14, v1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double v16, v14, v10

    add-double v12, v12, v16

    mul-double/2addr v12, v4

    double-to-float v1, v12

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m10:F

    mul-double v12, v6, v10

    mul-double v16, v14, v2

    sub-double v12, v12, v16

    mul-double/2addr v12, v4

    double-to-float v1, v12

    .line 50
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m20:F

    mul-double v12, v6, v2

    mul-double v16, v14, v10

    sub-double v12, v12, v16

    mul-double/2addr v12, v4

    double-to-float v1, v12

    .line 51
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m01:F

    mul-double v12, v6, v4

    mul-double/2addr v12, v6

    sub-double v12, v8, v12

    mul-double v16, v10, v4

    mul-double v16, v16, v10

    sub-double v12, v12, v16

    double-to-float v1, v12

    .line 52
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m11:F

    mul-double v12, v2, v10

    mul-double v16, v14, v6

    add-double v12, v12, v16

    mul-double/2addr v12, v4

    double-to-float v1, v12

    .line 53
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m21:F

    mul-double v12, v6, v10

    mul-double v16, v14, v2

    add-double v12, v12, v16

    mul-double/2addr v12, v4

    double-to-float v1, v12

    .line 54
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m02:F

    mul-double/2addr v10, v2

    mul-double/2addr v14, v6

    sub-double/2addr v10, v14

    mul-double/2addr v10, v4

    double-to-float v1, v10

    .line 55
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m12:F

    mul-double v10, v6, v4

    mul-double/2addr v10, v6

    sub-double/2addr v8, v10

    mul-double/2addr v4, v2

    mul-double/2addr v4, v2

    sub-double/2addr v8, v4

    double-to-float v1, v8

    .line 56
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m22:F

    const/4 v1, 0x0

    .line 57
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 58
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 59
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 60
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 61
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 62
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m32:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 63
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Quat4d;Ljavax/vecmath/Vector3d;D)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 95
    iget-wide v3, v1, Ljavax/vecmath/Tuple4d;->y:D

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v7, v3, v5

    mul-double/2addr v7, v3

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v7, v9, v7

    iget-wide v11, v1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double v13, v11, v5

    mul-double/2addr v13, v11

    sub-double/2addr v7, v13

    mul-double v7, v7, p3

    double-to-float v7, v7

    iput v7, v0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 96
    iget-wide v7, v1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double v13, v7, v3

    iget-wide v9, v1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double v17, v9, v11

    add-double v13, v13, v17

    mul-double/2addr v13, v5

    mul-double v13, v13, p3

    double-to-float v1, v13

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m10:F

    mul-double v13, v7, v11

    mul-double v17, v9, v3

    sub-double v13, v13, v17

    mul-double/2addr v13, v5

    mul-double v13, v13, p3

    double-to-float v1, v13

    .line 97
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m20:F

    mul-double v13, v7, v3

    mul-double v17, v9, v11

    sub-double v13, v13, v17

    mul-double/2addr v13, v5

    mul-double v13, v13, p3

    double-to-float v1, v13

    .line 98
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m01:F

    mul-double v13, v7, v5

    mul-double/2addr v13, v7

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    sub-double v13, v15, v13

    mul-double v17, v11, v5

    mul-double v17, v17, v11

    sub-double v13, v13, v17

    mul-double v13, v13, p3

    double-to-float v1, v13

    .line 99
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m11:F

    mul-double v13, v3, v11

    mul-double v17, v9, v7

    add-double v13, v13, v17

    mul-double/2addr v13, v5

    mul-double v13, v13, p3

    double-to-float v1, v13

    .line 100
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m21:F

    mul-double v13, v7, v11

    mul-double v17, v9, v3

    add-double v13, v13, v17

    mul-double/2addr v13, v5

    mul-double v13, v13, p3

    double-to-float v1, v13

    .line 101
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m02:F

    mul-double/2addr v11, v3

    mul-double/2addr v9, v7

    sub-double/2addr v11, v9

    mul-double/2addr v11, v5

    mul-double v9, p3, v11

    double-to-float v1, v9

    .line 102
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m12:F

    mul-double v9, v7, v5

    mul-double/2addr v9, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double v9, v7, v9

    mul-double/2addr v5, v3

    mul-double/2addr v5, v3

    sub-double/2addr v9, v5

    mul-double v3, p3, v9

    double-to-float v1, v3

    .line 103
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 104
    iget-wide v3, v2, Ljavax/vecmath/Tuple3d;->x:D

    double-to-float v1, v3

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 105
    iget-wide v3, v2, Ljavax/vecmath/Tuple3d;->y:D

    double-to-float v1, v3

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 106
    iget-wide v1, v2, Ljavax/vecmath/Tuple3d;->z:D

    double-to-float v1, v1

    iput v1, v0, Ljavax/vecmath/Matrix4f;->m23:F

    const/4 v1, 0x0

    .line 107
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 108
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 109
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m32:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 110
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Quat4f;)V
    .locals 7

    .line 1
    iget v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    iget v4, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float v5, v4, v1

    mul-float/2addr v5, v4

    sub-float/2addr v2, v5

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 2
    iget v2, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float v5, v2, v0

    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float v6, p1, v4

    add-float/2addr v5, v6

    mul-float/2addr v5, v1

    iput v5, p0, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float v5, v2, v4

    mul-float v6, p1, v0

    sub-float/2addr v5, v6

    mul-float/2addr v5, v1

    .line 3
    iput v5, p0, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v5, v2, v0

    mul-float v6, p1, v4

    sub-float/2addr v5, v6

    mul-float/2addr v5, v1

    .line 4
    iput v5, p0, Ljavax/vecmath/Matrix4f;->m01:F

    mul-float v5, v2, v1

    mul-float/2addr v5, v2

    sub-float v5, v3, v5

    mul-float v6, v4, v1

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    .line 5
    iput v5, p0, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float v5, v0, v4

    mul-float v6, p1, v2

    add-float/2addr v5, v6

    mul-float/2addr v5, v1

    .line 6
    iput v5, p0, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v5, v2, v4

    mul-float v6, p1, v0

    add-float/2addr v5, v6

    mul-float/2addr v5, v1

    .line 7
    iput v5, p0, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float/2addr v4, v0

    mul-float/2addr p1, v2

    sub-float/2addr v4, p1

    mul-float/2addr v4, v1

    .line 8
    iput v4, p0, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float p1, v2, v1

    mul-float/2addr p1, v2

    sub-float p1, v3, p1

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    sub-float/2addr p1, v1

    .line 9
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 11
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 12
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 13
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 14
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 15
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 16
    iput v3, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Quat4f;Ljavax/vecmath/Vector3f;F)V
    .locals 7

    .line 111
    iget v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    iget v4, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float v5, v4, v1

    mul-float/2addr v5, v4

    sub-float/2addr v2, v5

    mul-float/2addr v2, p3

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 112
    iget v2, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float v5, v2, v0

    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float v6, p1, v4

    add-float/2addr v5, v6

    mul-float/2addr v5, v1

    mul-float/2addr v5, p3

    iput v5, p0, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float v5, v2, v4

    mul-float v6, p1, v0

    sub-float/2addr v5, v6

    mul-float/2addr v5, v1

    mul-float/2addr v5, p3

    .line 113
    iput v5, p0, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v5, v2, v0

    mul-float v6, p1, v4

    sub-float/2addr v5, v6

    mul-float/2addr v5, v1

    mul-float/2addr v5, p3

    .line 114
    iput v5, p0, Ljavax/vecmath/Matrix4f;->m01:F

    mul-float v5, v2, v1

    mul-float/2addr v5, v2

    sub-float v5, v3, v5

    mul-float v6, v4, v1

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    mul-float/2addr v5, p3

    .line 115
    iput v5, p0, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float v5, v0, v4

    mul-float v6, p1, v2

    add-float/2addr v5, v6

    mul-float/2addr v5, v1

    mul-float/2addr v5, p3

    .line 116
    iput v5, p0, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v5, v2, v4

    mul-float v6, p1, v0

    add-float/2addr v5, v6

    mul-float/2addr v5, v1

    mul-float/2addr v5, p3

    .line 117
    iput v5, p0, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float/2addr v4, v0

    mul-float/2addr p1, v2

    sub-float/2addr v4, p1

    mul-float/2addr v4, v1

    mul-float/2addr v4, p3

    .line 118
    iput v4, p0, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float p1, v2, v1

    mul-float/2addr p1, v2

    sub-float p1, v3, p1

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    sub-float/2addr p1, v1

    mul-float/2addr p3, p1

    .line 119
    iput p3, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 120
    iget p1, p2, Ljavax/vecmath/Tuple3f;->x:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 121
    iget p1, p2, Ljavax/vecmath/Tuple3f;->y:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 122
    iget p1, p2, Ljavax/vecmath/Tuple3f;->z:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    const/4 p1, 0x0

    .line 123
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 124
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 125
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 126
    iput v3, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Vector3f;)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 199
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    const/4 v1, 0x0

    .line 200
    iput v1, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 201
    iput v1, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 202
    iget v2, p1, Ljavax/vecmath/Tuple3f;->x:F

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 203
    iput v1, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 204
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 205
    iput v1, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 206
    iget v2, p1, Ljavax/vecmath/Tuple3f;->y:F

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 207
    iput v1, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 208
    iput v1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 209
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 210
    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 211
    iput v1, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 212
    iput v1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 213
    iput v1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 214
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Vector3f;F)V
    .locals 2

    .line 231
    iput p2, p0, Ljavax/vecmath/Matrix4f;->m00:F

    const/4 v0, 0x0

    .line 232
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 233
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 234
    iget v1, p1, Ljavax/vecmath/Tuple3f;->x:F

    mul-float/2addr v1, p2

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 235
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 236
    iput p2, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 237
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 238
    iget v1, p1, Ljavax/vecmath/Tuple3f;->y:F

    mul-float/2addr v1, p2

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 239
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 240
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 241
    iput p2, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 242
    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    mul-float/2addr p2, p1

    iput p2, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 243
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 244
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 245
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 246
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final set([F)V
    .locals 1

    const/4 v0, 0x0

    .line 183
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    const/4 v0, 0x1

    .line 184
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    const/4 v0, 0x2

    .line 185
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    const/4 v0, 0x3

    .line 186
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    const/4 v0, 0x4

    .line 187
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    const/4 v0, 0x5

    .line 188
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    const/4 v0, 0x6

    .line 189
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    const/4 v0, 0x7

    .line 190
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    const/16 v0, 0x8

    .line 191
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    const/16 v0, 0x9

    .line 192
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    const/16 v0, 0xa

    .line 193
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    const/16 v0, 0xb

    .line 194
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    const/16 v0, 0xc

    .line 195
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    const/16 v0, 0xd

    .line 196
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    const/16 v0, 0xe

    .line 197
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    const/16 v0, 0xf

    .line 198
    aget p1, p1, v0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final setColumn(IFFFF)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    iput p2, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 2
    iput p3, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 3
    iput p4, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 4
    iput p5, p0, Ljavax/vecmath/Matrix4f;->m33:F

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix4f9"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    iput p2, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 7
    iput p3, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 8
    iput p4, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 9
    iput p5, p0, Ljavax/vecmath/Matrix4f;->m32:F

    goto :goto_0

    .line 10
    :cond_2
    iput p2, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 11
    iput p3, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 12
    iput p4, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 13
    iput p5, p0, Ljavax/vecmath/Matrix4f;->m31:F

    goto :goto_0

    .line 14
    :cond_3
    iput p2, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 15
    iput p3, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 16
    iput p4, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 17
    iput p5, p0, Ljavax/vecmath/Matrix4f;->m30:F

    :goto_0
    return-void
.end method

.method public final setColumn(ILjavax/vecmath/Vector4f;)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 18
    iget p1, p2, Ljavax/vecmath/Tuple4f;->x:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 19
    iget p1, p2, Ljavax/vecmath/Tuple4f;->y:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 20
    iget p1, p2, Ljavax/vecmath/Tuple4f;->z:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 21
    iget p1, p2, Ljavax/vecmath/Tuple4f;->w:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix4f9"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    iget p1, p2, Ljavax/vecmath/Tuple4f;->x:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 24
    iget p1, p2, Ljavax/vecmath/Tuple4f;->y:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 25
    iget p1, p2, Ljavax/vecmath/Tuple4f;->z:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 26
    iget p1, p2, Ljavax/vecmath/Tuple4f;->w:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    goto :goto_0

    .line 27
    :cond_2
    iget p1, p2, Ljavax/vecmath/Tuple4f;->x:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 28
    iget p1, p2, Ljavax/vecmath/Tuple4f;->y:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 29
    iget p1, p2, Ljavax/vecmath/Tuple4f;->z:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 30
    iget p1, p2, Ljavax/vecmath/Tuple4f;->w:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    goto :goto_0

    .line 31
    :cond_3
    iget p1, p2, Ljavax/vecmath/Tuple4f;->x:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 32
    iget p1, p2, Ljavax/vecmath/Tuple4f;->y:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 33
    iget p1, p2, Ljavax/vecmath/Tuple4f;->z:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 34
    iget p1, p2, Ljavax/vecmath/Tuple4f;->w:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m30:F

    :goto_0
    return-void
.end method

.method public final setColumn(I[F)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 35
    aget p1, p2, v0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 36
    aget p1, p2, v3

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 37
    aget p1, p2, v2

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 38
    aget p1, p2, v1

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix4f9"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_1
    aget p1, p2, v0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 41
    aget p1, p2, v3

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 42
    aget p1, p2, v2

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 43
    aget p1, p2, v1

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    goto :goto_0

    .line 44
    :cond_2
    aget p1, p2, v0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 45
    aget p1, p2, v3

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 46
    aget p1, p2, v2

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 47
    aget p1, p2, v1

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    goto :goto_0

    .line 48
    :cond_3
    aget p1, p2, v0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 49
    aget p1, p2, v3

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 50
    aget p1, p2, v2

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 51
    aget p1, p2, v1

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m30:F

    :goto_0
    return-void
.end method

.method public final setElement(IIF)V
    .locals 4

    const-string v0, "Matrix4f0"

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_f

    if-eq p1, v3, :cond_a

    if-eq p1, v2, :cond_5

    if-ne p1, v1, :cond_4

    if-eqz p2, :cond_3

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_0

    iput p3, p0, Ljavax/vecmath/Matrix4f;->m33:F

    goto/16 :goto_0

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput p3, p0, Ljavax/vecmath/Matrix4f;->m32:F

    goto/16 :goto_0

    :cond_2
    iput p3, p0, Ljavax/vecmath/Matrix4f;->m31:F

    goto/16 :goto_0

    :cond_3
    iput p3, p0, Ljavax/vecmath/Matrix4f;->m30:F

    goto/16 :goto_0

    :cond_4
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    if-eqz p2, :cond_9

    if-eq p2, v3, :cond_8

    if-eq p2, v2, :cond_7

    if-ne p2, v1, :cond_6

    iput p3, p0, Ljavax/vecmath/Matrix4f;->m23:F

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iput p3, p0, Ljavax/vecmath/Matrix4f;->m22:F

    goto :goto_0

    :cond_8
    iput p3, p0, Ljavax/vecmath/Matrix4f;->m21:F

    goto :goto_0

    :cond_9
    iput p3, p0, Ljavax/vecmath/Matrix4f;->m20:F

    goto :goto_0

    :cond_a
    if-eqz p2, :cond_e

    if-eq p2, v3, :cond_d

    if-eq p2, v2, :cond_c

    if-ne p2, v1, :cond_b

    iput p3, p0, Ljavax/vecmath/Matrix4f;->m13:F

    goto :goto_0

    :cond_b
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iput p3, p0, Ljavax/vecmath/Matrix4f;->m12:F

    goto :goto_0

    :cond_d
    iput p3, p0, Ljavax/vecmath/Matrix4f;->m11:F

    goto :goto_0

    :cond_e
    iput p3, p0, Ljavax/vecmath/Matrix4f;->m10:F

    goto :goto_0

    :cond_f
    if-eqz p2, :cond_13

    if-eq p2, v3, :cond_12

    if-eq p2, v2, :cond_11

    if-ne p2, v1, :cond_10

    iput p3, p0, Ljavax/vecmath/Matrix4f;->m03:F

    goto :goto_0

    :cond_10
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    iput p3, p0, Ljavax/vecmath/Matrix4f;->m02:F

    goto :goto_0

    :cond_12
    iput p3, p0, Ljavax/vecmath/Matrix4f;->m01:F

    goto :goto_0

    :cond_13
    iput p3, p0, Ljavax/vecmath/Matrix4f;->m00:F

    :goto_0
    return-void
.end method

.method public final setIdentity()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    const/4 v1, 0x0

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m03:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m10:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m12:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m13:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m20:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m30:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final setM00(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m00:F

    return-void
.end method

.method public final setM01(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m01:F

    return-void
.end method

.method public final setM02(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m02:F

    return-void
.end method

.method public final setM03(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m03:F

    return-void
.end method

.method public final setM10(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m10:F

    return-void
.end method

.method public final setM11(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m11:F

    return-void
.end method

.method public final setM12(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m12:F

    return-void
.end method

.method public final setM13(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m13:F

    return-void
.end method

.method public final setM20(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m20:F

    return-void
.end method

.method public final setM21(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    return-void
.end method

.method public final setM22(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    return-void
.end method

.method public final setM23(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    return-void
.end method

.method public final setM30(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m30:F

    return-void
.end method

.method public final setM31(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    return-void
.end method

.method public final setM32(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    return-void
.end method

.method public final setM33(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final setRotation(Ljavax/vecmath/AxisAngle4f;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x9

    .line 49
    new-array v2, v2, [D

    const/4 v3, 0x3

    .line 50
    new-array v3, v3, [D

    .line 51
    invoke-direct {v0, v3, v2}, Ljavax/vecmath/Matrix4f;->getScaleRotate([D[D)V

    .line 52
    iget v2, v1, Ljavax/vecmath/AxisAngle4f;->x:F

    mul-float/2addr v2, v2

    iget v4, v1, Ljavax/vecmath/AxisAngle4f;->y:F

    mul-float/2addr v4, v4

    add-float/2addr v2, v4

    iget v4, v1, Ljavax/vecmath/AxisAngle4f;->z:F

    mul-float/2addr v4, v4

    add-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide v6, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v2, v4, v6

    if-gez v2, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 53
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m00:F

    const/4 v2, 0x0

    .line 54
    iput v2, v0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 55
    iput v2, v0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 56
    iput v2, v0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 57
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 58
    iput v2, v0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 59
    iput v2, v0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 60
    iput v2, v0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 61
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m22:F

    goto/16 :goto_0

    :cond_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v4, v6, v4

    .line 62
    iget v2, v1, Ljavax/vecmath/AxisAngle4f;->x:F

    float-to-double v8, v2

    mul-double/2addr v8, v4

    .line 63
    iget v2, v1, Ljavax/vecmath/AxisAngle4f;->y:F

    float-to-double v10, v2

    mul-double/2addr v10, v4

    .line 64
    iget v2, v1, Ljavax/vecmath/AxisAngle4f;->z:F

    float-to-double v12, v2

    mul-double/2addr v12, v4

    .line 65
    iget v2, v1, Ljavax/vecmath/AxisAngle4f;->angle:F

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 66
    iget v2, v1, Ljavax/vecmath/AxisAngle4f;->angle:F

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    sub-double/2addr v6, v14

    .line 67
    iget v2, v1, Ljavax/vecmath/AxisAngle4f;->x:F

    move-wide/from16 v16, v10

    iget v10, v1, Ljavax/vecmath/AxisAngle4f;->z:F

    mul-float v11, v2, v10

    move-wide/from16 v18, v4

    float-to-double v4, v11

    .line 68
    iget v1, v1, Ljavax/vecmath/AxisAngle4f;->y:F

    mul-float/2addr v2, v1

    move-wide/from16 v20, v4

    float-to-double v4, v2

    mul-float/2addr v1, v10

    float-to-double v1, v1

    mul-double v10, v6, v8

    mul-double/2addr v10, v8

    add-double/2addr v10, v14

    const/16 v22, 0x0

    .line 69
    aget-wide v22, v3, v22

    mul-double v10, v10, v22

    double-to-float v10, v10

    iput v10, v0, Ljavax/vecmath/Matrix4f;->m00:F

    mul-double/2addr v4, v6

    mul-double v10, v18, v12

    sub-double v24, v4, v10

    const/16 v26, 0x1

    .line 70
    aget-wide v26, v3, v26

    move-wide/from16 v28, v12

    mul-double v12, v24, v26

    double-to-float v12, v12

    iput v12, v0, Ljavax/vecmath/Matrix4f;->m01:F

    mul-double v12, v6, v20

    mul-double v20, v18, v16

    add-double v24, v12, v20

    const/16 v30, 0x2

    .line 71
    aget-wide v30, v3, v30

    move-wide/from16 v32, v12

    mul-double v12, v24, v30

    double-to-float v3, v12

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m02:F

    add-double/2addr v4, v10

    mul-double v4, v4, v22

    double-to-float v3, v4

    .line 72
    iput v3, v0, Ljavax/vecmath/Matrix4f;->m10:F

    mul-double v10, v6, v16

    mul-double v10, v10, v16

    add-double/2addr v10, v14

    mul-double v10, v10, v26

    double-to-float v3, v10

    .line 73
    iput v3, v0, Ljavax/vecmath/Matrix4f;->m11:F

    mul-double/2addr v1, v6

    mul-double v4, v18, v8

    sub-double v8, v1, v4

    mul-double v8, v8, v30

    double-to-float v3, v8

    .line 74
    iput v3, v0, Ljavax/vecmath/Matrix4f;->m12:F

    sub-double v12, v32, v20

    mul-double v12, v12, v22

    double-to-float v3, v12

    .line 75
    iput v3, v0, Ljavax/vecmath/Matrix4f;->m20:F

    add-double/2addr v1, v4

    mul-double v1, v1, v26

    double-to-float v1, v1

    .line 76
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m21:F

    mul-double v6, v6, v28

    mul-double v6, v6, v28

    add-double/2addr v6, v14

    mul-double v6, v6, v30

    double-to-float v1, v6

    .line 77
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m22:F

    :goto_0
    return-void
.end method

.method public final setRotation(Ljavax/vecmath/Matrix3d;)V
    .locals 8

    const/16 v0, 0x9

    .line 1
    new-array v0, v0, [D

    const/4 v1, 0x3

    .line 2
    new-array v1, v1, [D

    .line 3
    invoke-direct {p0, v1, v0}, Ljavax/vecmath/Matrix4f;->getScaleRotate([D[D)V

    .line 4
    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m00:D

    const/4 v0, 0x0

    aget-wide v4, v1, v0

    mul-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 5
    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m01:D

    const/4 v0, 0x1

    aget-wide v6, v1, v0

    mul-double/2addr v2, v6

    double-to-float v0, v2

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 6
    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m02:D

    const/4 v0, 0x2

    aget-wide v0, v1, v0

    mul-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 7
    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 8
    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v2, v6

    double-to-float v2, v2

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 9
    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 10
    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 11
    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double/2addr v2, v6

    double-to-float v2, v2

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 12
    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr v2, v0

    double-to-float p1, v2

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    return-void
.end method

.method public final setRotation(Ljavax/vecmath/Matrix3f;)V
    .locals 8

    const/16 v0, 0x9

    .line 13
    new-array v0, v0, [D

    const/4 v1, 0x3

    .line 14
    new-array v1, v1, [D

    .line 15
    invoke-direct {p0, v1, v0}, Ljavax/vecmath/Matrix4f;->getScaleRotate([D[D)V

    .line 16
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    float-to-double v2, v0

    const/4 v0, 0x0

    aget-wide v4, v1, v0

    mul-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 17
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    float-to-double v2, v0

    const/4 v0, 0x1

    aget-wide v6, v1, v0

    mul-double/2addr v2, v6

    double-to-float v0, v2

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 18
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    float-to-double v2, v0

    const/4 v0, 0x2

    aget-wide v0, v1, v0

    mul-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 19
    iget v2, p1, Ljavax/vecmath/Matrix3f;->m10:F

    float-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 20
    iget v2, p1, Ljavax/vecmath/Matrix3f;->m11:F

    float-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-float v2, v2

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 21
    iget v2, p1, Ljavax/vecmath/Matrix3f;->m12:F

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 22
    iget v2, p1, Ljavax/vecmath/Matrix3f;->m20:F

    float-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 23
    iget v2, p1, Ljavax/vecmath/Matrix3f;->m21:F

    float-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-float v2, v2

    iput v2, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 24
    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    float-to-double v2, p1

    mul-double/2addr v2, v0

    double-to-float p1, v2

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    return-void
.end method

.method public final setRotation(Ljavax/vecmath/Quat4d;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x9

    .line 37
    new-array v2, v2, [D

    const/4 v3, 0x3

    .line 38
    new-array v3, v3, [D

    .line 39
    invoke-direct {v0, v3, v2}, Ljavax/vecmath/Matrix4f;->getScaleRotate([D[D)V

    .line 40
    iget-wide v4, v1, Ljavax/vecmath/Tuple4d;->y:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v8, v4, v6

    mul-double/2addr v8, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v8, v10, v8

    iget-wide v12, v1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double v14, v12, v6

    mul-double/2addr v14, v12

    sub-double/2addr v8, v14

    const/4 v2, 0x0

    aget-wide v14, v3, v2

    mul-double/2addr v8, v14

    double-to-float v2, v8

    iput v2, v0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 41
    iget-wide v8, v1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double v16, v8, v4

    iget-wide v1, v1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double v18, v1, v12

    add-double v16, v16, v18

    mul-double v16, v16, v6

    mul-double v10, v16, v14

    double-to-float v10, v10

    iput v10, v0, Ljavax/vecmath/Matrix4f;->m10:F

    mul-double v10, v8, v12

    mul-double v16, v1, v4

    sub-double v10, v10, v16

    mul-double/2addr v10, v6

    mul-double/2addr v10, v14

    double-to-float v10, v10

    .line 42
    iput v10, v0, Ljavax/vecmath/Matrix4f;->m20:F

    mul-double v10, v8, v4

    mul-double v14, v1, v12

    sub-double/2addr v10, v14

    mul-double/2addr v10, v6

    const/4 v14, 0x1

    .line 43
    aget-wide v14, v3, v14

    mul-double/2addr v10, v14

    double-to-float v10, v10

    iput v10, v0, Ljavax/vecmath/Matrix4f;->m01:F

    mul-double v10, v8, v6

    mul-double/2addr v10, v8

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v10, v16, v10

    mul-double v16, v12, v6

    mul-double v16, v16, v12

    sub-double v10, v10, v16

    mul-double/2addr v10, v14

    double-to-float v10, v10

    .line 44
    iput v10, v0, Ljavax/vecmath/Matrix4f;->m11:F

    mul-double v10, v4, v12

    mul-double v16, v1, v8

    add-double v10, v10, v16

    mul-double/2addr v10, v6

    mul-double/2addr v10, v14

    double-to-float v10, v10

    .line 45
    iput v10, v0, Ljavax/vecmath/Matrix4f;->m21:F

    mul-double v10, v8, v12

    mul-double v14, v1, v4

    add-double/2addr v10, v14

    mul-double/2addr v10, v6

    const/4 v14, 0x2

    .line 46
    aget-wide v14, v3, v14

    mul-double/2addr v10, v14

    double-to-float v3, v10

    iput v3, v0, Ljavax/vecmath/Matrix4f;->m02:F

    mul-double/2addr v12, v4

    mul-double/2addr v1, v8

    sub-double/2addr v12, v1

    mul-double/2addr v12, v6

    mul-double/2addr v12, v14

    double-to-float v1, v12

    .line 47
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m12:F

    mul-double v1, v8, v6

    mul-double/2addr v1, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v10, v8, v1

    mul-double/2addr v6, v4

    mul-double/2addr v6, v4

    sub-double/2addr v10, v6

    mul-double/2addr v10, v14

    double-to-float v1, v10

    .line 48
    iput v1, v0, Ljavax/vecmath/Matrix4f;->m22:F

    return-void
.end method

.method public final setRotation(Ljavax/vecmath/Quat4f;)V
    .locals 10

    const/16 v0, 0x9

    .line 25
    new-array v0, v0, [D

    const/4 v1, 0x3

    .line 26
    new-array v1, v1, [D

    .line 27
    invoke-direct {p0, v1, v0}, Ljavax/vecmath/Matrix4f;->getScaleRotate([D[D)V

    .line 28
    iget v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v0, v2

    mul-float/2addr v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    iget v5, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float v6, v5, v2

    mul-float/2addr v6, v5

    sub-float/2addr v3, v6

    float-to-double v6, v3

    const/4 v3, 0x0

    aget-wide v8, v1, v3

    mul-double/2addr v6, v8

    double-to-float v3, v6

    iput v3, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 29
    iget v3, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float v6, v3, v0

    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float v7, p1, v5

    add-float/2addr v6, v7

    mul-float/2addr v6, v2

    float-to-double v6, v6

    mul-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, p0, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float v6, v3, v5

    mul-float v7, p1, v0

    sub-float/2addr v6, v7

    mul-float/2addr v6, v2

    float-to-double v6, v6

    mul-double/2addr v6, v8

    double-to-float v6, v6

    .line 30
    iput v6, p0, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float v6, v3, v0

    mul-float v7, p1, v5

    sub-float/2addr v6, v7

    mul-float/2addr v6, v2

    float-to-double v6, v6

    const/4 v8, 0x1

    .line 31
    aget-wide v8, v1, v8

    mul-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, p0, Ljavax/vecmath/Matrix4f;->m01:F

    mul-float v6, v3, v2

    mul-float/2addr v6, v3

    sub-float v6, v4, v6

    mul-float v7, v5, v2

    mul-float/2addr v7, v5

    sub-float/2addr v6, v7

    float-to-double v6, v6

    mul-double/2addr v6, v8

    double-to-float v6, v6

    .line 32
    iput v6, p0, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float v6, v0, v5

    mul-float v7, p1, v3

    add-float/2addr v6, v7

    mul-float/2addr v6, v2

    float-to-double v6, v6

    mul-double/2addr v6, v8

    double-to-float v6, v6

    .line 33
    iput v6, p0, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float v6, v3, v5

    mul-float v7, p1, v0

    add-float/2addr v6, v7

    mul-float/2addr v6, v2

    float-to-double v6, v6

    const/4 v8, 0x2

    .line 34
    aget-wide v8, v1, v8

    mul-double/2addr v6, v8

    double-to-float v1, v6

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m02:F

    mul-float/2addr v5, v0

    mul-float/2addr p1, v3

    sub-float/2addr v5, p1

    mul-float/2addr v5, v2

    float-to-double v5, v5

    mul-double/2addr v5, v8

    double-to-float p1, v5

    .line 35
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float p1, v3, v2

    mul-float/2addr p1, v3

    sub-float/2addr v4, p1

    mul-float/2addr v2, v0

    mul-float/2addr v2, v0

    sub-float/2addr v4, v2

    float-to-double v0, v4

    mul-double/2addr v0, v8

    double-to-float p1, v0

    .line 36
    iput p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    return-void
.end method

.method public final setRotationScale(Ljavax/vecmath/Matrix3f;)V
    .locals 1

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m10:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m11:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m12:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m20:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m21:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    return-void
.end method

.method public final setRow(IFFFF)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    iput p2, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 2
    iput p3, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 3
    iput p4, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 4
    iput p5, p0, Ljavax/vecmath/Matrix4f;->m33:F

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix4f6"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    iput p2, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 7
    iput p3, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 8
    iput p4, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 9
    iput p5, p0, Ljavax/vecmath/Matrix4f;->m23:F

    goto :goto_0

    .line 10
    :cond_2
    iput p2, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 11
    iput p3, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 12
    iput p4, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 13
    iput p5, p0, Ljavax/vecmath/Matrix4f;->m13:F

    goto :goto_0

    .line 14
    :cond_3
    iput p2, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 15
    iput p3, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 16
    iput p4, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 17
    iput p5, p0, Ljavax/vecmath/Matrix4f;->m03:F

    :goto_0
    return-void
.end method

.method public final setRow(ILjavax/vecmath/Vector4f;)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 18
    iget p1, p2, Ljavax/vecmath/Tuple4f;->x:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 19
    iget p1, p2, Ljavax/vecmath/Tuple4f;->y:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 20
    iget p1, p2, Ljavax/vecmath/Tuple4f;->z:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 21
    iget p1, p2, Ljavax/vecmath/Tuple4f;->w:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix4f6"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    iget p1, p2, Ljavax/vecmath/Tuple4f;->x:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 24
    iget p1, p2, Ljavax/vecmath/Tuple4f;->y:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 25
    iget p1, p2, Ljavax/vecmath/Tuple4f;->z:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 26
    iget p1, p2, Ljavax/vecmath/Tuple4f;->w:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    goto :goto_0

    .line 27
    :cond_2
    iget p1, p2, Ljavax/vecmath/Tuple4f;->x:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 28
    iget p1, p2, Ljavax/vecmath/Tuple4f;->y:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 29
    iget p1, p2, Ljavax/vecmath/Tuple4f;->z:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 30
    iget p1, p2, Ljavax/vecmath/Tuple4f;->w:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m13:F

    goto :goto_0

    .line 31
    :cond_3
    iget p1, p2, Ljavax/vecmath/Tuple4f;->x:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 32
    iget p1, p2, Ljavax/vecmath/Tuple4f;->y:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 33
    iget p1, p2, Ljavax/vecmath/Tuple4f;->z:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 34
    iget p1, p2, Ljavax/vecmath/Tuple4f;->w:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m03:F

    :goto_0
    return-void
.end method

.method public final setRow(I[F)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 35
    aget p1, p2, v0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 36
    aget p1, p2, v3

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 37
    aget p1, p2, v2

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 38
    aget p1, p2, v1

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix4f6"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_1
    aget p1, p2, v0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 41
    aget p1, p2, v3

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 42
    aget p1, p2, v2

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 43
    aget p1, p2, v1

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    goto :goto_0

    .line 44
    :cond_2
    aget p1, p2, v0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 45
    aget p1, p2, v3

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 46
    aget p1, p2, v2

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 47
    aget p1, p2, v1

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m13:F

    goto :goto_0

    .line 48
    :cond_3
    aget p1, p2, v0

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 49
    aget p1, p2, v3

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 50
    aget p1, p2, v2

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 51
    aget p1, p2, v1

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m03:F

    :goto_0
    return-void
.end method

.method public final setScale(F)V
    .locals 6

    const/16 v0, 0x9

    new-array v0, v0, [D

    const/4 v1, 0x3

    new-array v2, v1, [D

    invoke-direct {p0, v2, v0}, Ljavax/vecmath/Matrix4f;->getScaleRotate([D[D)V

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    float-to-double v4, p1

    mul-double/2addr v2, v4

    double-to-float p1, v2

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m00:F

    const/4 p1, 0x1

    aget-wide v2, v0, p1

    mul-double/2addr v2, v4

    double-to-float p1, v2

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m01:F

    const/4 p1, 0x2

    aget-wide v2, v0, p1

    mul-double/2addr v2, v4

    double-to-float p1, v2

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m02:F

    aget-wide v1, v0, v1

    mul-double/2addr v1, v4

    double-to-float p1, v1

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m10:F

    const/4 p1, 0x4

    aget-wide v1, v0, p1

    mul-double/2addr v1, v4

    double-to-float p1, v1

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m11:F

    const/4 p1, 0x5

    aget-wide v1, v0, p1

    mul-double/2addr v1, v4

    double-to-float p1, v1

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m12:F

    const/4 p1, 0x6

    aget-wide v1, v0, p1

    mul-double/2addr v1, v4

    double-to-float p1, v1

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m20:F

    const/4 p1, 0x7

    aget-wide v1, v0, p1

    mul-double/2addr v1, v4

    double-to-float p1, v1

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    const/16 p1, 0x8

    aget-wide v1, v0, p1

    mul-double/2addr v1, v4

    double-to-float p1, v1

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    return-void
.end method

.method public final setTranslation(Ljavax/vecmath/Vector3f;)V
    .locals 1

    iget v0, p1, Ljavax/vecmath/Tuple3f;->x:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    iget v0, p1, Ljavax/vecmath/Tuple3f;->y:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    return-void
.end method

.method public final setZero()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final sub(Ljavax/vecmath/Matrix4f;)V
    .locals 2

    .line 17
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m00:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 18
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m01:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 19
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m02:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 20
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m03:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 21
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m10:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 22
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m11:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 23
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m12:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 24
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m13:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 25
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m20:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 26
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m21:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 27
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m22:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 28
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m23:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 29
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m30:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 30
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m31:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 31
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m32:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 32
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m33:F

    iget p1, p1, Ljavax/vecmath/Matrix4f;->m33:F

    sub-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public final sub(Ljavax/vecmath/Matrix4f;Ljavax/vecmath/Matrix4f;)V
    .locals 2

    .line 1
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m00:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m00:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 2
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m01:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m01:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 3
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m02:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m02:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 4
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m03:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m03:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 5
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m10:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m10:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 6
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m11:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m11:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 7
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m12:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m12:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 8
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m13:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m13:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 9
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m20:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m20:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 10
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m21:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m21:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 11
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m22:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m22:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 12
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m23:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m23:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 13
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m30:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m30:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 14
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m31:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m31:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 15
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m32:F

    iget v1, p2, Ljavax/vecmath/Matrix4f;->m32:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 16
    iget p1, p1, Ljavax/vecmath/Matrix4f;->m33:F

    iget p2, p2, Ljavax/vecmath/Matrix4f;->m33:F

    sub-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m00:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m01:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m02:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m03:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m10:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m11:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m12:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m13:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m20:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m21:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m22:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m23:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m30:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m31:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m32:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transform(Ljavax/vecmath/Point3f;)V
    .locals 6

    .line 20
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    iget v1, p1, Ljavax/vecmath/Tuple3f;->x:F

    mul-float/2addr v0, v1

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iget v3, p1, Ljavax/vecmath/Tuple3f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iget v4, p1, Ljavax/vecmath/Tuple3f;->z:F

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m03:F

    add-float/2addr v0, v2

    .line 21
    iget v2, p0, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float/2addr v2, v1

    iget v5, p0, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    iget v5, p0, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    iget v5, p0, Ljavax/vecmath/Matrix4f;->m13:F

    add-float/2addr v2, v5

    .line 22
    iget v5, p0, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float/2addr v5, v1

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float/2addr v1, v3

    add-float/2addr v5, v1

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float/2addr v1, v4

    add-float/2addr v5, v1

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    add-float/2addr v5, v1

    iput v5, p1, Ljavax/vecmath/Tuple3f;->z:F

    .line 23
    iput v0, p1, Ljavax/vecmath/Tuple3f;->x:F

    .line 24
    iput v2, p1, Ljavax/vecmath/Tuple3f;->y:F

    return-void
.end method

.method public final transform(Ljavax/vecmath/Point3f;Ljavax/vecmath/Point3f;)V
    .locals 5

    .line 15
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    iget v1, p1, Ljavax/vecmath/Tuple3f;->x:F

    mul-float/2addr v0, v1

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iget v3, p1, Ljavax/vecmath/Tuple3f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m03:F

    add-float/2addr v0, v2

    .line 16
    iget v2, p0, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float/2addr v2, v1

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float/2addr v4, p1

    add-float/2addr v2, v4

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m13:F

    add-float/2addr v2, v4

    .line 17
    iget v4, p0, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float/2addr v4, v1

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float/2addr v1, v3

    add-float/2addr v4, v1

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float/2addr v1, p1

    add-float/2addr v4, v1

    iget p1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    add-float/2addr v4, p1

    iput v4, p2, Ljavax/vecmath/Tuple3f;->z:F

    .line 18
    iput v0, p2, Ljavax/vecmath/Tuple3f;->x:F

    .line 19
    iput v2, p2, Ljavax/vecmath/Tuple3f;->y:F

    return-void
.end method

.method public final transform(Ljavax/vecmath/Tuple4f;)V
    .locals 8

    .line 8
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    iget v1, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, v1

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iget v3, p1, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iget v4, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m03:F

    iget v5, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    .line 9
    iget v2, p0, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float/2addr v2, v1

    iget v6, p0, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    iget v6, p0, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float/2addr v6, v4

    add-float/2addr v2, v6

    iget v6, p0, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float/2addr v6, v5

    add-float/2addr v2, v6

    .line 10
    iget v6, p0, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float/2addr v6, v1

    iget v7, p0, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iget v7, p0, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iget v7, p0, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    .line 11
    iget v7, p0, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float/2addr v7, v1

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float/2addr v1, v3

    add-float/2addr v7, v1

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float/2addr v1, v4

    add-float/2addr v7, v1

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float/2addr v1, v5

    add-float/2addr v7, v1

    iput v7, p1, Ljavax/vecmath/Tuple4f;->w:F

    .line 12
    iput v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    .line 13
    iput v2, p1, Ljavax/vecmath/Tuple4f;->y:F

    .line 14
    iput v6, p1, Ljavax/vecmath/Tuple4f;->z:F

    return-void
.end method

.method public final transform(Ljavax/vecmath/Tuple4f;Ljavax/vecmath/Tuple4f;)V
    .locals 7

    .line 1
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    iget v1, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, v1

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iget v3, p1, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iget v4, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m03:F

    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    .line 2
    iget v2, p0, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float/2addr v2, v1

    iget v5, p0, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    iget v5, p0, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    iget v5, p0, Ljavax/vecmath/Matrix4f;->m13:F

    mul-float/2addr v5, p1

    add-float/2addr v2, v5

    .line 3
    iget v5, p0, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float/2addr v5, v1

    iget v6, p0, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iget v6, p0, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    iget v6, p0, Ljavax/vecmath/Matrix4f;->m23:F

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    .line 4
    iget v6, p0, Ljavax/vecmath/Matrix4f;->m30:F

    mul-float/2addr v6, v1

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    mul-float/2addr v1, v3

    add-float/2addr v6, v1

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    mul-float/2addr v1, v4

    add-float/2addr v6, v1

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    mul-float/2addr v1, p1

    add-float/2addr v6, v1

    iput v6, p2, Ljavax/vecmath/Tuple4f;->w:F

    .line 5
    iput v0, p2, Ljavax/vecmath/Tuple4f;->x:F

    .line 6
    iput v2, p2, Ljavax/vecmath/Tuple4f;->y:F

    .line 7
    iput v5, p2, Ljavax/vecmath/Tuple4f;->z:F

    return-void
.end method

.method public final transform(Ljavax/vecmath/Vector3f;)V
    .locals 6

    .line 30
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    iget v1, p1, Ljavax/vecmath/Tuple3f;->x:F

    mul-float/2addr v0, v1

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iget v3, p1, Ljavax/vecmath/Tuple3f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iget v4, p1, Ljavax/vecmath/Tuple3f;->z:F

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    .line 31
    iget v2, p0, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float/2addr v2, v1

    iget v5, p0, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    iget v5, p0, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    .line 32
    iget v5, p0, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float/2addr v5, v1

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float/2addr v1, v3

    add-float/2addr v5, v1

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float/2addr v1, v4

    add-float/2addr v5, v1

    iput v5, p1, Ljavax/vecmath/Tuple3f;->z:F

    .line 33
    iput v0, p1, Ljavax/vecmath/Tuple3f;->x:F

    .line 34
    iput v2, p1, Ljavax/vecmath/Tuple3f;->y:F

    return-void
.end method

.method public final transform(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
    .locals 5

    .line 25
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    iget v1, p1, Ljavax/vecmath/Tuple3f;->x:F

    mul-float/2addr v0, v1

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iget v3, p1, Ljavax/vecmath/Tuple3f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    .line 26
    iget v2, p0, Ljavax/vecmath/Matrix4f;->m10:F

    mul-float/2addr v2, v1

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m11:F

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m12:F

    mul-float/2addr v4, p1

    add-float/2addr v2, v4

    .line 27
    iget v4, p0, Ljavax/vecmath/Matrix4f;->m20:F

    mul-float/2addr v4, v1

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    mul-float/2addr v1, v3

    add-float/2addr v4, v1

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m22:F

    mul-float/2addr v1, p1

    add-float/2addr v4, v1

    iput v4, p2, Ljavax/vecmath/Tuple3f;->z:F

    .line 28
    iput v0, p2, Ljavax/vecmath/Tuple3f;->x:F

    .line 29
    iput v2, p2, Ljavax/vecmath/Tuple3f;->y:F

    return-void
.end method

.method public final transpose()V
    .locals 2

    .line 1
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 2
    iget v1, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 3
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 4
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 5
    iget v1, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 6
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 7
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 8
    iget v1, p0, Ljavax/vecmath/Matrix4f;->m03:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 9
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 10
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 11
    iget v1, p0, Ljavax/vecmath/Matrix4f;->m12:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 12
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 13
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 14
    iget v1, p0, Ljavax/vecmath/Matrix4f;->m13:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 15
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 16
    iget v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 17
    iget v1, p0, Ljavax/vecmath/Matrix4f;->m23:F

    iput v1, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 18
    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    return-void
.end method

.method public final transpose(Ljavax/vecmath/Matrix4f;)V
    .locals 1

    if-eq p0, p1, :cond_0

    .line 19
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m00:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    .line 20
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m10:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    .line 21
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m20:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m02:F

    .line 22
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m30:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m03:F

    .line 23
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m01:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m10:F

    .line 24
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m11:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m11:F

    .line 25
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m21:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m12:F

    .line 26
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m31:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m13:F

    .line 27
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m02:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    .line 28
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m12:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    .line 29
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m22:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m22:F

    .line 30
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m32:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m23:F

    .line 31
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m03:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m30:F

    .line 32
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m13:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m31:F

    .line 33
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m23:F

    iput v0, p0, Ljavax/vecmath/Matrix4f;->m32:F

    .line 34
    iget p1, p1, Ljavax/vecmath/Matrix4f;->m33:F

    iput p1, p0, Ljavax/vecmath/Matrix4f;->m33:F

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Ljavax/vecmath/Matrix4f;->transpose()V

    :goto_0
    return-void
.end method
