.class public final Lcom/simsilica/mathd/Quatd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x2aL


# instance fields
.field public w:D

.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 9

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/simsilica/mathd/Quatd;-><init>(DDDD)V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/simsilica/mathd/Quatd;->x:D

    .line 4
    iput-wide p3, p0, Lcom/simsilica/mathd/Quatd;->y:D

    .line 5
    iput-wide p5, p0, Lcom/simsilica/mathd/Quatd;->z:D

    .line 6
    iput-wide p7, p0, Lcom/simsilica/mathd/Quatd;->w:D

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Quaternion;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->x:D

    .line 10
    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->y:D

    .line 11
    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->z:D

    .line 12
    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getW()F

    move-result p1

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->w:D

    return-void
.end method

.method public constructor <init>(Lcom/simsilica/mathd/Quatd;)V
    .locals 9

    .line 7
    iget-wide v1, p1, Lcom/simsilica/mathd/Quatd;->x:D

    iget-wide v3, p1, Lcom/simsilica/mathd/Quatd;->y:D

    iget-wide v5, p1, Lcom/simsilica/mathd/Quatd;->z:D

    iget-wide v7, p1, Lcom/simsilica/mathd/Quatd;->w:D

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/simsilica/mathd/Quatd;-><init>(DDDD)V

    return-void
.end method


# virtual methods
.method public final add(Lcom/simsilica/mathd/Quatd;)Lcom/simsilica/mathd/Quatd;
    .locals 12

    new-instance v9, Lcom/simsilica/mathd/Quatd;

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Quatd;->x:D

    add-double v1, v0, v2

    iget-wide v3, p0, Lcom/simsilica/mathd/Quatd;->y:D

    iget-wide v5, p1, Lcom/simsilica/mathd/Quatd;->y:D

    add-double/2addr v3, v5

    iget-wide v5, p0, Lcom/simsilica/mathd/Quatd;->z:D

    iget-wide v7, p1, Lcom/simsilica/mathd/Quatd;->z:D

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/simsilica/mathd/Quatd;->w:D

    iget-wide v10, p1, Lcom/simsilica/mathd/Quatd;->w:D

    add-double/2addr v7, v10

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/simsilica/mathd/Quatd;-><init>(DDDD)V

    return-object v9
.end method

.method public final addLocal(Lcom/simsilica/mathd/Quatd;)Lcom/simsilica/mathd/Quatd;
    .locals 4

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Quatd;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->x:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->y:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Quatd;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->y:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->z:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Quatd;->z:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->z:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->w:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Quatd;->w:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->w:D

    return-object p0
.end method

.method public final addScaledVectorLocal(Lcom/simsilica/mathd/Vec3d;D)Lcom/simsilica/mathd/Quatd;
    .locals 10

    new-instance v9, Lcom/simsilica/mathd/Quatd;

    iget-wide v0, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    mul-double v1, v0, p2

    iget-wide v3, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    mul-double/2addr v3, p2

    iget-wide v5, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    mul-double/2addr v5, p2

    const-wide/16 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/simsilica/mathd/Quatd;-><init>(DDDD)V

    invoke-virtual {v9, p0}, Lcom/simsilica/mathd/Quatd;->multLocal(Lcom/simsilica/mathd/Quatd;)Lcom/simsilica/mathd/Quatd;

    iget-wide p1, p0, Lcom/simsilica/mathd/Quatd;->x:D

    iget-wide v0, v9, Lcom/simsilica/mathd/Quatd;->x:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    add-double/2addr p1, v0

    iput-wide p1, p0, Lcom/simsilica/mathd/Quatd;->x:D

    iget-wide p1, p0, Lcom/simsilica/mathd/Quatd;->y:D

    iget-wide v0, v9, Lcom/simsilica/mathd/Quatd;->y:D

    mul-double/2addr v0, v2

    add-double/2addr p1, v0

    iput-wide p1, p0, Lcom/simsilica/mathd/Quatd;->y:D

    iget-wide p1, p0, Lcom/simsilica/mathd/Quatd;->z:D

    iget-wide v0, v9, Lcom/simsilica/mathd/Quatd;->z:D

    mul-double/2addr v0, v2

    add-double/2addr p1, v0

    iput-wide p1, p0, Lcom/simsilica/mathd/Quatd;->z:D

    iget-wide p1, p0, Lcom/simsilica/mathd/Quatd;->w:D

    iget-wide v0, v9, Lcom/simsilica/mathd/Quatd;->w:D

    mul-double/2addr v0, v2

    add-double/2addr p1, v0

    iput-wide p1, p0, Lcom/simsilica/mathd/Quatd;->w:D

    return-object p0
.end method

