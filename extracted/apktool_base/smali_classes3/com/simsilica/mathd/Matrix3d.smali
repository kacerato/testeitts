.class public Lcom/simsilica/mathd/Matrix3d;
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

.field public m10:D

.field public m11:D

.field public m12:D

.field public m20:D

.field public m21:D

.field public m22:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/simsilica/mathd/Matrix3d;->makeIdentity()Lcom/simsilica/mathd/Matrix3d;

    return-void
.end method

.method public constructor <init>(DDDDDDDDD)V
    .locals 3

    move-object v0, p0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 4
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix3d;->m00:D

    move-wide v1, p3

    .line 5
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix3d;->m01:D

    move-wide v1, p5

    .line 6
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix3d;->m02:D

    move-wide v1, p7

    .line 7
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix3d;->m10:D

    move-wide v1, p9

    .line 8
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix3d;->m11:D

    move-wide v1, p11

    .line 9
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix3d;->m12:D

    move-wide/from16 v1, p13

    .line 10
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix3d;->m20:D

    move-wide/from16 v1, p15

    .line 11
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix3d;->m21:D

    move-wide/from16 v1, p17

    .line 12
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix3d;->m22:D

    return-void
.end method


# virtual methods
.method public addLocal(Lcom/simsilica/mathd/Matrix3d;)Lcom/simsilica/mathd/Matrix3d;
    .locals 4

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m00:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Matrix3d;->m00:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m00:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m01:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Matrix3d;->m01:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m01:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m02:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Matrix3d;->m02:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m02:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m10:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Matrix3d;->m10:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m10:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m11:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Matrix3d;->m11:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m11:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m12:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Matrix3d;->m12:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m12:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m20:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Matrix3d;->m20:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m20:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m21:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Matrix3d;->m21:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m21:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m22:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Matrix3d;->m22:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m22:D

    return-object p0
.end method

.method public clone()Lcom/simsilica/mathd/Matrix3d;
    .locals 24

    move-object/from16 v0, p0

    .line 2
    new-instance v20, Lcom/simsilica/mathd/Matrix3d;

    move-object/from16 v1, v20

    iget-wide v2, v0, Lcom/simsilica/mathd/Matrix3d;->m00:D

    iget-wide v4, v0, Lcom/simsilica/mathd/Matrix3d;->m01:D

    iget-wide v6, v0, Lcom/simsilica/mathd/Matrix3d;->m02:D

    iget-wide v8, v0, Lcom/simsilica/mathd/Matrix3d;->m10:D

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix3d;->m11:D

    iget-wide v12, v0, Lcom/simsilica/mathd/Matrix3d;->m12:D

    iget-wide v14, v0, Lcom/simsilica/mathd/Matrix3d;->m20:D

    move-object/from16 v21, v1

    move-wide/from16 v22, v2

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix3d;->m21:D

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix3d;->m22:D

    move-wide/from16 v18, v1

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-direct/range {v1 .. v19}, Lcom/simsilica/mathd/Matrix3d;-><init>(DDDDDDDDD)V

    return-object v20
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/simsilica/mathd/Matrix3d;->clone()Lcom/simsilica/mathd/Matrix3d;

    move-result-object v0

    return-object v0
.end method

.method public determinant()D
    .locals 14

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m11:D

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m22:D

    mul-double v4, v0, v2

    iget-wide v6, p0, Lcom/simsilica/mathd/Matrix3d;->m12:D

    iget-wide v8, p0, Lcom/simsilica/mathd/Matrix3d;->m21:D

    mul-double v10, v6, v8

    sub-double/2addr v4, v10

    iget-wide v10, p0, Lcom/simsilica/mathd/Matrix3d;->m20:D

    mul-double/2addr v6, v10

    iget-wide v12, p0, Lcom/simsilica/mathd/Matrix3d;->m10:D

    mul-double/2addr v2, v12

    sub-double/2addr v6, v2

    mul-double/2addr v12, v8

    mul-double/2addr v0, v10

    sub-double/2addr v12, v0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m00:D

    mul-double/2addr v0, v4

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m01:D

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m02:D

    mul-double/2addr v2, v12

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/simsilica/mathd/Matrix3d;

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m00:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix3d;->m00:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m01:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix3d;->m01:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m02:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix3d;->m02:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m10:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix3d;->m10:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m11:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix3d;->m11:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_6

    return v1

    :cond_6
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m12:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix3d;->m12:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_7

    return v1

    :cond_7
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m20:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix3d;->m20:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_8

    return v1

    :cond_8
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m21:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix3d;->m21:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_9

    return v1

    :cond_9
    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m22:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Matrix3d;->m22:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_a

    return v1

    :cond_a
    return v0

    :cond_b
    :goto_0
    return v1
