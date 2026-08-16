.class public Lcom/simsilica/mathd/Matrix4d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x2aL


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
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/simsilica/mathd/Matrix4d;->makeIdentity()V

    return-void
.end method

.method public constructor <init>(DDDDDDDDDDDDDDDD)V
    .locals 3

    move-object v0, p0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 4
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m00:D

    move-wide v1, p3

    .line 5
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m01:D

    move-wide v1, p5

    .line 6
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m02:D

    move-wide v1, p7

    .line 7
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m03:D

    move-wide v1, p9

    .line 8
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m10:D

    move-wide v1, p11

    .line 9
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m11:D

    move-wide/from16 v1, p13

    .line 10
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m12:D

    move-wide/from16 v1, p15

    .line 11
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m13:D

    move-wide/from16 v1, p17

    .line 12
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m20:D

    move-wide/from16 v1, p19

    .line 13
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m21:D

    move-wide/from16 v1, p21

    .line 14
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m22:D

    move-wide/from16 v1, p23

    .line 15
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m23:D

    move-wide/from16 v1, p25

    .line 16
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m30:D

    move-wide/from16 v1, p27

    .line 17
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m31:D

    move-wide/from16 v1, p29

    .line 18
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m32:D

    move-wide/from16 v1, p31

    .line 19
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m33:D

    return-void
.end method


# virtual methods
.method public clone()Lcom/simsilica/mathd/Matrix4d;
    .locals 38

    move-object/from16 v0, p0

    .line 2
    new-instance v34, Lcom/simsilica/mathd/Matrix4d;

    move-object/from16 v1, v34

    iget-wide v2, v0, Lcom/simsilica/mathd/Matrix4d;->m00:D

    iget-wide v4, v0, Lcom/simsilica/mathd/Matrix4d;->m01:D

    iget-wide v6, v0, Lcom/simsilica/mathd/Matrix4d;->m02:D

    iget-wide v8, v0, Lcom/simsilica/mathd/Matrix4d;->m03:D

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix4d;->m10:D

    iget-wide v12, v0, Lcom/simsilica/mathd/Matrix4d;->m11:D

    iget-wide v14, v0, Lcom/simsilica/mathd/Matrix4d;->m12:D

    move-object/from16 v35, v1

    move-wide/from16 v36, v2

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m13:D

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m20:D

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m21:D

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m22:D

    move-wide/from16 v22, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m23:D

    move-wide/from16 v24, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m30:D

    move-wide/from16 v26, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m31:D

    move-wide/from16 v28, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m32:D

    move-wide/from16 v30, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m33:D

    move-wide/from16 v32, v1

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-direct/range {v1 .. v33}, Lcom/simsilica/mathd/Matrix4d;-><init>(DDDDDDDDDDDDDDDD)V

    return-object v34
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/simsilica/mathd/Matrix4d;->clone()Lcom/simsilica/mathd/Matrix4d;

    move-result-object v0

    return-object v0
.end method