.method public final clone()Lcom/simsilica/mathd/Quatd;
    .locals 10

    .line 2
    new-instance v9, Lcom/simsilica/mathd/Quatd;

    iget-wide v1, p0, Lcom/simsilica/mathd/Quatd;->x:D

    iget-wide v3, p0, Lcom/simsilica/mathd/Quatd;->y:D

    iget-wide v5, p0, Lcom/simsilica/mathd/Quatd;->z:D

    iget-wide v7, p0, Lcom/simsilica/mathd/Quatd;->w:D

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/simsilica/mathd/Quatd;-><init>(DDDD)V

    return-object v9
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/simsilica/mathd/Quatd;->clone()Lcom/simsilica/mathd/Quatd;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/simsilica/mathd/Quatd;

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/simsilica/mathd/Quatd;

    iget-wide v2, p0, Lcom/simsilica/mathd/Quatd;->x:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Quatd;->x:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Lcom/simsilica/mathd/Quatd;->y:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Quatd;->y:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Lcom/simsilica/mathd/Quatd;->z:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Quatd;->z:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Lcom/simsilica/mathd/Quatd;->w:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Quatd;->w:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public fromAngles(DDD)Lcom/simsilica/mathd/Quatd;
    .locals 17

    move-object/from16 v0, p0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    mul-double v3, p5, v1

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    .line 3
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v7, p3, v1

    .line 4
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .line 5
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v1, v1, p1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double v13, v7, v3

    mul-double v15, v9, v5

    mul-double/2addr v7, v5

    mul-double/2addr v9, v3

    mul-double v3, v13, v1

    mul-double v5, v15, v11

    sub-double/2addr v3, v5

    .line 8
    iput-wide v3, v0, Lcom/simsilica/mathd/Quatd;->w:D

    mul-double/2addr v13, v11

    mul-double/2addr v15, v1

    add-double/2addr v13, v15

    .line 9
    iput-wide v13, v0, Lcom/simsilica/mathd/Quatd;->x:D

    mul-double v3, v9, v1

    mul-double v5, v7, v11

    add-double/2addr v3, v5

    .line 10
    iput-wide v3, v0, Lcom/simsilica/mathd/Quatd;->y:D

    mul-double/2addr v7, v1

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    .line 11
    iput-wide v7, v0, Lcom/simsilica/mathd/Quatd;->z:D

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/simsilica/mathd/Quatd;->normalizeLocal()Lcom/simsilica/mathd/Quatd;

    return-object v0
.end method

.method public fromAngles([D)Lcom/simsilica/mathd/Quatd;
    .locals 8

    const/4 v0, 0x0

    .line 1
    aget-wide v2, p1, v0

    const/4 v0, 0x1

    aget-wide v4, p1, v0

    const/4 v0, 0x2

    aget-wide v6, p1, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/simsilica/mathd/Quatd;->fromAngles(DDD)Lcom/simsilica/mathd/Quatd;

    move-result-object p1

    return-object p1
.end method

.method public get(I)D
    .locals 3

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->w:D

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->z:D

    return-wide v0

    :cond_2
    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->y:D

    return-wide v0

    :cond_3
    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->x:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/simsilica/mathd/Quatd;->y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Quatd;->z:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Quatd;->w:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    long-to-int v0, v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public inverse()Lcom/simsilica/mathd/Quatd;
    .locals 13

    invoke-virtual {p0}, Lcom/simsilica/mathd/Quatd;->lengthSq()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    new-instance v0, Lcom/simsilica/mathd/Quatd;

    iget-wide v4, p0, Lcom/simsilica/mathd/Quatd;->x:D

    neg-double v4, v4

    mul-double v5, v4, v2

    iget-wide v7, p0, Lcom/simsilica/mathd/Quatd;->y:D

    neg-double v7, v7

    mul-double/2addr v7, v2

    iget-wide v9, p0, Lcom/simsilica/mathd/Quatd;->z:D

    neg-double v9, v9

    mul-double/2addr v9, v2

    iget-wide v11, p0, Lcom/simsilica/mathd/Quatd;->w:D

    mul-double/2addr v11, v2

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lcom/simsilica/mathd/Quatd;-><init>(DDDD)V

    return-object v0
.end method

.method public isRotationIdentity()Z
    .locals 4

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->x:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->y:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->z:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->w:D

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSimilar(Lcom/simsilica/mathd/Quatd;D)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-wide v1, p1, Lcom/simsilica/mathd/Quatd;->x:D

    iget-wide v3, p0, Lcom/simsilica/mathd/Quatd;->x:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-lez v1, :cond_1

    return v0

    :cond_1
    iget-wide v1, p1, Lcom/simsilica/mathd/Quatd;->y:D

    iget-wide v3, p0, Lcom/simsilica/mathd/Quatd;->y:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-lez v1, :cond_2

    return v0

    :cond_2
    iget-wide v1, p1, Lcom/simsilica/mathd/Quatd;->z:D

    iget-wide v3, p0, Lcom/simsilica/mathd/Quatd;->z:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-lez v1, :cond_3

    return v0

    :cond_3
    iget-wide v1, p1, Lcom/simsilica/mathd/Quatd;->w:D

    iget-wide v3, p0, Lcom/simsilica/mathd/Quatd;->w:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-lez p1, :cond_4

    return v0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public isZero()Z
    .locals 4

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->x:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->y:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->z:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->w:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final lengthSq()D
    .locals 4

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Lcom/simsilica/mathd/Quatd;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Quatd;->z:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Quatd;->w:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final mult(Lcom/simsilica/mathd/Quatd;)Lcom/simsilica/mathd/Quatd;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-wide v2, v1, Lcom/simsilica/mathd/Quatd;->x:D

    .line 2
    iget-wide v4, v1, Lcom/simsilica/mathd/Quatd;->y:D

    .line 3
    iget-wide v6, v1, Lcom/simsilica/mathd/Quatd;->z:D

    .line 4
    iget-wide v8, v1, Lcom/simsilica/mathd/Quatd;->w:D

    .line 5
    iget-wide v10, v0, Lcom/simsilica/mathd/Quatd;->x:D

    mul-double v12, v10, v8

    iget-wide v14, v0, Lcom/simsilica/mathd/Quatd;->y:D

    mul-double v16, v14, v6

    add-double v12, v12, v16

    move-wide/from16 v16, v8

    iget-wide v8, v0, Lcom/simsilica/mathd/Quatd;->z:D

    mul-double v18, v8, v4

    sub-double v12, v12, v18

    move-wide/from16 v18, v4

    iget-wide v4, v0, Lcom/simsilica/mathd/Quatd;->w:D

    mul-double v20, v4, v2

    add-double v23, v12, v20

    neg-double v12, v10

    mul-double/2addr v12, v6

    mul-double v20, v14, v16

    add-double v12, v12, v20

    mul-double v20, v8, v2

    add-double v12, v12, v20

    mul-double v20, v4, v18

    add-double v25, v12, v20

    mul-double v12, v10, v18

    mul-double v20, v14, v2

    sub-double v12, v12, v20

    mul-double v20, v8, v16

    add-double v12, v12, v20

    mul-double v20, v4, v6

    add-double v27, v12, v20

    neg-double v10, v10

    mul-double/2addr v10, v2

    mul-double v14, v14, v18

    sub-double/2addr v10, v14

    mul-double/2addr v8, v6

    sub-double/2addr v10, v8

    mul-double v4, v4, v16

    add-double v29, v10, v4

    .line 6
    new-instance v1, Lcom/simsilica/mathd/Quatd;

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v30}, Lcom/simsilica/mathd/Quatd;-><init>(DDDD)V

    return-object v1