.end method

.method public getColumn(I)Lcom/simsilica/mathd/Vec3d;
    .locals 14

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lcom/simsilica/mathd/Vec3d;

    iget-wide v1, p0, Lcom/simsilica/mathd/Matrix3d;->m02:D

    iget-wide v3, p0, Lcom/simsilica/mathd/Matrix3d;->m12:D

    iget-wide v5, p0, Lcom/simsilica/mathd/Matrix3d;->m22:D

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/simsilica/mathd/Vec3d;

    iget-wide v8, p0, Lcom/simsilica/mathd/Matrix3d;->m01:D

    iget-wide v10, p0, Lcom/simsilica/mathd/Matrix3d;->m11:D

    iget-wide v12, p0, Lcom/simsilica/mathd/Matrix3d;->m21:D

    move-object v7, p1

    invoke-direct/range {v7 .. v13}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/simsilica/mathd/Vec3d;

    iget-wide v1, p0, Lcom/simsilica/mathd/Matrix3d;->m00:D

    iget-wide v3, p0, Lcom/simsilica/mathd/Matrix3d;->m10:D

    iget-wide v5, p0, Lcom/simsilica/mathd/Matrix3d;->m20:D

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object p1
.end method

.method public hashCode()I
    .locals 6

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m00:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m01:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m02:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m10:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m11:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x5

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m12:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x6

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m20:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x7

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m21:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m22:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x9

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    long-to-int v0, v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public invert()Lcom/simsilica/mathd/Matrix3d;
    .locals 44

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/simsilica/mathd/Matrix3d;->determinant()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-nez v3, :cond_0

    new-instance v1, Lcom/simsilica/mathd/Matrix3d;

    invoke-direct {v1}, Lcom/simsilica/mathd/Matrix3d;-><init>()V

    return-object v1

    :cond_0
    iget-wide v3, v0, Lcom/simsilica/mathd/Matrix3d;->m11:D

    iget-wide v5, v0, Lcom/simsilica/mathd/Matrix3d;->m22:D

    mul-double v7, v3, v5

    iget-wide v9, v0, Lcom/simsilica/mathd/Matrix3d;->m12:D

    iget-wide v11, v0, Lcom/simsilica/mathd/Matrix3d;->m21:D

    mul-double v13, v9, v11

    sub-double/2addr v7, v13

    iget-wide v13, v0, Lcom/simsilica/mathd/Matrix3d;->m02:D

    mul-double v15, v13, v11

    move-wide/from16 v17, v7

    iget-wide v7, v0, Lcom/simsilica/mathd/Matrix3d;->m01:D

    mul-double v19, v7, v5

    sub-double v15, v15, v19

    mul-double v19, v7, v9

    mul-double v21, v13, v3

    sub-double v19, v19, v21

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix3d;->m20:D

    mul-double v23, v9, v1

    move-wide/from16 v25, v7

    iget-wide v7, v0, Lcom/simsilica/mathd/Matrix3d;->m10:D

    mul-double v27, v7, v5

    sub-double v23, v23, v27

    move-wide/from16 v27, v3

    iget-wide v3, v0, Lcom/simsilica/mathd/Matrix3d;->m00:D

    mul-double/2addr v5, v3

    mul-double v29, v13, v1

    sub-double v5, v5, v29

    mul-double/2addr v13, v7

    mul-double/2addr v9, v3

    sub-double/2addr v13, v9

    mul-double v9, v7, v11

    mul-double v29, v27, v1

    sub-double v9, v9, v29

    mul-double v1, v1, v25

    mul-double/2addr v11, v3

    sub-double/2addr v1, v11

    mul-double v3, v3, v27

    mul-double v7, v7, v25

    sub-double/2addr v3, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double v7, v7, v21

    new-instance v11, Lcom/simsilica/mathd/Matrix3d;

    move-object/from16 v25, v11

    mul-double v26, v17, v7

    mul-double v28, v15, v7

    mul-double v30, v19, v7

    mul-double v32, v23, v7

    mul-double v34, v5, v7

    mul-double v36, v13, v7

    mul-double v38, v9, v7

    mul-double v40, v1, v7

    mul-double v42, v3, v7

    invoke-direct/range {v25 .. v43}, Lcom/simsilica/mathd/Matrix3d;-><init>(DDDDDDDDD)V

    return-object v11