.method public determinant()D
    .locals 35

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m00:D

    iget-wide v3, v0, Lcom/simsilica/mathd/Matrix4d;->m11:D

    mul-double v5, v1, v3

    iget-wide v7, v0, Lcom/simsilica/mathd/Matrix4d;->m01:D

    iget-wide v9, v0, Lcom/simsilica/mathd/Matrix4d;->m10:D

    mul-double v11, v7, v9

    sub-double/2addr v5, v11

    iget-wide v11, v0, Lcom/simsilica/mathd/Matrix4d;->m12:D

    mul-double v13, v1, v11

    move-wide v15, v5

    iget-wide v5, v0, Lcom/simsilica/mathd/Matrix4d;->m02:D

    mul-double v17, v5, v9

    sub-double v13, v13, v17

    move-wide/from16 v17, v13

    iget-wide v13, v0, Lcom/simsilica/mathd/Matrix4d;->m13:D

    mul-double/2addr v1, v13

    move-wide/from16 v19, v13

    iget-wide v13, v0, Lcom/simsilica/mathd/Matrix4d;->m03:D

    mul-double/2addr v9, v13

    sub-double/2addr v1, v9

    mul-double v9, v7, v11

    mul-double v21, v5, v3

    sub-double v9, v9, v21

    mul-double v7, v7, v19

    mul-double/2addr v3, v13

    sub-double/2addr v7, v3

    mul-double v5, v5, v19

    mul-double/2addr v13, v11

    sub-double/2addr v5, v13

    iget-wide v3, v0, Lcom/simsilica/mathd/Matrix4d;->m20:D

    iget-wide v11, v0, Lcom/simsilica/mathd/Matrix4d;->m31:D

    mul-double v13, v3, v11

    move-wide/from16 v19, v5

    iget-wide v5, v0, Lcom/simsilica/mathd/Matrix4d;->m21:D

    move-wide/from16 v21, v7

    iget-wide v7, v0, Lcom/simsilica/mathd/Matrix4d;->m30:D

    mul-double v23, v5, v7

    sub-double v13, v13, v23

    move-wide/from16 v23, v13

    iget-wide v13, v0, Lcom/simsilica/mathd/Matrix4d;->m32:D

    mul-double v25, v3, v13

    move-wide/from16 v27, v9

    iget-wide v9, v0, Lcom/simsilica/mathd/Matrix4d;->m22:D

    mul-double v29, v9, v7

    sub-double v25, v25, v29

    move-wide/from16 v29, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m33:D

    mul-double/2addr v3, v1

    move-wide/from16 v31, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m23:D

    mul-double/2addr v7, v1

    sub-double/2addr v3, v7

    mul-double v7, v5, v13

    mul-double v33, v9, v11

    sub-double v7, v7, v33

    mul-double v5, v5, v31

    mul-double/2addr v11, v1

    sub-double/2addr v5, v11

    mul-double v9, v9, v31

    mul-double/2addr v1, v13

    sub-double/2addr v9, v1

    mul-double v1, v15, v9

    mul-double v13, v17, v5

    sub-double/2addr v1, v13

    mul-double v5, v29, v7

    add-double/2addr v1, v5

    mul-double v9, v27, v3

    add-double/2addr v1, v9

    mul-double v7, v21, v25

    sub-double/2addr v1, v7

    mul-double v5, v19, v23

    add-double/2addr v1, v5

    return-wide v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lcom/simsilica/mathd/Matrix4d;

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m00:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix4d;->m00:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m01:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix4d;->m01:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m02:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix4d;->m02:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m03:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix4d;->m03:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m10:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix4d;->m10:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_6

    return v1

    :cond_6
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m11:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix4d;->m11:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_7

    return v1

    :cond_7
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m12:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix4d;->m12:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_8

    return v1

    :cond_8
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m13:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix4d;->m13:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_9

    return v1

    :cond_9
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m20:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix4d;->m20:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_a

    return v1

    :cond_a
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m21:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix4d;->m21:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_b

    return v1

    :cond_b
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m22:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix4d;->m22:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_c

    return v1

    :cond_c
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m23:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix4d;->m23:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_d

    return v1

    :cond_d
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m30:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix4d;->m30:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_e

    return v1

    :cond_e
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m31:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix4d;->m31:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_f

    return v1

    :cond_f
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m32:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix4d;->m32:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_10

    return v1

    :cond_10
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m33:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix4d;->m33:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_11

    return v1

    :cond_11
    return v0

    :cond_12
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 6

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m00:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m01:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m02:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m03:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m10:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x5

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m11:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x6

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m12:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x7

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m13:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m20:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x9

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m21:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m22:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0xb

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m23:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0xc

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m30:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0xd

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m31:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0xe

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m32:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0xf

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m33:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x10

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    long-to-int v0, v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public invert()Lcom/simsilica/mathd/Matrix4d;
    .locals 98

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m00:D

    iget-wide v3, v0, Lcom/simsilica/mathd/Matrix4d;->m11:D

    mul-double v5, v1, v3

    iget-wide v7, v0, Lcom/simsilica/mathd/Matrix4d;->m01:D

    iget-wide v9, v0, Lcom/simsilica/mathd/Matrix4d;->m10:D

    mul-double v11, v7, v9

    sub-double/2addr v5, v11

    iget-wide v11, v0, Lcom/simsilica/mathd/Matrix4d;->m12:D

    mul-double v13, v1, v11

    move-wide v15, v5

    iget-wide v5, v0, Lcom/simsilica/mathd/Matrix4d;->m02:D

    mul-double v17, v5, v9

    sub-double v13, v13, v17

    move-wide/from16 v17, v13

    iget-wide v13, v0, Lcom/simsilica/mathd/Matrix4d;->m13:D

    mul-double v19, v1, v13

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m03:D

    mul-double v23, v1, v9

    sub-double v19, v19, v23

    mul-double v23, v7, v11

    mul-double v25, v5, v3

    sub-double v23, v23, v25

    mul-double v25, v7, v13

    mul-double v27, v1, v3

    sub-double v25, v25, v27

    mul-double v27, v5, v13

    mul-double v29, v1, v11

    sub-double v27, v27, v29

    move-wide/from16 v29, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m20:D

    move-wide/from16 v31, v5

    iget-wide v5, v0, Lcom/simsilica/mathd/Matrix4d;->m31:D

    mul-double v33, v1, v5

    move-wide/from16 v35, v7

    iget-wide v7, v0, Lcom/simsilica/mathd/Matrix4d;->m21:D

    move-wide/from16 v37, v9

    iget-wide v9, v0, Lcom/simsilica/mathd/Matrix4d;->m30:D

    mul-double v39, v7, v9

    sub-double v33, v33, v39

    move-wide/from16 v39, v13

    iget-wide v13, v0, Lcom/simsilica/mathd/Matrix4d;->m32:D

    mul-double v41, v1, v13

    move-wide/from16 v43, v11

    iget-wide v11, v0, Lcom/simsilica/mathd/Matrix4d;->m22:D

    mul-double v45, v11, v9

    sub-double v41, v41, v45

    move-wide/from16 v45, v3

    iget-wide v3, v0, Lcom/simsilica/mathd/Matrix4d;->m33:D

    mul-double v47, v1, v3

    move-wide/from16 v49, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m23:D

    mul-double v51, v1, v9

    sub-double v47, v47, v51

    mul-double v51, v7, v13

    mul-double v53, v11, v5

    sub-double v51, v51, v53

    mul-double v53, v7, v3

    mul-double v55, v1, v5

    sub-double v53, v53, v55

    mul-double v55, v11, v3

    mul-double v57, v1, v13

    sub-double v55, v55, v57

    mul-double v57, v15, v55

    mul-double v59, v17, v53

    sub-double v57, v57, v59

    mul-double v59, v19, v51

    add-double v57, v57, v59

    mul-double v59, v23, v47

    add-double v57, v57, v59

    mul-double v59, v25, v41

    sub-double v57, v57, v59

    mul-double v59, v27, v33

    add-double v57, v57, v59

    const-wide/16 v59, 0x0

    cmpl-double v59, v57, v59

    if-nez v59, :cond_0

    new-instance v1, Lcom/simsilica/mathd/Matrix4d;

    invoke-direct {v1}, Lcom/simsilica/mathd/Matrix4d;-><init>()V

    return-object v1

    :cond_0
    mul-double v59, v45, v55

    mul-double v61, v43, v53

    sub-double v59, v59, v61

    mul-double v61, v39, v51

    add-double v59, v59, v61

    move-wide/from16 v61, v1

    move-wide/from16 v0, v37

    move-wide/from16 v37, v11

    neg-double v11, v0

    mul-double v11, v11, v55

    mul-double v63, v43, v47

    add-double v11, v11, v63

    mul-double v63, v39, v41

    sub-double v11, v11, v63

    mul-double v63, v0, v53

    mul-double v65, v45, v47

    sub-double v63, v63, v65

    mul-double v39, v39, v33

    add-double v63, v63, v39

    neg-double v0, v0

    mul-double v0, v0, v51

    mul-double v39, v45, v41

    add-double v0, v0, v39

    mul-double v39, v43, v33

    sub-double v0, v0, v39

    move-wide/from16 v39, v0

    move-wide/from16 v0, v35

    move-wide/from16 v35, v11

    neg-double v11, v0

    mul-double v11, v11, v55

    mul-double v43, v31, v53

    add-double v11, v11, v43

    mul-double v43, v29, v51

    sub-double v11, v11, v43

    mul-double v43, v21, v55

    mul-double v45, v31, v47

    sub-double v43, v43, v45

    mul-double v45, v29, v41

    add-double v43, v43, v45

    move-wide/from16 v45, v11

    move-wide/from16 v11, v21

    move-wide/from16 v21, v7

    neg-double v7, v11

    mul-double v7, v7, v53

    mul-double v47, v47, v0

    add-double v7, v7, v47

    mul-double v29, v29, v33

    sub-double v7, v7, v29

    mul-double v11, v11, v51

    mul-double v0, v0, v41

    sub-double/2addr v11, v0

    mul-double v0, v31, v33

    add-double/2addr v11, v0

    mul-double v0, v5, v27

    mul-double v29, v13, v25

    sub-double v0, v0, v29

    mul-double v29, v3, v23

    add-double v0, v0, v29

    move-wide/from16 v29, v11

    neg-double v11, v9

    mul-double v11, v11, v27

    mul-double v31, v13, v19

    add-double v11, v11, v31

    mul-double v31, v3, v17

    sub-double v11, v11, v31

    mul-double v31, v9, v25

    mul-double v33, v5, v19

    sub-double v31, v31, v33

    mul-double/2addr v3, v15

    add-double v31, v31, v3

    neg-double v2, v9

    mul-double v2, v2, v23

    mul-double v5, v5, v17

    add-double/2addr v2, v5

    mul-double/2addr v13, v15

    sub-double/2addr v2, v13

    move-wide/from16 v4, v21

    neg-double v9, v4

    mul-double v9, v9, v27

    mul-double v13, v37, v25

    add-double/2addr v9, v13

    mul-double v13, v61, v23

    sub-double/2addr v9, v13

    mul-double v13, v49, v27

    mul-double v21, v37, v19

    sub-double v13, v13, v21

    mul-double v21, v61, v17

    add-double v13, v13, v21

    move-wide/from16 v21, v2

    move-wide/from16 v27, v7

    move-wide/from16 v2, v49

    neg-double v6, v2

    mul-double v6, v6, v25

    mul-double v19, v19, v4

    add-double v6, v6, v19

    mul-double v19, v61, v15

    sub-double v6, v6, v19

    mul-double v2, v2, v23

    mul-double v4, v4, v17

    sub-double/2addr v2, v4

    mul-double v4, v37, v15

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v4, v4, v57

    new-instance v8, Lcom/simsilica/mathd/Matrix4d;

    move-object/from16 v65, v8

    mul-double v66, v59, v4

    mul-double v68, v45, v4

    mul-double v70, v0, v4

    mul-double v72, v9, v4

    mul-double v74, v35, v4

    mul-double v76, v43, v4

    mul-double v78, v11, v4

    mul-double v80, v13, v4

    mul-double v82, v63, v4

    mul-double v84, v27, v4

    mul-double v86, v31, v4

    mul-double v88, v6, v4

    mul-double v90, v39, v4

    mul-double v92, v29, v4

    mul-double v94, v21, v4

    mul-double v96, v2, v4

    invoke-direct/range {v65 .. v97}, Lcom/simsilica/mathd/Matrix4d;-><init>(DDDDDDDDDDDDDDDD)V

    return-object v8