.end method

.method public final mult(Lcom/simsilica/mathd/Quatd;Lcom/simsilica/mathd/Quatd;)Lcom/simsilica/mathd/Quatd;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 7
    iget-wide v2, v1, Lcom/simsilica/mathd/Quatd;->x:D

    .line 8
    iget-wide v4, v1, Lcom/simsilica/mathd/Quatd;->y:D

    .line 9
    iget-wide v6, v1, Lcom/simsilica/mathd/Quatd;->z:D

    .line 10
    iget-wide v8, v1, Lcom/simsilica/mathd/Quatd;->w:D

    .line 11
    iget-wide v10, v0, Lcom/simsilica/mathd/Quatd;->x:D

    mul-double v12, v10, v8

    iget-wide v14, v0, Lcom/simsilica/mathd/Quatd;->y:D

    mul-double v16, v14, v6

    add-double v12, v12, v16

    move-wide/from16 v16, v8

    iget-wide v8, v0, Lcom/simsilica/mathd/Quatd;->z:D

    mul-double v18, v8, v4

    sub-double v12, v12, v18

    move-wide/from16 v18, v4

    iget-wide v4, v0, Lcom/simsilica/mathd/Quatd;->w:D

    mul-double v20, v4, v2

    add-double v23, v12, v20

    neg-double v12, v10

    mul-double/2addr v12, v6

    mul-double v20, v14, v16

    add-double v12, v12, v20

    mul-double v20, v8, v2

    add-double v12, v12, v20

    mul-double v20, v4, v18

    add-double v25, v12, v20

    mul-double v12, v10, v18

    mul-double v20, v14, v2

    sub-double v12, v12, v20

    mul-double v20, v8, v16

    add-double v12, v12, v20

    mul-double v20, v4, v6

    add-double v27, v12, v20

    neg-double v10, v10

    mul-double/2addr v10, v2

    mul-double v14, v14, v18

    sub-double/2addr v10, v14

    mul-double/2addr v8, v6

    sub-double/2addr v10, v8

    mul-double v4, v4, v16

    add-double v29, v10, v4

    if-nez p2, :cond_0

    .line 12
    new-instance v1, Lcom/simsilica/mathd/Quatd;

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v30}, Lcom/simsilica/mathd/Quatd;-><init>(DDDD)V

    goto :goto_0

    :cond_0
    move-object/from16 v22, p2

    .line 13
    invoke-virtual/range {v22 .. v30}, Lcom/simsilica/mathd/Quatd;->set(DDDD)Lcom/simsilica/mathd/Quatd;

    move-object/from16 v1, p2

    :goto_0
    return-object v1
