.class public Lcom/ardor3d/math/Plane;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/ardor3d/util/export/Savable;
.implements Ljava/io/Externalizable;
.implements Lcom/ardor3d/math/type/ReadOnlyPlane;
.implements Lcom/ardor3d/math/Poolable;


# static fields
.field private static final PLANE_POOL:Lcom/ardor3d/math/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ardor3d/math/ObjectPool<",
            "Lcom/ardor3d/math/Plane;",
            ">;"
        }
    .end annotation
.end field

.field public static final XY:Lcom/ardor3d/math/type/ReadOnlyPlane;

.field public static final XZ:Lcom/ardor3d/math/type/ReadOnlyPlane;

.field public static final YZ:Lcom/ardor3d/math/type/ReadOnlyPlane;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _constant:D

.field protected final _normal:Lcom/ardor3d/math/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/ardor3d/math/Plane;

    sget v1, Lcom/ardor3d/util/Constants;->maxPoolSize:I

    invoke-static {v0, v1}, Lcom/ardor3d/math/ObjectPool;->create(Ljava/lang/Class;I)Lcom/ardor3d/math/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/math/Plane;->PLANE_POOL:Lcom/ardor3d/math/ObjectPool;

    new-instance v0, Lcom/ardor3d/math/Plane;

    sget-object v1, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/ardor3d/math/Plane;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;D)V

    sput-object v0, Lcom/ardor3d/math/Plane;->XZ:Lcom/ardor3d/math/type/ReadOnlyPlane;

    new-instance v0, Lcom/ardor3d/math/Plane;

    sget-object v1, Lcom/ardor3d/math/Vector3;->UNIT_Z:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v0, v1, v2, v3}, Lcom/ardor3d/math/Plane;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;D)V

    sput-object v0, Lcom/ardor3d/math/Plane;->XY:Lcom/ardor3d/math/type/ReadOnlyPlane;

    new-instance v0, Lcom/ardor3d/math/Plane;

    sget-object v1, Lcom/ardor3d/math/Vector3;->UNIT_X:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v0, v1, v2, v3}, Lcom/ardor3d/math/Plane;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;D)V

    sput-object v0, Lcom/ardor3d/math/Plane;->YZ:Lcom/ardor3d/math/type/ReadOnlyPlane;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ardor3d/math/Plane;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;D)V

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/math/type/ReadOnlyVector3;D)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/math/Plane;->_normal:Lcom/ardor3d/math/Vector3;

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lcom/ardor3d/math/Plane;->_constant:D

    .line 5
    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 6
    iput-wide p2, p0, Lcom/ardor3d/math/Plane;->_constant:D

    return-void
.end method

.method public static final fetchTempInstance()Lcom/ardor3d/math/Plane;
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Plane;->PLANE_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0}, Lcom/ardor3d/math/ObjectPool;->fetch()Lcom/ardor3d/math/Poolable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Plane;

    return-object v0

    :cond_0
    new-instance v0, Lcom/ardor3d/math/Plane;

    invoke-direct {v0}, Lcom/ardor3d/math/Plane;-><init>()V

    return-object v0
.end method

.method public static isValid(Lcom/ardor3d/math/type/ReadOnlyPlane;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyPlane;->getConstant()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyPlane;->getConstant()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyPlane;->getNormal()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p0

    invoke-static {p0}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static final releaseTempInstance(Lcom/ardor3d/math/Plane;)V
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Plane;->PLANE_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/ardor3d/math/ObjectPool;->release(Lcom/ardor3d/math/Poolable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/ardor3d/math/Plane;
    .locals 3

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Plane;

    .line 3
    iget-object v1, v0, Lcom/ardor3d/math/Plane;->_normal:Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/math/Plane;->_normal:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/Plane;->clone()Lcom/ardor3d/math/Plane;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/math/type/ReadOnlyPlane;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/math/type/ReadOnlyPlane;

    invoke-virtual {p0}, Lcom/ardor3d/math/Plane;->getConstant()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyPlane;->getConstant()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ardor3d/math/Plane;->_normal:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyPlane;->getNormal()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/math/Plane;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getConstant()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Plane;->_constant:D

    return-wide v0
.end method

.method public getNormal()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Plane;->_normal:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/ardor3d/math/Plane;->_normal:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x220

    invoke-virtual {p0}, Lcom/ardor3d/math/Plane;->getConstant()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    mul-int/lit8 v3, v0, 0x1f

    const/16 v4, 0x20

    ushr-long v4, v1, v4

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    return v0
.end method

.method public pseudoDistance(Lcom/ardor3d/math/type/ReadOnlyVector3;)D
    .locals 4

    iget-object v0, p0, Lcom/ardor3d/math/Plane;->_normal:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/ardor3d/math/Plane;->_constant:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/math/Plane;->_normal:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "normal"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const-string v0, "constant"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/math/Plane;->_constant:D

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/Plane;->setNormal(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Plane;->setConstant(D)V

    return-void
.end method

.method public set(Lcom/ardor3d/math/type/ReadOnlyPlane;)Lcom/ardor3d/math/Plane;
    .locals 2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyPlane;->getConstant()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Plane;->setConstant(D)V

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyPlane;->getNormal()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ardor3d/math/Plane;->setNormal(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    return-object p0
.end method

.method public setConstant(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/Plane;->_constant:D

    return-void
.end method

.method public setNormal(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Plane;->_normal:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public setPlanePoints(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Plane;
    .locals 7

    iget-object v0, p0, Lcom/ardor3d/math/Plane;->_normal:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/math/Plane;->_normal:Lcom/ardor3d/math/Vector3;

    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide p2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v5

    sub-double v5, p2, v5

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;->crossLocal(DDD)Lcom/ardor3d/math/Vector3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    iget-object p2, p0, Lcom/ardor3d/math/Plane;->_normal:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p2, p1}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/ardor3d/math/Plane;->_constant:D

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.ardor3d.math.Plane [Normal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/math/Plane;->_normal:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - Constant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ardor3d/math/Plane;->_constant:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whichSide(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/type/ReadOnlyPlane$Side;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/ardor3d/math/Plane;->pseudoDistance(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    sget-object p1, Lcom/ardor3d/math/type/ReadOnlyPlane$Side;->Inside:Lcom/ardor3d/math/type/ReadOnlyPlane$Side;

    return-object p1

    :cond_0
    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    sget-object p1, Lcom/ardor3d/math/type/ReadOnlyPlane$Side;->Outside:Lcom/ardor3d/math/type/ReadOnlyPlane$Side;

    return-object p1

    :cond_1
    sget-object p1, Lcom/ardor3d/math/type/ReadOnlyPlane$Side;->Neither:Lcom/ardor3d/math/type/ReadOnlyPlane$Side;

    return-object p1
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/math/Plane;->_normal:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "normal"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-wide v4, p0, Lcom/ardor3d/math/Plane;->_constant:D

    const-string v6, "constant"

    const-wide/16 v7, 0x0

    move-object v3, p1

    invoke-interface/range {v3 .. v8}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/math/Plane;->_normal:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Plane;->getConstant()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    return-void
.end method