.end method

.method public isIdentity()Z
    .locals 6

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m00:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m01:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m02:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m03:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m10:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m11:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m12:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m13:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m20:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m21:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m22:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m23:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m30:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m31:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m32:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m33:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public makeIdentity()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m03:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m02:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m01:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m13:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m12:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m10:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m23:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m21:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m20:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m32:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m31:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m30:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m33:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m22:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m11:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m00:D

    return-void
.end method

.method public mult(Lcom/simsilica/mathd/Matrix4d;)Lcom/simsilica/mathd/Matrix4d;
    .locals 69

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-wide v2, v0, Lcom/simsilica/mathd/Matrix4d;->m00:D

    iget-wide v4, v1, Lcom/simsilica/mathd/Matrix4d;->m00:D

    mul-double v6, v2, v4

    iget-wide v8, v0, Lcom/simsilica/mathd/Matrix4d;->m01:D

    iget-wide v10, v1, Lcom/simsilica/mathd/Matrix4d;->m10:D

    mul-double v12, v8, v10

    add-double/2addr v6, v12

    iget-wide v12, v0, Lcom/simsilica/mathd/Matrix4d;->m02:D

    iget-wide v14, v1, Lcom/simsilica/mathd/Matrix4d;->m20:D

    mul-double v16, v12, v14

    add-double v6, v6, v16

    move-wide/from16 v16, v14

    iget-wide v14, v0, Lcom/simsilica/mathd/Matrix4d;->m03:D

    move-wide/from16 v18, v10

    iget-wide v10, v1, Lcom/simsilica/mathd/Matrix4d;->m30:D

    mul-double v20, v14, v10

    add-double v23, v6, v20

    .line 2
    iget-wide v6, v1, Lcom/simsilica/mathd/Matrix4d;->m01:D

    mul-double v20, v2, v6

    move-wide/from16 v49, v6

    iget-wide v6, v1, Lcom/simsilica/mathd/Matrix4d;->m11:D

    mul-double v25, v8, v6

    add-double v20, v20, v25

    move-wide/from16 v51, v6

    iget-wide v6, v1, Lcom/simsilica/mathd/Matrix4d;->m21:D

    mul-double v25, v12, v6

    add-double v20, v20, v25

    move-wide/from16 v53, v6

    iget-wide v6, v1, Lcom/simsilica/mathd/Matrix4d;->m31:D

    mul-double v25, v14, v6

    add-double v25, v20, v25

    move-wide/from16 v20, v6

    .line 3
    iget-wide v6, v1, Lcom/simsilica/mathd/Matrix4d;->m02:D

    mul-double v27, v2, v6

    move-wide/from16 v55, v6

    iget-wide v6, v1, Lcom/simsilica/mathd/Matrix4d;->m12:D

    mul-double v29, v8, v6

    add-double v27, v27, v29

    move-wide/from16 v57, v6

    iget-wide v6, v1, Lcom/simsilica/mathd/Matrix4d;->m22:D

    mul-double v29, v12, v6

    add-double v27, v27, v29

    move-wide/from16 v59, v6

    iget-wide v6, v1, Lcom/simsilica/mathd/Matrix4d;->m32:D

    mul-double v29, v14, v6

    add-double v27, v27, v29

    move-wide/from16 v61, v6

    .line 4
    iget-wide v6, v1, Lcom/simsilica/mathd/Matrix4d;->m03:D

    mul-double/2addr v2, v6

    move-wide/from16 v63, v6

    iget-wide v6, v1, Lcom/simsilica/mathd/Matrix4d;->m13:D

    mul-double/2addr v8, v6

    add-double/2addr v2, v8

    iget-wide v8, v1, Lcom/simsilica/mathd/Matrix4d;->m23:D

    mul-double/2addr v12, v8

    add-double/2addr v2, v12

    iget-wide v12, v1, Lcom/simsilica/mathd/Matrix4d;->m33:D

    mul-double/2addr v14, v12

    add-double v29, v2, v14

    .line 5
    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m10:D

    mul-double v14, v1, v4

    move-wide/from16 v47, v4

    iget-wide v3, v0, Lcom/simsilica/mathd/Matrix4d;->m11:D

    mul-double v31, v3, v18

    add-double v14, v14, v31

    move-wide/from16 v65, v12

    iget-wide v12, v0, Lcom/simsilica/mathd/Matrix4d;->m12:D

    mul-double v31, v12, v16

    add-double v14, v14, v31

    move-wide/from16 v67, v8

    iget-wide v8, v0, Lcom/simsilica/mathd/Matrix4d;->m13:D

    mul-double v31, v8, v10

    add-double v31, v14, v31

    mul-double v14, v1, v49

    mul-double v33, v3, v51

    add-double v14, v14, v33

    mul-double v33, v12, v53

    add-double v14, v14, v33

    mul-double v33, v8, v20

    add-double v33, v14, v33

    mul-double v14, v1, v55

    mul-double v35, v3, v57

    add-double v14, v14, v35

    mul-double v35, v12, v59

    add-double v14, v14, v35

    mul-double v35, v8, v61

    add-double v35, v14, v35

    mul-double v1, v1, v63

    mul-double/2addr v3, v6

    add-double/2addr v1, v3

    mul-double v12, v12, v67

    add-double/2addr v1, v12

    mul-double v8, v8, v65

    add-double v37, v1, v8

    .line 6
    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m20:D

    mul-double v4, v1, v47

    iget-wide v8, v0, Lcom/simsilica/mathd/Matrix4d;->m21:D

    mul-double v12, v8, v18

    add-double/2addr v4, v12

    iget-wide v12, v0, Lcom/simsilica/mathd/Matrix4d;->m22:D

    mul-double v14, v12, v16

    add-double/2addr v4, v14

    iget-wide v14, v0, Lcom/simsilica/mathd/Matrix4d;->m23:D

    mul-double v39, v14, v10

    add-double v39, v4, v39

    mul-double v3, v1, v49

    mul-double v41, v8, v51

    add-double v3, v3, v41

    mul-double v41, v12, v53

    add-double v3, v3, v41

    mul-double v41, v14, v20

    add-double v41, v3, v41

    mul-double v3, v1, v55

    mul-double v43, v8, v57

    add-double v3, v3, v43

    mul-double v43, v12, v59

    add-double v3, v3, v43

    mul-double v43, v14, v61

    add-double v43, v3, v43

    mul-double v1, v1, v63

    mul-double/2addr v8, v6

    add-double/2addr v1, v8

    mul-double v12, v12, v67

    add-double/2addr v1, v12

    mul-double v14, v14, v65

    add-double v45, v1, v14

    .line 7
    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m30:D

    mul-double v4, v1, v47

    iget-wide v8, v0, Lcom/simsilica/mathd/Matrix4d;->m31:D

    mul-double v12, v8, v18

    add-double/2addr v4, v12

    iget-wide v12, v0, Lcom/simsilica/mathd/Matrix4d;->m32:D

    mul-double v14, v12, v16

    add-double/2addr v4, v14

    iget-wide v14, v0, Lcom/simsilica/mathd/Matrix4d;->m33:D

    mul-double/2addr v10, v14

    add-double v47, v4, v10

    mul-double v3, v1, v49

    mul-double v10, v8, v51

    add-double/2addr v3, v10

    mul-double v10, v12, v53

    add-double/2addr v3, v10

    mul-double v10, v14, v20

    add-double v49, v3, v10

    mul-double v3, v1, v55

    mul-double v10, v8, v57

    add-double/2addr v3, v10

    mul-double v10, v12, v59

    add-double/2addr v3, v10

    mul-double v10, v14, v61

    add-double v51, v3, v10

    mul-double v1, v1, v63

    mul-double/2addr v8, v6

    add-double/2addr v1, v8

    mul-double v12, v12, v67

    add-double/2addr v1, v12

    mul-double v14, v14, v65

    add-double v53, v1, v14

    .line 8
    new-instance v1, Lcom/simsilica/mathd/Matrix4d;

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v54}, Lcom/simsilica/mathd/Matrix4d;-><init>(DDDDDDDDDDDDDDDD)V

    return-object v1
