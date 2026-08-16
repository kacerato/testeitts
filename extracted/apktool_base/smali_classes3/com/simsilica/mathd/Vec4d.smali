.class public final Lcom/simsilica/mathd/Vec4d;
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
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    .line 4
    iput-wide p3, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    .line 5
    iput-wide p5, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    .line 6
    iput-wide p7, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector4f;)V
    .locals 10

    .line 8
    iget v0, p1, Lcom/jme3/math/Vector4f;->x:F

    float-to-double v2, v0

    iget v0, p1, Lcom/jme3/math/Vector4f;->y:F

    float-to-double v4, v0

    iget v0, p1, Lcom/jme3/math/Vector4f;->z:F

    float-to-double v6, v0

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    float-to-double v8, p1

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/simsilica/mathd/Vec4d;-><init>(DDDD)V

    return-void
.end method

.method public constructor <init>(Lcom/simsilica/mathd/Vec4d;)V
    .locals 9

    .line 7
    iget-wide v1, p1, Lcom/simsilica/mathd/Vec4d;->x:D

    iget-wide v3, p1, Lcom/simsilica/mathd/Vec4d;->y:D

    iget-wide v5, p1, Lcom/simsilica/mathd/Vec4d;->z:D

    iget-wide v7, p1, Lcom/simsilica/mathd/Vec4d;->w:D

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/simsilica/mathd/Vec4d;-><init>(DDDD)V

    return-void
.end method


# virtual methods
.method public final add(DDDD)Lcom/simsilica/mathd/Vec4d;
    .locals 11

    move-object v0, p0

    .line 2
    new-instance v10, Lcom/simsilica/mathd/Vec4d;

    iget-wide v1, v0, Lcom/simsilica/mathd/Vec4d;->x:D

    add-double v2, v1, p1

    iget-wide v4, v0, Lcom/simsilica/mathd/Vec4d;->y:D

    add-double/2addr v4, p3

    iget-wide v6, v0, Lcom/simsilica/mathd/Vec4d;->z:D

    add-double v6, v6, p5

    iget-wide v8, v0, Lcom/simsilica/mathd/Vec4d;->w:D

    add-double v8, v8, p7

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/simsilica/mathd/Vec4d;-><init>(DDDD)V

    return-object v10
.end method

.method public final add(Lcom/simsilica/mathd/Vec4d;)Lcom/simsilica/mathd/Vec4d;
    .locals 12

    .line 1
    new-instance v9, Lcom/simsilica/mathd/Vec4d;

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->x:D

    add-double v1, v0, v2

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    iget-wide v5, p1, Lcom/simsilica/mathd/Vec4d;->y:D

    add-double/2addr v3, v5

    iget-wide v5, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    iget-wide v7, p1, Lcom/simsilica/mathd/Vec4d;->z:D

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    iget-wide v10, p1, Lcom/simsilica/mathd/Vec4d;->w:D

    add-double/2addr v7, v10

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/simsilica/mathd/Vec4d;-><init>(DDDD)V

    return-object v9
.end method

.method public final addLocal(DDDD)Lcom/simsilica/mathd/Vec4d;
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    .line 6
    iget-wide p1, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    add-double/2addr p1, p3

    iput-wide p1, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    .line 7
    iget-wide p1, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    add-double/2addr p1, p5

    iput-wide p1, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    .line 8
    iget-wide p1, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    add-double/2addr p1, p7

    iput-wide p1, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    return-object p0
.end method

.method public final addLocal(Lcom/simsilica/mathd/Vec4d;)Lcom/simsilica/mathd/Vec4d;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    .line 2
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    .line 3
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->z:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    .line 4
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->w:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    return-object p0
.end method

.method public final addScaledVectorLocal(Lcom/simsilica/mathd/Vec4d;D)Lcom/simsilica/mathd/Vec4d;
    .locals 4

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->x:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->y:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->z:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->w:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    return-object p0
.end method