.end method

.method public mult(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 14
    iget-wide v2, v1, Lcom/simsilica/mathd/Vec3d;->x:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    iget-wide v6, v1, Lcom/simsilica/mathd/Vec3d;->y:D

    cmpl-double v6, v6, v4

    if-nez v6, :cond_0

    iget-wide v6, v1, Lcom/simsilica/mathd/Vec3d;->z:D

    cmpl-double v4, v6, v4

    if-nez v4, :cond_0

    .line 15
    new-instance v1, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {v1}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    return-object v1

    .line 16
    :cond_0
    iget-wide v4, v1, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 17
    iget-wide v6, v1, Lcom/simsilica/mathd/Vec3d;->z:D

    .line 18
    iget-wide v8, v0, Lcom/simsilica/mathd/Quatd;->w:D

    mul-double v10, v8, v8

    mul-double/2addr v10, v2

    iget-wide v12, v0, Lcom/simsilica/mathd/Quatd;->y:D

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v16, v12, v14

    mul-double v16, v16, v8

    mul-double v16, v16, v6

    add-double v10, v10, v16

    move-wide/from16 v16, v6

    iget-wide v6, v0, Lcom/simsilica/mathd/Quatd;->z:D

    mul-double v18, v6, v14

    mul-double v18, v18, v8

    mul-double v18, v18, v4

    sub-double v10, v10, v18

    iget-wide v14, v0, Lcom/simsilica/mathd/Quatd;->x:D

    mul-double v20, v14, v14

    mul-double v20, v20, v2

    add-double v10, v10, v20

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v20, v12, v18

    mul-double v20, v20, v14

    mul-double v20, v20, v4

    add-double v10, v10, v20

    mul-double v20, v6, v18

    mul-double v20, v20, v14

    mul-double v20, v20, v16

    add-double v10, v10, v20

    mul-double v20, v6, v6

    mul-double v20, v20, v2

    sub-double v10, v10, v20

    mul-double v20, v12, v12

    mul-double v20, v20, v2

    sub-double v23, v10, v20

    mul-double v10, v14, v18

    mul-double/2addr v10, v12

    mul-double/2addr v10, v2

    mul-double v20, v12, v12

    mul-double v20, v20, v4

    add-double v10, v10, v20

    mul-double v20, v6, v18

    mul-double v20, v20, v12

    mul-double v20, v20, v16

    add-double v10, v10, v20

    mul-double v20, v8, v18

    mul-double v20, v20, v6

    mul-double v20, v20, v2

    add-double v10, v10, v20

    mul-double v20, v6, v6

    mul-double v20, v20, v4

    sub-double v10, v10, v20

    mul-double v20, v8, v8

    mul-double v20, v20, v4

    add-double v10, v10, v20

    mul-double v20, v14, v18

    mul-double v20, v20, v8

    mul-double v20, v20, v16

    sub-double v10, v10, v20

    mul-double v20, v14, v14

    mul-double v20, v20, v4

    sub-double v25, v10, v20

    mul-double v10, v14, v18

    mul-double/2addr v10, v6

    mul-double/2addr v10, v2

    mul-double v20, v12, v18

    mul-double v20, v20, v6

    mul-double v20, v20, v4

    add-double v10, v10, v20

    mul-double/2addr v6, v6

    mul-double v6, v6, v16

    add-double/2addr v10, v6

    mul-double v6, v8, v18

    mul-double/2addr v6, v12

    mul-double/2addr v6, v2

    sub-double/2addr v10, v6

    mul-double/2addr v12, v12

    mul-double v12, v12, v16

    sub-double/2addr v10, v12

    mul-double v1, v8, v18

    mul-double/2addr v1, v14

    mul-double/2addr v1, v4

    add-double/2addr v10, v1

    mul-double/2addr v14, v14

    mul-double v14, v14, v16

    sub-double/2addr v10, v14

    mul-double/2addr v8, v8

    mul-double v8, v8, v16

    add-double v27, v10, v8

    .line 19
    new-instance v1, Lcom/simsilica/mathd/Vec3d;

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v28}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object v1
.end method