.end method

.method public isIdentity()Z
    .locals 6

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m00:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m01:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m02:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m10:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m11:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m12:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m20:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m21:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m22:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public makeIdentity()Lcom/simsilica/mathd/Matrix3d;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m21:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m20:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m12:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m10:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m02:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m01:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m22:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m11:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m00:D

    return-object p0
.end method

.method public mult(Lcom/simsilica/mathd/Matrix3d;)Lcom/simsilica/mathd/Matrix3d;
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-wide v2, v0, Lcom/simsilica/mathd/Matrix3d;->m00:D

    iget-wide v4, v1, Lcom/simsilica/mathd/Matrix3d;->m00:D

    mul-double v6, v2, v4

    iget-wide v8, v0, Lcom/simsilica/mathd/Matrix3d;->m01:D

    iget-wide v10, v1, Lcom/simsilica/mathd/Matrix3d;->m10:D

    mul-double v12, v8, v10

    add-double/2addr v6, v12

    iget-wide v12, v0, Lcom/simsilica/mathd/Matrix3d;->m02:D

    iget-wide v14, v1, Lcom/simsilica/mathd/Matrix3d;->m20:D

    mul-double v16, v12, v14

    add-double v19, v6, v16

    .line 2
    iget-wide v6, v1, Lcom/simsilica/mathd/Matrix3d;->m01:D

    mul-double v16, v2, v6

    move-wide/from16 v33, v6

    iget-wide v6, v1, Lcom/simsilica/mathd/Matrix3d;->m11:D

    mul-double v21, v8, v6

    add-double v16, v16, v21

    move-wide/from16 v35, v6

    iget-wide v6, v1, Lcom/simsilica/mathd/Matrix3d;->m21:D

    mul-double v21, v12, v6

    add-double v21, v16, v21

    move-wide/from16 v16, v6

    .line 3
    iget-wide v6, v1, Lcom/simsilica/mathd/Matrix3d;->m02:D

    mul-double/2addr v2, v6

    move-wide/from16 v37, v6

    iget-wide v6, v1, Lcom/simsilica/mathd/Matrix3d;->m12:D

    mul-double/2addr v8, v6

    add-double/2addr v2, v8

    iget-wide v8, v1, Lcom/simsilica/mathd/Matrix3d;->m22:D

    mul-double/2addr v12, v8

    add-double v23, v2, v12

    .line 4
    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix3d;->m10:D

    mul-double v12, v1, v4

    move-wide/from16 v31, v4

    iget-wide v3, v0, Lcom/simsilica/mathd/Matrix3d;->m11:D

    mul-double v25, v3, v10

    add-double v12, v12, v25

    move-wide/from16 v39, v10

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix3d;->m12:D

    mul-double v25, v10, v14

    add-double v25, v12, v25

    mul-double v12, v1, v33

    mul-double v27, v3, v35

    add-double v12, v12, v27

    mul-double v27, v10, v16

    add-double v27, v12, v27

    mul-double v1, v1, v37

    mul-double/2addr v3, v6

    add-double/2addr v1, v3

    mul-double/2addr v10, v8

    add-double v29, v1, v10

    .line 5
    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix3d;->m20:D

    mul-double v4, v1, v31

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix3d;->m21:D

    mul-double v12, v10, v39

    add-double/2addr v4, v12

    iget-wide v12, v0, Lcom/simsilica/mathd/Matrix3d;->m22:D

    mul-double/2addr v14, v12

    add-double v31, v4, v14

    mul-double v3, v1, v33

    mul-double v14, v10, v35

    add-double/2addr v3, v14

    mul-double v14, v12, v16

    add-double v33, v3, v14

    mul-double v1, v1, v37

    mul-double/2addr v10, v6

    add-double/2addr v1, v10

    mul-double/2addr v12, v8

    add-double v35, v1, v12

    .line 6
    new-instance v1, Lcom/simsilica/mathd/Matrix3d;

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v36}, Lcom/simsilica/mathd/Matrix3d;-><init>(DDDDDDDDD)V

    return-object v1