.method public final clone()Lcom/simsilica/mathd/Vec4d;
    .locals 10

    .line 2
    new-instance v9, Lcom/simsilica/mathd/Vec4d;

    iget-wide v1, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    iget-wide v5, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    iget-wide v7, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/simsilica/mathd/Vec4d;-><init>(DDDD)V

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
    invoke-virtual {p0}, Lcom/simsilica/mathd/Vec4d;->clone()Lcom/simsilica/mathd/Vec4d;

    move-result-object v0

    return-object v0
.end method

.method public final distance(Lcom/simsilica/mathd/Vec4d;)D
    .locals 2

    invoke-virtual {p0, p1}, Lcom/simsilica/mathd/Vec4d;->distanceSq(Lcom/simsilica/mathd/Vec4d;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final distanceSq(Lcom/simsilica/mathd/Vec4d;)D
    .locals 10

    iget-wide v0, p1, Lcom/simsilica/mathd/Vec4d;->x:D

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    sub-double/2addr v0, v2

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->y:D

    iget-wide v4, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    sub-double/2addr v2, v4

    iget-wide v4, p1, Lcom/simsilica/mathd/Vec4d;->z:D

    iget-wide v6, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    sub-double/2addr v4, v6

    iget-wide v6, p1, Lcom/simsilica/mathd/Vec4d;->w:D

    iget-wide v8, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    sub-double/2addr v6, v8

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    mul-double/2addr v6, v6

    add-double/2addr v0, v6

    return-wide v0
.end method

.method public final divide(D)Lcom/simsilica/mathd/Vec4d;
    .locals 10

    .line 1
    new-instance v9, Lcom/simsilica/mathd/Vec4d;

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    div-double v1, v0, p1

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    div-double/2addr v3, p1

    iget-wide v5, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    div-double/2addr v5, p1

    iget-wide v7, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    div-double/2addr v7, p1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/simsilica/mathd/Vec4d;-><init>(DDDD)V

    return-object v9
.end method

.method public final divide(Lcom/simsilica/mathd/Vec4d;)Lcom/simsilica/mathd/Vec4d;
    .locals 12

    .line 2
    new-instance v9, Lcom/simsilica/mathd/Vec4d;

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->x:D

    div-double v1, v0, v2

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    iget-wide v5, p1, Lcom/simsilica/mathd/Vec4d;->y:D

    div-double/2addr v3, v5

    iget-wide v5, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    iget-wide v7, p1, Lcom/simsilica/mathd/Vec4d;->z:D

    div-double/2addr v5, v7

    iget-wide v7, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    iget-wide v10, p1, Lcom/simsilica/mathd/Vec4d;->w:D

    div-double/2addr v7, v10

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/simsilica/mathd/Vec4d;-><init>(DDDD)V

    return-object v9
.end method

.method public final divideLocal(D)Lcom/simsilica/mathd/Vec4d;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    .line 2
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    .line 3
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    .line 4
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    return-object p0
.end method

.method public final divideLocal(Lcom/simsilica/mathd/Vec4d;)Lcom/simsilica/mathd/Vec4d;
    .locals 4

    .line 5
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->x:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    .line 6
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->y:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    .line 7
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->z:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    .line 8
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->w:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    return-object p0
.end method

.method public final dot(DDDD)D
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    mul-double/2addr v0, p1

    iget-wide p1, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    mul-double/2addr p1, p3

    add-double/2addr v0, p1

    iget-wide p1, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    mul-double/2addr p1, p5

    add-double/2addr v0, p1

    iget-wide p1, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    mul-double/2addr p1, p7

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public final dot(Lcom/simsilica/mathd/Vec4d;)D
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Vec4d;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Vec4d;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Vec4d;->w:D

    mul-double/2addr v2, v4

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

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/simsilica/mathd/Vec4d;

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/simsilica/mathd/Vec4d;

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->x:D

    iget-wide v4, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->y:D

    iget-wide v4, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->z:D

    iget-wide v4, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->w:D

    iget-wide v4, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    cmpl-double p1, v2, v4

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
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

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->w:D

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
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    return-wide v0

    :cond_2
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    return-wide v0

    :cond_3
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec4d;->w:D

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

.method public final length()D
    .locals 2

    invoke-virtual {p0}, Lcom/simsilica/mathd/Vec4d;->lengthSq()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final lengthSq()D
    .locals 4

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final maxLocal(Lcom/simsilica/mathd/Vec4d;)Lcom/simsilica/mathd/Vec4d;
    .locals 5

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->x:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->y:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, v2

    :goto_1
    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->z:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    goto :goto_2

    :cond_2
    move-wide v0, v2

    :goto_2
    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->w:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_3

    goto :goto_3

    :cond_3
    move-wide v0, v2

    :goto_3
    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    return-object p0
.end method

.method public final minLocal(Lcom/simsilica/mathd/Vec4d;)Lcom/simsilica/mathd/Vec4d;
    .locals 5

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->x:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->y:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, v2

    :goto_1
    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->z:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    goto :goto_2

    :cond_2
    move-wide v0, v2

    :goto_2
    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->w:D

    cmpg-double p1, v0, v2

    if-gez p1, :cond_3

    goto :goto_3

    :cond_3
    move-wide v0, v2

    :goto_3
    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    return-object p0
.end method

.method public final mult(D)Lcom/simsilica/mathd/Vec4d;
    .locals 10

    .line 1
    new-instance v9, Lcom/simsilica/mathd/Vec4d;

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    mul-double v1, v0, p1

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    mul-double/2addr v3, p1

    iget-wide v5, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    mul-double/2addr v5, p1

    iget-wide v7, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    mul-double/2addr v7, p1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/simsilica/mathd/Vec4d;-><init>(DDDD)V

    return-object v9
.end method

.method public final mult(Lcom/simsilica/mathd/Vec4d;)Lcom/simsilica/mathd/Vec4d;
    .locals 12

    .line 2
    new-instance v9, Lcom/simsilica/mathd/Vec4d;

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->x:D

    mul-double v1, v0, v2

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    iget-wide v5, p1, Lcom/simsilica/mathd/Vec4d;->y:D

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    iget-wide v7, p1, Lcom/simsilica/mathd/Vec4d;->z:D

    mul-double/2addr v5, v7

    iget-wide v7, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    iget-wide v10, p1, Lcom/simsilica/mathd/Vec4d;->w:D

    mul-double/2addr v7, v10

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/simsilica/mathd/Vec4d;-><init>(DDDD)V

    return-object v9
.end method

.method public final multLocal(D)Lcom/simsilica/mathd/Vec4d;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    .line 2
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    .line 3
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    .line 4
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    return-object p0
.end method

.method public final multLocal(Lcom/simsilica/mathd/Vec4d;)Lcom/simsilica/mathd/Vec4d;
    .locals 4

    .line 5
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    .line 6
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    .line 7
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->z:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    .line 8
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->w:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    return-object p0
.end method

.method public final normalize()Lcom/simsilica/mathd/Vec4d;
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0}, Lcom/simsilica/mathd/Vec4d;->length()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/simsilica/mathd/Vec4d;->mult(D)Lcom/simsilica/mathd/Vec4d;

    move-result-object v0

    return-object v0