.method public mult(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    .line 20
    iget-wide v2, v1, Lcom/simsilica/mathd/Vec3d;->x:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_1

    iget-wide v6, v1, Lcom/simsilica/mathd/Vec3d;->y:D

    cmpl-double v6, v6, v4

    if-nez v6, :cond_1

    iget-wide v6, v1, Lcom/simsilica/mathd/Vec3d;->z:D

    cmpl-double v4, v6, v4

    if-nez v4, :cond_1

    if-eq v1, v8, :cond_0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    move-object/from16 v1, p2

    .line 21
    invoke-virtual/range {v1 .. v7}, Lcom/simsilica/mathd/Vec3d;->set(DDD)Lcom/simsilica/mathd/Vec3d;

    :cond_0
    return-object v8

    .line 22
    :cond_1
    iget-wide v4, v1, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 23
    iget-wide v6, v1, Lcom/simsilica/mathd/Vec3d;->z:D

    .line 24
    iget-wide v9, v0, Lcom/simsilica/mathd/Quatd;->w:D

    mul-double v11, v9, v9

    mul-double/2addr v11, v2

    iget-wide v13, v0, Lcom/simsilica/mathd/Quatd;->y:D

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double v17, v13, v15

    mul-double v17, v17, v9

    mul-double v17, v17, v6

    add-double v11, v11, v17

    move-wide/from16 v17, v6

    iget-wide v6, v0, Lcom/simsilica/mathd/Quatd;->z:D

    mul-double v19, v6, v15

    mul-double v19, v19, v9

    mul-double v19, v19, v4

    sub-double v11, v11, v19

    move-wide/from16 v19, v9

    iget-wide v8, v0, Lcom/simsilica/mathd/Quatd;->x:D

    mul-double v21, v8, v8

    mul-double v21, v21, v2

    add-double v11, v11, v21

    mul-double v21, v13, v15

    mul-double v21, v21, v8

    mul-double v21, v21, v4

    add-double v11, v11, v21

    mul-double v21, v6, v15

    mul-double v21, v21, v8

    mul-double v21, v21, v17

    add-double v11, v11, v21

    mul-double v21, v6, v6

    mul-double v21, v21, v2

    sub-double v11, v11, v21

    mul-double v21, v13, v13

    mul-double v21, v21, v2

    sub-double v10, v11, v21

    mul-double v21, v8, v15

    mul-double v21, v21, v13

    mul-double v21, v21, v2

    mul-double v23, v13, v13

    mul-double v23, v23, v4

    add-double v21, v21, v23

    mul-double v23, v6, v15

    mul-double v23, v23, v13

    mul-double v23, v23, v17

    add-double v21, v21, v23

    mul-double v23, v19, v15

    mul-double v23, v23, v6

    mul-double v23, v23, v2

    add-double v21, v21, v23

    mul-double v23, v6, v6

    mul-double v23, v23, v4

    sub-double v21, v21, v23

    mul-double v23, v19, v19

    mul-double v23, v23, v4

    add-double v21, v21, v23

    mul-double v23, v8, v15

    mul-double v23, v23, v19

    mul-double v23, v23, v17

    sub-double v21, v21, v23

    mul-double v23, v8, v8

    mul-double v23, v23, v4

    sub-double v21, v21, v23

    mul-double v23, v8, v15

    mul-double v23, v23, v6

    mul-double v23, v23, v2

    mul-double v25, v13, v15

    mul-double v25, v25, v6

    mul-double v25, v25, v4

    add-double v23, v23, v25

    mul-double/2addr v6, v6

    mul-double v6, v6, v17

    add-double v23, v23, v6

    mul-double v6, v19, v15

    mul-double/2addr v6, v13

    mul-double/2addr v6, v2

    sub-double v23, v23, v6

    mul-double/2addr v13, v13

    mul-double v13, v13, v17

    sub-double v23, v23, v13

    mul-double v1, v19, v15

    mul-double/2addr v1, v8

    mul-double/2addr v1, v4

    add-double v23, v23, v1

    mul-double/2addr v8, v8

    mul-double v8, v8, v17

    sub-double v23, v23, v8

    mul-double v1, v19, v19

    mul-double v1, v1, v17

    add-double v6, v23, v1

    move-object/from16 v1, p2

    move-wide v2, v10

    move-wide/from16 v4, v21

    .line 25
    invoke-virtual/range {v1 .. v7}, Lcom/simsilica/mathd/Vec3d;->set(DDD)Lcom/simsilica/mathd/Vec3d;

    return-object p2
.end method

.method public final multLocal(Lcom/simsilica/mathd/Quatd;)Lcom/simsilica/mathd/Quatd;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Lcom/simsilica/mathd/Quatd;->x:D

    iget-wide v4, v1, Lcom/simsilica/mathd/Quatd;->y:D

    iget-wide v6, v1, Lcom/simsilica/mathd/Quatd;->z:D

    iget-wide v8, v1, Lcom/simsilica/mathd/Quatd;->w:D

    iget-wide v10, v0, Lcom/simsilica/mathd/Quatd;->x:D

    mul-double v12, v10, v8

    iget-wide v14, v0, Lcom/simsilica/mathd/Quatd;->y:D

    mul-double v16, v14, v6

    add-double v12, v12, v16

    move-wide/from16 v16, v8

    iget-wide v8, v0, Lcom/simsilica/mathd/Quatd;->z:D

    mul-double v18, v8, v4

    sub-double v12, v12, v18

    move-wide/from16 v18, v4

    iget-wide v4, v0, Lcom/simsilica/mathd/Quatd;->w:D

    mul-double v20, v4, v2

    add-double v12, v12, v20

    neg-double v0, v10

    mul-double/2addr v0, v6

    mul-double v20, v14, v16

    add-double v0, v0, v20

    mul-double v20, v8, v2

    add-double v0, v0, v20

    mul-double v20, v4, v18

    add-double v0, v0, v20

    mul-double v20, v10, v18

    mul-double v22, v14, v2

    sub-double v20, v20, v22

    mul-double v22, v8, v16

    add-double v20, v20, v22

    mul-double v22, v4, v6

    move-wide/from16 v24, v0

    add-double v0, v20, v22

    neg-double v10, v10

    mul-double/2addr v10, v2

    mul-double v14, v14, v18

    sub-double/2addr v10, v14

    mul-double/2addr v8, v6

    sub-double/2addr v10, v8

    mul-double v4, v4, v16

    add-double/2addr v10, v4

    move-object/from16 v2, p0

    iput-wide v12, v2, Lcom/simsilica/mathd/Quatd;->x:D

    move-wide/from16 v3, v24

    iput-wide v3, v2, Lcom/simsilica/mathd/Quatd;->y:D

    iput-wide v0, v2, Lcom/simsilica/mathd/Quatd;->z:D

    iput-wide v10, v2, Lcom/simsilica/mathd/Quatd;->w:D

    return-object v2
.end method

.method public final normalizeLocal()Lcom/simsilica/mathd/Quatd;
    .locals 5

    invoke-virtual {p0}, Lcom/simsilica/mathd/Quatd;->lengthSq()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-nez v2, :cond_0

    iput-wide v3, p0, Lcom/simsilica/mathd/Quatd;->w:D

    return-object p0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v3, v0

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->x:D

    mul-double/2addr v0, v3

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->x:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->y:D

    mul-double/2addr v0, v3

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->y:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->z:D

    mul-double/2addr v0, v3

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->z:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->w:D

    mul-double/2addr v0, v3

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->w:D

    return-object p0
.end method

.method public final set(DDDD)Lcom/simsilica/mathd/Quatd;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/simsilica/mathd/Quatd;->x:D

    .line 2
    iput-wide p3, p0, Lcom/simsilica/mathd/Quatd;->y:D

    .line 3
    iput-wide p5, p0, Lcom/simsilica/mathd/Quatd;->z:D

    .line 4
    iput-wide p7, p0, Lcom/simsilica/mathd/Quatd;->w:D

    return-object p0
.end method

.method public set(ID)Lcom/simsilica/mathd/Quatd;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 13
    iput-wide p2, p0, Lcom/simsilica/mathd/Quatd;->w:D

    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Index:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 15
    :cond_1
    iput-wide p2, p0, Lcom/simsilica/mathd/Quatd;->z:D

    goto :goto_0

    .line 16
    :cond_2
    iput-wide p2, p0, Lcom/simsilica/mathd/Quatd;->y:D

    goto :goto_0

    .line 17
    :cond_3
    iput-wide p2, p0, Lcom/simsilica/mathd/Quatd;->x:D

    :goto_0
    return-object p0
.end method

.method public final set(Lcom/jme3/math/Quaternion;)Lcom/simsilica/mathd/Quatd;
    .locals 2

    .line 9
    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->x:D

    .line 10
    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->y:D

    .line 11
    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->z:D

    .line 12
    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getW()F

    move-result p1

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->w:D

    return-object p0
.end method

.method public final set(Lcom/simsilica/mathd/Quatd;)Lcom/simsilica/mathd/Quatd;
    .locals 2

    .line 5
    iget-wide v0, p1, Lcom/simsilica/mathd/Quatd;->x:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->x:D

    .line 6
    iget-wide v0, p1, Lcom/simsilica/mathd/Quatd;->y:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->y:D

    .line 7
    iget-wide v0, p1, Lcom/simsilica/mathd/Quatd;->z:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->z:D

    .line 8
    iget-wide v0, p1, Lcom/simsilica/mathd/Quatd;->w:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->w:D

    return-object p0
.end method

.method public slerpLocal(Lcom/simsilica/mathd/Quatd;Lcom/simsilica/mathd/Quatd;D)Lcom/simsilica/mathd/Quatd;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-wide v3, v1, Lcom/simsilica/mathd/Quatd;->x:D

    iget-wide v5, v2, Lcom/simsilica/mathd/Quatd;->x:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_0

    iget-wide v7, v1, Lcom/simsilica/mathd/Quatd;->y:D

    iget-wide v9, v2, Lcom/simsilica/mathd/Quatd;->y:D

    cmpl-double v7, v7, v9

    if-nez v7, :cond_0

    iget-wide v7, v1, Lcom/simsilica/mathd/Quatd;->z:D

    iget-wide v9, v2, Lcom/simsilica/mathd/Quatd;->z:D

    cmpl-double v7, v7, v9

    if-nez v7, :cond_0

    iget-wide v7, v1, Lcom/simsilica/mathd/Quatd;->w:D

    iget-wide v9, v2, Lcom/simsilica/mathd/Quatd;->w:D

    cmpl-double v7, v7, v9

    if-nez v7, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/simsilica/mathd/Quatd;->set(Lcom/simsilica/mathd/Quatd;)Lcom/simsilica/mathd/Quatd;

    return-object v0

    :cond_0
    iget-wide v7, v2, Lcom/simsilica/mathd/Quatd;->y:D

    iget-wide v9, v2, Lcom/simsilica/mathd/Quatd;->z:D

    iget-wide v11, v2, Lcom/simsilica/mathd/Quatd;->w:D

    mul-double/2addr v3, v5

    iget-wide v13, v1, Lcom/simsilica/mathd/Quatd;->y:D

    mul-double/2addr v13, v7

    add-double/2addr v3, v13

    iget-wide v13, v1, Lcom/simsilica/mathd/Quatd;->z:D

    mul-double/2addr v13, v9

    add-double/2addr v3, v13

    iget-wide v13, v1, Lcom/simsilica/mathd/Quatd;->w:D

    mul-double/2addr v13, v11

    add-double/2addr v3, v13

    const-wide/16 v13, 0x0

    cmpg-double v2, v3, v13

    if-gez v2, :cond_1

    neg-double v5, v5

    neg-double v7, v7

    neg-double v9, v9

    neg-double v11, v11

    neg-double v3, v3

    :cond_1
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double v15, v13, p3

    const-wide v17, 0x3feccccccccccccdL    # 0.9

    cmpg-double v2, v3, v17

    if-gez v2, :cond_2

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    div-double v13, v13, v17

    mul-double/2addr v15, v2

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    mul-double v2, v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v13

    goto :goto_0

    :cond_2
    move-wide/from16 v2, p3

    :goto_0
    iget-wide v13, v1, Lcom/simsilica/mathd/Quatd;->x:D

    mul-double/2addr v13, v15

    mul-double/2addr v5, v2

    add-double/2addr v13, v5

    iput-wide v13, v0, Lcom/simsilica/mathd/Quatd;->x:D

    iget-wide v4, v1, Lcom/simsilica/mathd/Quatd;->y:D

    mul-double/2addr v4, v15

    mul-double/2addr v7, v2

    add-double/2addr v4, v7

    iput-wide v4, v0, Lcom/simsilica/mathd/Quatd;->y:D

    iget-wide v4, v1, Lcom/simsilica/mathd/Quatd;->z:D

    mul-double/2addr v4, v15

    mul-double/2addr v9, v2

    add-double/2addr v4, v9

    iput-wide v4, v0, Lcom/simsilica/mathd/Quatd;->z:D

    iget-wide v4, v1, Lcom/simsilica/mathd/Quatd;->w:D

    mul-double/2addr v15, v4

    mul-double/2addr v2, v11

    add-double v1, v15, v2

    iput-wide v1, v0, Lcom/simsilica/mathd/Quatd;->w:D

    return-object v0
.end method

.method public final subtract(Lcom/simsilica/mathd/Quatd;)Lcom/simsilica/mathd/Quatd;
    .locals 12

    new-instance v9, Lcom/simsilica/mathd/Quatd;

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Quatd;->x:D

    sub-double v1, v0, v2

    iget-wide v3, p0, Lcom/simsilica/mathd/Quatd;->y:D

    iget-wide v5, p1, Lcom/simsilica/mathd/Quatd;->y:D

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lcom/simsilica/mathd/Quatd;->z:D

    iget-wide v7, p1, Lcom/simsilica/mathd/Quatd;->z:D

    sub-double/2addr v5, v7

    iget-wide v7, p0, Lcom/simsilica/mathd/Quatd;->w:D

    iget-wide v10, p1, Lcom/simsilica/mathd/Quatd;->w:D

    sub-double/2addr v7, v10

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/simsilica/mathd/Quatd;-><init>(DDDD)V

    return-object v9
.end method

.method public final subtractLocal(Lcom/simsilica/mathd/Quatd;)Lcom/simsilica/mathd/Quatd;
    .locals 4

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Quatd;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->x:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->y:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Quatd;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->y:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->z:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Quatd;->z:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->z:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Quatd;->w:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Quatd;->w:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Quatd;->w:D

    return-object p0
.end method

.method public toAngles([D)[D
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    new-array v1, v2, [D

    goto :goto_0

    :cond_0
    array-length v3, v1

    if-ne v3, v2, :cond_3

    :goto_0
    iget-wide v2, v0, Lcom/simsilica/mathd/Quatd;->w:D

    mul-double v4, v2, v2

    iget-wide v6, v0, Lcom/simsilica/mathd/Quatd;->x:D

    mul-double v8, v6, v6

    iget-wide v10, v0, Lcom/simsilica/mathd/Quatd;->y:D

    mul-double v12, v10, v10

    iget-wide v14, v0, Lcom/simsilica/mathd/Quatd;->z:D

    mul-double v16, v14, v14

    add-double v18, v8, v12

    add-double v18, v18, v16

    add-double v18, v18, v4

    mul-double v20, v6, v10

    mul-double v22, v14, v2

    add-double v20, v20, v22

    const-wide v22, 0x3fdfef9db22d0e56L    # 0.499

    mul-double v22, v22, v18

    cmpl-double v22, v20, v22

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x2

    const/16 v27, 0x1

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    if-lez v22, :cond_1

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    mul-double v2, v2, v28

    aput-wide v2, v1, v27

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    aput-wide v2, v1, v26

    aput-wide v23, v1, v25

    goto :goto_1

    :cond_1
    const-wide v30, -0x402010624dd2f1aaL    # -0.499

    mul-double v30, v30, v18

    cmpg-double v22, v20, v30

    if-gez v22, :cond_2

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    mul-double/2addr v2, v4

    aput-wide v2, v1, v27

    const-wide v2, -0x4006de04abbbd2e8L    # -1.5707963267948966

    aput-wide v2, v1, v26

    aput-wide v23, v1, v25

    goto :goto_1

    :cond_2
    mul-double v10, v10, v28

    mul-double/2addr v10, v2

    mul-double v6, v6, v28

    mul-double/2addr v6, v14

    sub-double/2addr v10, v6

    sub-double v2, v8, v12

    sub-double v2, v2, v16

    add-double/2addr v2, v4

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v1, v27

    mul-double v20, v20, v28

    div-double v20, v20, v18

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    aput-wide v2, v1, v26

    iget-wide v2, v0, Lcom/simsilica/mathd/Quatd;->x:D

    mul-double v2, v2, v28

    iget-wide v6, v0, Lcom/simsilica/mathd/Quatd;->w:D

    mul-double/2addr v2, v6

    iget-wide v6, v0, Lcom/simsilica/mathd/Quatd;->y:D

    mul-double v6, v6, v28

    iget-wide v10, v0, Lcom/simsilica/mathd/Quatd;->z:D

    mul-double/2addr v6, v10

    sub-double/2addr v2, v6

    neg-double v6, v8

    add-double/2addr v6, v12

    sub-double v6, v6, v16

    add-double/2addr v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, v1, v25

    :goto_1
    return-object v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Angles array must have three elements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toQuaternion()Lcom/jme3/math/Quaternion;
    .locals 6

    new-instance v0, Lcom/jme3/math/Quaternion;

    iget-wide v1, p0, Lcom/simsilica/mathd/Quatd;->x:D

    double-to-float v1, v1

    iget-wide v2, p0, Lcom/simsilica/mathd/Quatd;->y:D

    double-to-float v2, v2

    iget-wide v3, p0, Lcom/simsilica/mathd/Quatd;->z:D

    double-to-float v3, v3

    iget-wide v4, p0, Lcom/simsilica/mathd/Quatd;->w:D

    double-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/math/Quaternion;-><init>(FFFF)V

    return-object v0
.end method

.method public toRotationMatrix()Lcom/simsilica/mathd/Matrix3d;
    .locals 42

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/simsilica/mathd/Quatd;->lengthSq()D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v1

    iget-wide v1, v0, Lcom/simsilica/mathd/Quatd;->x:D

    mul-double v5, v1, v3

    iget-wide v7, v0, Lcom/simsilica/mathd/Quatd;->y:D

    mul-double v9, v7, v3

    iget-wide v11, v0, Lcom/simsilica/mathd/Quatd;->z:D

    mul-double/2addr v3, v11

    mul-double v13, v1, v5

    mul-double v15, v1, v9

    mul-double/2addr v1, v3

    move-wide/from16 v17, v13

    iget-wide v13, v0, Lcom/simsilica/mathd/Quatd;->w:D

    mul-double/2addr v5, v13

    mul-double v19, v7, v9

    mul-double/2addr v7, v3

    mul-double/2addr v9, v13

    mul-double/2addr v11, v3

    mul-double/2addr v13, v3

    add-double v3, v19, v11

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    sub-double v24, v21, v3

    sub-double v26, v15, v13

    add-double v28, v1, v9

    add-double v30, v15, v13

    add-double v13, v17, v11

    sub-double v32, v21, v13

    sub-double v34, v7, v5

    sub-double v36, v1, v9

    add-double v38, v7, v5

    add-double v13, v17, v19

    sub-double v40, v21, v13

    new-instance v1, Lcom/simsilica/mathd/Matrix3d;

    move-object/from16 v23, v1

    invoke-direct/range {v23 .. v41}, Lcom/simsilica/mathd/Matrix3d;-><init>(DDDDDDDDD)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Quatd["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/simsilica/mathd/Quatd;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/simsilica/mathd/Quatd;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/simsilica/mathd/Quatd;->z:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/simsilica/mathd/Quatd;->w:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
