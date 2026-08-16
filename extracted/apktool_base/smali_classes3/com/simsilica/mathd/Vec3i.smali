.class public Lcom/simsilica/mathd/Vec3i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x2aL


# instance fields
.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    .line 4
    iput p2, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    .line 5
    iput p3, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 6
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    float-to-int v0, v0

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    float-to-int v1, v1

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    float-to-int p1, p1

    invoke-direct {p0, v0, v1, p1}, Lcom/simsilica/mathd/Vec3i;-><init>(III)V

    return-void
.end method

.method public constructor <init>(Lcom/simsilica/mathd/Vec3i;)V
    .locals 2

    .line 7
    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    iget v1, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    invoke-direct {p0, v0, v1, p1}, Lcom/simsilica/mathd/Vec3i;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final add(III)Lcom/simsilica/mathd/Vec3i;
    .locals 2

    .line 1
    new-instance v0, Lcom/simsilica/mathd/Vec3i;

    iget v1, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    add-int/2addr v1, p1

    iget p1, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    add-int/2addr p2, p3

    invoke-direct {v0, v1, p1, p2}, Lcom/simsilica/mathd/Vec3i;-><init>(III)V

    return-object v0
.end method

.method public final add(Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;
    .locals 4

    .line 2
    new-instance v0, Lcom/simsilica/mathd/Vec3i;

    iget v1, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    iget v2, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    iget v3, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    add-int/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/simsilica/mathd/Vec3i;-><init>(III)V

    return-object v0
.end method

.method public final addLocal(III)Lcom/simsilica/mathd/Vec3i;
    .locals 1

    .line 4
    iget v0, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    .line 5
    iget p1, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    .line 6
    iget p1, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    return-object p0
.end method

.method public final addLocal(Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;
    .locals 2

    .line 1
    iget v0, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    iget v1, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    .line 2
    iget v0, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    iget v1, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    .line 3
    iget v0, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    return-object p0
.end method

.method public clone()Lcom/simsilica/mathd/Vec3i;
    .locals 3

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simsilica/mathd/Vec3i;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error cloning"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/simsilica/mathd/Vec3i;->clone()Lcom/simsilica/mathd/Vec3i;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/simsilica/mathd/Vec3i;

    iget v2, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    iget v3, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    iget v3, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public final get(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget p1, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    return p1

    :cond_2
    iget p1, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    return p1
.end method

.method public final getDistance(Lcom/simsilica/mathd/Vec3i;)D
    .locals 2

    invoke-virtual {p0, p1}, Lcom/simsilica/mathd/Vec3i;->getDistanceSq(Lcom/simsilica/mathd/Vec3i;)I

    move-result p1

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getDistanceSq(Lcom/simsilica/mathd/Vec3i;)I
    .locals 3

    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    iget v1, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    sub-int/2addr v0, v1

    iget v1, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    iget v2, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    sub-int/2addr v1, v2

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    iget v2, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    sub-int/2addr p1, v2

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    mul-int/2addr p1, p1

    add-int/2addr v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    add-int/lit16 v0, v0, 0x57e

    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final length()D
    .locals 2

    invoke-virtual {p0}, Lcom/simsilica/mathd/Vec3i;->lengthSq()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final lengthSq()D
    .locals 2

    iget v0, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    mul-int/2addr v0, v0

    iget v1, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    return-wide v0
.end method

.method public maxLocal(III)Lcom/simsilica/mathd/Vec3i;
    .locals 1

    .line 1
    iget v0, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    .line 2
    iget p1, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    .line 3
    iget p1, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    return-object p0
.end method

.method public maxLocal(Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;
    .locals 2

    .line 4
    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    iget v1, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    .line 5
    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    iget v1, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    .line 6
    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    iget v0, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    return-object p0
.end method

.method public minLocal(III)Lcom/simsilica/mathd/Vec3i;
    .locals 1

    .line 1
    iget v0, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    .line 2
    iget p1, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    .line 3
    iget p1, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    return-object p0
.end method

.method public minLocal(Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;
    .locals 2

    .line 4
    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    iget v1, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    .line 5
    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    iget v1, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    .line 6
    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    iget v0, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    return-object p0
.end method

.method public final mult(I)Lcom/simsilica/mathd/Vec3i;
    .locals 4

    new-instance v0, Lcom/simsilica/mathd/Vec3i;

    iget v1, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    mul-int/2addr v2, p1

    iget v3, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    mul-int/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/simsilica/mathd/Vec3i;-><init>(III)V

    return-object v0
.end method

.method public final multLocal(I)Lcom/simsilica/mathd/Vec3i;
    .locals 1

    iget v0, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    iget v0, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    iget v0, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    return-object p0
.end method

.method public final set(II)Lcom/simsilica/mathd/Vec3i;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 7
    iput p2, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    goto :goto_0

    .line 8
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 9
    :cond_1
    iput p2, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    goto :goto_0

    .line 10
    :cond_2
    iput p2, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    :goto_0
    return-object p0
.end method

.method public final set(III)Lcom/simsilica/mathd/Vec3i;
    .locals 0

    .line 1
    iput p1, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    .line 2
    iput p2, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    .line 3
    iput p3, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    return-object p0
.end method

.method public final set(Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;
    .locals 1

    .line 4
    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    iput v0, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    .line 5
    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    iput v0, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    .line 6
    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    iput p1, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    return-object p0
.end method

.method public final subtract(III)Lcom/simsilica/mathd/Vec3i;
    .locals 2

    .line 2
    new-instance v0, Lcom/simsilica/mathd/Vec3i;

    iget v1, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    sub-int/2addr v1, p1

    iget p1, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    sub-int/2addr p2, p3

    invoke-direct {v0, v1, p1, p2}, Lcom/simsilica/mathd/Vec3i;-><init>(III)V

    return-object v0
.end method

.method public final subtract(Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;
    .locals 4

    .line 1
    new-instance v0, Lcom/simsilica/mathd/Vec3i;

    iget v1, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    iget v2, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    iget v3, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    sub-int/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/simsilica/mathd/Vec3i;-><init>(III)V

    return-object v0
.end method

.method public final subtractLocal(III)Lcom/simsilica/mathd/Vec3i;
    .locals 1

    .line 4
    iget v0, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    .line 5
    iget p1, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    .line 6
    iget p1, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    return-object p0
.end method

.method public final subtractLocal(Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3i;
    .locals 2

    .line 1
    iget v0, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    iget v1, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    .line 2
    iget v0, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    iget v1, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    .line 3
    iget v0, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    return-object p0
.end method

.method public toDisplay()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vec3i["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toVec3d()Lcom/simsilica/mathd/Vec3d;
    .locals 8

    new-instance v7, Lcom/simsilica/mathd/Vec3d;

    iget v0, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    int-to-double v1, v0

    iget v0, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    int-to-double v3, v0

    iget v0, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    int-to-double v5, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object v7
.end method

.method public toVector3f()Lcom/jme3/math/Vector3f;
    .locals 4

    new-instance v0, Lcom/jme3/math/Vector3f;

    iget v1, p0, Lcom/simsilica/mathd/Vec3i;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/simsilica/mathd/Vec3i;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/simsilica/mathd/Vec3i;->z:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method