.end method

.method public final normalizeLocal()Lcom/simsilica/mathd/Vec4d;
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0}, Lcom/simsilica/mathd/Vec4d;->length()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/simsilica/mathd/Vec4d;->multLocal(D)Lcom/simsilica/mathd/Vec4d;

    move-result-object v0

    return-object v0
.end method

.method public final set(DDDD)Lcom/simsilica/mathd/Vec4d;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    .line 2
    iput-wide p3, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    .line 3
    iput-wide p5, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    .line 4
    iput-wide p7, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    return-object p0
.end method

.method public set(ID)Lcom/simsilica/mathd/Vec4d;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 9
    iput-wide p2, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    goto :goto_0

    .line 10
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

    .line 11
    :cond_1
    iput-wide p2, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    goto :goto_0

    .line 12
    :cond_2
    iput-wide p2, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    goto :goto_0

    .line 13
    :cond_3
    iput-wide p2, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    :goto_0
    return-object p0
.end method

.method public final set(Lcom/simsilica/mathd/Vec4d;)Lcom/simsilica/mathd/Vec4d;
    .locals 2

    .line 5
    iget-wide v0, p1, Lcom/simsilica/mathd/Vec4d;->x:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    .line 6
    iget-wide v0, p1, Lcom/simsilica/mathd/Vec4d;->y:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    .line 7
    iget-wide v0, p1, Lcom/simsilica/mathd/Vec4d;->z:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    .line 8
    iget-wide v0, p1, Lcom/simsilica/mathd/Vec4d;->w:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    return-object p0
