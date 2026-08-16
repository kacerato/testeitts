.class public Ljavax/vecmath/Matrix4d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final EPS:D = 1.0E-10

.field static final serialVersionUID:J = 0x72212ca59125c42eL


# instance fields
.field public m00:D

.field public m01:D

.field public m02:D

.field public m03:D

.field public m10:D

.field public m11:D

.field public m12:D

.field public m13:D

.field public m20:D

.field public m21:D

.field public m22:D

.field public m23:D

.field public m30:D

.field public m31:D

.field public m32:D

.field public m33:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 138
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 139
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 140
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 141
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 142
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 143
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 144
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 145
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 146
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 147
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 148
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 149
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 150
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 151
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 152
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 153
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public constructor <init>(DDDDDDDDDDDDDDDD)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 2
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m00:D

    move-wide v1, p3

    .line 3
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m01:D

    move-wide v1, p5

    .line 4
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m02:D

    move-wide v1, p7

    .line 5
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m03:D

    move-wide v1, p9

    .line 6
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m10:D

    move-wide v1, p11

    .line 7
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m11:D

    move-wide/from16 v1, p13

    .line 8
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m12:D

    move-wide/from16 v1, p15

    .line 9
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m13:D

    move-wide/from16 v1, p17

    .line 10
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m20:D

    move-wide/from16 v1, p19

    .line 11
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m21:D

    move-wide/from16 v1, p21

    .line 12
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m22:D

    move-wide/from16 v1, p23

    .line 13
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m23:D

    move-wide/from16 v1, p25

    .line 14
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m30:D

    move-wide/from16 v1, p27

    .line 15
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m31:D

    move-wide/from16 v1, p29

    .line 16
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m32:D

    move-wide/from16 v1, p31

    .line 17
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Matrix3d;Ljavax/vecmath/Vector3d;D)V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 122
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 123
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 124
    iget-wide v0, p2, Ljavax/vecmath/Tuple3d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 125
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 126
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 127
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 128
    iget-wide v0, p2, Ljavax/vecmath/Tuple3d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 129
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 130
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 131
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 132
    iget-wide p1, p2, Ljavax/vecmath/Tuple3d;->z:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m23:D

    const-wide/16 p1, 0x0

    .line 133
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 134
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 135
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m32:D

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 136
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Vector3d;D)V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    float-to-double v0, v0

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 105
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    float-to-double v0, v0

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 106
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    float-to-double v0, v0

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 107
    iget-wide v0, p2, Ljavax/vecmath/Tuple3d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 108
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m10:F

    float-to-double v0, v0

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 109
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m11:F

    float-to-double v0, v0

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 110
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m12:F

    float-to-double v0, v0

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 111
    iget-wide v0, p2, Ljavax/vecmath/Tuple3d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 112
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m20:F

    float-to-double v0, v0

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 113
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m21:F

    float-to-double v0, v0

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 114
    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    float-to-double v0, p1

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 115
    iget-wide p1, p2, Ljavax/vecmath/Tuple3d;->z:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m23:D

    const-wide/16 p1, 0x0

    .line 116
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 117
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 118
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m32:D

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 119
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Matrix4d;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m00:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 71
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m01:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 72
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m02:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 73
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m03:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 74
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m10:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 75
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m11:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 76
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m12:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 77
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m13:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 78
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m20:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 79
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m21:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 80
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m22:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 81
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m23:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 82
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m30:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 83
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m31:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 84
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m32:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 85
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m33:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Matrix4f;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m00:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 88
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m01:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 89
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m02:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 90
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m03:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 91
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m10:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 92
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m11:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 93
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m12:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 94
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m13:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 95
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m20:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 96
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m21:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 97
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m22:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 98
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m23:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 99
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m30:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 100
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m31:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 101
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m32:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 102
    iget p1, p1, Ljavax/vecmath/Matrix4f;->m33:F

    float-to-double v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Quat4d;Ljavax/vecmath/Vector3d;D)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
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

    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 37
    iget-wide v7, v1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double v13, v7, v3

    iget-wide v9, v1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double v17, v9, v11

    add-double v13, v13, v17

    mul-double/2addr v13, v5

    mul-double v13, v13, p3

    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double v13, v7, v11

    mul-double v17, v9, v3

    sub-double v13, v13, v17

    mul-double/2addr v13, v5

    mul-double v13, v13, p3

    .line 38
    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v13, v7, v3

    mul-double v17, v9, v11

    sub-double v13, v13, v17

    mul-double/2addr v13, v5

    mul-double v13, v13, p3

    .line 39
    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double v13, v7, v5

    mul-double/2addr v13, v7

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    sub-double v13, v15, v13

    mul-double v17, v11, v5

    mul-double v17, v17, v11

    sub-double v13, v13, v17

    mul-double v13, v13, p3

    .line 40
    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v13, v3, v11

    mul-double v17, v9, v7

    add-double v13, v13, v17

    mul-double/2addr v13, v5

    mul-double v13, v13, p3

    .line 41
    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v13, v7, v11

    mul-double v17, v9, v3

    add-double v13, v13, v17

    mul-double/2addr v13, v5

    mul-double v13, v13, p3

    .line 42
    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double/2addr v11, v3

    mul-double/2addr v9, v7

    sub-double/2addr v11, v9

    mul-double/2addr v11, v5

    mul-double v9, p3, v11

    .line 43
    iput-wide v9, v0, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v9, v7, v5

    mul-double/2addr v9, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double v9, v7, v9

    mul-double/2addr v5, v3

    mul-double/2addr v5, v3

    sub-double/2addr v9, v5

    mul-double v3, p3, v9

    .line 44
    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 45
    iget-wide v3, v2, Ljavax/vecmath/Tuple3d;->x:D

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 46
    iget-wide v3, v2, Ljavax/vecmath/Tuple3d;->y:D

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 47
    iget-wide v1, v2, Ljavax/vecmath/Tuple3d;->z:D

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m23:D

    const-wide/16 v1, 0x0

    .line 48
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 49
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 50
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m32:D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 51
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Quat4f;Ljavax/vecmath/Vector3d;D)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget v3, v1, Ljavax/vecmath/Tuple4f;->y:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    float-to-double v8, v3

    mul-double/2addr v4, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v4, v8, v4

    iget v10, v1, Ljavax/vecmath/Tuple4f;->z:F

    float-to-double v11, v10

    mul-double/2addr v11, v6

    float-to-double v13, v10

    mul-double/2addr v11, v13

    sub-double/2addr v4, v11

    mul-double v4, v4, p3

    iput-wide v4, v0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 54
    iget v4, v1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float v5, v4, v3

    iget v1, v1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float v11, v1, v10

    add-float/2addr v5, v11

    float-to-double v11, v5

    mul-double/2addr v11, v6

    mul-double v11, v11, p3

    iput-wide v11, v0, Ljavax/vecmath/Matrix4d;->m10:D

    mul-float v5, v4, v10

    mul-float v11, v1, v3

    sub-float/2addr v5, v11

    float-to-double v11, v5

    mul-double/2addr v11, v6

    mul-double v11, v11, p3

    .line 55
    iput-wide v11, v0, Ljavax/vecmath/Matrix4d;->m20:D

    mul-float v5, v4, v3

    mul-float v11, v1, v10

    sub-float/2addr v5, v11

    float-to-double v11, v5

    mul-double/2addr v11, v6

    mul-double v11, v11, p3

    .line 56
    iput-wide v11, v0, Ljavax/vecmath/Matrix4d;->m01:D

    float-to-double v11, v4

    mul-double/2addr v11, v6

    float-to-double v13, v4

    mul-double/2addr v11, v13

    sub-double v11, v8, v11

    float-to-double v13, v10

    mul-double/2addr v13, v6

    float-to-double v8, v10

    mul-double/2addr v13, v8

    sub-double/2addr v11, v13

    mul-double v8, p3, v11

    .line 57
    iput-wide v8, v0, Ljavax/vecmath/Matrix4d;->m11:D

    mul-float v5, v3, v10

    mul-float v8, v1, v4

    add-float/2addr v5, v8

    float-to-double v8, v5

    mul-double/2addr v8, v6

    mul-double v8, v8, p3

    .line 58
    iput-wide v8, v0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-float v5, v4, v10

    mul-float v8, v1, v3

    add-float/2addr v5, v8

    float-to-double v8, v5

    mul-double/2addr v8, v6

    mul-double v8, v8, p3

    .line 59
    iput-wide v8, v0, Ljavax/vecmath/Matrix4d;->m02:D

    mul-float/2addr v10, v3

    mul-float/2addr v1, v4

    sub-float/2addr v10, v1

    float-to-double v8, v10

    mul-double/2addr v8, v6

    mul-double v8, v8, p3

    .line 60
    iput-wide v8, v0, Ljavax/vecmath/Matrix4d;->m12:D

    float-to-double v8, v4

    mul-double/2addr v8, v6

    float-to-double v4, v4

    mul-double/2addr v8, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v8, v4, v8

    float-to-double v4, v3

    mul-double/2addr v4, v6

    float-to-double v6, v3

    mul-double/2addr v4, v6

    sub-double/2addr v8, v4

    mul-double v3, p3, v8

    .line 61
    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 62
    iget-wide v3, v2, Ljavax/vecmath/Tuple3d;->x:D

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 63
    iget-wide v3, v2, Ljavax/vecmath/Tuple3d;->y:D

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 64
    iget-wide v1, v2, Ljavax/vecmath/Tuple3d;->z:D

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m23:D

    const-wide/16 v1, 0x0

    .line 65
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 66
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 67
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m32:D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 68
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    const/4 v0, 0x1

    .line 20
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    const/4 v0, 0x2

    .line 21
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    const/4 v0, 0x3

    .line 22
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    const/4 v0, 0x4

    .line 23
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    const/4 v0, 0x5

    .line 24
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    const/4 v0, 0x6

    .line 25
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    const/4 v0, 0x7

    .line 26
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    const/16 v0, 0x8

    .line 27
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    const/16 v0, 0x9

    .line 28
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    const/16 v0, 0xa

    .line 29
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    const/16 v0, 0xb

    .line 30
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    const/16 v0, 0xc

    .line 31
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    const/16 v0, 0xd

    .line 32
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    const/16 v0, 0xe

    .line 33
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    const/16 v0, 0xf

    .line 34
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method private final getScaleRotate([D[D)V
    .locals 20

    move-object/from16 v0, p0

    iget-wide v1, v0, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v3, v0, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v5, v0, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v7, v0, Ljavax/vecmath/Matrix4d;->m10:D

    iget-wide v9, v0, Ljavax/vecmath/Matrix4d;->m11:D

    iget-wide v11, v0, Ljavax/vecmath/Matrix4d;->m12:D

    iget-wide v13, v0, Ljavax/vecmath/Matrix4d;->m20:D

    move-wide v15, v13

    iget-wide v13, v0, Ljavax/vecmath/Matrix4d;->m21:D

    move-wide/from16 v17, v13

    iget-wide v13, v0, Ljavax/vecmath/Matrix4d;->m22:D

    const/16 v0, 0x9

    new-array v0, v0, [D

    const/16 v19, 0x0

    aput-wide v1, v0, v19

    const/4 v1, 0x1

    aput-wide v3, v0, v1

    const/4 v1, 0x2

    aput-wide v5, v0, v1

    const/4 v1, 0x3

    aput-wide v7, v0, v1

    const/4 v1, 0x4

    aput-wide v9, v0, v1

    const/4 v1, 0x5

    aput-wide v11, v0, v1

    const/4 v1, 0x6

    aput-wide v15, v0, v1

    const/4 v1, 0x7

    aput-wide v17, v0, v1

    const/16 v1, 0x8

    aput-wide v13, v0, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Ljavax/vecmath/Matrix3d;->compute_svd([D[D[D)V

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

    const-string v1, "Matrix4d11"

    invoke-static {v1}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return v4
.end method


# virtual methods
.method public final add(D)V
    .locals 2

    .line 1
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 2
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 3
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 4
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 5
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 8
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 9
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 10
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 11
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 12
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 13
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 14
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 15
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 16
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final add(DLjavax/vecmath/Matrix4d;)V
    .locals 2

    .line 17
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m00:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 18
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m01:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 19
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m02:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 20
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m03:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 21
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m10:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 22
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m11:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 23
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m12:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 24
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m13:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 25
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m20:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 26
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m21:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 27
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m22:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 28
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m23:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 29
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m30:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 30
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m31:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 31
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m32:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 32
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m33:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final add(Ljavax/vecmath/Matrix4d;)V
    .locals 4

    .line 49
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m00:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 50
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m01:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 51
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m02:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 52
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m03:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 53
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m10:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 54
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m11:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 55
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m12:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 56
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m13:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 57
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m20:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 58
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m21:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 59
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m22:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 60
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m23:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 61
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m30:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 62
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m31:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 63
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m32:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 64
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m33:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final add(Ljavax/vecmath/Matrix4d;Ljavax/vecmath/Matrix4d;)V
    .locals 4

    .line 33
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m00:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 34
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m01:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 35
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m02:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 36
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m03:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m03:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 37
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m10:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m10:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 38
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m11:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m11:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 39
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m12:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m12:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 40
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m13:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m13:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 41
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m20:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m20:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 42
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m21:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m21:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 43
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m22:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m22:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 44
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m23:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m23:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 45
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m30:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m30:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 46
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m31:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m31:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 47
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m32:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m32:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 48
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m33:D

    iget-wide p1, p2, Ljavax/vecmath/Matrix4d;->m33:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/vecmath/Matrix4d;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final determinant()D
    .locals 33

    move-object/from16 v0, p0

    iget-wide v1, v0, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v3, v0, Ljavax/vecmath/Matrix4d;->m11:D

    iget-wide v5, v0, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double v7, v3, v5

    iget-wide v9, v0, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double/2addr v7, v9

    iget-wide v11, v0, Ljavax/vecmath/Matrix4d;->m12:D

    iget-wide v13, v0, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double v15, v11, v13

    move-wide/from16 v17, v1

    iget-wide v1, v0, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double/2addr v15, v1

    add-double/2addr v7, v15

    move-wide v15, v9

    iget-wide v9, v0, Ljavax/vecmath/Matrix4d;->m13:D

    move-wide/from16 v19, v11

    iget-wide v11, v0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v21, v9, v11

    move-wide/from16 v23, v11

    iget-wide v11, v0, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double v21, v21, v11

    add-double v7, v7, v21

    mul-double v21, v9, v5

    mul-double v21, v21, v1

    sub-double v7, v7, v21

    mul-double v21, v3, v13

    mul-double v21, v21, v11

    sub-double v7, v7, v21

    mul-double v21, v19, v23

    mul-double v21, v21, v15

    sub-double v7, v7, v21

    mul-double v7, v7, v17

    move-wide/from16 v17, v1

    iget-wide v1, v0, Ljavax/vecmath/Matrix4d;->m01:D

    move-wide/from16 v21, v3

    iget-wide v3, v0, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double v25, v3, v5

    mul-double v25, v25, v15

    mul-double v27, v19, v13

    move-wide/from16 v29, v7

    iget-wide v7, v0, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double v27, v27, v7

    add-double v25, v25, v27

    move-wide/from16 v27, v1

    iget-wide v1, v0, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v31, v9, v1

    mul-double v31, v31, v11

    add-double v25, v25, v31

    mul-double v31, v9, v5

    mul-double v31, v31, v7

    sub-double v25, v25, v31

    mul-double v31, v3, v13

    mul-double v31, v31, v11

    sub-double v25, v25, v31

    mul-double v31, v19, v1

    mul-double v31, v31, v15

    sub-double v25, v25, v31

    mul-double v25, v25, v27

    sub-double v25, v29, v25

    move-wide/from16 v27, v5

    iget-wide v5, v0, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double v29, v3, v23

    mul-double v29, v29, v15

    mul-double v31, v21, v13

    mul-double v31, v31, v7

    add-double v29, v29, v31

    mul-double v31, v9, v1

    mul-double v31, v31, v17

    add-double v29, v29, v31

    mul-double v9, v9, v23

    mul-double/2addr v9, v7

    sub-double v29, v29, v9

    mul-double/2addr v13, v3

    mul-double v13, v13, v17

    sub-double v29, v29, v13

    mul-double v9, v21, v1

    mul-double/2addr v9, v15

    sub-double v29, v29, v9

    mul-double v5, v5, v29

    add-double v25, v25, v5

    iget-wide v5, v0, Ljavax/vecmath/Matrix4d;->m03:D

    mul-double v9, v3, v23

    mul-double/2addr v9, v11

    mul-double v13, v21, v27

    mul-double/2addr v13, v7

    add-double/2addr v9, v13

    mul-double v13, v19, v1

    mul-double v13, v13, v17

    add-double/2addr v9, v13

    mul-double v13, v19, v23

    mul-double/2addr v13, v7

    sub-double/2addr v9, v13

    mul-double v3, v3, v27

    mul-double v3, v3, v17

    sub-double/2addr v9, v3

    mul-double v3, v21, v1

    mul-double/2addr v3, v11

    sub-double/2addr v9, v3

    mul-double/2addr v5, v9

    sub-double v25, v25, v5

    return-wide v25
.end method

.method public epsilonEquals(Ljavax/vecmath/Matrix4d;D)Z
    .locals 8

    .line 2
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m00:D

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

    .line 3
    :cond_1
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m01:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_2

    neg-double v4, v4

    :cond_2
    cmpl-double v0, v4, p2

    if-lez v0, :cond_3

    return v1

    .line 4
    :cond_3
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m02:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_4

    neg-double v4, v4

    :cond_4
    cmpl-double v0, v4, p2

    if-lez v0, :cond_5

    return v1

    .line 5
    :cond_5
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m03:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m03:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_6

    neg-double v4, v4

    :cond_6
    cmpl-double v0, v4, p2

    if-lez v0, :cond_7

    return v1

    .line 6
    :cond_7
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m10:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m10:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_8

    neg-double v4, v4

    :cond_8
    cmpl-double v0, v4, p2

    if-lez v0, :cond_9

    return v1

    .line 7
    :cond_9
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m11:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m11:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_a

    neg-double v4, v4

    :cond_a
    cmpl-double v0, v4, p2

    if-lez v0, :cond_b

    return v1

    .line 8
    :cond_b
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m12:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m12:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_c

    neg-double v4, v4

    :cond_c
    cmpl-double v0, v4, p2

    if-lez v0, :cond_d

    return v1

    .line 9
    :cond_d
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m13:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m13:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_e

    neg-double v4, v4

    :cond_e
    cmpl-double v0, v4, p2

    if-lez v0, :cond_f

    return v1

    .line 10
    :cond_f
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m20:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m20:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_10

    neg-double v4, v4

    :cond_10
    cmpl-double v0, v4, p2

    if-lez v0, :cond_11

    return v1

    .line 11
    :cond_11
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m21:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m21:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_12

    neg-double v4, v4

    :cond_12
    cmpl-double v0, v4, p2

    if-lez v0, :cond_13

    return v1

    .line 12
    :cond_13
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m22:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m22:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_14

    neg-double v4, v4

    :cond_14
    cmpl-double v0, v4, p2

    if-lez v0, :cond_15

    return v1

    .line 13
    :cond_15
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m23:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m23:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_16

    neg-double v4, v4

    :cond_16
    cmpl-double v0, v4, p2

    if-lez v0, :cond_17

    return v1

    .line 14
    :cond_17
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m30:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m30:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_18

    neg-double v4, v4

    :cond_18
    cmpl-double v0, v4, p2

    if-lez v0, :cond_19

    return v1

    .line 15
    :cond_19
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m31:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m31:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_1a

    neg-double v4, v4

    :cond_1a
    cmpl-double v0, v4, p2

    if-lez v0, :cond_1b

    return v1

    .line 16
    :cond_1b
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m32:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m32:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_1c

    neg-double v4, v4

    :cond_1c
    cmpl-double v0, v4, p2

    if-lez v0, :cond_1d

    return v1

    .line 17
    :cond_1d
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m33:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m33:D

    sub-double/2addr v4, v6

    cmpg-double p1, v4, v2

    if-gez p1, :cond_1e

    neg-double v4, v4

    :cond_1e
    cmpl-double p1, v4, p2

    if-lez p1, :cond_1f

    return v1

    :cond_1f
    const/4 p1, 0x1

    return p1
.end method

.method public epsilonEquals(Ljavax/vecmath/Matrix4d;F)Z
    .locals 2

    float-to-double v0, p2

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Ljavax/vecmath/Matrix4d;->epsilonEquals(Ljavax/vecmath/Matrix4d;D)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    .line 2
    :try_start_0
    check-cast p1, Ljavax/vecmath/Matrix4d;

    .line 3
    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m00:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m01:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m02:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m03:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m03:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m10:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m10:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m11:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m11:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m12:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m12:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m13:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m13:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m20:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m20:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m21:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m21:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m22:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m22:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m23:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m23:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m30:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m30:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m31:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m31:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m32:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m32:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m33:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m33:D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public equals(Ljavax/vecmath/Matrix4d;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m00:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m01:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m02:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m03:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m03:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m10:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m10:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m11:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m11:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m12:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m12:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m13:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m13:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m20:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m20:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m21:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m21:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m22:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m22:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m23:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m23:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m30:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m30:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m31:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m31:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m32:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m32:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m33:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix4d;->m33:D
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public final get(Ljavax/vecmath/Matrix3d;Ljavax/vecmath/Vector3d;)D
    .locals 5

    const/16 v0, 0x9

    .line 25
    new-array v0, v0, [D

    const/4 v1, 0x3

    .line 26
    new-array v2, v1, [D

    .line 27
    invoke-direct {p0, v2, v0}, Ljavax/vecmath/Matrix4d;->getScaleRotate([D[D)V

    const/4 v3, 0x0

    .line 28
    aget-wide v3, v0, v3

    iput-wide v3, p1, Ljavax/vecmath/Matrix3d;->m00:D

    const/4 v3, 0x1

    .line 29
    aget-wide v3, v0, v3

    iput-wide v3, p1, Ljavax/vecmath/Matrix3d;->m01:D

    const/4 v3, 0x2

    .line 30
    aget-wide v3, v0, v3

    iput-wide v3, p1, Ljavax/vecmath/Matrix3d;->m02:D

    .line 31
    aget-wide v3, v0, v1

    iput-wide v3, p1, Ljavax/vecmath/Matrix3d;->m10:D

    const/4 v1, 0x4

    .line 32
    aget-wide v3, v0, v1

    iput-wide v3, p1, Ljavax/vecmath/Matrix3d;->m11:D

    const/4 v1, 0x5

    .line 33
    aget-wide v3, v0, v1

    iput-wide v3, p1, Ljavax/vecmath/Matrix3d;->m12:D

    const/4 v1, 0x6

    .line 34
    aget-wide v3, v0, v1

    iput-wide v3, p1, Ljavax/vecmath/Matrix3d;->m20:D

    const/4 v1, 0x7

    .line 35
    aget-wide v3, v0, v1

    iput-wide v3, p1, Ljavax/vecmath/Matrix3d;->m21:D

    const/16 v1, 0x8

    .line 36
    aget-wide v3, v0, v1

    iput-wide v3, p1, Ljavax/vecmath/Matrix3d;->m22:D

    .line 37
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->x:D

    .line 38
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->y:D

    .line 39
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->z:D

    .line 40
    invoke-static {v2}, Ljavax/vecmath/Matrix3d;->max3([D)D

    move-result-wide p1

    return-wide p1
.end method

.method public final get(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Vector3d;)D
    .locals 5

    const/16 v0, 0x9

    .line 41
    new-array v0, v0, [D

    const/4 v1, 0x3

    .line 42
    new-array v2, v1, [D

    .line 43
    invoke-direct {p0, v2, v0}, Ljavax/vecmath/Matrix4d;->getScaleRotate([D[D)V

    const/4 v3, 0x0

    .line 44
    aget-wide v3, v0, v3

    double-to-float v3, v3

    iput v3, p1, Ljavax/vecmath/Matrix3f;->m00:F

    const/4 v3, 0x1

    .line 45
    aget-wide v3, v0, v3

    double-to-float v3, v3

    iput v3, p1, Ljavax/vecmath/Matrix3f;->m01:F

    const/4 v3, 0x2

    .line 46
    aget-wide v3, v0, v3

    double-to-float v3, v3

    iput v3, p1, Ljavax/vecmath/Matrix3f;->m02:F

    .line 47
    aget-wide v3, v0, v1

    double-to-float v1, v3

    iput v1, p1, Ljavax/vecmath/Matrix3f;->m10:F

    const/4 v1, 0x4

    .line 48
    aget-wide v3, v0, v1

    double-to-float v1, v3

    iput v1, p1, Ljavax/vecmath/Matrix3f;->m11:F

    const/4 v1, 0x5

    .line 49
    aget-wide v3, v0, v1

    double-to-float v1, v3

    iput v1, p1, Ljavax/vecmath/Matrix3f;->m12:F

    const/4 v1, 0x6

    .line 50
    aget-wide v3, v0, v1

    double-to-float v1, v3

    iput v1, p1, Ljavax/vecmath/Matrix3f;->m20:F

    const/4 v1, 0x7

    .line 51
    aget-wide v3, v0, v1

    double-to-float v1, v3

    iput v1, p1, Ljavax/vecmath/Matrix3f;->m21:F

    const/16 v1, 0x8

    .line 52
    aget-wide v3, v0, v1

    double-to-float v0, v3

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m22:F

    .line 53
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->x:D

    .line 54
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->y:D

    .line 55
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->z:D

    .line 56
    invoke-static {v2}, Ljavax/vecmath/Matrix3d;->max3([D)D

    move-result-wide p1

    return-wide p1
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
    invoke-direct {p0, v2, v0}, Ljavax/vecmath/Matrix4d;->getScaleRotate([D[D)V

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
    invoke-direct {p0, v2, v0}, Ljavax/vecmath/Matrix4d;->getScaleRotate([D[D)V

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

.method public final get(Ljavax/vecmath/Quat4d;)V
    .locals 17

    move-object/from16 v0, p1

    const/16 v1, 0x9

    .line 74
    new-array v1, v1, [D

    const/4 v2, 0x3

    .line 75
    new-array v3, v2, [D

    move-object/from16 v4, p0

    .line 76
    invoke-direct {v4, v3, v1}, Ljavax/vecmath/Matrix4d;->getScaleRotate([D[D)V

    const/4 v3, 0x0

    .line 77
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

    const-wide/16 v7, 0x0

    cmpg-double v3, v5, v7

    if-gez v3, :cond_0

    neg-double v7, v5

    goto :goto_0

    :cond_0
    move-wide v7, v5

    :goto_0
    const-wide v15, 0x39b4484bfeebc2a0L    # 1.0E-30

    cmpg-double v3, v7, v15

    const/4 v7, 0x6

    const/4 v8, 0x7

    if-ltz v3, :cond_1

    .line 78
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    iput-wide v5, v0, Ljavax/vecmath/Tuple4d;->w:D

    div-double/2addr v13, v5

    .line 79
    aget-wide v5, v1, v8

    const/4 v3, 0x5

    aget-wide v8, v1, v3

    sub-double/2addr v5, v8

    mul-double/2addr v5, v13

    iput-wide v5, v0, Ljavax/vecmath/Tuple4d;->x:D

    const/4 v3, 0x2

    .line 80
    aget-wide v5, v1, v3

    aget-wide v7, v1, v7

    sub-double/2addr v5, v7

    mul-double/2addr v5, v13

    iput-wide v5, v0, Ljavax/vecmath/Tuple4d;->y:D

    .line 81
    aget-wide v2, v1, v2

    const/4 v5, 0x1

    aget-wide v5, v1, v5

    sub-double/2addr v2, v5

    mul-double/2addr v2, v13

    iput-wide v2, v0, Ljavax/vecmath/Tuple4d;->z:D

    return-void

    :cond_1
    const-wide/16 v5, 0x0

    .line 82
    iput-wide v5, v0, Ljavax/vecmath/Tuple4d;->w:D

    const-wide/high16 v13, -0x4020000000000000L    # -0.5

    add-double/2addr v9, v11

    mul-double/2addr v9, v13

    cmpg-double v3, v9, v5

    if-gez v3, :cond_2

    neg-double v5, v9

    goto :goto_1

    :cond_2
    move-wide v5, v9

    :goto_1
    cmpg-double v3, v5, v15

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    if-ltz v3, :cond_3

    .line 83
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    iput-wide v8, v0, Ljavax/vecmath/Tuple4d;->x:D

    div-double/2addr v5, v8

    .line 84
    aget-wide v2, v1, v2

    mul-double/2addr v2, v5

    iput-wide v2, v0, Ljavax/vecmath/Tuple4d;->y:D

    .line 85
    aget-wide v2, v1, v7

    mul-double/2addr v2, v5

    iput-wide v2, v0, Ljavax/vecmath/Tuple4d;->z:D

    return-void

    :cond_3
    const-wide/16 v2, 0x0

    .line 86
    iput-wide v2, v0, Ljavax/vecmath/Tuple4d;->x:D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v11, v9, v11

    mul-double/2addr v11, v5

    cmpg-double v5, v11, v2

    if-gez v5, :cond_4

    neg-double v2, v11

    goto :goto_2

    :cond_4
    move-wide v2, v11

    :goto_2
    cmpg-double v2, v2, v15

    if-ltz v2, :cond_5

    .line 87
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, v0, Ljavax/vecmath/Tuple4d;->y:D

    .line 88
    aget-wide v5, v1, v8

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v7

    div-double/2addr v5, v2

    iput-wide v5, v0, Ljavax/vecmath/Tuple4d;->z:D

    return-void

    :cond_5
    const-wide/16 v1, 0x0

    .line 89
    iput-wide v1, v0, Ljavax/vecmath/Tuple4d;->y:D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 90
    iput-wide v1, v0, Ljavax/vecmath/Tuple4d;->z:D

    return-void
.end method

.method public final get(Ljavax/vecmath/Quat4f;)V
    .locals 19

    move-object/from16 v0, p1

    const/16 v1, 0x9

    .line 57
    new-array v1, v1, [D

    const/4 v2, 0x3

    .line 58
    new-array v3, v2, [D

    move-object/from16 v4, p0

    .line 59
    invoke-direct {v4, v3, v1}, Ljavax/vecmath/Matrix4d;->getScaleRotate([D[D)V

    const/4 v3, 0x0

    .line 60
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

    .line 61
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v3, v5

    iput v3, v0, Ljavax/vecmath/Tuple4f;->w:F

    float-to-double v5, v3

    div-double/2addr v13, v5

    .line 62
    aget-wide v5, v1, v8

    const/4 v3, 0x5

    aget-wide v8, v1, v3

    sub-double/2addr v5, v8

    mul-double/2addr v5, v13

    double-to-float v3, v5

    iput v3, v0, Ljavax/vecmath/Tuple4f;->x:F

    const/4 v3, 0x2

    .line 63
    aget-wide v5, v1, v3

    aget-wide v7, v1, v7

    sub-double/2addr v5, v7

    mul-double/2addr v5, v13

    double-to-float v3, v5

    iput v3, v0, Ljavax/vecmath/Tuple4f;->y:F

    .line 64
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

    .line 65
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

    .line 66
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v3, v5

    iput v3, v0, Ljavax/vecmath/Tuple4f;->x:F

    float-to-double v5, v3

    div-double/2addr v13, v5

    .line 67
    aget-wide v2, v1, v2

    mul-double/2addr v2, v13

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Tuple4f;->y:F

    .line 68
    aget-wide v2, v1, v7

    mul-double/2addr v2, v13

    double-to-float v1, v2

    iput v1, v0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    .line 69
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

    .line 70
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Tuple4f;->y:F

    .line 71
    aget-wide v5, v1, v8

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    float-to-double v1, v2

    mul-double/2addr v1, v7

    div-double/2addr v5, v1

    double-to-float v1, v5

    iput v1, v0, Ljavax/vecmath/Tuple4f;->z:F

    return-void

    .line 72
    :cond_5
    iput v3, v0, Ljavax/vecmath/Tuple4f;->y:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 73
    iput v1, v0, Ljavax/vecmath/Tuple4f;->z:F

    return-void
.end method

.method public final get(Ljavax/vecmath/Vector3d;)V
    .locals 2

    .line 91
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    iput-wide v0, p1, Ljavax/vecmath/Tuple3d;->x:D

    .line 92
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    iput-wide v0, p1, Ljavax/vecmath/Tuple3d;->y:D

    .line 93
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    iput-wide v0, p1, Ljavax/vecmath/Tuple3d;->z:D

    return-void
.end method

.method public final getColumn(ILjavax/vecmath/Vector4d;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->x:D

    .line 2
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->y:D

    .line 3
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->z:D

    .line 4
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->w:D

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->x:D

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->y:D

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->z:D

    .line 8
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->w:D

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 9
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->x:D

    .line 10
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->y:D

    .line 11
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->z:D

    .line 12
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->w:D

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 13
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->x:D

    .line 14
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->y:D

    .line 15
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->z:D

    .line 16
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->w:D

    :goto_0
    return-void

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix4d3"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getColumn(I[D)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 18
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m00:D

    aput-wide v4, p2, v0

    .line 19
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m10:D

    aput-wide v4, p2, v3

    .line 20
    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m20:D

    aput-wide v3, p2, v2

    .line 21
    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m30:D

    aput-wide v2, p2, v1

    goto :goto_0

    :cond_0
    if-ne p1, v3, :cond_1

    .line 22
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m01:D

    aput-wide v4, p2, v0

    .line 23
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m11:D

    aput-wide v4, p2, v3

    .line 24
    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m21:D

    aput-wide v3, p2, v2

    .line 25
    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m31:D

    aput-wide v2, p2, v1

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 26
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m02:D

    aput-wide v4, p2, v0

    .line 27
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m12:D

    aput-wide v4, p2, v3

    .line 28
    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m22:D

    aput-wide v3, p2, v2

    .line 29
    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m32:D

    aput-wide v2, p2, v1

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 30
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m03:D

    aput-wide v4, p2, v0

    .line 31
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m13:D

    aput-wide v4, p2, v3

    .line 32
    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m23:D

    aput-wide v3, p2, v2

    .line 33
    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m33:D

    aput-wide v2, p2, v1

    :goto_0
    return-void

    .line 34
    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix4d3"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getElement(II)D
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

    iget-wide p1, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-wide p1

    :cond_0
    iget-wide p1, p0, Ljavax/vecmath/Matrix4d;->m32:D

    return-wide p1

    :cond_1
    iget-wide p1, p0, Ljavax/vecmath/Matrix4d;->m31:D

    return-wide p1

    :cond_2
    iget-wide p1, p0, Ljavax/vecmath/Matrix4d;->m30:D

    return-wide p1

    :cond_3
    if-eqz p2, :cond_6

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_4

    if-ne p2, v0, :cond_c

    iget-wide p1, p0, Ljavax/vecmath/Matrix4d;->m23:D

    return-wide p1

    :cond_4
    iget-wide p1, p0, Ljavax/vecmath/Matrix4d;->m22:D

    return-wide p1

    :cond_5
    iget-wide p1, p0, Ljavax/vecmath/Matrix4d;->m21:D

    return-wide p1

    :cond_6
    iget-wide p1, p0, Ljavax/vecmath/Matrix4d;->m20:D

    return-wide p1

    :cond_7
    if-eqz p2, :cond_a

    if-eq p2, v2, :cond_9

    if-eq p2, v1, :cond_8

    if-ne p2, v0, :cond_c

    iget-wide p1, p0, Ljavax/vecmath/Matrix4d;->m13:D

    return-wide p1

    :cond_8
    iget-wide p1, p0, Ljavax/vecmath/Matrix4d;->m12:D

    return-wide p1

    :cond_9
    iget-wide p1, p0, Ljavax/vecmath/Matrix4d;->m11:D

    return-wide p1

    :cond_a
    iget-wide p1, p0, Ljavax/vecmath/Matrix4d;->m10:D

    return-wide p1

    :cond_b
    if-eqz p2, :cond_f

    if-eq p2, v2, :cond_e

    if-eq p2, v1, :cond_d

    if-ne p2, v0, :cond_c

    iget-wide p1, p0, Ljavax/vecmath/Matrix4d;->m03:D

    return-wide p1

    :cond_c
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix4d1"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    iget-wide p1, p0, Ljavax/vecmath/Matrix4d;->m02:D

    return-wide p1

    :cond_e
    iget-wide p1, p0, Ljavax/vecmath/Matrix4d;->m01:D

    return-wide p1

    :cond_f
    iget-wide p1, p0, Ljavax/vecmath/Matrix4d;->m00:D

    return-wide p1
.end method

.method public final getM00()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    return-wide v0
.end method

.method public final getM01()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    return-wide v0
.end method

.method public final getM02()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    return-wide v0
.end method

.method public final getM03()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    return-wide v0
.end method

.method public final getM10()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    return-wide v0
.end method

.method public final getM11()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    return-wide v0
.end method

.method public final getM12()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    return-wide v0
.end method

.method public final getM13()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    return-wide v0
.end method

.method public final getM20()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    return-wide v0
.end method

.method public final getM21()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    return-wide v0
.end method

.method public final getM22()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    return-wide v0
.end method

.method public final getM23()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    return-wide v0
.end method

.method public final getM30()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    return-wide v0
.end method

.method public final getM31()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    return-wide v0
.end method

.method public final getM32()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    return-wide v0
.end method

.method public final getM33()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-wide v0
.end method

.method public final getRotationScale(Ljavax/vecmath/Matrix3d;)V
    .locals 2

    .line 4
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iput-wide v0, p1, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iput-wide v0, p1, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iput-wide v0, p1, Ljavax/vecmath/Matrix3d;->m02:D

    .line 5
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    iput-wide v0, p1, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    iput-wide v0, p1, Ljavax/vecmath/Matrix3d;->m11:D

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    iput-wide v0, p1, Ljavax/vecmath/Matrix3d;->m12:D

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    iput-wide v0, p1, Ljavax/vecmath/Matrix3d;->m20:D

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    iput-wide v0, p1, Ljavax/vecmath/Matrix3d;->m21:D

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    iput-wide v0, p1, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final getRotationScale(Ljavax/vecmath/Matrix3f;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    double-to-float v0, v0

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    double-to-float v0, v0

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    double-to-float v0, v0

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    .line 2
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    double-to-float v0, v0

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m10:F

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    double-to-float v0, v0

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m11:F

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    double-to-float v0, v0

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m12:F

    .line 3
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    double-to-float v0, v0

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m20:F

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    double-to-float v0, v0

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m21:F

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    double-to-float v0, v0

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final getRow(ILjavax/vecmath/Vector4d;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->x:D

    .line 2
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->y:D

    .line 3
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->z:D

    .line 4
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->w:D

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->x:D

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->y:D

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->z:D

    .line 8
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->w:D

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 9
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->x:D

    .line 10
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->y:D

    .line 11
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->z:D

    .line 12
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->w:D

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 13
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->x:D

    .line 14
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->y:D

    .line 15
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->z:D

    .line 16
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple4d;->w:D

    :goto_0
    return-void

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix4d2"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getRow(I[D)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 18
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m00:D

    aput-wide v4, p2, v0

    .line 19
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m01:D

    aput-wide v4, p2, v3

    .line 20
    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m02:D

    aput-wide v3, p2, v2

    .line 21
    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m03:D

    aput-wide v2, p2, v1

    goto :goto_0

    :cond_0
    if-ne p1, v3, :cond_1

    .line 22
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m10:D

    aput-wide v4, p2, v0

    .line 23
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m11:D

    aput-wide v4, p2, v3

    .line 24
    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m12:D

    aput-wide v3, p2, v2

    .line 25
    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m13:D

    aput-wide v2, p2, v1

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 26
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m20:D

    aput-wide v4, p2, v0

    .line 27
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m21:D

    aput-wide v4, p2, v3

    .line 28
    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m22:D

    aput-wide v3, p2, v2

    .line 29
    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m23:D

    aput-wide v2, p2, v1

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 30
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m30:D

    aput-wide v4, p2, v0

    .line 31
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m31:D

    aput-wide v4, p2, v3

    .line 32
    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m32:D

    aput-wide v3, p2, v2

    .line 33
    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m33:D

    aput-wide v2, p2, v1

    :goto_0
    return-void

    .line 34
    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix4d2"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getScale()D
    .locals 2

    const/16 v0, 0x9

    new-array v0, v0, [D

    const/4 v1, 0x3

    new-array v1, v1, [D

    invoke-direct {p0, v1, v0}, Ljavax/vecmath/Matrix4d;->getScaleRotate([D[D)V

    invoke-static {v1}, Ljavax/vecmath/Matrix3d;->max3([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    invoke-static {v0, v1}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1f

    add-long/2addr v0, v2

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m01:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m02:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m03:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m10:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m11:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m12:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m13:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m20:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m21:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m22:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m23:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m30:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m31:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m32:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m33:D

    invoke-static {v2, v3}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v2

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
    invoke-virtual {p0, p0}, Ljavax/vecmath/Matrix4d;->invertGeneral(Ljavax/vecmath/Matrix4d;)V

    return-void
.end method

.method public final invert(Ljavax/vecmath/Matrix4d;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljavax/vecmath/Matrix4d;->invertGeneral(Ljavax/vecmath/Matrix4d;)V

    return-void
.end method

.method public final invertGeneral(Ljavax/vecmath/Matrix4d;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x10

    new-array v3, v2, [D

    const/4 v4, 0x4

    new-array v5, v4, [I

    iget-wide v6, v1, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v8, v1, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v10, v1, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v12, v1, Ljavax/vecmath/Matrix4d;->m03:D

    iget-wide v14, v1, Ljavax/vecmath/Matrix4d;->m10:D

    move-object/from16 v16, v5

    iget-wide v4, v1, Ljavax/vecmath/Matrix4d;->m11:D

    move-object/from16 v17, v3

    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m12:D

    move-wide/from16 v18, v2

    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m13:D

    move-wide/from16 v20, v2

    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m20:D

    move-wide/from16 v22, v2

    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m21:D

    move-wide/from16 v24, v2

    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m22:D

    move-wide/from16 v26, v2

    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m23:D

    move-wide/from16 v28, v2

    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m30:D

    move-wide/from16 v30, v2

    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m31:D

    move-wide/from16 v32, v2

    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m32:D

    iget-wide v0, v1, Ljavax/vecmath/Matrix4d;->m33:D

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

    aput-wide v4, v1, v9

    const/4 v4, 0x6

    aput-wide v18, v1, v4

    const/4 v5, 0x7

    aput-wide v20, v1, v5

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

    aput-wide v2, v1, v18

    const/16 v2, 0xf

    aput-wide v34, v1, v2

    move-object/from16 v3, v16

    invoke-static {v1, v3}, Ljavax/vecmath/Matrix4d;->luDecomposition([D[I)Z

    move-result v16

    if-eqz v16, :cond_1

    move v14, v0

    const/16 v15, 0x10

    :goto_0
    if-ge v14, v15, :cond_0

    const-wide/16 v19, 0x0

    aput-wide v19, v17, v14

    add-int/2addr v14, v6

    goto :goto_0

    :cond_0
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    aput-wide v14, v17, v0

    aput-wide v14, v17, v9

    aput-wide v14, v17, v12

    aput-wide v14, v17, v2

    move-object/from16 v14, v17

    invoke-static {v1, v3, v14}, Ljavax/vecmath/Matrix4d;->luBacksubstitution([D[I[D)V

    aget-wide v0, v14, v0

    move-object/from16 v3, p0

    iput-wide v0, v3, Ljavax/vecmath/Matrix4d;->m00:D

    aget-wide v0, v14, v6

    iput-wide v0, v3, Ljavax/vecmath/Matrix4d;->m01:D

    aget-wide v0, v14, v7

    iput-wide v0, v3, Ljavax/vecmath/Matrix4d;->m02:D

    aget-wide v0, v14, v8

    iput-wide v0, v3, Ljavax/vecmath/Matrix4d;->m03:D

    const/4 v0, 0x4

    aget-wide v0, v14, v0

    iput-wide v0, v3, Ljavax/vecmath/Matrix4d;->m10:D

    aget-wide v0, v14, v9

    iput-wide v0, v3, Ljavax/vecmath/Matrix4d;->m11:D

    aget-wide v0, v14, v4

    iput-wide v0, v3, Ljavax/vecmath/Matrix4d;->m12:D

    aget-wide v0, v14, v5

    iput-wide v0, v3, Ljavax/vecmath/Matrix4d;->m13:D

    aget-wide v0, v14, v10

    iput-wide v0, v3, Ljavax/vecmath/Matrix4d;->m20:D

    aget-wide v0, v14, v11

    iput-wide v0, v3, Ljavax/vecmath/Matrix4d;->m21:D

    aget-wide v0, v14, v12

    iput-wide v0, v3, Ljavax/vecmath/Matrix4d;->m22:D

    aget-wide v0, v14, v13

    iput-wide v0, v3, Ljavax/vecmath/Matrix4d;->m23:D

    const/16 v0, 0xc

    aget-wide v0, v14, v0

    iput-wide v0, v3, Ljavax/vecmath/Matrix4d;->m30:D

    const/16 v0, 0xd

    aget-wide v0, v14, v0

    iput-wide v0, v3, Ljavax/vecmath/Matrix4d;->m31:D

    aget-wide v0, v14, v18

    iput-wide v0, v3, Ljavax/vecmath/Matrix4d;->m32:D

    aget-wide v0, v14, v2

    iput-wide v0, v3, Ljavax/vecmath/Matrix4d;->m33:D

    return-void

    :cond_1
    move-object/from16 v3, p0

    new-instance v0, Ljavax/vecmath/SingularMatrixException;

    const-string v1, "Matrix4d10"

    invoke-static {v1}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/vecmath/SingularMatrixException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final mul(D)V
    .locals 2

    .line 1
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 2
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 3
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 4
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 5
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 8
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 9
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 10
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 11
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 12
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 13
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 14
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 15
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 16
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final mul(DLjavax/vecmath/Matrix4d;)V
    .locals 2

    .line 17
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m00:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 18
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 19
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 20
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m03:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 21
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 22
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 23
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 24
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 25
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 26
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 27
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 28
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 29
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 30
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 31
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 32
    iget-wide v0, p3, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final mul(Ljavax/vecmath/Matrix4d;)V
    .locals 68

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 33
    iget-wide v2, v0, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v4, v1, Ljavax/vecmath/Matrix4d;->m00:D

    mul-double v6, v2, v4

    iget-wide v8, v0, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v10, v1, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double v12, v8, v10

    add-double/2addr v6, v12

    iget-wide v12, v0, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v14, v1, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v16, v12, v14

    add-double v6, v6, v16

    move-wide/from16 v16, v14

    iget-wide v14, v0, Ljavax/vecmath/Matrix4d;->m03:D

    move-wide/from16 v18, v10

    iget-wide v10, v1, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double v20, v14, v10

    add-double v6, v6, v20

    move-wide/from16 v20, v6

    .line 34
    iget-wide v6, v1, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double v22, v2, v6

    move-wide/from16 v24, v6

    iget-wide v6, v1, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v26, v8, v6

    add-double v22, v22, v26

    move-wide/from16 v26, v6

    iget-wide v6, v1, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v28, v12, v6

    add-double v22, v22, v28

    move-wide/from16 v28, v6

    iget-wide v6, v1, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double v30, v14, v6

    move-wide/from16 v32, v6

    add-double v6, v22, v30

    move-wide/from16 v22, v6

    .line 35
    iget-wide v6, v1, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double v30, v2, v6

    move-wide/from16 v34, v6

    iget-wide v6, v1, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v36, v8, v6

    add-double v30, v30, v36

    move-wide/from16 v36, v6

    iget-wide v6, v1, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double v38, v12, v6

    add-double v30, v30, v38

    move-wide/from16 v38, v6

    iget-wide v6, v1, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double v40, v14, v6

    move-wide/from16 v42, v6

    add-double v6, v30, v40

    move-wide/from16 v30, v6

    .line 36
    iget-wide v6, v1, Ljavax/vecmath/Matrix4d;->m03:D

    mul-double/2addr v2, v6

    move-wide/from16 v40, v6

    iget-wide v6, v1, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double/2addr v8, v6

    add-double/2addr v2, v8

    iget-wide v8, v1, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double/2addr v12, v8

    add-double/2addr v2, v12

    iget-wide v12, v1, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double/2addr v14, v12

    add-double/2addr v2, v14

    .line 37
    iget-wide v14, v0, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double v44, v14, v4

    move-wide/from16 v46, v2

    iget-wide v1, v0, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v48, v1, v18

    add-double v44, v44, v48

    move-wide/from16 v48, v4

    iget-wide v3, v0, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v50, v3, v16

    add-double v44, v44, v50

    move-wide/from16 v50, v12

    iget-wide v12, v0, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double v52, v12, v10

    move-wide/from16 v54, v10

    add-double v10, v44, v52

    mul-double v44, v14, v24

    mul-double v52, v1, v26

    add-double v44, v44, v52

    mul-double v52, v3, v28

    add-double v44, v44, v52

    mul-double v52, v12, v32

    move-wide/from16 v56, v10

    add-double v10, v44, v52

    mul-double v44, v14, v34

    mul-double v52, v1, v36

    add-double v44, v44, v52

    mul-double v52, v3, v38

    add-double v44, v44, v52

    mul-double v52, v12, v42

    move-wide/from16 v58, v10

    add-double v10, v44, v52

    mul-double v14, v14, v40

    mul-double/2addr v1, v6

    add-double/2addr v14, v1

    mul-double/2addr v3, v8

    add-double/2addr v14, v3

    mul-double v12, v12, v50

    add-double/2addr v14, v12

    .line 38
    iget-wide v1, v0, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v4, v1, v48

    iget-wide v12, v0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v44, v12, v18

    add-double v4, v4, v44

    move-wide/from16 v44, v14

    iget-wide v14, v0, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double v52, v14, v16

    add-double v4, v4, v52

    move-wide/from16 v52, v10

    iget-wide v10, v0, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double v60, v10, v54

    add-double v4, v4, v60

    mul-double v60, v1, v24

    mul-double v62, v12, v26

    add-double v60, v60, v62

    mul-double v62, v14, v28

    add-double v60, v60, v62

    mul-double v62, v10, v32

    move-wide/from16 v64, v4

    add-double v3, v60, v62

    mul-double v60, v1, v34

    mul-double v62, v12, v36

    add-double v60, v60, v62

    mul-double v62, v14, v38

    add-double v60, v60, v62

    mul-double v62, v10, v42

    move-wide/from16 v66, v3

    add-double v3, v60, v62

    mul-double v1, v1, v40

    mul-double/2addr v12, v6

    add-double/2addr v1, v12

    mul-double/2addr v14, v8

    add-double/2addr v1, v14

    mul-double v10, v10, v50

    add-double/2addr v1, v10

    .line 39
    iget-wide v10, v0, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double v12, v10, v48

    iget-wide v14, v0, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double v18, v18, v14

    add-double v12, v12, v18

    move-wide/from16 v18, v1

    iget-wide v1, v0, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double v16, v16, v1

    add-double v12, v12, v16

    move-wide/from16 v16, v3

    iget-wide v3, v0, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double v48, v3, v54

    add-double v12, v12, v48

    mul-double v24, v24, v10

    mul-double v26, v26, v14

    add-double v24, v24, v26

    mul-double v26, v1, v28

    add-double v24, v24, v26

    mul-double v26, v3, v32

    move-wide/from16 v28, v12

    add-double v12, v24, v26

    mul-double v24, v10, v34

    mul-double v26, v14, v36

    add-double v24, v24, v26

    mul-double v26, v1, v38

    add-double v24, v24, v26

    mul-double v26, v3, v42

    move-wide/from16 v32, v12

    add-double v12, v24, v26

    mul-double v10, v10, v40

    mul-double/2addr v14, v6

    add-double/2addr v10, v14

    mul-double/2addr v1, v8

    add-double/2addr v10, v1

    mul-double v3, v3, v50

    add-double/2addr v10, v3

    move-wide/from16 v6, v20

    .line 40
    iput-wide v6, v0, Ljavax/vecmath/Matrix4d;->m00:D

    move-wide/from16 v1, v22

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m01:D

    move-wide/from16 v1, v30

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m02:D

    move-wide/from16 v2, v46

    iput-wide v2, v0, Ljavax/vecmath/Matrix4d;->m03:D

    move-wide/from16 v1, v56

    .line 41
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m10:D

    move-wide/from16 v1, v58

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m11:D

    move-wide/from16 v1, v52

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m12:D

    move-wide/from16 v14, v44

    iput-wide v14, v0, Ljavax/vecmath/Matrix4d;->m13:D

    move-wide/from16 v4, v64

    .line 42
    iput-wide v4, v0, Ljavax/vecmath/Matrix4d;->m20:D

    move-wide/from16 v1, v66

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m21:D

    move-wide/from16 v1, v16

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m22:D

    move-wide/from16 v1, v18

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m23:D

    move-wide/from16 v1, v28

    .line 43
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m30:D

    move-wide/from16 v1, v32

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m31:D

    iput-wide v12, v0, Ljavax/vecmath/Matrix4d;->m32:D

    iput-wide v10, v0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final mul(Ljavax/vecmath/Matrix4d;Ljavax/vecmath/Matrix4d;)V
    .locals 69

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    .line 44
    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m00:D

    mul-double/2addr v3, v5

    iget-wide v5, v1, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double v9, v5, v7

    add-double/2addr v3, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v13, v9, v11

    add-double/2addr v3, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m03:D

    move-wide v15, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double v17, v13, v11

    add-double v3, v3, v17

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 45
    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m00:D

    move-wide/from16 v17, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double/2addr v11, v3

    move-wide/from16 v19, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double/2addr v5, v7

    add-double/2addr v11, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v21, v9, v5

    add-double v11, v11, v21

    move-wide/from16 v21, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double v23, v13, v5

    add-double v11, v11, v23

    iput-wide v11, v0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 46
    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double/2addr v11, v3

    move-wide/from16 v23, v5

    iget-wide v5, v1, Ljavax/vecmath/Matrix4d;->m01:D

    move-wide/from16 v25, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v27, v5, v7

    add-double v11, v11, v27

    move-wide/from16 v27, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double/2addr v9, v7

    add-double/2addr v11, v9

    iget-wide v9, v2, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double v29, v13, v9

    add-double v11, v11, v29

    iput-wide v11, v0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 47
    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m03:D

    mul-double/2addr v3, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double/2addr v5, v11

    add-double/2addr v3, v5

    iget-wide v5, v1, Ljavax/vecmath/Matrix4d;->m02:D

    move-wide/from16 v29, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double/2addr v5, v11

    add-double/2addr v3, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double/2addr v13, v5

    add-double/2addr v3, v13

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 48
    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m10:D

    iget-wide v13, v2, Ljavax/vecmath/Matrix4d;->m00:D

    mul-double/2addr v3, v13

    move-wide/from16 v31, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v19, v19, v13

    add-double v3, v3, v19

    move-wide/from16 v19, v5

    iget-wide v5, v1, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v33, v5, v15

    add-double v3, v3, v33

    move-wide/from16 v33, v11

    iget-wide v11, v1, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double v35, v11, v17

    add-double v3, v3, v35

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 49
    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m10:D

    move-wide/from16 v35, v9

    iget-wide v9, v2, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double v37, v3, v9

    mul-double v13, v13, v25

    add-double v37, v37, v13

    mul-double v13, v5, v21

    add-double v37, v37, v13

    mul-double v13, v11, v23

    add-double v13, v37, v13

    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 50
    iget-wide v13, v2, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double v25, v3, v13

    move-wide/from16 v37, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v27, v27, v13

    add-double v25, v25, v27

    mul-double/2addr v5, v7

    add-double v25, v25, v5

    mul-double v5, v11, v35

    add-double v5, v25, v5

    iput-wide v5, v0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 51
    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m03:D

    mul-double/2addr v3, v5

    mul-double v13, v13, v29

    add-double/2addr v3, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v13, v13, v33

    add-double/2addr v3, v13

    mul-double v11, v11, v19

    add-double/2addr v3, v11

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 52
    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v3, v3, v31

    iget-wide v11, v1, Ljavax/vecmath/Matrix4d;->m21:D

    iget-wide v13, v2, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double v25, v11, v13

    add-double v3, v3, v25

    move-wide/from16 v25, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double/2addr v15, v13

    add-double/2addr v3, v15

    move-wide v15, v5

    iget-wide v5, v1, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double v27, v5, v17

    add-double v3, v3, v27

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 53
    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v27, v3, v9

    move-wide/from16 v29, v9

    iget-wide v9, v2, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double/2addr v11, v9

    add-double v27, v27, v11

    mul-double v11, v13, v21

    add-double v27, v27, v11

    mul-double v11, v5, v23

    add-double v11, v27, v11

    iput-wide v11, v0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v11, v3, v37

    move-wide/from16 v21, v9

    .line 54
    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m21:D

    move-wide/from16 v27, v3

    iget-wide v3, v2, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v39, v9, v3

    add-double v11, v11, v39

    mul-double/2addr v13, v7

    add-double/2addr v11, v13

    mul-double v7, v5, v35

    add-double/2addr v11, v7

    iput-wide v11, v0, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double v7, v27, v15

    .line 55
    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double v9, v9, v33

    add-double/2addr v7, v9

    mul-double v5, v5, v19

    add-double/2addr v7, v5

    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 56
    iget-wide v5, v1, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double v5, v5, v31

    iget-wide v7, v1, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double v13, v7, v25

    add-double/2addr v5, v13

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m32:D

    iget-wide v13, v2, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double/2addr v13, v9

    add-double/2addr v5, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double v17, v17, v13

    add-double v5, v5, v17

    iput-wide v5, v0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 57
    iget-wide v5, v1, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double v17, v5, v29

    mul-double v7, v7, v21

    add-double v17, v17, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double/2addr v7, v9

    add-double v17, v17, v7

    mul-double v7, v13, v23

    add-double v7, v17, v7

    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double v7, v5, v37

    move-wide/from16 v17, v11

    .line 58
    iget-wide v11, v1, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double/2addr v3, v11

    add-double/2addr v7, v3

    iget-wide v3, v2, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double/2addr v9, v3

    add-double/2addr v7, v9

    mul-double v9, v13, v35

    add-double/2addr v7, v9

    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double/2addr v5, v15

    mul-double v11, v11, v17

    add-double/2addr v5, v11

    .line 59
    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m32:D

    iget-wide v1, v2, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double/2addr v3, v1

    add-double/2addr v5, v3

    mul-double v13, v13, v19

    add-double/2addr v5, v13

    iput-wide v5, v0, Ljavax/vecmath/Matrix4d;->m33:D

    goto/16 :goto_0

    .line 60
    :cond_0
    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m00:D

    mul-double v7, v3, v5

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double v13, v9, v11

    add-double/2addr v7, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m02:D

    move-wide v15, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v17, v13, v11

    add-double v7, v7, v17

    move-wide/from16 v17, v11

    iget-wide v11, v1, Ljavax/vecmath/Matrix4d;->m03:D

    move-wide/from16 v19, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double v21, v11, v5

    add-double v7, v7, v21

    move-wide/from16 v21, v7

    .line 61
    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double v23, v3, v7

    move-wide/from16 v25, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v27, v9, v7

    add-double v23, v23, v27

    move-wide/from16 v27, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v29, v13, v7

    add-double v23, v23, v29

    move-wide/from16 v29, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double v31, v11, v7

    move-wide/from16 v33, v7

    add-double v7, v23, v31

    move-wide/from16 v23, v7

    .line 62
    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double v31, v3, v7

    move-wide/from16 v35, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v37, v9, v7

    add-double v31, v31, v37

    move-wide/from16 v37, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double v39, v13, v7

    add-double v31, v31, v39

    move-wide/from16 v39, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double v41, v11, v7

    move-wide/from16 v43, v7

    add-double v7, v31, v41

    move-wide/from16 v31, v7

    .line 63
    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m03:D

    mul-double/2addr v3, v7

    move-wide/from16 v41, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double/2addr v9, v7

    add-double/2addr v3, v9

    iget-wide v9, v2, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double/2addr v13, v9

    add-double/2addr v3, v13

    iget-wide v13, v2, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double/2addr v11, v13

    add-double/2addr v3, v11

    .line 64
    iget-wide v11, v1, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double v45, v11, v19

    move-wide/from16 v47, v3

    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v49, v2, v15

    add-double v45, v45, v49

    move-wide/from16 v49, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v51, v13, v17

    add-double v45, v45, v51

    move-wide/from16 v51, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double v53, v9, v5

    move-wide/from16 v55, v5

    add-double v4, v45, v53

    mul-double v45, v11, v25

    mul-double v53, v2, v27

    add-double v45, v45, v53

    mul-double v53, v13, v29

    add-double v45, v45, v53

    mul-double v53, v9, v33

    move-wide/from16 v57, v4

    add-double v4, v45, v53

    mul-double v45, v11, v35

    mul-double v53, v2, v37

    add-double v45, v45, v53

    mul-double v53, v13, v39

    add-double v45, v45, v53

    mul-double v53, v9, v43

    move-wide/from16 v59, v4

    add-double v4, v45, v53

    mul-double v11, v11, v41

    mul-double/2addr v2, v7

    add-double/2addr v11, v2

    mul-double v13, v13, v51

    add-double/2addr v11, v13

    mul-double v9, v9, v49

    add-double/2addr v11, v9

    .line 65
    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v9, v2, v19

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v45, v13, v15

    add-double v9, v9, v45

    move-wide/from16 v45, v11

    iget-wide v11, v1, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double v53, v11, v17

    add-double v9, v9, v53

    move-wide/from16 v53, v4

    iget-wide v4, v1, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double v61, v4, v55

    add-double v9, v9, v61

    mul-double v61, v2, v25

    mul-double v63, v13, v27

    add-double v61, v61, v63

    mul-double v63, v11, v29

    add-double v61, v61, v63

    mul-double v63, v4, v33

    move-wide/from16 v65, v9

    add-double v9, v61, v63

    mul-double v61, v2, v35

    mul-double v63, v13, v37

    add-double v61, v61, v63

    mul-double v63, v11, v39

    add-double v61, v61, v63

    mul-double v63, v4, v43

    move-wide/from16 v67, v9

    add-double v9, v61, v63

    mul-double v2, v2, v41

    mul-double/2addr v13, v7

    add-double/2addr v2, v13

    mul-double v11, v11, v51

    add-double/2addr v2, v11

    mul-double v4, v4, v49

    add-double/2addr v2, v4

    .line 66
    iget-wide v4, v1, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double v11, v4, v19

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    move-wide v15, v2

    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double v17, v17, v2

    add-double v11, v11, v17

    move-wide/from16 v17, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double v19, v9, v55

    add-double v11, v11, v19

    mul-double v19, v4, v25

    mul-double v25, v13, v27

    add-double v19, v19, v25

    mul-double v25, v2, v29

    add-double v19, v19, v25

    mul-double v25, v9, v33

    move-wide/from16 p1, v11

    add-double v11, v19, v25

    mul-double v19, v4, v35

    mul-double v25, v13, v37

    add-double v19, v19, v25

    mul-double v25, v2, v39

    add-double v19, v19, v25

    mul-double v25, v9, v43

    move-wide/from16 v27, v11

    add-double v11, v19, v25

    mul-double v4, v4, v41

    mul-double/2addr v13, v7

    add-double/2addr v4, v13

    mul-double v2, v2, v51

    add-double/2addr v4, v2

    mul-double v9, v9, v49

    add-double/2addr v4, v9

    move-wide/from16 v7, v21

    .line 67
    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m00:D

    move-wide/from16 v1, v23

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m01:D

    move-wide/from16 v1, v31

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m02:D

    move-wide/from16 v1, v47

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m03:D

    move-wide/from16 v1, v57

    .line 68
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m10:D

    move-wide/from16 v1, v59

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m11:D

    move-wide/from16 v1, v53

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m12:D

    move-wide/from16 v1, v45

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m13:D

    move-wide/from16 v9, v65

    .line 69
    iput-wide v9, v0, Ljavax/vecmath/Matrix4d;->m20:D

    move-wide/from16 v1, v67

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m21:D

    move-wide/from16 v1, v17

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m22:D

    move-wide v2, v15

    iput-wide v2, v0, Ljavax/vecmath/Matrix4d;->m23:D

    move-wide/from16 v1, p1

    .line 70
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m30:D

    move-wide/from16 v1, v27

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m31:D

    iput-wide v11, v0, Ljavax/vecmath/Matrix4d;->m32:D

    iput-wide v4, v0, Ljavax/vecmath/Matrix4d;->m33:D

    :goto_0
    return-void
.end method

.method public final mulTransposeBoth(Ljavax/vecmath/Matrix4d;Ljavax/vecmath/Matrix4d;)V
    .locals 69

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m00:D

    mul-double/2addr v3, v5

    iget-wide v5, v1, Ljavax/vecmath/Matrix4d;->m10:D

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double/2addr v7, v5

    add-double/2addr v3, v7

    iget-wide v7, v1, Ljavax/vecmath/Matrix4d;->m20:D

    iget-wide v9, v2, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double/2addr v9, v7

    add-double/2addr v3, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m30:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m03:D

    mul-double/2addr v11, v9

    add-double/2addr v3, v11

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double/2addr v11, v3

    iget-wide v13, v2, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v15, v5, v13

    add-double/2addr v11, v15

    move-wide v15, v13

    iget-wide v13, v2, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v17, v7, v13

    add-double v11, v11, v17

    move-wide/from16 v17, v13

    iget-wide v13, v2, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double v19, v9, v13

    add-double v11, v11, v19

    iput-wide v11, v0, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v19, v3, v11

    move-wide/from16 v21, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v23, v5, v11

    add-double v19, v19, v23

    move-wide/from16 v23, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double v25, v7, v11

    add-double v19, v19, v25

    move-wide/from16 v25, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double v27, v9, v11

    move-wide/from16 v29, v11

    add-double v11, v19, v27

    iput-wide v11, v0, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double/2addr v3, v11

    move-wide/from16 v19, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double/2addr v5, v11

    add-double/2addr v3, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double/2addr v7, v5

    add-double/2addr v3, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double/2addr v9, v7

    add-double/2addr v3, v9

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m03:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v9, v2, Ljavax/vecmath/Matrix4d;->m00:D

    mul-double v27, v3, v9

    move-wide/from16 v31, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m11:D

    move-wide/from16 v33, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double v35, v9, v7

    add-double v27, v27, v35

    move-wide/from16 v35, v7

    iget-wide v7, v1, Ljavax/vecmath/Matrix4d;->m21:D

    move-wide/from16 v37, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double v39, v7, v5

    add-double v27, v27, v39

    move-wide/from16 v39, v5

    iget-wide v5, v1, Ljavax/vecmath/Matrix4d;->m31:D

    move-wide/from16 v41, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m03:D

    mul-double v43, v5, v11

    move-wide/from16 v45, v11

    add-double v11, v27, v43

    iput-wide v11, v0, Ljavax/vecmath/Matrix4d;->m10:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double v27, v3, v11

    mul-double/2addr v9, v15

    add-double v27, v27, v9

    mul-double v9, v7, v17

    add-double v27, v27, v9

    mul-double/2addr v13, v5

    add-double v9, v27, v13

    iput-wide v9, v0, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v9, v3, v21

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v15, v13, v23

    add-double/2addr v9, v15

    mul-double v15, v7, v25

    add-double/2addr v9, v15

    mul-double v15, v5, v29

    add-double/2addr v9, v15

    iput-wide v9, v0, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v3, v3, v19

    mul-double v13, v13, v41

    add-double/2addr v3, v13

    mul-double v7, v7, v37

    add-double/2addr v3, v7

    mul-double v5, v5, v33

    add-double/2addr v3, v5

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m13:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double v9, v3, v31

    iget-wide v5, v1, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v7, v5, v35

    add-double/2addr v9, v7

    iget-wide v7, v1, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double v13, v7, v39

    add-double/2addr v9, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double v15, v13, v45

    add-double/2addr v9, v15

    iput-wide v9, v0, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v9, v3, v11

    move-wide v15, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v17, v5, v11

    add-double v9, v9, v17

    move-wide/from16 v17, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v21, v7, v11

    add-double v9, v9, v21

    move-wide/from16 v21, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double v23, v13, v11

    add-double v9, v9, v23

    iput-wide v9, v0, Ljavax/vecmath/Matrix4d;->m21:D

    iget-wide v9, v2, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v23, v3, v9

    move-wide/from16 v27, v9

    iget-wide v9, v2, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v43, v5, v9

    add-double v23, v23, v43

    mul-double v7, v7, v25

    add-double v23, v23, v7

    mul-double v7, v13, v29

    add-double v7, v23, v7

    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double v3, v3, v19

    mul-double v5, v5, v41

    add-double/2addr v3, v5

    iget-wide v5, v1, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double v5, v5, v37

    add-double/2addr v3, v5

    mul-double v13, v13, v33

    add-double/2addr v3, v13

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m23:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m03:D

    mul-double v5, v3, v31

    iget-wide v7, v1, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double v13, v7, v35

    add-double/2addr v5, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double v19, v13, v39

    add-double v5, v5, v19

    iget-wide v1, v1, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double v19, v1, v45

    add-double v5, v5, v19

    iput-wide v5, v0, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double v5, v3, v15

    mul-double v15, v7, v17

    add-double/2addr v5, v15

    mul-double v15, v13, v21

    add-double/2addr v5, v15

    mul-double/2addr v11, v1

    add-double/2addr v5, v11

    iput-wide v5, v0, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double v5, v3, v27

    mul-double/2addr v9, v7

    add-double/2addr v5, v9

    move-wide v9, v1

    move-object/from16 v2, p2

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double/2addr v11, v13

    add-double/2addr v5, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double/2addr v11, v9

    add-double/2addr v5, v11

    iput-wide v5, v0, Ljavax/vecmath/Matrix4d;->m32:D

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double/2addr v3, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double/2addr v7, v5

    add-double/2addr v3, v7

    iget-wide v1, v2, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double/2addr v13, v1

    add-double/2addr v3, v13

    mul-double v1, v9, v33

    add-double/2addr v3, v1

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m33:D

    goto/16 :goto_0

    :cond_0
    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m00:D

    mul-double v7, v3, v5

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m10:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double v13, v9, v11

    add-double/2addr v7, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m20:D

    move-wide v15, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double v17, v13, v11

    add-double v7, v7, v17

    move-wide/from16 v17, v11

    iget-wide v11, v1, Ljavax/vecmath/Matrix4d;->m30:D

    move-wide/from16 v19, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m03:D

    mul-double v21, v11, v5

    add-double v7, v7, v21

    move-wide/from16 v21, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double v23, v3, v7

    move-wide/from16 v25, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v27, v9, v7

    add-double v23, v23, v27

    move-wide/from16 v27, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v29, v13, v7

    add-double v23, v23, v29

    move-wide/from16 v29, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double v31, v11, v7

    move-wide/from16 v33, v7

    add-double v7, v23, v31

    move-wide/from16 v23, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v31, v3, v7

    move-wide/from16 v35, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v37, v9, v7

    add-double v31, v31, v37

    move-wide/from16 v37, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double v39, v13, v7

    add-double v31, v31, v39

    move-wide/from16 v39, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double v41, v11, v7

    move-wide/from16 v43, v7

    add-double v7, v31, v41

    move-wide/from16 v31, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double/2addr v3, v7

    move-wide/from16 v41, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double/2addr v9, v7

    add-double/2addr v3, v9

    iget-wide v9, v2, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double/2addr v13, v9

    add-double/2addr v3, v13

    iget-wide v13, v2, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double/2addr v11, v13

    add-double/2addr v3, v11

    iget-wide v11, v1, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double v45, v11, v19

    move-wide/from16 v47, v3

    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v49, v2, v15

    add-double v45, v45, v49

    move-wide/from16 v49, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v51, v13, v17

    add-double v45, v45, v51

    move-wide/from16 v51, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double v53, v9, v5

    move-wide/from16 v55, v5

    add-double v4, v45, v53

    mul-double v45, v11, v25

    mul-double v53, v2, v27

    add-double v45, v45, v53

    mul-double v53, v13, v29

    add-double v45, v45, v53

    mul-double v53, v9, v33

    move-wide/from16 v57, v4

    add-double v4, v45, v53

    mul-double v45, v11, v35

    mul-double v53, v2, v37

    add-double v45, v45, v53

    mul-double v53, v13, v39

    add-double v45, v45, v53

    mul-double v53, v9, v43

    move-wide/from16 v59, v4

    add-double v4, v45, v53

    mul-double v11, v11, v41

    mul-double/2addr v2, v7

    add-double/2addr v11, v2

    mul-double v13, v13, v51

    add-double/2addr v11, v13

    mul-double v9, v9, v49

    add-double/2addr v11, v9

    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double v9, v2, v19

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v45, v13, v15

    add-double v9, v9, v45

    move-wide/from16 v45, v11

    iget-wide v11, v1, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double v53, v11, v17

    add-double v9, v9, v53

    move-wide/from16 v53, v4

    iget-wide v4, v1, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double v61, v4, v55

    add-double v9, v9, v61

    mul-double v61, v2, v25

    mul-double v63, v13, v27

    add-double v61, v61, v63

    mul-double v63, v11, v29

    add-double v61, v61, v63

    mul-double v63, v4, v33

    move-wide/from16 v65, v9

    add-double v9, v61, v63

    mul-double v61, v2, v35

    mul-double v63, v13, v37

    add-double v61, v61, v63

    mul-double v63, v11, v39

    add-double v61, v61, v63

    mul-double v63, v4, v43

    move-wide/from16 v67, v9

    add-double v9, v61, v63

    mul-double v2, v2, v41

    mul-double/2addr v13, v7

    add-double/2addr v2, v13

    mul-double v11, v11, v51

    add-double/2addr v2, v11

    mul-double v4, v4, v49

    add-double/2addr v2, v4

    iget-wide v4, v1, Ljavax/vecmath/Matrix4d;->m03:D

    mul-double v11, v4, v19

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    move-wide v15, v2

    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double v17, v17, v2

    add-double v11, v11, v17

    move-wide/from16 v17, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double v19, v9, v55

    add-double v11, v11, v19

    mul-double v19, v4, v25

    mul-double v25, v13, v27

    add-double v19, v19, v25

    mul-double v25, v2, v29

    add-double v19, v19, v25

    mul-double v25, v9, v33

    move-wide/from16 p1, v11

    add-double v11, v19, v25

    mul-double v19, v4, v35

    mul-double v25, v13, v37

    add-double v19, v19, v25

    mul-double v25, v2, v39

    add-double v19, v19, v25

    mul-double v25, v9, v43

    move-wide/from16 v27, v11

    add-double v11, v19, v25

    mul-double v4, v4, v41

    mul-double/2addr v13, v7

    add-double/2addr v4, v13

    mul-double v2, v2, v51

    add-double/2addr v4, v2

    mul-double v9, v9, v49

    add-double/2addr v4, v9

    move-wide/from16 v7, v21

    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m00:D

    move-wide/from16 v1, v23

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m01:D

    move-wide/from16 v1, v31

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m02:D

    move-wide/from16 v1, v47

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m03:D

    move-wide/from16 v1, v57

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m10:D

    move-wide/from16 v1, v59

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m11:D

    move-wide/from16 v1, v53

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m12:D

    move-wide/from16 v1, v45

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m13:D

    move-wide/from16 v9, v65

    iput-wide v9, v0, Ljavax/vecmath/Matrix4d;->m20:D

    move-wide/from16 v1, v67

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m21:D

    move-wide/from16 v1, v17

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m22:D

    move-wide v2, v15

    iput-wide v2, v0, Ljavax/vecmath/Matrix4d;->m23:D

    move-wide/from16 v1, p1

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m30:D

    move-wide/from16 v1, v27

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m31:D

    iput-wide v11, v0, Ljavax/vecmath/Matrix4d;->m32:D

    iput-wide v4, v0, Ljavax/vecmath/Matrix4d;->m33:D

    :goto_0
    return-void
.end method

.method public final mulTransposeLeft(Ljavax/vecmath/Matrix4d;Ljavax/vecmath/Matrix4d;)V
    .locals 69

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m00:D

    mul-double/2addr v3, v5

    iget-wide v5, v1, Ljavax/vecmath/Matrix4d;->m10:D

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double v9, v5, v7

    add-double/2addr v3, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m20:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v13, v9, v11

    add-double/2addr v3, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m30:D

    move-wide v15, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double v17, v13, v11

    add-double v3, v3, v17

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m00:D

    move-wide/from16 v17, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double/2addr v11, v3

    move-wide/from16 v19, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v21, v5, v7

    add-double v11, v11, v21

    move-wide/from16 v21, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v23, v9, v7

    add-double v11, v11, v23

    move-wide/from16 v23, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double v25, v13, v7

    add-double v11, v11, v25

    iput-wide v11, v0, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double/2addr v11, v3

    move-wide/from16 v25, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v27, v5, v7

    add-double v11, v11, v27

    move-wide/from16 v27, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double v29, v9, v7

    add-double v11, v11, v29

    move-wide/from16 v29, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double v31, v13, v7

    add-double v11, v11, v31

    iput-wide v11, v0, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m03:D

    mul-double/2addr v3, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double/2addr v5, v11

    add-double/2addr v3, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double/2addr v9, v5

    add-double/2addr v3, v9

    iget-wide v9, v2, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double/2addr v13, v9

    add-double/2addr v3, v13

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m03:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v13, v2, Ljavax/vecmath/Matrix4d;->m00:D

    mul-double v31, v3, v13

    move-wide/from16 v33, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v19, v19, v13

    add-double v31, v31, v19

    move-wide/from16 v19, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v35, v9, v15

    add-double v31, v31, v35

    move-wide/from16 v35, v5

    iget-wide v5, v1, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double v37, v5, v17

    move-wide/from16 v39, v11

    add-double v11, v31, v37

    iput-wide v11, v0, Ljavax/vecmath/Matrix4d;->m10:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double v31, v3, v11

    mul-double v13, v13, v21

    add-double v31, v31, v13

    mul-double v13, v9, v23

    add-double v31, v31, v13

    mul-double v13, v5, v25

    add-double v13, v31, v13

    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m11:D

    iget-wide v13, v2, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double v21, v3, v13

    move-wide/from16 v31, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v27, v27, v13

    add-double v21, v21, v27

    mul-double v27, v9, v29

    add-double v21, v21, v27

    mul-double v27, v5, v7

    move-wide/from16 v37, v7

    add-double v7, v21, v27

    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m12:D

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m03:D

    mul-double/2addr v3, v7

    mul-double v13, v13, v39

    add-double/2addr v3, v13

    mul-double v9, v9, v35

    add-double/2addr v3, v9

    mul-double v5, v5, v19

    add-double/2addr v3, v5

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m13:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double v13, v3, v33

    iget-wide v5, v1, Ljavax/vecmath/Matrix4d;->m12:D

    iget-wide v9, v2, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double v21, v5, v9

    add-double v13, v13, v21

    move-wide/from16 v21, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double/2addr v15, v9

    add-double/2addr v13, v15

    move-wide v15, v7

    iget-wide v7, v1, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double v27, v7, v17

    add-double v13, v13, v27

    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v13, v3, v11

    move-wide/from16 v27, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v39, v5, v11

    add-double v13, v13, v39

    mul-double v23, v23, v9

    add-double v13, v13, v23

    mul-double v23, v7, v25

    add-double v13, v13, v23

    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v13, v3, v31

    move-wide/from16 v23, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v39, v5, v11

    add-double v13, v13, v39

    mul-double v9, v9, v29

    add-double/2addr v13, v9

    mul-double v9, v7, v37

    add-double/2addr v13, v9

    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double/2addr v3, v15

    iget-wide v9, v2, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double/2addr v5, v9

    add-double/2addr v3, v5

    iget-wide v5, v1, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double v5, v5, v35

    add-double/2addr v3, v5

    mul-double v7, v7, v19

    add-double/2addr v3, v7

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m23:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m03:D

    mul-double v13, v3, v33

    iget-wide v5, v1, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double v7, v5, v21

    add-double/2addr v13, v7

    iget-wide v7, v1, Ljavax/vecmath/Matrix4d;->m23:D

    move-wide/from16 v21, v9

    iget-wide v9, v2, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double/2addr v9, v7

    add-double/2addr v13, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double v17, v17, v9

    add-double v13, v13, v17

    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double v13, v3, v27

    mul-double v17, v5, v23

    add-double v13, v13, v17

    move-wide/from16 v17, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double/2addr v5, v7

    add-double/2addr v13, v5

    mul-double v5, v9, v25

    add-double/2addr v13, v5

    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double v13, v3, v31

    mul-double v5, v17, v11

    add-double/2addr v13, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double/2addr v5, v7

    add-double/2addr v13, v5

    mul-double v5, v9, v37

    add-double/2addr v13, v5

    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double/2addr v3, v15

    mul-double v5, v17, v21

    add-double/2addr v3, v5

    iget-wide v1, v2, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double/2addr v7, v1

    add-double/2addr v3, v7

    mul-double v9, v9, v19

    add-double/2addr v3, v9

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m33:D

    goto/16 :goto_0

    :cond_0
    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m00:D

    mul-double v7, v3, v5

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m10:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double v13, v9, v11

    add-double/2addr v7, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m20:D

    move-wide v15, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v17, v13, v11

    add-double v7, v7, v17

    move-wide/from16 v17, v11

    iget-wide v11, v1, Ljavax/vecmath/Matrix4d;->m30:D

    move-wide/from16 v19, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double v21, v11, v5

    add-double v7, v7, v21

    move-wide/from16 v21, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double v23, v3, v7

    move-wide/from16 v25, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v27, v9, v7

    add-double v23, v23, v27

    move-wide/from16 v27, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v29, v13, v7

    add-double v23, v23, v29

    move-wide/from16 v29, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double v31, v11, v7

    move-wide/from16 v33, v7

    add-double v7, v23, v31

    move-wide/from16 v23, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double v31, v3, v7

    move-wide/from16 v35, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v37, v9, v7

    add-double v31, v31, v37

    move-wide/from16 v37, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double v39, v13, v7

    add-double v31, v31, v39

    move-wide/from16 v39, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double v41, v11, v7

    move-wide/from16 v43, v7

    add-double v7, v31, v41

    move-wide/from16 v31, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m03:D

    mul-double/2addr v3, v7

    move-wide/from16 v41, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double/2addr v9, v7

    add-double/2addr v3, v9

    iget-wide v9, v2, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double/2addr v13, v9

    add-double/2addr v3, v13

    iget-wide v13, v2, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double/2addr v11, v13

    add-double/2addr v3, v11

    iget-wide v11, v1, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double v45, v11, v19

    move-wide/from16 v47, v3

    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v49, v2, v15

    add-double v45, v45, v49

    move-wide/from16 v49, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v51, v13, v17

    add-double v45, v45, v51

    move-wide/from16 v51, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double v53, v9, v5

    move-wide/from16 v55, v5

    add-double v4, v45, v53

    mul-double v45, v11, v25

    mul-double v53, v2, v27

    add-double v45, v45, v53

    mul-double v53, v13, v29

    add-double v45, v45, v53

    mul-double v53, v9, v33

    move-wide/from16 v57, v4

    add-double v4, v45, v53

    mul-double v45, v11, v35

    mul-double v53, v2, v37

    add-double v45, v45, v53

    mul-double v53, v13, v39

    add-double v45, v45, v53

    mul-double v53, v9, v43

    move-wide/from16 v59, v4

    add-double v4, v45, v53

    mul-double v11, v11, v41

    mul-double/2addr v2, v7

    add-double/2addr v11, v2

    mul-double v13, v13, v51

    add-double/2addr v11, v13

    mul-double v9, v9, v49

    add-double/2addr v11, v9

    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double v9, v2, v19

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v45, v13, v15

    add-double v9, v9, v45

    move-wide/from16 v45, v11

    iget-wide v11, v1, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double v53, v11, v17

    add-double v9, v9, v53

    move-wide/from16 v53, v4

    iget-wide v4, v1, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double v61, v4, v55

    add-double v9, v9, v61

    mul-double v61, v2, v25

    mul-double v63, v13, v27

    add-double v61, v61, v63

    mul-double v63, v11, v29

    add-double v61, v61, v63

    mul-double v63, v4, v33

    move-wide/from16 v65, v9

    add-double v9, v61, v63

    mul-double v61, v2, v35

    mul-double v63, v13, v37

    add-double v61, v61, v63

    mul-double v63, v11, v39

    add-double v61, v61, v63

    mul-double v63, v4, v43

    move-wide/from16 v67, v9

    add-double v9, v61, v63

    mul-double v2, v2, v41

    mul-double/2addr v13, v7

    add-double/2addr v2, v13

    mul-double v11, v11, v51

    add-double/2addr v2, v11

    mul-double v4, v4, v49

    add-double/2addr v2, v4

    iget-wide v4, v1, Ljavax/vecmath/Matrix4d;->m03:D

    mul-double v11, v4, v19

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    move-wide v15, v2

    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double v17, v17, v2

    add-double v11, v11, v17

    move-wide/from16 v17, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double v19, v9, v55

    add-double v11, v11, v19

    mul-double v19, v4, v25

    mul-double v25, v13, v27

    add-double v19, v19, v25

    mul-double v25, v2, v29

    add-double v19, v19, v25

    mul-double v25, v9, v33

    move-wide/from16 p1, v11

    add-double v11, v19, v25

    mul-double v19, v4, v35

    mul-double v25, v13, v37

    add-double v19, v19, v25

    mul-double v25, v2, v39

    add-double v19, v19, v25

    mul-double v25, v9, v43

    move-wide/from16 v27, v11

    add-double v11, v19, v25

    mul-double v4, v4, v41

    mul-double/2addr v13, v7

    add-double/2addr v4, v13

    mul-double v2, v2, v51

    add-double/2addr v4, v2

    mul-double v9, v9, v49

    add-double/2addr v4, v9

    move-wide/from16 v7, v21

    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m00:D

    move-wide/from16 v1, v23

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m01:D

    move-wide/from16 v1, v31

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m02:D

    move-wide/from16 v1, v47

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m03:D

    move-wide/from16 v1, v57

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m10:D

    move-wide/from16 v1, v59

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m11:D

    move-wide/from16 v1, v53

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m12:D

    move-wide/from16 v1, v45

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m13:D

    move-wide/from16 v9, v65

    iput-wide v9, v0, Ljavax/vecmath/Matrix4d;->m20:D

    move-wide/from16 v1, v67

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m21:D

    move-wide/from16 v1, v17

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m22:D

    move-wide v2, v15

    iput-wide v2, v0, Ljavax/vecmath/Matrix4d;->m23:D

    move-wide/from16 v1, p1

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m30:D

    move-wide/from16 v1, v27

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m31:D

    iput-wide v11, v0, Ljavax/vecmath/Matrix4d;->m32:D

    iput-wide v4, v0, Ljavax/vecmath/Matrix4d;->m33:D

    :goto_0
    return-void
.end method

.method public final mulTransposeRight(Ljavax/vecmath/Matrix4d;Ljavax/vecmath/Matrix4d;)V
    .locals 69

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m00:D

    mul-double/2addr v3, v5

    iget-wide v5, v1, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double/2addr v7, v5

    add-double/2addr v3, v7

    iget-wide v7, v1, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v9, v2, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double/2addr v9, v7

    add-double/2addr v3, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m03:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m03:D

    mul-double/2addr v11, v9

    add-double/2addr v3, v11

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double/2addr v11, v3

    iget-wide v13, v2, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double/2addr v5, v13

    add-double/2addr v11, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v15, v7, v5

    add-double/2addr v11, v15

    move-wide v15, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double v17, v9, v5

    add-double v11, v11, v17

    iput-wide v11, v0, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v17, v3, v11

    move-wide/from16 v19, v11

    iget-wide v11, v1, Ljavax/vecmath/Matrix4d;->m01:D

    move-wide/from16 v21, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v23, v11, v5

    add-double v17, v17, v23

    move-wide/from16 v23, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double/2addr v7, v5

    add-double v17, v17, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double v25, v9, v7

    move-wide/from16 v27, v7

    add-double v7, v17, v25

    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double/2addr v3, v7

    move-wide/from16 v17, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double/2addr v11, v7

    add-double/2addr v3, v11

    iget-wide v11, v1, Ljavax/vecmath/Matrix4d;->m02:D

    move-wide/from16 v25, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double/2addr v11, v7

    add-double/2addr v3, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double/2addr v9, v11

    add-double/2addr v3, v9

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m03:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m10:D

    iget-wide v9, v2, Ljavax/vecmath/Matrix4d;->m00:D

    mul-double/2addr v3, v9

    move-wide/from16 v29, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m11:D

    move-wide/from16 v31, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double v33, v9, v11

    add-double v3, v3, v33

    move-wide/from16 v33, v11

    iget-wide v11, v1, Ljavax/vecmath/Matrix4d;->m12:D

    move-wide/from16 v35, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double v37, v11, v7

    add-double v3, v3, v37

    move-wide/from16 v37, v7

    iget-wide v7, v1, Ljavax/vecmath/Matrix4d;->m13:D

    move-wide/from16 v39, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m03:D

    mul-double v41, v7, v5

    add-double v3, v3, v41

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m10:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m10:D

    move-wide/from16 v41, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double v43, v3, v5

    mul-double/2addr v9, v13

    add-double v43, v43, v9

    mul-double v9, v11, v15

    add-double v43, v43, v9

    mul-double v9, v7, v21

    add-double v9, v43, v9

    iput-wide v9, v0, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v9, v3, v19

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v15, v13, v23

    add-double/2addr v9, v15

    mul-double v11, v11, v39

    add-double/2addr v9, v11

    mul-double v11, v7, v27

    add-double/2addr v9, v11

    iput-wide v9, v0, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v3, v3, v17

    mul-double v13, v13, v25

    add-double/2addr v3, v13

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v9, v9, v35

    add-double/2addr v3, v9

    mul-double v7, v7, v31

    add-double/2addr v3, v7

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m13:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v3, v3, v29

    iget-wide v7, v1, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v11, v7, v33

    add-double/2addr v3, v11

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double v11, v9, v37

    add-double/2addr v3, v11

    iget-wide v11, v1, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double v13, v11, v41

    add-double/2addr v3, v13

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m20:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v13, v3, v5

    move-wide v15, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double/2addr v7, v5

    add-double/2addr v13, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v19, v9, v7

    add-double v13, v13, v19

    move-wide/from16 v19, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double v21, v11, v7

    add-double v13, v13, v21

    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m21:D

    iget-wide v13, v2, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v21, v3, v13

    move-wide/from16 v23, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m21:D

    move-wide/from16 v43, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v45, v13, v7

    add-double v21, v21, v45

    mul-double v9, v9, v39

    add-double v21, v21, v9

    mul-double v9, v11, v27

    add-double v9, v21, v9

    iput-wide v9, v0, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double v3, v3, v17

    mul-double v13, v13, v25

    add-double/2addr v3, v13

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double v9, v9, v35

    add-double/2addr v3, v9

    mul-double v11, v11, v31

    add-double/2addr v3, v11

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m23:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double v3, v3, v29

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double v11, v9, v33

    add-double/2addr v3, v11

    iget-wide v11, v1, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double v13, v11, v37

    add-double/2addr v3, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double v17, v13, v41

    add-double v3, v3, v17

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m30:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double/2addr v15, v3

    mul-double/2addr v9, v5

    add-double/2addr v15, v9

    mul-double v5, v11, v19

    add-double/2addr v15, v5

    mul-double v5, v13, v43

    add-double/2addr v5, v15

    iput-wide v5, v0, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double v5, v3, v23

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double/2addr v11, v7

    add-double/2addr v5, v11

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double/2addr v7, v13

    add-double/2addr v5, v7

    iput-wide v5, v0, Ljavax/vecmath/Matrix4d;->m32:D

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double/2addr v3, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double/2addr v9, v5

    add-double/2addr v3, v9

    iget-wide v5, v1, Ljavax/vecmath/Matrix4d;->m32:D

    iget-wide v1, v2, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    mul-double v13, v13, v31

    add-double/2addr v3, v13

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m33:D

    goto/16 :goto_0

    :cond_0
    iget-wide v3, v1, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m00:D

    mul-double v7, v3, v5

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double v13, v9, v11

    add-double/2addr v7, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m02:D

    move-wide v15, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double v17, v13, v11

    add-double v7, v7, v17

    move-wide/from16 v17, v11

    iget-wide v11, v1, Ljavax/vecmath/Matrix4d;->m03:D

    move-wide/from16 v19, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix4d;->m03:D

    mul-double v21, v11, v5

    add-double v7, v7, v21

    move-wide/from16 v21, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double v23, v3, v7

    move-wide/from16 v25, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v27, v9, v7

    add-double v23, v23, v27

    move-wide/from16 v27, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v29, v13, v7

    add-double v23, v23, v29

    move-wide/from16 v29, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double v31, v11, v7

    move-wide/from16 v33, v7

    add-double v7, v23, v31

    move-wide/from16 v23, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v31, v3, v7

    move-wide/from16 v35, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v37, v9, v7

    add-double v31, v31, v37

    move-wide/from16 v37, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double v39, v13, v7

    add-double v31, v31, v39

    move-wide/from16 v39, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double v41, v11, v7

    move-wide/from16 v43, v7

    add-double v7, v31, v41

    move-wide/from16 v31, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double/2addr v3, v7

    move-wide/from16 v41, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double/2addr v9, v7

    add-double/2addr v3, v9

    iget-wide v9, v2, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double/2addr v13, v9

    add-double/2addr v3, v13

    iget-wide v13, v2, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double/2addr v11, v13

    add-double/2addr v3, v11

    iget-wide v11, v1, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double v45, v11, v19

    move-wide/from16 v47, v3

    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v49, v2, v15

    add-double v45, v45, v49

    move-wide/from16 v49, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v51, v13, v17

    add-double v45, v45, v51

    move-wide/from16 v51, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double v53, v9, v5

    move-wide/from16 v55, v5

    add-double v4, v45, v53

    mul-double v45, v11, v25

    mul-double v53, v2, v27

    add-double v45, v45, v53

    mul-double v53, v13, v29

    add-double v45, v45, v53

    mul-double v53, v9, v33

    move-wide/from16 v57, v4

    add-double v4, v45, v53

    mul-double v45, v11, v35

    mul-double v53, v2, v37

    add-double v45, v45, v53

    mul-double v53, v13, v39

    add-double v45, v45, v53

    mul-double v53, v9, v43

    move-wide/from16 v59, v4

    add-double v4, v45, v53

    mul-double v11, v11, v41

    mul-double/2addr v2, v7

    add-double/2addr v11, v2

    mul-double v13, v13, v51

    add-double/2addr v11, v13

    mul-double v9, v9, v49

    add-double/2addr v11, v9

    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v9, v2, v19

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v45, v13, v15

    add-double v9, v9, v45

    move-wide/from16 v45, v11

    iget-wide v11, v1, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double v53, v11, v17

    add-double v9, v9, v53

    move-wide/from16 v53, v4

    iget-wide v4, v1, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double v61, v4, v55

    add-double v9, v9, v61

    mul-double v61, v2, v25

    mul-double v63, v13, v27

    add-double v61, v61, v63

    mul-double v63, v11, v29

    add-double v61, v61, v63

    mul-double v63, v4, v33

    move-wide/from16 v65, v9

    add-double v9, v61, v63

    mul-double v61, v2, v35

    mul-double v63, v13, v37

    add-double v61, v61, v63

    mul-double v63, v11, v39

    add-double v61, v61, v63

    mul-double v63, v4, v43

    move-wide/from16 v67, v9

    add-double v9, v61, v63

    mul-double v2, v2, v41

    mul-double/2addr v13, v7

    add-double/2addr v2, v13

    mul-double v11, v11, v51

    add-double/2addr v2, v11

    mul-double v4, v4, v49

    add-double/2addr v2, v4

    iget-wide v4, v1, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double v11, v4, v19

    iget-wide v13, v1, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    move-wide v15, v2

    iget-wide v2, v1, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double v17, v17, v2

    add-double v11, v11, v17

    move-wide/from16 v17, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double v19, v9, v55

    add-double v11, v11, v19

    mul-double v19, v4, v25

    mul-double v25, v13, v27

    add-double v19, v19, v25

    mul-double v25, v2, v29

    add-double v19, v19, v25

    mul-double v25, v9, v33

    move-wide/from16 p1, v11

    add-double v11, v19, v25

    mul-double v19, v4, v35

    mul-double v25, v13, v37

    add-double v19, v19, v25

    mul-double v25, v2, v39

    add-double v19, v19, v25

    mul-double v25, v9, v43

    move-wide/from16 v27, v11

    add-double v11, v19, v25

    mul-double v4, v4, v41

    mul-double/2addr v13, v7

    add-double/2addr v4, v13

    mul-double v2, v2, v51

    add-double/2addr v4, v2

    mul-double v9, v9, v49

    add-double/2addr v4, v9

    move-wide/from16 v7, v21

    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m00:D

    move-wide/from16 v1, v23

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m01:D

    move-wide/from16 v1, v31

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m02:D

    move-wide/from16 v1, v47

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m03:D

    move-wide/from16 v1, v57

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m10:D

    move-wide/from16 v1, v59

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m11:D

    move-wide/from16 v1, v53

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m12:D

    move-wide/from16 v1, v45

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m13:D

    move-wide/from16 v9, v65

    iput-wide v9, v0, Ljavax/vecmath/Matrix4d;->m20:D

    move-wide/from16 v1, v67

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m21:D

    move-wide/from16 v1, v17

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m22:D

    move-wide v2, v15

    iput-wide v2, v0, Ljavax/vecmath/Matrix4d;->m23:D

    move-wide/from16 v1, p1

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m30:D

    move-wide/from16 v1, v27

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m31:D

    iput-wide v11, v0, Ljavax/vecmath/Matrix4d;->m32:D

    iput-wide v4, v0, Ljavax/vecmath/Matrix4d;->m33:D

    :goto_0
    return-void
.end method

.method public final negate()V
    .locals 2

    .line 1
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 2
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 3
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 4
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 5
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 8
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 9
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 10
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 11
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 12
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 13
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 14
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 15
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 16
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final negate(Ljavax/vecmath/Matrix4d;)V
    .locals 2

    .line 17
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m00:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 18
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m01:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 19
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m02:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 20
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m03:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 21
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m10:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 22
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m11:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 23
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m12:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 24
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m13:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 25
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m20:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 26
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m21:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 27
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m22:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 28
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m23:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 29
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m30:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 30
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m31:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 31
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m32:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 32
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m33:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final rotX(D)V
    .locals 8

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m00:D

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m03:D

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m10:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m11:D

    neg-double v6, v0

    iput-wide v6, p0, Ljavax/vecmath/Matrix4d;->m12:D

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m13:D

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m20:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m22:D

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m23:D

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m30:D

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m31:D

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m32:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final rotY(D)V
    .locals 6

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m00:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m03:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m10:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m11:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m12:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m13:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m21:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m22:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m23:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m30:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m31:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m32:D

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final rotZ(D)V
    .locals 4

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m00:D

    neg-double v2, v0

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m01:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m03:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m11:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m12:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m13:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m20:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m21:D

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m22:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m23:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m30:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m31:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m32:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final set(D)V
    .locals 2

    .line 199
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m00:D

    const-wide/16 v0, 0x0

    .line 200
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 201
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 202
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 203
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 204
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 205
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 206
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 207
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 208
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 209
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 210
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 211
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 212
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 213
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 214
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final set(DLjavax/vecmath/Vector3d;)V
    .locals 4

    .line 231
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m00:D

    const-wide/16 v0, 0x0

    .line 232
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 233
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 234
    iget-wide v2, p3, Ljavax/vecmath/Tuple3d;->x:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 235
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 236
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 237
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 238
    iget-wide v2, p3, Ljavax/vecmath/Tuple3d;->y:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 239
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 240
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 241
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 242
    iget-wide p1, p3, Ljavax/vecmath/Tuple3d;->z:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 243
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 244
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 245
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 246
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final set(Ljavax/vecmath/AxisAngle4d;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 41
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

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v4, v2, v4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v7, 0x0

    if-gez v4, :cond_0

    .line 42
    iput-wide v5, v0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 43
    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 44
    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 45
    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 46
    iput-wide v5, v0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 47
    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 48
    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 49
    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 50
    iput-wide v5, v0, Ljavax/vecmath/Matrix4d;->m22:D

    move-wide v1, v7

    goto :goto_0

    :cond_0
    div-double v2, v5, v2

    .line 51
    iget-wide v9, v1, Ljavax/vecmath/AxisAngle4d;->x:D

    mul-double/2addr v9, v2

    .line 52
    iget-wide v11, v1, Ljavax/vecmath/AxisAngle4d;->y:D

    mul-double/2addr v11, v2

    .line 53
    iget-wide v13, v1, Ljavax/vecmath/AxisAngle4d;->z:D

    mul-double/2addr v13, v2

    .line 54
    iget-wide v2, v1, Ljavax/vecmath/AxisAngle4d;->angle:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 55
    iget-wide v7, v1, Ljavax/vecmath/AxisAngle4d;->angle:D

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    sub-double v15, v5, v7

    mul-double v17, v9, v13

    mul-double v19, v9, v11

    mul-double v21, v11, v13

    mul-double v23, v15, v9

    mul-double v23, v23, v9

    add-double v5, v23, v7

    .line 56
    iput-wide v5, v0, Ljavax/vecmath/Matrix4d;->m00:D

    mul-double v19, v19, v15

    mul-double v4, v2, v13

    move-wide/from16 v23, v13

    sub-double v13, v19, v4

    .line 57
    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double v17, v17, v15

    mul-double v13, v2, v11

    move-wide/from16 v25, v2

    add-double v1, v17, v13

    .line 58
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m02:D

    add-double v1, v19, v4

    .line 59
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double v1, v15, v11

    mul-double/2addr v1, v11

    add-double/2addr v1, v7

    .line 60
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v21, v21, v15

    mul-double v2, v25, v9

    sub-double v4, v21, v2

    .line 61
    iput-wide v4, v0, Ljavax/vecmath/Matrix4d;->m12:D

    sub-double v4, v17, v13

    .line 62
    iput-wide v4, v0, Ljavax/vecmath/Matrix4d;->m20:D

    add-double v1, v21, v2

    .line 63
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v15, v15, v23

    mul-double v15, v15, v23

    add-double v1, v15, v7

    .line 64
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m22:D

    const-wide/16 v1, 0x0

    .line 65
    :goto_0
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 66
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 67
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 68
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 69
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 70
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m32:D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 71
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final set(Ljavax/vecmath/AxisAngle4f;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 88
    iget v2, v1, Ljavax/vecmath/AxisAngle4f;->x:F

    mul-float/2addr v2, v2

    iget v3, v1, Ljavax/vecmath/AxisAngle4f;->y:F

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    iget v3, v1, Ljavax/vecmath/AxisAngle4f;->z:F

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v4, v2, v4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v7, 0x0

    if-gez v4, :cond_0

    .line 89
    iput-wide v5, v0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 90
    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 91
    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 92
    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 93
    iput-wide v5, v0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 94
    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 95
    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 96
    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 97
    iput-wide v5, v0, Ljavax/vecmath/Matrix4d;->m22:D

    move-wide v1, v7

    goto :goto_0

    :cond_0
    div-double v2, v5, v2

    .line 98
    iget v4, v1, Ljavax/vecmath/AxisAngle4f;->x:F

    float-to-double v9, v4

    mul-double/2addr v9, v2

    .line 99
    iget v4, v1, Ljavax/vecmath/AxisAngle4f;->y:F

    float-to-double v11, v4

    mul-double/2addr v11, v2

    .line 100
    iget v4, v1, Ljavax/vecmath/AxisAngle4f;->z:F

    float-to-double v13, v4

    mul-double/2addr v13, v2

    .line 101
    iget v2, v1, Ljavax/vecmath/AxisAngle4f;->angle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 102
    iget v1, v1, Ljavax/vecmath/AxisAngle4f;->angle:F

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    sub-double v15, v5, v7

    mul-double v17, v9, v13

    mul-double v19, v9, v11

    mul-double v21, v11, v13

    mul-double v23, v15, v9

    mul-double v23, v23, v9

    add-double v5, v23, v7

    .line 103
    iput-wide v5, v0, Ljavax/vecmath/Matrix4d;->m00:D

    mul-double v19, v19, v15

    mul-double v4, v2, v13

    move-wide/from16 v23, v13

    sub-double v13, v19, v4

    .line 104
    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double v17, v17, v15

    mul-double v13, v2, v11

    move-wide/from16 v25, v2

    add-double v1, v17, v13

    .line 105
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m02:D

    add-double v1, v19, v4

    .line 106
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double v1, v15, v11

    mul-double/2addr v1, v11

    add-double/2addr v1, v7

    .line 107
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v21, v21, v15

    mul-double v2, v25, v9

    sub-double v4, v21, v2

    .line 108
    iput-wide v4, v0, Ljavax/vecmath/Matrix4d;->m12:D

    sub-double v4, v17, v13

    .line 109
    iput-wide v4, v0, Ljavax/vecmath/Matrix4d;->m20:D

    add-double v1, v21, v2

    .line 110
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v15, v15, v23

    mul-double v15, v15, v23

    add-double v1, v15, v7

    .line 111
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m22:D

    const-wide/16 v1, 0x0

    .line 112
    :goto_0
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 113
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 114
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 115
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 116
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 117
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m32:D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 118
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix3d;)V
    .locals 4

    .line 21
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m00:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m01:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m02:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 22
    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m10:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m10:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m11:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m11:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m12:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m12:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 23
    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m20:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m20:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m21:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m21:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m22:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m22:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 24
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix3d;Ljavax/vecmath/Vector3d;D)V
    .locals 2

    .line 279
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 280
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 281
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 282
    iget-wide v0, p2, Ljavax/vecmath/Tuple3d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 283
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 284
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 285
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 286
    iget-wide v0, p2, Ljavax/vecmath/Tuple3d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 287
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 288
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 289
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 290
    iget-wide p1, p2, Ljavax/vecmath/Tuple3d;->z:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m23:D

    const-wide/16 p1, 0x0

    .line 291
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 292
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 293
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m32:D

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 294
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix3f;)V
    .locals 4

    .line 17
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 18
    iget v2, p1, Ljavax/vecmath/Matrix3f;->m10:F

    float-to-double v2, v2

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m10:D

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m11:F

    float-to-double v2, v2

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m11:D

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m12:F

    float-to-double v2, v2

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m12:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 19
    iget v2, p1, Ljavax/vecmath/Matrix3f;->m20:F

    float-to-double v2, v2

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m20:D

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m21:F

    float-to-double v2, v2

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m21:D

    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    float-to-double v2, p1

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m22:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 20
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Vector3f;F)V
    .locals 2

    .line 263
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float/2addr v0, p3

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 264
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float/2addr v0, p3

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 265
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v0, p3

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 266
    iget v0, p2, Ljavax/vecmath/Tuple3f;->x:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 267
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float/2addr v0, p3

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 268
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v0, p3

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 269
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v0, p3

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 270
    iget v0, p2, Ljavax/vecmath/Tuple3f;->y:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 271
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v0, p3

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 272
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v0, p3

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 273
    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr p1, p3

    float-to-double v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 274
    iget p1, p2, Ljavax/vecmath/Tuple3f;->z:F

    float-to-double p1, p1

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m23:D

    const-wide/16 p1, 0x0

    .line 275
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 276
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 277
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m32:D

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 278
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix4d;)V
    .locals 2

    .line 183
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m00:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 184
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m01:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 185
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m02:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 186
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m03:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 187
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m10:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 188
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m11:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 189
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m12:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 190
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m13:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 191
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m20:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 192
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m21:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 193
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m22:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 194
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m23:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 195
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m30:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 196
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m31:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 197
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m32:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 198
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m33:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix4f;)V
    .locals 2

    .line 167
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m00:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 168
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m01:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 169
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m02:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 170
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m03:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 171
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m10:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 172
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m11:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 173
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m12:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 174
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m13:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 175
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m20:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 176
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m21:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 177
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m22:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 178
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m23:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 179
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m30:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 180
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m31:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 181
    iget v0, p1, Ljavax/vecmath/Matrix4f;->m32:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 182
    iget p1, p1, Ljavax/vecmath/Matrix4f;->m33:F

    float-to-double v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Quat4d;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 25
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

    iput-wide v6, v0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 26
    iget-wide v6, v1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double v12, v6, v2

    iget-wide v14, v1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double v16, v14, v10

    add-double v12, v12, v16

    mul-double/2addr v12, v4

    iput-wide v12, v0, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double v12, v6, v10

    mul-double v16, v14, v2

    sub-double v12, v12, v16

    mul-double/2addr v12, v4

    .line 27
    iput-wide v12, v0, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v12, v6, v2

    mul-double v16, v14, v10

    sub-double v12, v12, v16

    mul-double/2addr v12, v4

    .line 28
    iput-wide v12, v0, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double v12, v6, v4

    mul-double/2addr v12, v6

    sub-double v12, v8, v12

    mul-double v16, v10, v4

    mul-double v16, v16, v10

    sub-double v12, v12, v16

    .line 29
    iput-wide v12, v0, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v12, v2, v10

    mul-double v16, v14, v6

    add-double v12, v12, v16

    mul-double/2addr v12, v4

    .line 30
    iput-wide v12, v0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v12, v6, v10

    mul-double v16, v14, v2

    add-double v12, v12, v16

    mul-double/2addr v12, v4

    .line 31
    iput-wide v12, v0, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double/2addr v10, v2

    mul-double/2addr v14, v6

    sub-double/2addr v10, v14

    mul-double/2addr v10, v4

    .line 32
    iput-wide v10, v0, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v10, v6, v4

    mul-double/2addr v10, v6

    sub-double v6, v8, v10

    mul-double/2addr v4, v2

    mul-double/2addr v4, v2

    sub-double/2addr v6, v4

    .line 33
    iput-wide v6, v0, Ljavax/vecmath/Matrix4d;->m22:D

    const-wide/16 v1, 0x0

    .line 34
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 35
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 36
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 37
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 38
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 39
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 40
    iput-wide v8, v0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Quat4d;Ljavax/vecmath/Vector3d;D)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 119
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

    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 120
    iget-wide v7, v1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double v13, v7, v3

    iget-wide v9, v1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double v17, v9, v11

    add-double v13, v13, v17

    mul-double/2addr v13, v5

    mul-double v13, v13, p3

    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double v13, v7, v11

    mul-double v17, v9, v3

    sub-double v13, v13, v17

    mul-double/2addr v13, v5

    mul-double v13, v13, p3

    .line 121
    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v13, v7, v3

    mul-double v17, v9, v11

    sub-double v13, v13, v17

    mul-double/2addr v13, v5

    mul-double v13, v13, p3

    .line 122
    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double v13, v7, v5

    mul-double/2addr v13, v7

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    sub-double v13, v15, v13

    mul-double v17, v11, v5

    mul-double v17, v17, v11

    sub-double v13, v13, v17

    mul-double v13, v13, p3

    .line 123
    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v13, v3, v11

    mul-double v17, v9, v7

    add-double v13, v13, v17

    mul-double/2addr v13, v5

    mul-double v13, v13, p3

    .line 124
    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v13, v7, v11

    mul-double v17, v9, v3

    add-double v13, v13, v17

    mul-double/2addr v13, v5

    mul-double v13, v13, p3

    .line 125
    iput-wide v13, v0, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double/2addr v11, v3

    mul-double/2addr v9, v7

    sub-double/2addr v11, v9

    mul-double/2addr v11, v5

    mul-double v9, p3, v11

    .line 126
    iput-wide v9, v0, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v9, v7, v5

    mul-double/2addr v9, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double v9, v7, v9

    mul-double/2addr v5, v3

    mul-double/2addr v5, v3

    sub-double/2addr v9, v5

    mul-double v3, p3, v9

    .line 127
    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 128
    iget-wide v3, v2, Ljavax/vecmath/Tuple3d;->x:D

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 129
    iget-wide v3, v2, Ljavax/vecmath/Tuple3d;->y:D

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 130
    iget-wide v1, v2, Ljavax/vecmath/Tuple3d;->z:D

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m23:D

    const-wide/16 v1, 0x0

    .line 131
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 132
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 133
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m32:D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 134
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Quat4f;)V
    .locals 14

    .line 72
    iget v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    float-to-double v1, v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    float-to-double v5, v0

    mul-double/2addr v1, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v1, v5, v1

    iget v7, p1, Ljavax/vecmath/Tuple4f;->z:F

    float-to-double v8, v7

    mul-double/2addr v8, v3

    float-to-double v10, v7

    mul-double/2addr v8, v10

    sub-double/2addr v1, v8

    iput-wide v1, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 73
    iget v1, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float v2, v1, v0

    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float v8, p1, v7

    add-float/2addr v2, v8

    float-to-double v8, v2

    mul-double/2addr v8, v3

    iput-wide v8, p0, Ljavax/vecmath/Matrix4d;->m10:D

    mul-float v2, v1, v7

    mul-float v8, p1, v0

    sub-float/2addr v2, v8

    float-to-double v8, v2

    mul-double/2addr v8, v3

    .line 74
    iput-wide v8, p0, Ljavax/vecmath/Matrix4d;->m20:D

    mul-float v2, v1, v0

    mul-float v8, p1, v7

    sub-float/2addr v2, v8

    float-to-double v8, v2

    mul-double/2addr v8, v3

    .line 75
    iput-wide v8, p0, Ljavax/vecmath/Matrix4d;->m01:D

    float-to-double v8, v1

    mul-double/2addr v8, v3

    float-to-double v10, v1

    mul-double/2addr v8, v10

    sub-double v8, v5, v8

    float-to-double v10, v7

    mul-double/2addr v10, v3

    float-to-double v12, v7

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    .line 76
    iput-wide v8, p0, Ljavax/vecmath/Matrix4d;->m11:D

    mul-float v2, v0, v7

    mul-float v8, p1, v1

    add-float/2addr v2, v8

    float-to-double v8, v2

    mul-double/2addr v8, v3

    .line 77
    iput-wide v8, p0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-float v2, v1, v7

    mul-float v8, p1, v0

    add-float/2addr v2, v8

    float-to-double v8, v2

    mul-double/2addr v8, v3

    .line 78
    iput-wide v8, p0, Ljavax/vecmath/Matrix4d;->m02:D

    mul-float/2addr v7, v0

    mul-float/2addr p1, v1

    sub-float/2addr v7, p1

    float-to-double v7, v7

    mul-double/2addr v7, v3

    .line 79
    iput-wide v7, p0, Ljavax/vecmath/Matrix4d;->m12:D

    float-to-double v7, v1

    mul-double/2addr v7, v3

    float-to-double v1, v1

    mul-double/2addr v7, v1

    sub-double v1, v5, v7

    float-to-double v7, v0

    mul-double/2addr v7, v3

    float-to-double v3, v0

    mul-double/2addr v7, v3

    sub-double/2addr v1, v7

    .line 80
    iput-wide v1, p0, Ljavax/vecmath/Matrix4d;->m22:D

    const-wide/16 v0, 0x0

    .line 81
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 82
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 83
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 84
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 85
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 86
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 87
    iput-wide v5, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Quat4f;Ljavax/vecmath/Vector3d;D)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 135
    iget v3, v1, Ljavax/vecmath/Tuple4f;->y:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    float-to-double v8, v3

    mul-double/2addr v4, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v4, v8, v4

    iget v10, v1, Ljavax/vecmath/Tuple4f;->z:F

    float-to-double v11, v10

    mul-double/2addr v11, v6

    float-to-double v13, v10

    mul-double/2addr v11, v13

    sub-double/2addr v4, v11

    mul-double v4, v4, p3

    iput-wide v4, v0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 136
    iget v4, v1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float v5, v4, v3

    iget v1, v1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float v11, v1, v10

    add-float/2addr v5, v11

    float-to-double v11, v5

    mul-double/2addr v11, v6

    mul-double v11, v11, p3

    iput-wide v11, v0, Ljavax/vecmath/Matrix4d;->m10:D

    mul-float v5, v4, v10

    mul-float v11, v1, v3

    sub-float/2addr v5, v11

    float-to-double v11, v5

    mul-double/2addr v11, v6

    mul-double v11, v11, p3

    .line 137
    iput-wide v11, v0, Ljavax/vecmath/Matrix4d;->m20:D

    mul-float v5, v4, v3

    mul-float v11, v1, v10

    sub-float/2addr v5, v11

    float-to-double v11, v5

    mul-double/2addr v11, v6

    mul-double v11, v11, p3

    .line 138
    iput-wide v11, v0, Ljavax/vecmath/Matrix4d;->m01:D

    float-to-double v11, v4

    mul-double/2addr v11, v6

    float-to-double v13, v4

    mul-double/2addr v11, v13

    sub-double v11, v8, v11

    float-to-double v13, v10

    mul-double/2addr v13, v6

    float-to-double v8, v10

    mul-double/2addr v13, v8

    sub-double/2addr v11, v13

    mul-double v8, p3, v11

    .line 139
    iput-wide v8, v0, Ljavax/vecmath/Matrix4d;->m11:D

    mul-float v5, v3, v10

    mul-float v8, v1, v4

    add-float/2addr v5, v8

    float-to-double v8, v5

    mul-double/2addr v8, v6

    mul-double v8, v8, p3

    .line 140
    iput-wide v8, v0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-float v5, v4, v10

    mul-float v8, v1, v3

    add-float/2addr v5, v8

    float-to-double v8, v5

    mul-double/2addr v8, v6

    mul-double v8, v8, p3

    .line 141
    iput-wide v8, v0, Ljavax/vecmath/Matrix4d;->m02:D

    mul-float/2addr v10, v3

    mul-float/2addr v1, v4

    sub-float/2addr v10, v1

    float-to-double v8, v10

    mul-double/2addr v8, v6

    mul-double v8, v8, p3

    .line 142
    iput-wide v8, v0, Ljavax/vecmath/Matrix4d;->m12:D

    float-to-double v8, v4

    mul-double/2addr v8, v6

    float-to-double v4, v4

    mul-double/2addr v8, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v8, v4, v8

    float-to-double v4, v3

    mul-double/2addr v4, v6

    float-to-double v6, v3

    mul-double/2addr v4, v6

    sub-double/2addr v8, v4

    mul-double v3, p3, v8

    .line 143
    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 144
    iget-wide v3, v2, Ljavax/vecmath/Tuple3d;->x:D

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 145
    iget-wide v3, v2, Ljavax/vecmath/Tuple3d;->y:D

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 146
    iget-wide v1, v2, Ljavax/vecmath/Tuple3d;->z:D

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m23:D

    const-wide/16 v1, 0x0

    .line 147
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 148
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 149
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m32:D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 150
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Quat4f;Ljavax/vecmath/Vector3f;F)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    float-to-double v3, v3

    .line 151
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

    iput-wide v6, v0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 152
    iget v6, v1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float v7, v6, v5

    iget v1, v1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float v10, v1, v12

    add-float/2addr v7, v10

    float-to-double v10, v7

    mul-double/2addr v10, v8

    mul-double/2addr v10, v3

    iput-wide v10, v0, Ljavax/vecmath/Matrix4d;->m10:D

    mul-float v7, v6, v12

    mul-float v10, v1, v5

    sub-float/2addr v7, v10

    float-to-double v10, v7

    mul-double/2addr v10, v8

    mul-double/2addr v10, v3

    .line 153
    iput-wide v10, v0, Ljavax/vecmath/Matrix4d;->m20:D

    mul-float v7, v6, v5

    mul-float v10, v1, v12

    sub-float/2addr v7, v10

    float-to-double v10, v7

    mul-double/2addr v10, v8

    mul-double/2addr v10, v3

    .line 154
    iput-wide v10, v0, Ljavax/vecmath/Matrix4d;->m01:D

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

    .line 155
    iput-wide v10, v0, Ljavax/vecmath/Matrix4d;->m11:D

    mul-float v7, v5, v12

    mul-float v8, v1, v6

    add-float/2addr v7, v8

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    mul-double/2addr v7, v3

    .line 156
    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-float v7, v6, v12

    mul-float v8, v1, v5

    add-float/2addr v7, v8

    float-to-double v7, v7

    mul-double/2addr v7, v9

    mul-double/2addr v7, v3

    .line 157
    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m02:D

    mul-float/2addr v12, v5

    mul-float/2addr v1, v6

    sub-float/2addr v12, v1

    float-to-double v7, v12

    mul-double/2addr v7, v9

    mul-double/2addr v7, v3

    .line 158
    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m12:D

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

    .line 159
    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 160
    iget v1, v2, Ljavax/vecmath/Tuple3f;->x:F

    float-to-double v3, v1

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 161
    iget v1, v2, Ljavax/vecmath/Tuple3f;->y:F

    float-to-double v3, v1

    iput-wide v3, v0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 162
    iget v1, v2, Ljavax/vecmath/Tuple3f;->z:F

    float-to-double v1, v1

    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m23:D

    const-wide/16 v1, 0x0

    .line 163
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 164
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 165
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m32:D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 166
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Vector3d;)V
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 215
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    const-wide/16 v2, 0x0

    .line 216
    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 217
    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 218
    iget-wide v4, p1, Ljavax/vecmath/Tuple3d;->x:D

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 219
    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 220
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 221
    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 222
    iget-wide v4, p1, Ljavax/vecmath/Tuple3d;->y:D

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 223
    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 224
    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 225
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 226
    iget-wide v4, p1, Ljavax/vecmath/Tuple3d;->z:D

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 227
    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 228
    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 229
    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 230
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Vector3d;D)V
    .locals 4

    .line 247
    iput-wide p2, p0, Ljavax/vecmath/Matrix4d;->m00:D

    const-wide/16 v0, 0x0

    .line 248
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 249
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 250
    iget-wide v2, p1, Ljavax/vecmath/Tuple3d;->x:D

    mul-double/2addr v2, p2

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 251
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 252
    iput-wide p2, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 253
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 254
    iget-wide v2, p1, Ljavax/vecmath/Tuple3d;->y:D

    mul-double/2addr v2, p2

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 255
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 256
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 257
    iput-wide p2, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 258
    iget-wide v2, p1, Ljavax/vecmath/Tuple3d;->z:D

    mul-double/2addr p2, v2

    iput-wide p2, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 259
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 260
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 261
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 262
    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final set([D)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    const/4 v0, 0x1

    .line 2
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    const/4 v0, 0x2

    .line 3
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    const/4 v0, 0x3

    .line 4
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    const/4 v0, 0x4

    .line 5
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    const/4 v0, 0x5

    .line 6
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    const/4 v0, 0x6

    .line 7
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    const/4 v0, 0x7

    .line 8
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    const/16 v0, 0x8

    .line 9
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    const/16 v0, 0x9

    .line 10
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    const/16 v0, 0xa

    .line 11
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    const/16 v0, 0xb

    .line 12
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    const/16 v0, 0xc

    .line 13
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    const/16 v0, 0xd

    .line 14
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    const/16 v0, 0xe

    .line 15
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    const/16 v0, 0xf

    .line 16
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final setColumn(IDDDD)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    iput-wide p2, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 2
    iput-wide p4, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 3
    iput-wide p6, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 4
    iput-wide p8, p0, Ljavax/vecmath/Matrix4d;->m33:D

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix4d7"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    iput-wide p2, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 7
    iput-wide p4, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 8
    iput-wide p6, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 9
    iput-wide p8, p0, Ljavax/vecmath/Matrix4d;->m32:D

    goto :goto_0

    .line 10
    :cond_2
    iput-wide p2, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 11
    iput-wide p4, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 12
    iput-wide p6, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 13
    iput-wide p8, p0, Ljavax/vecmath/Matrix4d;->m31:D

    goto :goto_0

    .line 14
    :cond_3
    iput-wide p2, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 15
    iput-wide p4, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 16
    iput-wide p6, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 17
    iput-wide p8, p0, Ljavax/vecmath/Matrix4d;->m30:D

    :goto_0
    return-void
.end method

.method public final setColumn(ILjavax/vecmath/Vector4d;)V
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 18
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 19
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 20
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->z:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 21
    iget-wide p1, p2, Ljavax/vecmath/Tuple4d;->w:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m33:D

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix4d7"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 24
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 25
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->z:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 26
    iget-wide p1, p2, Ljavax/vecmath/Tuple4d;->w:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m32:D

    goto :goto_0

    .line 27
    :cond_2
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 28
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 29
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->z:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 30
    iget-wide p1, p2, Ljavax/vecmath/Tuple4d;->w:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m31:D

    goto :goto_0

    .line 31
    :cond_3
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 32
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 33
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->z:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 34
    iget-wide p1, p2, Ljavax/vecmath/Tuple4d;->w:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m30:D

    :goto_0
    return-void
.end method

.method public final setColumn(I[D)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 35
    aget-wide v4, p2, v0

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 36
    aget-wide v3, p2, v3

    iput-wide v3, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 37
    aget-wide v2, p2, v2

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 38
    aget-wide p1, p2, v1

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m33:D

    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix4d7"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_1
    aget-wide v4, p2, v0

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 41
    aget-wide v3, p2, v3

    iput-wide v3, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 42
    aget-wide v2, p2, v2

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 43
    aget-wide p1, p2, v1

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m32:D

    goto :goto_0

    .line 44
    :cond_2
    aget-wide v4, p2, v0

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 45
    aget-wide v3, p2, v3

    iput-wide v3, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 46
    aget-wide v2, p2, v2

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 47
    aget-wide p1, p2, v1

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m31:D

    goto :goto_0

    .line 48
    :cond_3
    aget-wide v4, p2, v0

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 49
    aget-wide v3, p2, v3

    iput-wide v3, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 50
    aget-wide v2, p2, v2

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 51
    aget-wide p1, p2, v1

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m30:D

    :goto_0
    return-void
.end method

.method public final setElement(IID)V
    .locals 4

    const-string v0, "Matrix4d0"

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

    iput-wide p3, p0, Ljavax/vecmath/Matrix4d;->m33:D

    goto/16 :goto_0

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-wide p3, p0, Ljavax/vecmath/Matrix4d;->m32:D

    goto/16 :goto_0

    :cond_2
    iput-wide p3, p0, Ljavax/vecmath/Matrix4d;->m31:D

    goto/16 :goto_0

    :cond_3
    iput-wide p3, p0, Ljavax/vecmath/Matrix4d;->m30:D

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

    iput-wide p3, p0, Ljavax/vecmath/Matrix4d;->m23:D

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iput-wide p3, p0, Ljavax/vecmath/Matrix4d;->m22:D

    goto :goto_0

    :cond_8
    iput-wide p3, p0, Ljavax/vecmath/Matrix4d;->m21:D

    goto :goto_0

    :cond_9
    iput-wide p3, p0, Ljavax/vecmath/Matrix4d;->m20:D

    goto :goto_0

    :cond_a
    if-eqz p2, :cond_e

    if-eq p2, v3, :cond_d

    if-eq p2, v2, :cond_c

    if-ne p2, v1, :cond_b

    iput-wide p3, p0, Ljavax/vecmath/Matrix4d;->m13:D

    goto :goto_0

    :cond_b
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iput-wide p3, p0, Ljavax/vecmath/Matrix4d;->m12:D

    goto :goto_0

    :cond_d
    iput-wide p3, p0, Ljavax/vecmath/Matrix4d;->m11:D

    goto :goto_0

    :cond_e
    iput-wide p3, p0, Ljavax/vecmath/Matrix4d;->m10:D

    goto :goto_0

    :cond_f
    if-eqz p2, :cond_13

    if-eq p2, v3, :cond_12

    if-eq p2, v2, :cond_11

    if-ne p2, v1, :cond_10

    iput-wide p3, p0, Ljavax/vecmath/Matrix4d;->m03:D

    goto :goto_0

    :cond_10
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    iput-wide p3, p0, Ljavax/vecmath/Matrix4d;->m02:D

    goto :goto_0

    :cond_12
    iput-wide p3, p0, Ljavax/vecmath/Matrix4d;->m01:D

    goto :goto_0

    :cond_13
    iput-wide p3, p0, Ljavax/vecmath/Matrix4d;->m00:D

    :goto_0
    return-void
.end method

.method public final setIdentity()V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m03:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m10:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m12:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m13:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m20:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m21:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m23:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m30:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m31:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m32:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final setM00(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m00:D

    return-void
.end method

.method public final setM01(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m01:D

    return-void
.end method

.method public final setM02(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m02:D

    return-void
.end method

.method public final setM03(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m03:D

    return-void
.end method

.method public final setM10(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m10:D

    return-void
.end method

.method public final setM11(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m11:D

    return-void
.end method

.method public final setM12(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m12:D

    return-void
.end method

.method public final setM13(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m13:D

    return-void
.end method

.method public final setM20(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m20:D

    return-void
.end method

.method public final setM21(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m21:D

    return-void
.end method

.method public final setM22(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m22:D

    return-void
.end method

.method public final setM23(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m23:D

    return-void
.end method

.method public final setM30(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m30:D

    return-void
.end method

.method public final setM31(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m31:D

    return-void
.end method

.method public final setM32(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m32:D

    return-void
.end method

.method public final setM33(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final setRotation(Ljavax/vecmath/AxisAngle4d;)V
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
    invoke-direct {v0, v3, v2}, Ljavax/vecmath/Matrix4d;->getScaleRotate([D[D)V

    .line 52
    iget-wide v4, v1, Ljavax/vecmath/AxisAngle4d;->x:D

    mul-double/2addr v4, v4

    iget-wide v6, v1, Ljavax/vecmath/AxisAngle4d;->y:D

    mul-double/2addr v6, v6

    add-double/2addr v4, v6

    iget-wide v6, v1, Ljavax/vecmath/AxisAngle4d;->z:D

    mul-double/2addr v6, v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v4, v6, v4

    .line 53
    iget-wide v8, v1, Ljavax/vecmath/AxisAngle4d;->x:D

    mul-double/2addr v8, v4

    .line 54
    iget-wide v10, v1, Ljavax/vecmath/AxisAngle4d;->y:D

    mul-double/2addr v10, v4

    .line 55
    iget-wide v12, v1, Ljavax/vecmath/AxisAngle4d;->z:D

    mul-double/2addr v12, v4

    .line 56
    iget-wide v4, v1, Ljavax/vecmath/AxisAngle4d;->angle:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 57
    iget-wide v14, v1, Ljavax/vecmath/AxisAngle4d;->angle:D

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    sub-double/2addr v6, v14

    move-wide/from16 v16, v10

    .line 58
    iget-wide v10, v1, Ljavax/vecmath/AxisAngle4d;->x:D

    move-wide/from16 v18, v4

    iget-wide v4, v1, Ljavax/vecmath/AxisAngle4d;->z:D

    mul-double v20, v10, v4

    .line 59
    iget-wide v1, v1, Ljavax/vecmath/AxisAngle4d;->y:D

    mul-double/2addr v10, v1

    mul-double/2addr v1, v4

    mul-double v4, v6, v8

    mul-double/2addr v4, v8

    add-double/2addr v4, v14

    const/16 v22, 0x0

    .line 60
    aget-wide v22, v3, v22

    mul-double v4, v4, v22

    iput-wide v4, v0, Ljavax/vecmath/Matrix4d;->m00:D

    mul-double/2addr v10, v6

    mul-double v4, v18, v12

    sub-double v24, v10, v4

    const/16 v26, 0x1

    .line 61
    aget-wide v26, v3, v26

    move-wide/from16 v28, v12

    mul-double v12, v24, v26

    iput-wide v12, v0, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double v20, v20, v6

    mul-double v12, v18, v16

    add-double v24, v20, v12

    const/16 v30, 0x2

    .line 62
    aget-wide v30, v3, v30

    move-wide/from16 v32, v12

    mul-double v12, v24, v30

    iput-wide v12, v0, Ljavax/vecmath/Matrix4d;->m02:D

    add-double/2addr v10, v4

    mul-double v10, v10, v22

    .line 63
    iput-wide v10, v0, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double v10, v6, v16

    mul-double v10, v10, v16

    add-double/2addr v10, v14

    mul-double v10, v10, v26

    .line 64
    iput-wide v10, v0, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double/2addr v1, v6

    mul-double v4, v18, v8

    sub-double v8, v1, v4

    mul-double v8, v8, v30

    .line 65
    iput-wide v8, v0, Ljavax/vecmath/Matrix4d;->m12:D

    sub-double v20, v20, v32

    mul-double v8, v20, v22

    .line 66
    iput-wide v8, v0, Ljavax/vecmath/Matrix4d;->m20:D

    add-double/2addr v1, v4

    mul-double v1, v1, v26

    .line 67
    iput-wide v1, v0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v6, v6, v28

    mul-double v6, v6, v28

    add-double/2addr v6, v14

    mul-double v6, v6, v30

    .line 68
    iput-wide v6, v0, Ljavax/vecmath/Matrix4d;->m22:D

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
    invoke-direct {p0, v1, v0}, Ljavax/vecmath/Matrix4d;->getScaleRotate([D[D)V

    .line 4
    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m00:D

    const/4 v0, 0x0

    aget-wide v4, v1, v0

    mul-double/2addr v2, v4

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 5
    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m01:D

    const/4 v0, 0x1

    aget-wide v6, v1, v0

    mul-double/2addr v2, v6

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 6
    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m02:D

    const/4 v0, 0x2

    aget-wide v0, v1, v0

    mul-double/2addr v2, v0

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 7
    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double/2addr v2, v4

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 8
    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v2, v6

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 9
    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v2, v0

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 10
    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v2, v4

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 11
    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double/2addr v2, v6

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 12
    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr v2, v0

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m22:D

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
    invoke-direct {p0, v1, v0}, Ljavax/vecmath/Matrix4d;->getScaleRotate([D[D)V

    .line 16
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    float-to-double v2, v0

    const/4 v0, 0x0

    aget-wide v4, v1, v0

    mul-double/2addr v2, v4

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 17
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    float-to-double v2, v0

    const/4 v0, 0x1

    aget-wide v6, v1, v0

    mul-double/2addr v2, v6

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 18
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    float-to-double v2, v0

    const/4 v0, 0x2

    aget-wide v0, v1, v0

    mul-double/2addr v2, v0

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 19
    iget v2, p1, Ljavax/vecmath/Matrix3f;->m10:F

    float-to-double v2, v2

    mul-double/2addr v2, v4

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 20
    iget v2, p1, Ljavax/vecmath/Matrix3f;->m11:F

    float-to-double v2, v2

    mul-double/2addr v2, v6

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 21
    iget v2, p1, Ljavax/vecmath/Matrix3f;->m12:F

    float-to-double v2, v2

    mul-double/2addr v2, v0

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 22
    iget v2, p1, Ljavax/vecmath/Matrix3f;->m20:F

    float-to-double v2, v2

    mul-double/2addr v2, v4

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 23
    iget v2, p1, Ljavax/vecmath/Matrix3f;->m21:F

    float-to-double v2, v2

    mul-double/2addr v2, v6

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 24
    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    float-to-double v2, p1

    mul-double/2addr v2, v0

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m22:D

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
    invoke-direct {v0, v3, v2}, Ljavax/vecmath/Matrix4d;->getScaleRotate([D[D)V

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

    iput-wide v8, v0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 41
    iget-wide v8, v1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double v16, v8, v4

    iget-wide v1, v1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double v18, v1, v12

    add-double v16, v16, v18

    mul-double v16, v16, v6

    mul-double v10, v16, v14

    iput-wide v10, v0, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double v10, v8, v12

    mul-double v16, v1, v4

    sub-double v10, v10, v16

    mul-double/2addr v10, v6

    mul-double/2addr v10, v14

    .line 42
    iput-wide v10, v0, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double v10, v8, v4

    mul-double v14, v1, v12

    sub-double/2addr v10, v14

    mul-double/2addr v10, v6

    const/4 v14, 0x1

    .line 43
    aget-wide v14, v3, v14

    mul-double/2addr v10, v14

    iput-wide v10, v0, Ljavax/vecmath/Matrix4d;->m01:D

    mul-double v10, v8, v6

    mul-double/2addr v10, v8

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v10, v16, v10

    mul-double v16, v12, v6

    mul-double v16, v16, v12

    sub-double v10, v10, v16

    mul-double/2addr v10, v14

    .line 44
    iput-wide v10, v0, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double v10, v4, v12

    mul-double v16, v1, v8

    add-double v10, v10, v16

    mul-double/2addr v10, v6

    mul-double/2addr v10, v14

    .line 45
    iput-wide v10, v0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double v10, v8, v12

    mul-double v14, v1, v4

    add-double/2addr v10, v14

    mul-double/2addr v10, v6

    const/4 v14, 0x2

    .line 46
    aget-wide v14, v3, v14

    mul-double/2addr v10, v14

    iput-wide v10, v0, Ljavax/vecmath/Matrix4d;->m02:D

    mul-double/2addr v12, v4

    mul-double/2addr v1, v8

    sub-double/2addr v12, v1

    mul-double/2addr v12, v6

    mul-double/2addr v12, v14

    .line 47
    iput-wide v12, v0, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double v1, v8, v6

    mul-double/2addr v1, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v10, v8, v1

    mul-double/2addr v6, v4

    mul-double/2addr v6, v4

    sub-double/2addr v10, v6

    mul-double/2addr v10, v14

    .line 48
    iput-wide v10, v0, Ljavax/vecmath/Matrix4d;->m22:D

    return-void
.end method

.method public final setRotation(Ljavax/vecmath/Quat4f;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x9

    .line 25
    new-array v2, v2, [D

    const/4 v3, 0x3

    .line 26
    new-array v3, v3, [D

    .line 27
    invoke-direct {v0, v3, v2}, Ljavax/vecmath/Matrix4d;->getScaleRotate([D[D)V

    .line 28
    iget v2, v1, Ljavax/vecmath/Tuple4f;->y:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v2, v4

    mul-float/2addr v5, v2

    float-to-double v5, v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double v5, v7, v5

    iget v9, v1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float v10, v9, v4

    mul-float/2addr v10, v9

    float-to-double v10, v10

    sub-double/2addr v5, v10

    const/4 v10, 0x0

    aget-wide v10, v3, v10

    mul-double/2addr v5, v10

    iput-wide v5, v0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 29
    iget v5, v1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float v6, v5, v2

    iget v1, v1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float v12, v1, v9

    add-float/2addr v6, v12

    float-to-double v12, v6

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v14

    mul-double/2addr v12, v10

    iput-wide v12, v0, Ljavax/vecmath/Matrix4d;->m10:D

    mul-float v6, v5, v9

    mul-float v12, v1, v2

    sub-float/2addr v6, v12

    float-to-double v12, v6

    mul-double/2addr v12, v14

    mul-double/2addr v12, v10

    .line 30
    iput-wide v12, v0, Ljavax/vecmath/Matrix4d;->m20:D

    mul-float v6, v5, v2

    mul-float v10, v1, v9

    sub-float/2addr v6, v10

    float-to-double v10, v6

    mul-double/2addr v10, v14

    const/4 v6, 0x1

    .line 31
    aget-wide v12, v3, v6

    mul-double/2addr v10, v12

    iput-wide v10, v0, Ljavax/vecmath/Matrix4d;->m01:D

    mul-float v6, v5, v4

    mul-float/2addr v6, v5

    float-to-double v10, v6

    sub-double v10, v7, v10

    mul-float v6, v9, v4

    mul-float/2addr v6, v9

    float-to-double v7, v6

    sub-double/2addr v10, v7

    mul-double/2addr v10, v12

    .line 32
    iput-wide v10, v0, Ljavax/vecmath/Matrix4d;->m11:D

    mul-float v6, v2, v9

    mul-float v7, v1, v5

    add-float/2addr v6, v7

    float-to-double v6, v6

    mul-double/2addr v6, v14

    mul-double/2addr v6, v12

    .line 33
    iput-wide v6, v0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-float v6, v5, v9

    mul-float v7, v1, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    mul-double/2addr v6, v14

    const/4 v8, 0x2

    .line 34
    aget-wide v10, v3, v8

    mul-double/2addr v6, v10

    iput-wide v6, v0, Ljavax/vecmath/Matrix4d;->m02:D

    mul-float/2addr v9, v2

    mul-float/2addr v1, v5

    sub-float/2addr v9, v1

    float-to-double v6, v9

    mul-double/2addr v6, v14

    mul-double/2addr v6, v10

    .line 35
    iput-wide v6, v0, Ljavax/vecmath/Matrix4d;->m12:D

    mul-float v1, v5, v4

    mul-float/2addr v1, v5

    float-to-double v5, v1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v5

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    float-to-double v1, v4

    sub-double/2addr v7, v1

    mul-double/2addr v7, v10

    .line 36
    iput-wide v7, v0, Ljavax/vecmath/Matrix4d;->m22:D

    return-void
.end method

.method public final setRotationScale(Ljavax/vecmath/Matrix3d;)V
    .locals 2

    .line 1
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m00:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m01:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m02:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 2
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m10:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m11:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m12:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 3
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m20:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m21:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m22:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    return-void
.end method

.method public final setRotationScale(Ljavax/vecmath/Matrix3f;)V
    .locals 2

    .line 4
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 5
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m10:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m11:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m12:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 6
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m20:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m21:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    float-to-double v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    return-void
.end method

.method public final setRow(IDDDD)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    iput-wide p2, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 2
    iput-wide p4, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 3
    iput-wide p6, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 4
    iput-wide p8, p0, Ljavax/vecmath/Matrix4d;->m33:D

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix4d4"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    iput-wide p2, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 7
    iput-wide p4, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 8
    iput-wide p6, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 9
    iput-wide p8, p0, Ljavax/vecmath/Matrix4d;->m23:D

    goto :goto_0

    .line 10
    :cond_2
    iput-wide p2, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 11
    iput-wide p4, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 12
    iput-wide p6, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 13
    iput-wide p8, p0, Ljavax/vecmath/Matrix4d;->m13:D

    goto :goto_0

    .line 14
    :cond_3
    iput-wide p2, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 15
    iput-wide p4, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 16
    iput-wide p6, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 17
    iput-wide p8, p0, Ljavax/vecmath/Matrix4d;->m03:D

    :goto_0
    return-void
.end method

.method public final setRow(ILjavax/vecmath/Vector4d;)V
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 18
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 19
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 20
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->z:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 21
    iget-wide p1, p2, Ljavax/vecmath/Tuple4d;->w:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m33:D

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix4d4"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 24
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 25
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->z:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 26
    iget-wide p1, p2, Ljavax/vecmath/Tuple4d;->w:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m23:D

    goto :goto_0

    .line 27
    :cond_2
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 28
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 29
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->z:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 30
    iget-wide p1, p2, Ljavax/vecmath/Tuple4d;->w:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m13:D

    goto :goto_0

    .line 31
    :cond_3
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 32
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 33
    iget-wide v0, p2, Ljavax/vecmath/Tuple4d;->z:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 34
    iget-wide p1, p2, Ljavax/vecmath/Tuple4d;->w:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m03:D

    :goto_0
    return-void
.end method

.method public final setRow(I[D)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 35
    aget-wide v4, p2, v0

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 36
    aget-wide v3, p2, v3

    iput-wide v3, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 37
    aget-wide v2, p2, v2

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 38
    aget-wide p1, p2, v1

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m33:D

    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix4d4"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_1
    aget-wide v4, p2, v0

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 41
    aget-wide v3, p2, v3

    iput-wide v3, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 42
    aget-wide v2, p2, v2

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 43
    aget-wide p1, p2, v1

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m23:D

    goto :goto_0

    .line 44
    :cond_2
    aget-wide v4, p2, v0

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 45
    aget-wide v3, p2, v3

    iput-wide v3, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 46
    aget-wide v2, p2, v2

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 47
    aget-wide p1, p2, v1

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m13:D

    goto :goto_0

    .line 48
    :cond_3
    aget-wide v4, p2, v0

    iput-wide v4, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 49
    aget-wide v3, p2, v3

    iput-wide v3, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 50
    aget-wide v2, p2, v2

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 51
    aget-wide p1, p2, v1

    iput-wide p1, p0, Ljavax/vecmath/Matrix4d;->m03:D

    :goto_0
    return-void
.end method

.method public final setScale(D)V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [D

    const/4 v1, 0x3

    new-array v2, v1, [D

    invoke-direct {p0, v2, v0}, Ljavax/vecmath/Matrix4d;->getScaleRotate([D[D)V

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    mul-double/2addr v2, p1

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m00:D

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    mul-double/2addr v2, p1

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m01:D

    const/4 v2, 0x2

    aget-wide v2, v0, v2

    mul-double/2addr v2, p1

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m02:D

    aget-wide v1, v0, v1

    mul-double/2addr v1, p1

    iput-wide v1, p0, Ljavax/vecmath/Matrix4d;->m10:D

    const/4 v1, 0x4

    aget-wide v1, v0, v1

    mul-double/2addr v1, p1

    iput-wide v1, p0, Ljavax/vecmath/Matrix4d;->m11:D

    const/4 v1, 0x5

    aget-wide v1, v0, v1

    mul-double/2addr v1, p1

    iput-wide v1, p0, Ljavax/vecmath/Matrix4d;->m12:D

    const/4 v1, 0x6

    aget-wide v1, v0, v1

    mul-double/2addr v1, p1

    iput-wide v1, p0, Ljavax/vecmath/Matrix4d;->m20:D

    const/4 v1, 0x7

    aget-wide v1, v0, v1

    mul-double/2addr v1, p1

    iput-wide v1, p0, Ljavax/vecmath/Matrix4d;->m21:D

    const/16 v1, 0x8

    aget-wide v1, v0, v1

    mul-double/2addr v1, p1

    iput-wide v1, p0, Ljavax/vecmath/Matrix4d;->m22:D

    return-void
.end method

.method public final setTranslation(Ljavax/vecmath/Vector3d;)V
    .locals 2

    iget-wide v0, p1, Ljavax/vecmath/Tuple3d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    iget-wide v0, p1, Ljavax/vecmath/Tuple3d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    iget-wide v0, p1, Ljavax/vecmath/Tuple3d;->z:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    return-void
.end method

.method public final setZero()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final sub(Ljavax/vecmath/Matrix4d;)V
    .locals 4

    .line 17
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m00:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 18
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m01:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 19
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m02:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 20
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m03:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 21
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m10:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 22
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m11:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 23
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m12:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 24
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m13:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 25
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m20:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 26
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m21:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 27
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m22:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 28
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m23:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 29
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m30:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 30
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m31:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 31
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m32:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 32
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix4d;->m33:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public final sub(Ljavax/vecmath/Matrix4d;Ljavax/vecmath/Matrix4d;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m00:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 2
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m01:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 3
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m02:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 4
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m03:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m03:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 5
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m10:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m10:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 6
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m11:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m11:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 7
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m12:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m12:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 8
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m13:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m13:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 9
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m20:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m20:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 10
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m21:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m21:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 11
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m22:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m22:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 12
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m23:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m23:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 13
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m30:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m30:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 14
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m31:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m31:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 15
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m32:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix4d;->m32:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 16
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m33:D

    iget-wide p1, p2, Ljavax/vecmath/Matrix4d;->m33:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Ljavax/vecmath/Matrix4d;->m00:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m01:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m02:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m03:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m10:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m11:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m12:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m13:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m20:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m21:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m22:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m23:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m30:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m31:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m32:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m33:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transform(Ljavax/vecmath/Point3d;)V
    .locals 12

    .line 34
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple3d;->x:D

    mul-double/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v6, p1, Ljavax/vecmath/Tuple3d;->y:D

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v8, p1, Ljavax/vecmath/Tuple3d;->z:D

    mul-double/2addr v4, v8

    add-double/2addr v0, v4

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m03:D

    add-double/2addr v0, v4

    .line 35
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double/2addr v4, v2

    iget-wide v10, p0, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double/2addr v10, v6

    add-double/2addr v4, v10

    iget-wide v10, p0, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double/2addr v10, v8

    add-double/2addr v4, v10

    iget-wide v10, p0, Ljavax/vecmath/Matrix4d;->m13:D

    add-double/2addr v4, v10

    .line 36
    iget-wide v10, p0, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double/2addr v10, v2

    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double/2addr v2, v6

    add-double/2addr v10, v2

    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double/2addr v2, v8

    add-double/2addr v10, v2

    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m23:D

    add-double/2addr v10, v2

    iput-wide v10, p1, Ljavax/vecmath/Tuple3d;->z:D

    .line 37
    iput-wide v0, p1, Ljavax/vecmath/Tuple3d;->x:D

    .line 38
    iput-wide v4, p1, Ljavax/vecmath/Tuple3d;->y:D

    return-void
.end method

.method public final transform(Ljavax/vecmath/Point3d;Ljavax/vecmath/Point3d;)V
    .locals 12

    .line 29
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple3d;->x:D

    mul-double/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v6, p1, Ljavax/vecmath/Tuple3d;->y:D

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v8, p1, Ljavax/vecmath/Tuple3d;->z:D

    mul-double/2addr v4, v8

    add-double/2addr v0, v4

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m03:D

    add-double/2addr v0, v4

    .line 30
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double/2addr v4, v2

    iget-wide v10, p0, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double/2addr v10, v6

    add-double/2addr v4, v10

    iget-wide v10, p0, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double/2addr v10, v8

    add-double/2addr v4, v10

    iget-wide v10, p0, Ljavax/vecmath/Matrix4d;->m13:D

    add-double/2addr v4, v10

    .line 31
    iget-wide v10, p0, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double/2addr v10, v2

    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double/2addr v2, v6

    add-double/2addr v10, v2

    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double/2addr v2, v8

    add-double/2addr v10, v2

    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m23:D

    add-double/2addr v10, v2

    iput-wide v10, p2, Ljavax/vecmath/Tuple3d;->z:D

    .line 32
    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->x:D

    .line 33
    iput-wide v4, p2, Ljavax/vecmath/Tuple3d;->y:D

    return-void
.end method

.method public final transform(Ljavax/vecmath/Point3f;)V
    .locals 11

    .line 44
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iget v2, p1, Ljavax/vecmath/Tuple3f;->x:F

    float-to-double v3, v2

    mul-double/2addr v0, v3

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iget v5, p1, Ljavax/vecmath/Tuple3f;->y:F

    float-to-double v6, v5

    mul-double/2addr v3, v6

    add-double/2addr v0, v3

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iget v6, p1, Ljavax/vecmath/Tuple3f;->z:F

    float-to-double v7, v6

    mul-double/2addr v3, v7

    add-double/2addr v0, v3

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m03:D

    add-double/2addr v0, v3

    double-to-float v0, v0

    .line 45
    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m10:D

    float-to-double v7, v2

    mul-double/2addr v3, v7

    iget-wide v7, p0, Ljavax/vecmath/Matrix4d;->m11:D

    float-to-double v9, v5

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    iget-wide v7, p0, Ljavax/vecmath/Matrix4d;->m12:D

    float-to-double v9, v6

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    iget-wide v7, p0, Ljavax/vecmath/Matrix4d;->m13:D

    add-double/2addr v3, v7

    double-to-float v1, v3

    .line 46
    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m20:D

    float-to-double v7, v2

    mul-double/2addr v3, v7

    iget-wide v7, p0, Ljavax/vecmath/Matrix4d;->m21:D

    float-to-double v9, v5

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    iget-wide v7, p0, Ljavax/vecmath/Matrix4d;->m22:D

    float-to-double v5, v6

    mul-double/2addr v7, v5

    add-double/2addr v3, v7

    iget-wide v5, p0, Ljavax/vecmath/Matrix4d;->m23:D

    add-double/2addr v3, v5

    double-to-float v2, v3

    iput v2, p1, Ljavax/vecmath/Tuple3f;->z:F

    .line 47
    iput v0, p1, Ljavax/vecmath/Tuple3f;->x:F

    .line 48
    iput v1, p1, Ljavax/vecmath/Tuple3f;->y:F

    return-void
.end method

.method public final transform(Ljavax/vecmath/Point3f;Ljavax/vecmath/Point3f;)V
    .locals 10

    .line 39
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iget v2, p1, Ljavax/vecmath/Tuple3f;->x:F

    float-to-double v3, v2

    mul-double/2addr v0, v3

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iget v5, p1, Ljavax/vecmath/Tuple3f;->y:F

    float-to-double v6, v5

    mul-double/2addr v3, v6

    add-double/2addr v0, v3

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    float-to-double v6, p1

    mul-double/2addr v3, v6

    add-double/2addr v0, v3

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m03:D

    add-double/2addr v0, v3

    double-to-float v0, v0

    .line 40
    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m10:D

    float-to-double v6, v2

    mul-double/2addr v3, v6

    iget-wide v6, p0, Ljavax/vecmath/Matrix4d;->m11:D

    float-to-double v8, v5

    mul-double/2addr v6, v8

    add-double/2addr v3, v6

    iget-wide v6, p0, Ljavax/vecmath/Matrix4d;->m12:D

    float-to-double v8, p1

    mul-double/2addr v6, v8

    add-double/2addr v3, v6

    iget-wide v6, p0, Ljavax/vecmath/Matrix4d;->m13:D

    add-double/2addr v3, v6

    double-to-float v1, v3

    .line 41
    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m20:D

    float-to-double v6, v2

    mul-double/2addr v3, v6

    iget-wide v6, p0, Ljavax/vecmath/Matrix4d;->m21:D

    float-to-double v8, v5

    mul-double/2addr v6, v8

    add-double/2addr v3, v6

    iget-wide v5, p0, Ljavax/vecmath/Matrix4d;->m22:D

    float-to-double v7, p1

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iget-wide v5, p0, Ljavax/vecmath/Matrix4d;->m23:D

    add-double/2addr v3, v5

    double-to-float p1, v3

    iput p1, p2, Ljavax/vecmath/Tuple3f;->z:F

    .line 42
    iput v0, p2, Ljavax/vecmath/Tuple3f;->x:F

    .line 43
    iput v1, p2, Ljavax/vecmath/Tuple3f;->y:F

    return-void
.end method

.method public final transform(Ljavax/vecmath/Tuple4d;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 8
    iget-wide v2, v0, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v4, v1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v2, v4

    iget-wide v6, v0, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v8, v1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    iget-wide v6, v0, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v10, v1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v6, v10

    add-double/2addr v2, v6

    iget-wide v6, v0, Ljavax/vecmath/Matrix4d;->m03:D

    iget-wide v12, v1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v6, v12

    add-double/2addr v2, v6

    .line 9
    iget-wide v6, v0, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double/2addr v6, v4

    iget-wide v14, v0, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double/2addr v14, v8

    add-double/2addr v6, v14

    iget-wide v14, v0, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double/2addr v14, v10

    add-double/2addr v6, v14

    iget-wide v14, v0, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double/2addr v14, v12

    add-double/2addr v6, v14

    .line 10
    iget-wide v14, v0, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double/2addr v14, v4

    move-wide/from16 v16, v6

    iget-wide v6, v0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double/2addr v6, v8

    add-double/2addr v14, v6

    iget-wide v6, v0, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double/2addr v6, v10

    add-double/2addr v14, v6

    iget-wide v6, v0, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double/2addr v6, v12

    add-double/2addr v14, v6

    .line 11
    iget-wide v6, v0, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double/2addr v6, v4

    iget-wide v4, v0, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double/2addr v4, v8

    add-double/2addr v6, v4

    iget-wide v4, v0, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double/2addr v4, v10

    add-double/2addr v6, v4

    iget-wide v4, v0, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double/2addr v4, v12

    add-double/2addr v6, v4

    iput-wide v6, v1, Ljavax/vecmath/Tuple4d;->w:D

    .line 12
    iput-wide v2, v1, Ljavax/vecmath/Tuple4d;->x:D

    move-wide/from16 v6, v16

    .line 13
    iput-wide v6, v1, Ljavax/vecmath/Tuple4d;->y:D

    .line 14
    iput-wide v14, v1, Ljavax/vecmath/Tuple4d;->z:D

    return-void
.end method

.method public final transform(Ljavax/vecmath/Tuple4d;Ljavax/vecmath/Tuple4d;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-wide v3, v0, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v5, v1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v3, v5

    iget-wide v7, v0, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v9, v1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    iget-wide v7, v0, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v11, v1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v7, v11

    add-double/2addr v3, v7

    iget-wide v7, v0, Ljavax/vecmath/Matrix4d;->m03:D

    iget-wide v13, v1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v7, v13

    add-double/2addr v3, v7

    .line 2
    iget-wide v7, v0, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double/2addr v7, v5

    move-wide v15, v3

    iget-wide v3, v0, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double/2addr v3, v9

    add-double/2addr v7, v3

    iget-wide v3, v0, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double/2addr v3, v11

    add-double/2addr v7, v3

    iget-wide v3, v0, Ljavax/vecmath/Matrix4d;->m13:D

    mul-double/2addr v3, v13

    add-double/2addr v7, v3

    .line 3
    iget-wide v3, v0, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double/2addr v3, v5

    move-wide/from16 v17, v7

    iget-wide v7, v0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    iget-wide v7, v0, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double/2addr v7, v11

    add-double/2addr v3, v7

    iget-wide v7, v0, Ljavax/vecmath/Matrix4d;->m23:D

    mul-double/2addr v7, v13

    add-double/2addr v3, v7

    .line 4
    iget-wide v7, v0, Ljavax/vecmath/Matrix4d;->m30:D

    mul-double/2addr v7, v5

    iget-wide v5, v0, Ljavax/vecmath/Matrix4d;->m31:D

    mul-double/2addr v5, v9

    add-double/2addr v7, v5

    iget-wide v5, v0, Ljavax/vecmath/Matrix4d;->m32:D

    mul-double/2addr v5, v11

    add-double/2addr v7, v5

    iget-wide v5, v0, Ljavax/vecmath/Matrix4d;->m33:D

    mul-double/2addr v5, v13

    add-double/2addr v7, v5

    iput-wide v7, v2, Ljavax/vecmath/Tuple4d;->w:D

    move-wide v5, v15

    .line 5
    iput-wide v5, v2, Ljavax/vecmath/Tuple4d;->x:D

    move-wide/from16 v7, v17

    .line 6
    iput-wide v7, v2, Ljavax/vecmath/Tuple4d;->y:D

    .line 7
    iput-wide v3, v2, Ljavax/vecmath/Tuple4d;->z:D

    return-void
.end method

.method public final transform(Ljavax/vecmath/Tuple4f;)V
    .locals 12

    .line 22
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iget v2, p1, Ljavax/vecmath/Tuple4f;->x:F

    float-to-double v3, v2

    mul-double/2addr v0, v3

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iget v5, p1, Ljavax/vecmath/Tuple4f;->y:F

    float-to-double v6, v5

    mul-double/2addr v3, v6

    add-double/2addr v0, v3

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iget v6, p1, Ljavax/vecmath/Tuple4f;->z:F

    float-to-double v7, v6

    mul-double/2addr v3, v7

    add-double/2addr v0, v3

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m03:D

    iget v7, p1, Ljavax/vecmath/Tuple4f;->w:F

    float-to-double v8, v7

    mul-double/2addr v3, v8

    add-double/2addr v0, v3

    double-to-float v0, v0

    .line 23
    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m10:D

    float-to-double v8, v2

    mul-double/2addr v3, v8

    iget-wide v8, p0, Ljavax/vecmath/Matrix4d;->m11:D

    float-to-double v10, v5

    mul-double/2addr v8, v10

    add-double/2addr v3, v8

    iget-wide v8, p0, Ljavax/vecmath/Matrix4d;->m12:D

    float-to-double v10, v6

    mul-double/2addr v8, v10

    add-double/2addr v3, v8

    iget-wide v8, p0, Ljavax/vecmath/Matrix4d;->m13:D

    float-to-double v10, v7

    mul-double/2addr v8, v10

    add-double/2addr v3, v8

    double-to-float v1, v3

    .line 24
    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m20:D

    float-to-double v8, v2

    mul-double/2addr v3, v8

    iget-wide v8, p0, Ljavax/vecmath/Matrix4d;->m21:D

    float-to-double v10, v5

    mul-double/2addr v8, v10

    add-double/2addr v3, v8

    iget-wide v8, p0, Ljavax/vecmath/Matrix4d;->m22:D

    float-to-double v10, v6

    mul-double/2addr v8, v10

    add-double/2addr v3, v8

    iget-wide v8, p0, Ljavax/vecmath/Matrix4d;->m23:D

    float-to-double v10, v7

    mul-double/2addr v8, v10

    add-double/2addr v3, v8

    double-to-float v3, v3

    .line 25
    iget-wide v8, p0, Ljavax/vecmath/Matrix4d;->m30:D

    float-to-double v10, v2

    mul-double/2addr v8, v10

    iget-wide v10, p0, Ljavax/vecmath/Matrix4d;->m31:D

    float-to-double v4, v5

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m32:D

    float-to-double v10, v6

    mul-double/2addr v4, v10

    add-double/2addr v8, v4

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m33:D

    float-to-double v6, v7

    mul-double/2addr v4, v6

    add-double/2addr v8, v4

    double-to-float v2, v8

    iput v2, p1, Ljavax/vecmath/Tuple4f;->w:F

    .line 26
    iput v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    .line 27
    iput v1, p1, Ljavax/vecmath/Tuple4f;->y:F

    .line 28
    iput v3, p1, Ljavax/vecmath/Tuple4f;->z:F

    return-void
.end method

.method public final transform(Ljavax/vecmath/Tuple4f;Ljavax/vecmath/Tuple4f;)V
    .locals 11

    .line 15
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iget v2, p1, Ljavax/vecmath/Tuple4f;->x:F

    float-to-double v3, v2

    mul-double/2addr v0, v3

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iget v5, p1, Ljavax/vecmath/Tuple4f;->y:F

    float-to-double v6, v5

    mul-double/2addr v3, v6

    add-double/2addr v0, v3

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iget v6, p1, Ljavax/vecmath/Tuple4f;->z:F

    float-to-double v7, v6

    mul-double/2addr v3, v7

    add-double/2addr v0, v3

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m03:D

    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    float-to-double v7, p1

    mul-double/2addr v3, v7

    add-double/2addr v0, v3

    double-to-float v0, v0

    .line 16
    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m10:D

    float-to-double v7, v2

    mul-double/2addr v3, v7

    iget-wide v7, p0, Ljavax/vecmath/Matrix4d;->m11:D

    float-to-double v9, v5

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    iget-wide v7, p0, Ljavax/vecmath/Matrix4d;->m12:D

    float-to-double v9, v6

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    iget-wide v7, p0, Ljavax/vecmath/Matrix4d;->m13:D

    float-to-double v9, p1

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    double-to-float v1, v3

    .line 17
    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m20:D

    float-to-double v7, v2

    mul-double/2addr v3, v7

    iget-wide v7, p0, Ljavax/vecmath/Matrix4d;->m21:D

    float-to-double v9, v5

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    iget-wide v7, p0, Ljavax/vecmath/Matrix4d;->m22:D

    float-to-double v9, v6

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    iget-wide v7, p0, Ljavax/vecmath/Matrix4d;->m23:D

    float-to-double v9, p1

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    double-to-float v3, v3

    .line 18
    iget-wide v7, p0, Ljavax/vecmath/Matrix4d;->m30:D

    float-to-double v9, v2

    mul-double/2addr v7, v9

    iget-wide v9, p0, Ljavax/vecmath/Matrix4d;->m31:D

    float-to-double v4, v5

    mul-double/2addr v9, v4

    add-double/2addr v7, v9

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m32:D

    float-to-double v9, v6

    mul-double/2addr v4, v9

    add-double/2addr v7, v4

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m33:D

    float-to-double v9, p1

    mul-double/2addr v4, v9

    add-double/2addr v7, v4

    double-to-float p1, v7

    iput p1, p2, Ljavax/vecmath/Tuple4f;->w:F

    .line 19
    iput v0, p2, Ljavax/vecmath/Tuple4f;->x:F

    .line 20
    iput v1, p2, Ljavax/vecmath/Tuple4f;->y:F

    .line 21
    iput v3, p2, Ljavax/vecmath/Tuple4f;->z:F

    return-void
.end method

.method public final transform(Ljavax/vecmath/Vector3d;)V
    .locals 12

    .line 54
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple3d;->x:D

    mul-double/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v6, p1, Ljavax/vecmath/Tuple3d;->y:D

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v8, p1, Ljavax/vecmath/Tuple3d;->z:D

    mul-double/2addr v4, v8

    add-double/2addr v0, v4

    .line 55
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double/2addr v4, v2

    iget-wide v10, p0, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double/2addr v10, v6

    add-double/2addr v4, v10

    iget-wide v10, p0, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double/2addr v10, v8

    add-double/2addr v4, v10

    .line 56
    iget-wide v10, p0, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double/2addr v10, v2

    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double/2addr v2, v6

    add-double/2addr v10, v2

    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double/2addr v2, v8

    add-double/2addr v10, v2

    iput-wide v10, p1, Ljavax/vecmath/Tuple3d;->z:D

    .line 57
    iput-wide v0, p1, Ljavax/vecmath/Tuple3d;->x:D

    .line 58
    iput-wide v4, p1, Ljavax/vecmath/Tuple3d;->y:D

    return-void
.end method

.method public final transform(Ljavax/vecmath/Vector3d;Ljavax/vecmath/Vector3d;)V
    .locals 12

    .line 49
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple3d;->x:D

    mul-double/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iget-wide v6, p1, Ljavax/vecmath/Tuple3d;->y:D

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iget-wide v8, p1, Ljavax/vecmath/Tuple3d;->z:D

    mul-double/2addr v4, v8

    add-double/2addr v0, v4

    .line 50
    iget-wide v4, p0, Ljavax/vecmath/Matrix4d;->m10:D

    mul-double/2addr v4, v2

    iget-wide v10, p0, Ljavax/vecmath/Matrix4d;->m11:D

    mul-double/2addr v10, v6

    add-double/2addr v4, v10

    iget-wide v10, p0, Ljavax/vecmath/Matrix4d;->m12:D

    mul-double/2addr v10, v8

    add-double/2addr v4, v10

    .line 51
    iget-wide v10, p0, Ljavax/vecmath/Matrix4d;->m20:D

    mul-double/2addr v10, v2

    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m21:D

    mul-double/2addr v2, v6

    add-double/2addr v10, v2

    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m22:D

    mul-double/2addr v2, v8

    add-double/2addr v10, v2

    iput-wide v10, p2, Ljavax/vecmath/Tuple3d;->z:D

    .line 52
    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->x:D

    .line 53
    iput-wide v4, p2, Ljavax/vecmath/Tuple3d;->y:D

    return-void
.end method

.method public final transform(Ljavax/vecmath/Vector3f;)V
    .locals 11

    .line 64
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iget v2, p1, Ljavax/vecmath/Tuple3f;->x:F

    float-to-double v3, v2

    mul-double/2addr v0, v3

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iget v5, p1, Ljavax/vecmath/Tuple3f;->y:F

    float-to-double v6, v5

    mul-double/2addr v3, v6

    add-double/2addr v0, v3

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iget v6, p1, Ljavax/vecmath/Tuple3f;->z:F

    float-to-double v7, v6

    mul-double/2addr v3, v7

    add-double/2addr v0, v3

    double-to-float v0, v0

    .line 65
    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m10:D

    float-to-double v7, v2

    mul-double/2addr v3, v7

    iget-wide v7, p0, Ljavax/vecmath/Matrix4d;->m11:D

    float-to-double v9, v5

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    iget-wide v7, p0, Ljavax/vecmath/Matrix4d;->m12:D

    float-to-double v9, v6

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    double-to-float v1, v3

    .line 66
    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m20:D

    float-to-double v7, v2

    mul-double/2addr v3, v7

    iget-wide v7, p0, Ljavax/vecmath/Matrix4d;->m21:D

    float-to-double v9, v5

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    iget-wide v7, p0, Ljavax/vecmath/Matrix4d;->m22:D

    float-to-double v5, v6

    mul-double/2addr v7, v5

    add-double/2addr v3, v7

    double-to-float v2, v3

    iput v2, p1, Ljavax/vecmath/Tuple3f;->z:F

    .line 67
    iput v0, p1, Ljavax/vecmath/Tuple3f;->x:F

    .line 68
    iput v1, p1, Ljavax/vecmath/Tuple3f;->y:F

    return-void
.end method

.method public final transform(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
    .locals 10

    .line 59
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    iget v2, p1, Ljavax/vecmath/Tuple3f;->x:F

    float-to-double v3, v2

    mul-double/2addr v0, v3

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iget v5, p1, Ljavax/vecmath/Tuple3f;->y:F

    float-to-double v6, v5

    mul-double/2addr v3, v6

    add-double/2addr v0, v3

    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    float-to-double v6, p1

    mul-double/2addr v3, v6

    add-double/2addr v0, v3

    double-to-float v0, v0

    .line 60
    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m10:D

    float-to-double v6, v2

    mul-double/2addr v3, v6

    iget-wide v6, p0, Ljavax/vecmath/Matrix4d;->m11:D

    float-to-double v8, v5

    mul-double/2addr v6, v8

    add-double/2addr v3, v6

    iget-wide v6, p0, Ljavax/vecmath/Matrix4d;->m12:D

    float-to-double v8, p1

    mul-double/2addr v6, v8

    add-double/2addr v3, v6

    double-to-float v1, v3

    .line 61
    iget-wide v3, p0, Ljavax/vecmath/Matrix4d;->m20:D

    float-to-double v6, v2

    mul-double/2addr v3, v6

    iget-wide v6, p0, Ljavax/vecmath/Matrix4d;->m21:D

    float-to-double v8, v5

    mul-double/2addr v6, v8

    add-double/2addr v3, v6

    iget-wide v5, p0, Ljavax/vecmath/Matrix4d;->m22:D

    float-to-double v7, p1

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float p1, v3

    iput p1, p2, Ljavax/vecmath/Tuple3f;->z:F

    .line 62
    iput v0, p2, Ljavax/vecmath/Tuple3f;->x:F

    .line 63
    iput v1, p2, Ljavax/vecmath/Tuple3f;->y:F

    return-void
.end method

.method public final transpose()V
    .locals 4

    .line 1
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 2
    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m01:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 3
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 4
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 5
    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m02:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 6
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 8
    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m03:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 9
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 10
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 11
    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m12:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 12
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 13
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 14
    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m13:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 15
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 16
    iget-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 17
    iget-wide v2, p0, Ljavax/vecmath/Matrix4d;->m23:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 18
    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    return-void
.end method

.method public final transpose(Ljavax/vecmath/Matrix4d;)V
    .locals 2

    if-eq p0, p1, :cond_0

    .line 19
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m00:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m00:D

    .line 20
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m10:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m01:D

    .line 21
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m20:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m02:D

    .line 22
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m30:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m03:D

    .line 23
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m01:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m10:D

    .line 24
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m11:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m11:D

    .line 25
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m21:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m12:D

    .line 26
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m31:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m13:D

    .line 27
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m02:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m20:D

    .line 28
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m12:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m21:D

    .line 29
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m22:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m22:D

    .line 30
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m32:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m23:D

    .line 31
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m03:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m30:D

    .line 32
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m13:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m31:D

    .line 33
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m23:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m32:D

    .line 34
    iget-wide v0, p1, Ljavax/vecmath/Matrix4d;->m33:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix4d;->m33:D

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Ljavax/vecmath/Matrix4d;->transpose()V

    :goto_0
    return-void
.end method