.end method

.method public mult(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 9
    iget-wide v2, v1, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 10
    iget-wide v4, v1, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 11
    iget-wide v6, v1, Lcom/simsilica/mathd/Vec3d;->z:D

    .line 12
    iget-wide v8, v0, Lcom/simsilica/mathd/Matrix4d;->m00:D

    mul-double/2addr v8, v2

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix4d;->m01:D

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix4d;->m02:D

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix4d;->m03:D

    add-double v13, v8, v10

    .line 13
    iget-wide v8, v0, Lcom/simsilica/mathd/Matrix4d;->m10:D

    mul-double/2addr v8, v2

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix4d;->m11:D

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix4d;->m12:D

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix4d;->m13:D

    add-double v15, v8, v10

    .line 14
    iget-wide v8, v0, Lcom/simsilica/mathd/Matrix4d;->m20:D

    mul-double/2addr v8, v2

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m21:D

    mul-double/2addr v1, v4

    add-double/2addr v8, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m22:D

    mul-double/2addr v1, v6

    add-double/2addr v8, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m23:D

    add-double v17, v8, v1

    .line 15
    new-instance v1, Lcom/simsilica/mathd/Vec3d;

    move-object v12, v1

    invoke-direct/range {v12 .. v18}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object v1
.end method

.method public mult(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 16
    iget-wide v2, v1, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 17
    iget-wide v4, v1, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 18
    iget-wide v6, v1, Lcom/simsilica/mathd/Vec3d;->z:D

    .line 19
    iget-wide v8, v0, Lcom/simsilica/mathd/Matrix4d;->m00:D

    mul-double/2addr v8, v2

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix4d;->m01:D

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix4d;->m02:D

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix4d;->m03:D

    add-double v13, v8, v10

    .line 20
    iget-wide v8, v0, Lcom/simsilica/mathd/Matrix4d;->m10:D

    mul-double/2addr v8, v2

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix4d;->m11:D

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix4d;->m12:D

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix4d;->m13:D

    add-double v15, v8, v10

    .line 21
    iget-wide v8, v0, Lcom/simsilica/mathd/Matrix4d;->m20:D

    mul-double/2addr v8, v2

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m21:D

    mul-double/2addr v1, v4

    add-double/2addr v8, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m22:D

    mul-double/2addr v1, v6

    add-double/2addr v8, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m23:D

    add-double v17, v8, v1

    if-nez p2, :cond_0

    .line 22
    new-instance v1, Lcom/simsilica/mathd/Vec3d;

    move-object v12, v1

    invoke-direct/range {v12 .. v18}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object v1

    :cond_0
    move-object/from16 v1, p2

    move-wide v2, v13

    move-wide v4, v15

    move-wide/from16 v6, v17

    .line 23
    invoke-virtual/range {v1 .. v7}, Lcom/simsilica/mathd/Vec3d;->set(DDD)Lcom/simsilica/mathd/Vec3d;

    return-object p2
.end method

.method public setTransform(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Matrix3d;)V
    .locals 2

    iget-wide v0, p2, Lcom/simsilica/mathd/Matrix3d;->m00:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m00:D

    iget-wide v0, p2, Lcom/simsilica/mathd/Matrix3d;->m01:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m01:D

    iget-wide v0, p2, Lcom/simsilica/mathd/Matrix3d;->m02:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m02:D

    iget-wide v0, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m03:D

    iget-wide v0, p2, Lcom/simsilica/mathd/Matrix3d;->m10:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m10:D

    iget-wide v0, p2, Lcom/simsilica/mathd/Matrix3d;->m11:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m11:D

    iget-wide v0, p2, Lcom/simsilica/mathd/Matrix3d;->m12:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m12:D

    iget-wide v0, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m13:D

    iget-wide v0, p2, Lcom/simsilica/mathd/Matrix3d;->m20:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m20:D

    iget-wide v0, p2, Lcom/simsilica/mathd/Matrix3d;->m21:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m21:D

    iget-wide v0, p2, Lcom/simsilica/mathd/Matrix3d;->m22:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix4d;->m22:D

    iget-wide p1, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    iput-wide p1, p0, Lcom/simsilica/mathd/Matrix4d;->m23:D

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/simsilica/mathd/Matrix4d;->m30:D

    iput-wide p1, p0, Lcom/simsilica/mathd/Matrix4d;->m31:D

    iput-wide p1, p0, Lcom/simsilica/mathd/Matrix4d;->m32:D

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    iput-wide p1, p0, Lcom/simsilica/mathd/Matrix4d;->m33:D

    return-void
.end method

.method public toRotationMatrix()Lcom/simsilica/mathd/Matrix3d;
    .locals 24

    move-object/from16 v0, p0

    new-instance v20, Lcom/simsilica/mathd/Matrix3d;

    move-object/from16 v1, v20

    iget-wide v2, v0, Lcom/simsilica/mathd/Matrix4d;->m00:D

    iget-wide v4, v0, Lcom/simsilica/mathd/Matrix4d;->m01:D

    iget-wide v6, v0, Lcom/simsilica/mathd/Matrix4d;->m02:D

    iget-wide v8, v0, Lcom/simsilica/mathd/Matrix4d;->m10:D

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix4d;->m11:D

    iget-wide v12, v0, Lcom/simsilica/mathd/Matrix4d;->m12:D

    iget-wide v14, v0, Lcom/simsilica/mathd/Matrix4d;->m20:D

    move-object/from16 v21, v1

    move-wide/from16 v22, v2

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m21:D

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m22:D

    move-wide/from16 v18, v1

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-direct/range {v1 .. v19}, Lcom/simsilica/mathd/Matrix3d;-><init>(DDDDDDDDD)V

    return-object v20
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Matrix4d[{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/simsilica/mathd/Matrix4d;->m00:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m01:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m02:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m03:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "}, {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/simsilica/mathd/Matrix4d;->m10:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/simsilica/mathd/Matrix4d;->m11:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/simsilica/mathd/Matrix4d;->m12:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/simsilica/mathd/Matrix4d;->m13:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/simsilica/mathd/Matrix4d;->m20:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/simsilica/mathd/Matrix4d;->m21:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/simsilica/mathd/Matrix4d;->m22:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/simsilica/mathd/Matrix4d;->m23:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m30:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m31:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix4d;->m32:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/simsilica/mathd/Matrix4d;->m33:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transpose()Lcom/simsilica/mathd/Matrix4d;
    .locals 38

    move-object/from16 v0, p0

    new-instance v34, Lcom/simsilica/mathd/Matrix4d;

    move-object/from16 v1, v34

    iget-wide v2, v0, Lcom/simsilica/mathd/Matrix4d;->m00:D

    iget-wide v4, v0, Lcom/simsilica/mathd/Matrix4d;->m10:D

    iget-wide v6, v0, Lcom/simsilica/mathd/Matrix4d;->m20:D

    iget-wide v8, v0, Lcom/simsilica/mathd/Matrix4d;->m30:D

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix4d;->m01:D

    iget-wide v12, v0, Lcom/simsilica/mathd/Matrix4d;->m11:D

    iget-wide v14, v0, Lcom/simsilica/mathd/Matrix4d;->m21:D

    move-object/from16 v35, v1

    move-wide/from16 v36, v2

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m31:D

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m02:D

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m12:D

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m22:D

    move-wide/from16 v22, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m32:D

    move-wide/from16 v24, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m03:D

    move-wide/from16 v26, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m13:D

    move-wide/from16 v28, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m23:D

    move-wide/from16 v30, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix4d;->m33:D

    move-wide/from16 v32, v1

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-direct/range {v1 .. v33}, Lcom/simsilica/mathd/Matrix4d;-><init>(DDDDDDDDDDDDDDDD)V

    return-object v34
.end method