.end method

.method public final subtract(DDDD)Lcom/simsilica/mathd/Vec4d;
    .locals 11

    move-object v0, p0

    .line 2
    new-instance v10, Lcom/simsilica/mathd/Vec4d;

    iget-wide v1, v0, Lcom/simsilica/mathd/Vec4d;->x:D

    sub-double v2, v1, p1

    iget-wide v4, v0, Lcom/simsilica/mathd/Vec4d;->y:D

    sub-double/2addr v4, p3

    iget-wide v6, v0, Lcom/simsilica/mathd/Vec4d;->z:D

    sub-double v6, v6, p5

    iget-wide v8, v0, Lcom/simsilica/mathd/Vec4d;->w:D

    sub-double v8, v8, p7

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/simsilica/mathd/Vec4d;-><init>(DDDD)V

    return-object v10
.end method

.method public final subtract(Lcom/simsilica/mathd/Vec4d;)Lcom/simsilica/mathd/Vec4d;
    .locals 12

    .line 1
    new-instance v9, Lcom/simsilica/mathd/Vec4d;

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->x:D

    sub-double v1, v0, v2

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    iget-wide v5, p1, Lcom/simsilica/mathd/Vec4d;->y:D

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    iget-wide v7, p1, Lcom/simsilica/mathd/Vec4d;->z:D

    sub-double/2addr v5, v7

    iget-wide v7, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    iget-wide v10, p1, Lcom/simsilica/mathd/Vec4d;->w:D

    sub-double/2addr v7, v10

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/simsilica/mathd/Vec4d;-><init>(DDDD)V

    return-object v9
.end method

.method public final subtractLocal(DDDD)Lcom/simsilica/mathd/Vec4d;
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    .line 6
    iget-wide p1, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    sub-double/2addr p1, p3

    iput-wide p1, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    .line 7
    iget-wide p1, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    sub-double/2addr p1, p5

    iput-wide p1, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    .line 8
    iget-wide p1, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    sub-double/2addr p1, p7

    iput-wide p1, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    return-object p0
.end method

.method public final subtractLocal(Lcom/simsilica/mathd/Vec4d;)Lcom/simsilica/mathd/Vec4d;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    .line 2
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    .line 3
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->z:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    .line 4
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec4d;->w:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vec3["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toVector4f()Lcom/jme3/math/Vector4f;
    .locals 6

    new-instance v0, Lcom/jme3/math/Vector4f;

    iget-wide v1, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    double-to-float v1, v1

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    double-to-float v2, v2

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    double-to-float v3, v3

    iget-wide v4, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    double-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    return-object v0
.end method

.method public final zeroEpsilon(D)Lcom/simsilica/mathd/Vec4d;
    .locals 7

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    neg-double v2, p1

    cmpl-double v4, v0, v2

    const-wide/16 v5, 0x0

    if-lez v4, :cond_0

    cmpg-double v0, v0, p1

    if-gez v0, :cond_0

    iput-wide v5, p0, Lcom/simsilica/mathd/Vec4d;->x:D

    :cond_0
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    cmpg-double v0, v0, p1

    if-gez v0, :cond_1

    iput-wide v5, p0, Lcom/simsilica/mathd/Vec4d;->y:D

    :cond_1
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    cmpg-double v0, v0, p1

    if-gez v0, :cond_2

    iput-wide v5, p0, Lcom/simsilica/mathd/Vec4d;->z:D

    :cond_2
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_3

    cmpg-double p1, v0, p1

    if-gez p1, :cond_3

    iput-wide v5, p0, Lcom/simsilica/mathd/Vec4d;->w:D

    :cond_3
    return-object p0
.end method