.end method

.method public mult(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 7
    iget-wide v2, v1, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 8
    iget-wide v4, v1, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 9
    iget-wide v6, v1, Lcom/simsilica/mathd/Vec3d;->z:D

    .line 10
    iget-wide v8, v0, Lcom/simsilica/mathd/Matrix3d;->m00:D

    mul-double/2addr v8, v2

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix3d;->m01:D

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix3d;->m02:D

    mul-double/2addr v10, v6

    add-double v13, v8, v10

    .line 11
    iget-wide v8, v0, Lcom/simsilica/mathd/Matrix3d;->m10:D

    mul-double/2addr v8, v2

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix3d;->m11:D

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix3d;->m12:D

    mul-double/2addr v10, v6

    add-double v15, v8, v10

    .line 12
    iget-wide v8, v0, Lcom/simsilica/mathd/Matrix3d;->m20:D

    mul-double/2addr v8, v2

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix3d;->m21:D

    mul-double/2addr v1, v4

    add-double/2addr v8, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix3d;->m22:D

    mul-double/2addr v1, v6

    add-double v17, v8, v1

    .line 13
    new-instance v1, Lcom/simsilica/mathd/Vec3d;

    move-object v12, v1

    invoke-direct/range {v12 .. v18}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object v1
.end method

.method public multLocal(D)Lcom/simsilica/mathd/Matrix3d;
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m00:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m00:D

    .line 16
    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m01:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m01:D

    .line 17
    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m02:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m02:D

    .line 18
    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m10:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m10:D

    .line 19
    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m11:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m11:D

    .line 20
    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m12:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m12:D

    .line 21
    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m20:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m20:D

    .line 22
    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m21:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m21:D

    .line 23
    iget-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m22:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m22:D

    return-object p0
.end method

.method public multLocal(Lcom/simsilica/mathd/Matrix3d;)Lcom/simsilica/mathd/Matrix3d;
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-wide v2, v0, Lcom/simsilica/mathd/Matrix3d;->m00:D

    iget-wide v4, v1, Lcom/simsilica/mathd/Matrix3d;->m00:D

    mul-double v6, v2, v4

    iget-wide v8, v0, Lcom/simsilica/mathd/Matrix3d;->m01:D

    iget-wide v10, v1, Lcom/simsilica/mathd/Matrix3d;->m10:D

    mul-double v12, v8, v10

    add-double/2addr v6, v12

    iget-wide v12, v0, Lcom/simsilica/mathd/Matrix3d;->m02:D

    iget-wide v14, v1, Lcom/simsilica/mathd/Matrix3d;->m20:D

    mul-double v16, v12, v14

    add-double v6, v6, v16

    move-wide/from16 v16, v6

    .line 2
    iget-wide v6, v1, Lcom/simsilica/mathd/Matrix3d;->m01:D

    mul-double v18, v2, v6

    move-wide/from16 v20, v6

    iget-wide v6, v1, Lcom/simsilica/mathd/Matrix3d;->m11:D

    mul-double v22, v8, v6

    add-double v18, v18, v22

    move-wide/from16 v22, v6

    iget-wide v6, v1, Lcom/simsilica/mathd/Matrix3d;->m21:D

    mul-double v24, v12, v6

    move-wide/from16 v26, v6

    add-double v6, v18, v24

    move-wide/from16 v18, v6

    .line 3
    iget-wide v6, v1, Lcom/simsilica/mathd/Matrix3d;->m02:D

    mul-double/2addr v2, v6

    move-wide/from16 v24, v6

    iget-wide v6, v1, Lcom/simsilica/mathd/Matrix3d;->m12:D

    mul-double/2addr v8, v6

    add-double/2addr v2, v8

    iget-wide v8, v1, Lcom/simsilica/mathd/Matrix3d;->m22:D

    mul-double/2addr v12, v8

    add-double/2addr v2, v12

    .line 4
    iget-wide v12, v0, Lcom/simsilica/mathd/Matrix3d;->m10:D

    mul-double v28, v12, v4

    move-wide/from16 v30, v2

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix3d;->m11:D

    mul-double v32, v1, v10

    add-double v28, v28, v32

    move-wide/from16 v32, v10

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix3d;->m12:D

    mul-double v34, v10, v14

    move-wide/from16 v36, v14

    add-double v14, v28, v34

    mul-double v28, v12, v20

    mul-double v34, v1, v22

    add-double v28, v28, v34

    mul-double v34, v10, v26

    move-wide/from16 v38, v14

    add-double v14, v28, v34

    mul-double v12, v12, v24

    mul-double/2addr v1, v6

    add-double/2addr v12, v1

    mul-double/2addr v10, v8

    add-double/2addr v12, v10

    .line 5
    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix3d;->m20:D

    mul-double/2addr v4, v1

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix3d;->m21:D

    mul-double v28, v10, v32

    add-double v4, v4, v28

    move-wide/from16 v28, v12

    iget-wide v12, v0, Lcom/simsilica/mathd/Matrix3d;->m22:D

    mul-double v32, v12, v36

    add-double v4, v4, v32

    mul-double v20, v20, v1

    mul-double v22, v22, v10

    add-double v20, v20, v22

    mul-double v22, v12, v26

    move-wide/from16 v26, v4

    add-double v3, v20, v22

    mul-double v1, v1, v24

    mul-double/2addr v10, v6

    add-double/2addr v1, v10

    mul-double/2addr v12, v8

    add-double/2addr v1, v12

    move-wide/from16 v6, v16

    .line 6
    iput-wide v6, v0, Lcom/simsilica/mathd/Matrix3d;->m00:D

    move-wide/from16 v5, v18

    .line 7
    iput-wide v5, v0, Lcom/simsilica/mathd/Matrix3d;->m01:D

    move-wide/from16 v5, v30

    .line 8
    iput-wide v5, v0, Lcom/simsilica/mathd/Matrix3d;->m02:D

    move-wide/from16 v5, v38

    .line 9
    iput-wide v5, v0, Lcom/simsilica/mathd/Matrix3d;->m10:D

    .line 10
    iput-wide v14, v0, Lcom/simsilica/mathd/Matrix3d;->m11:D

    move-wide/from16 v12, v28

    .line 11
    iput-wide v12, v0, Lcom/simsilica/mathd/Matrix3d;->m12:D

    move-wide/from16 v5, v26

    .line 12
    iput-wide v5, v0, Lcom/simsilica/mathd/Matrix3d;->m20:D

    .line 13
    iput-wide v3, v0, Lcom/simsilica/mathd/Matrix3d;->m21:D

    .line 14
    iput-wide v1, v0, Lcom/simsilica/mathd/Matrix3d;->m22:D

    return-object v0
.end method

.method public set(Lcom/simsilica/mathd/Matrix3d;)Lcom/simsilica/mathd/Matrix3d;
    .locals 2

    iget-wide v0, p1, Lcom/simsilica/mathd/Matrix3d;->m00:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m00:D

    iget-wide v0, p1, Lcom/simsilica/mathd/Matrix3d;->m01:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m01:D

    iget-wide v0, p1, Lcom/simsilica/mathd/Matrix3d;->m02:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m02:D

    iget-wide v0, p1, Lcom/simsilica/mathd/Matrix3d;->m10:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m10:D

    iget-wide v0, p1, Lcom/simsilica/mathd/Matrix3d;->m11:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m11:D

    iget-wide v0, p1, Lcom/simsilica/mathd/Matrix3d;->m12:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m12:D

    iget-wide v0, p1, Lcom/simsilica/mathd/Matrix3d;->m20:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m20:D

    iget-wide v0, p1, Lcom/simsilica/mathd/Matrix3d;->m21:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m21:D

    iget-wide v0, p1, Lcom/simsilica/mathd/Matrix3d;->m22:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m22:D

    return-object p0
.end method

.method public setColumn(ILcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Matrix3d;
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-wide v0, p2, Lcom/simsilica/mathd/Vec3d;->x:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m02:D

    iget-wide v0, p2, Lcom/simsilica/mathd/Vec3d;->y:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m12:D

    iget-wide p1, p2, Lcom/simsilica/mathd/Vec3d;->z:D

    iput-wide p1, p0, Lcom/simsilica/mathd/Matrix3d;->m22:D

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Column does not exist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    iget-wide v0, p2, Lcom/simsilica/mathd/Vec3d;->x:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m01:D

    iget-wide v0, p2, Lcom/simsilica/mathd/Vec3d;->y:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m11:D

    iget-wide p1, p2, Lcom/simsilica/mathd/Vec3d;->z:D

    iput-wide p1, p0, Lcom/simsilica/mathd/Matrix3d;->m21:D

    goto :goto_0

    :cond_2
    iget-wide v0, p2, Lcom/simsilica/mathd/Vec3d;->x:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m00:D

    iget-wide v0, p2, Lcom/simsilica/mathd/Vec3d;->y:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m10:D

    iget-wide p1, p2, Lcom/simsilica/mathd/Vec3d;->z:D

    iput-wide p1, p0, Lcom/simsilica/mathd/Matrix3d;->m20:D

    :goto_0
    return-object p0
.end method

.method public setSkewSymmetric(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Matrix3d;
    .locals 6

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m00:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m11:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m22:D

    iget-wide v0, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    neg-double v2, v0

    iput-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m01:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    iput-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m02:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m10:D

    iget-wide v0, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    neg-double v4, v0

    iput-wide v4, p0, Lcom/simsilica/mathd/Matrix3d;->m12:D

    neg-double v2, v2

    iput-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m20:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Matrix3d;->m21:D

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Matrix3d[{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/simsilica/mathd/Matrix3d;->m00:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m01:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m02:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "}, {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/simsilica/mathd/Matrix3d;->m10:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/simsilica/mathd/Matrix3d;->m11:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/simsilica/mathd/Matrix3d;->m12:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m20:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/simsilica/mathd/Matrix3d;->m21:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/simsilica/mathd/Matrix3d;->m22:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transpose()Lcom/simsilica/mathd/Matrix3d;
    .locals 24

    move-object/from16 v0, p0

    new-instance v20, Lcom/simsilica/mathd/Matrix3d;

    move-object/from16 v1, v20

    iget-wide v2, v0, Lcom/simsilica/mathd/Matrix3d;->m00:D

    iget-wide v4, v0, Lcom/simsilica/mathd/Matrix3d;->m10:D

    iget-wide v6, v0, Lcom/simsilica/mathd/Matrix3d;->m20:D

    iget-wide v8, v0, Lcom/simsilica/mathd/Matrix3d;->m01:D

    iget-wide v10, v0, Lcom/simsilica/mathd/Matrix3d;->m11:D

    iget-wide v12, v0, Lcom/simsilica/mathd/Matrix3d;->m21:D

    iget-wide v14, v0, Lcom/simsilica/mathd/Matrix3d;->m02:D

    move-object/from16 v21, v1

    move-wide/from16 v22, v2

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix3d;->m12:D

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Matrix3d;->m22:D

    move-wide/from16 v18, v1

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-direct/range {v1 .. v19}, Lcom/simsilica/mathd/Matrix3d;-><init>(DDDDDDDDD)V

    return-object v20
.end method
