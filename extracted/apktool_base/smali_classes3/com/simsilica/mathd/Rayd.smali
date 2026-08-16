.class public Lcom/simsilica/mathd/Rayd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x2aL


# instance fields
.field private direction:Lcom/simsilica/mathd/Vec3d;

.field private origin:Lcom/simsilica/mathd/Vec3d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Ray;)V
    .locals 2

    .line 5
    new-instance v0, Lcom/simsilica/mathd/Vec3d;

    iget-object v1, p1, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1}, Lcom/simsilica/mathd/Vec3d;-><init>(Lcom/jme3/math/Vector3f;)V

    new-instance v1, Lcom/simsilica/mathd/Vec3d;

    iget-object p1, p1, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-direct {v1, p1}, Lcom/simsilica/mathd/Vec3d;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-direct {p0, v0, v1}, Lcom/simsilica/mathd/Rayd;-><init>(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3d;)V

    return-void
.end method

.method public constructor <init>(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/simsilica/mathd/Rayd;->setOrigin(Lcom/simsilica/mathd/Vec3d;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/simsilica/mathd/Rayd;->setDirection(Lcom/simsilica/mathd/Vec3d;)V

    return-void
.end method


# virtual methods
.method public final clone()Lcom/simsilica/mathd/Rayd;
    .locals 3

    .line 2
    new-instance v0, Lcom/simsilica/mathd/Rayd;

    iget-object v1, p0, Lcom/simsilica/mathd/Rayd;->origin:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {v1}, Lcom/simsilica/mathd/Vec3d;->clone()Lcom/simsilica/mathd/Vec3d;

    move-result-object v1

    iget-object v2, p0, Lcom/simsilica/mathd/Rayd;->direction:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {v2}, Lcom/simsilica/mathd/Vec3d;->clone()Lcom/simsilica/mathd/Vec3d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/simsilica/mathd/Rayd;-><init>(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3d;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/simsilica/mathd/Rayd;->clone()Lcom/simsilica/mathd/Rayd;

    move-result-object v0

    return-object v0
.end method

.method public distanceSq(Lcom/simsilica/mathd/Vec3d;D)D
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/simsilica/mathd/Rayd;->getClosestPoint(Lcom/simsilica/mathd/Vec3d;DLcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/simsilica/mathd/Vec3d;->distanceSq(Lcom/simsilica/mathd/Vec3d;)D

    move-result-wide p1

    return-wide p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/simsilica/mathd/Rayd;

    iget-object v2, p1, Lcom/simsilica/mathd/Rayd;->direction:Lcom/simsilica/mathd/Vec3d;

    iget-object v3, p0, Lcom/simsilica/mathd/Rayd;->direction:Lcom/simsilica/mathd/Vec3d;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object p1, p1, Lcom/simsilica/mathd/Rayd;->origin:Lcom/simsilica/mathd/Vec3d;

    iget-object v2, p0, Lcom/simsilica/mathd/Rayd;->origin:Lcom/simsilica/mathd/Vec3d;

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getClosestPoint(Lcom/simsilica/mathd/Vec3d;DLcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 4

    if-nez p4, :cond_0

    new-instance p4, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {p4, p1}, Lcom/simsilica/mathd/Vec3d;-><init>(Lcom/simsilica/mathd/Vec3d;)V

    iget-object p1, p0, Lcom/simsilica/mathd/Rayd;->origin:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {p4, p1}, Lcom/simsilica/mathd/Vec3d;->subtractLocal(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    move-result-object p4

    goto :goto_0

    :cond_0
    invoke-virtual {p4, p1}, Lcom/simsilica/mathd/Vec3d;->set(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    move-result-object p1

    iget-object v0, p0, Lcom/simsilica/mathd/Rayd;->origin:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {p1, v0}, Lcom/simsilica/mathd/Vec3d;->subtractLocal(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    :goto_0
    iget-object p1, p0, Lcom/simsilica/mathd/Rayd;->direction:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {p1, p4}, Lcom/simsilica/mathd/Vec3d;->dot(Lcom/simsilica/mathd/Vec3d;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, p2, v2

    if-lez p1, :cond_1

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    :cond_1
    cmpl-double p1, v0, v2

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/simsilica/mathd/Rayd;->direction:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {p4, p1}, Lcom/simsilica/mathd/Vec3d;->set(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/simsilica/mathd/Vec3d;->multLocal(D)Lcom/simsilica/mathd/Vec3d;

    move-result-object p1

    iget-object p2, p0, Lcom/simsilica/mathd/Rayd;->origin:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {p1, p2}, Lcom/simsilica/mathd/Vec3d;->addLocal(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/simsilica/mathd/Rayd;->origin:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {p4, p1}, Lcom/simsilica/mathd/Vec3d;->set(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    :goto_1
    return-object p4
.end method

.method public final getDirection()Lcom/simsilica/mathd/Vec3d;
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/Rayd;->direction:Lcom/simsilica/mathd/Vec3d;

    return-object v0
.end method

.method public final getOrigin()Lcom/simsilica/mathd/Vec3d;
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/Rayd;->origin:Lcom/simsilica/mathd/Vec3d;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/simsilica/mathd/Rayd;->origin:Lcom/simsilica/mathd/Vec3d;

    iget-object v1, p0, Lcom/simsilica/mathd/Rayd;->direction:Lcom/simsilica/mathd/Vec3d;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public intersectSphere(DLcom/simsilica/mathd/Vec3d;DZ)D
    .locals 15

    move-object v0, p0

    move-wide/from16 v1, p4

    iget-object v3, v0, Lcom/simsilica/mathd/Rayd;->origin:Lcom/simsilica/mathd/Vec3d;

    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Lcom/simsilica/mathd/Vec3d;->subtract(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    move-result-object v3

    iget-object v4, v0, Lcom/simsilica/mathd/Rayd;->direction:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {v3, v4}, Lcom/simsilica/mathd/Vec3d;->dot(Lcom/simsilica/mathd/Vec3d;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    if-eqz p6, :cond_0

    cmpg-double v10, v4, v6

    if-gez v10, :cond_0

    return-wide v8

    :cond_0
    neg-double v10, v1

    cmpg-double v10, v4, v10

    if-gez v10, :cond_1

    return-wide v8

    :cond_1
    cmpl-double v10, p1, v6

    if-lez v10, :cond_2

    add-double v11, p1, v1

    cmpl-double v11, v4, v11

    if-lez v11, :cond_2

    return-wide v8

    :cond_2
    invoke-virtual {v3}, Lcom/simsilica/mathd/Vec3d;->lengthSq()D

    move-result-wide v11

    mul-double v13, v4, v4

    sub-double/2addr v11, v13

    cmpl-double v3, v11, v6

    if-nez v3, :cond_5

    cmpg-double v1, v4, v6

    if-gez v1, :cond_3

    return-wide v8

    :cond_3
    cmpl-double v1, v4, p1

    if-lez v1, :cond_4

    return-wide v8

    :cond_4
    return-wide v4

    :cond_5
    mul-double/2addr v1, v1

    sub-double/2addr v1, v11

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    sub-double v11, v4, v1

    cmpg-double v3, v11, v6

    if-gez v3, :cond_7

    if-eqz p6, :cond_6

    return-wide v8

    :cond_6
    add-double v11, v4, v1

    :cond_7
    cmpg-double v1, v11, v6

    if-gez v1, :cond_8

    return-wide v8

    :cond_8
    if-lez v10, :cond_9

    cmpl-double v1, v11, p1

    if-lez v1, :cond_9

    return-wide v8

    :cond_9
    return-wide v11
.end method

.method public isSimilar(Lcom/simsilica/mathd/Rayd;D)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/simsilica/mathd/Rayd;->origin:Lcom/simsilica/mathd/Vec3d;

    iget-object v2, p1, Lcom/simsilica/mathd/Rayd;->origin:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {v1, v2, p2, p3}, Lcom/simsilica/mathd/Vec3d;->isSimilar(Lcom/simsilica/mathd/Vec3d;D)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/simsilica/mathd/Rayd;->direction:Lcom/simsilica/mathd/Vec3d;

    iget-object p1, p1, Lcom/simsilica/mathd/Rayd;->direction:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {v1, p1, p2, p3}, Lcom/simsilica/mathd/Vec3d;->isSimilar(Lcom/simsilica/mathd/Vec3d;D)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public project(DLcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 1

    if-nez p3, :cond_0

    new-instance p3, Lcom/simsilica/mathd/Vec3d;

    iget-object v0, p0, Lcom/simsilica/mathd/Rayd;->direction:Lcom/simsilica/mathd/Vec3d;

    invoke-direct {p3, v0}, Lcom/simsilica/mathd/Vec3d;-><init>(Lcom/simsilica/mathd/Vec3d;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/simsilica/mathd/Rayd;->direction:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {p3, v0}, Lcom/simsilica/mathd/Vec3d;->set(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    :goto_0
    invoke-virtual {p3, p1, p2}, Lcom/simsilica/mathd/Vec3d;->multLocal(D)Lcom/simsilica/mathd/Vec3d;

    iget-object p1, p0, Lcom/simsilica/mathd/Rayd;->origin:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {p3, p1}, Lcom/simsilica/mathd/Vec3d;->addLocal(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    return-object p3
.end method

.method public final set(Lcom/jme3/math/Ray;)Lcom/simsilica/mathd/Rayd;
    .locals 2

    .line 4
    new-instance v0, Lcom/simsilica/mathd/Vec3d;

    iget-object v1, p1, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1}, Lcom/simsilica/mathd/Vec3d;-><init>(Lcom/jme3/math/Vector3f;)V

    new-instance v1, Lcom/simsilica/mathd/Vec3d;

    iget-object p1, p1, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-direct {v1, p1}, Lcom/simsilica/mathd/Vec3d;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0, v0, v1}, Lcom/simsilica/mathd/Rayd;->set(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Rayd;

    move-result-object p1

    return-object p1
.end method

.method public final set(Lcom/simsilica/mathd/Rayd;)Lcom/simsilica/mathd/Rayd;
    .locals 1

    .line 3
    iget-object v0, p1, Lcom/simsilica/mathd/Rayd;->origin:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {v0}, Lcom/simsilica/mathd/Vec3d;->clone()Lcom/simsilica/mathd/Vec3d;

    move-result-object v0

    iget-object p1, p1, Lcom/simsilica/mathd/Rayd;->direction:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {p1}, Lcom/simsilica/mathd/Vec3d;->clone()Lcom/simsilica/mathd/Vec3d;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/simsilica/mathd/Rayd;->set(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Rayd;

    move-result-object p1

    return-object p1
.end method

.method public final set(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Rayd;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/simsilica/mathd/Rayd;->setOrigin(Lcom/simsilica/mathd/Vec3d;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/simsilica/mathd/Rayd;->setDirection(Lcom/simsilica/mathd/Vec3d;)V

    return-object p0
.end method

.method public final setDirection(Lcom/simsilica/mathd/Vec3d;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/simsilica/mathd/Vec3d;->lengthSq()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    iput-object p1, p0, Lcom/simsilica/mathd/Rayd;->direction:Lcom/simsilica/mathd/Vec3d;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Direction is not of unit length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  lengthSq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/simsilica/mathd/Vec3d;->lengthSq()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Direction cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setOrigin(Lcom/simsilica/mathd/Vec3d;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/simsilica/mathd/Rayd;->origin:Lcom/simsilica/mathd/Vec3d;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Origin cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toRay()Lcom/jme3/math/Ray;
    .locals 3

    new-instance v0, Lcom/jme3/math/Ray;

    iget-object v1, p0, Lcom/simsilica/mathd/Rayd;->origin:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {v1}, Lcom/simsilica/mathd/Vec3d;->toVector3f()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Lcom/simsilica/mathd/Rayd;->direction:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {v2}, Lcom/simsilica/mathd/Vec3d;->toVector3f()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/Ray;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rayd[origin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/simsilica/mathd/Rayd;->origin:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", direction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/simsilica/mathd/Rayd;->direction:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
