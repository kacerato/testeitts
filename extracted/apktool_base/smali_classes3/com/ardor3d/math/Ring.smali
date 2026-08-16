.class public Lcom/ardor3d/math/Ring;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/ardor3d/util/export/Savable;
.implements Ljava/io/Externalizable;
.implements Lcom/ardor3d/math/type/ReadOnlyRing;
.implements Lcom/ardor3d/math/Poolable;


# static fields
.field private static final RING_POOL:Lcom/ardor3d/math/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ardor3d/math/ObjectPool<",
            "Lcom/ardor3d/math/Ring;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _center:Lcom/ardor3d/math/Vector3;

.field private _innerRadius:D

.field private _outerRadius:D

.field private final _up:Lcom/ardor3d/math/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/ardor3d/math/Ring;

    sget v1, Lcom/ardor3d/util/Constants;->maxPoolSize:I

    invoke-static {v0, v1}, Lcom/ardor3d/math/ObjectPool;->create(Ljava/lang/Class;I)Lcom/ardor3d/math/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/math/Ring;->RING_POOL:Lcom/ardor3d/math/ObjectPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/math/Ring;->_center:Lcom/ardor3d/math/Vector3;

    .line 3
    new-instance v0, Lcom/ardor3d/math/Vector3;

    sget-object v1, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iput-object v0, p0, Lcom/ardor3d/math/Ring;->_up:Lcom/ardor3d/math/Vector3;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/ardor3d/math/Ring;->_innerRadius:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 5
    iput-wide v0, p0, Lcom/ardor3d/math/Ring;->_outerRadius:D

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;DD)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/math/Ring;->_center:Lcom/ardor3d/math/Vector3;

    .line 8
    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iput-object v1, p0, Lcom/ardor3d/math/Ring;->_up:Lcom/ardor3d/math/Vector3;

    .line 9
    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 10
    invoke-virtual {v1, p2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 11
    iput-wide p3, p0, Lcom/ardor3d/math/Ring;->_innerRadius:D

    .line 12
    iput-wide p5, p0, Lcom/ardor3d/math/Ring;->_outerRadius:D

    return-void
.end method

.method public static final fetchTempInstance()Lcom/ardor3d/math/Ring;
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Ring;->RING_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0}, Lcom/ardor3d/math/ObjectPool;->fetch()Lcom/ardor3d/math/Poolable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Ring;

    return-object v0

    :cond_0
    new-instance v0, Lcom/ardor3d/math/Ring;

    invoke-direct {v0}, Lcom/ardor3d/math/Ring;-><init>()V

    return-object v0
.end method

.method public static isValid(Lcom/ardor3d/math/type/ReadOnlyRing;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyRing;->getInnerRadius()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyRing;->getInnerRadius()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyRing;->getOuterRadius()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyRing;->getOuterRadius()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyRing;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyRing;->getUp()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p0

    invoke-static {p0}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method public static final releaseTempInstance(Lcom/ardor3d/math/Ring;)V
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Ring;->RING_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/ardor3d/math/ObjectPool;->release(Lcom/ardor3d/math/Poolable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/ardor3d/math/Ring;
    .locals 3

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Ring;

    .line 3
    iget-object v1, v0, Lcom/ardor3d/math/Ring;->_center:Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/math/Ring;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 4
    iget-object v1, v0, Lcom/ardor3d/math/Ring;->_up:Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/math/Ring;->_up:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5
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
    invoke-virtual {p0}, Lcom/ardor3d/math/Ring;->clone()Lcom/ardor3d/math/Ring;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/math/type/ReadOnlyRing;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/math/type/ReadOnlyRing;

    invoke-virtual {p0}, Lcom/ardor3d/math/Ring;->getInnerRadius()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyRing;->getInnerRadius()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/ardor3d/math/Ring;->getOuterRadius()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyRing;->getOuterRadius()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ardor3d/math/Ring;->_up:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyRing;->getUp()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ardor3d/math/Ring;->_center:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyRing;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

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

.method public getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Ring;->_center:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/math/Ring;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getInnerRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Ring;->_innerRadius:D

    return-wide v0
.end method

.method public getOuterRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Ring;->_outerRadius:D

    return-wide v0
.end method

.method public getUp()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Ring;->_up:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lcom/ardor3d/math/Ring;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x220

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/ardor3d/math/Ring;->_up:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ardor3d/math/Ring;->getInnerRadius()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    mul-int/lit8 v3, v0, 0x1f

    const/16 v4, 0x20

    ushr-long v5, v1, v4

    xor-long/2addr v1, v5

    long-to-int v1, v1

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/ardor3d/math/Ring;->getOuterRadius()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    mul-int/lit8 v3, v0, 0x1f

    ushr-long v4, v1, v4

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    return v0
.end method

.method public random(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 10

    if-nez p1, :cond_0

    new-instance p1, Lcom/ardor3d/math/Vector3;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector3;-><init>()V

    :cond_0
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    iget-wide v2, p0, Lcom/ardor3d/math/Ring;->_innerRadius:D

    mul-double/2addr v2, v2

    iget-wide v4, p0, Lcom/ardor3d/math/Ring;->_outerRadius:D

    mul-double/2addr v4, v4

    invoke-static {}, Lcom/ardor3d/math/MathUtils;->nextRandomFloat()F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v4, v2

    mul-double/2addr v6, v4

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {}, Lcom/ardor3d/math/MathUtils;->nextRandomFloat()F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v4, v6

    iget-object v6, p0, Lcom/ardor3d/math/Ring;->_up:Lcom/ardor3d/math/Vector3;

    sget-object v7, Lcom/ardor3d/math/Vector3;->UNIT_X:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-virtual {v6, v7, v0}, Lcom/ardor3d/math/Vector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->lengthSquared()D

    move-result-wide v6

    const-wide/high16 v8, 0x3cb0000000000000L    # 2.220446049250313E-16

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    iget-object v6, p0, Lcom/ardor3d/math/Ring;->_up:Lcom/ardor3d/math/Vector3;

    sget-object v7, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-virtual {v6, v7, v0}, Lcom/ardor3d/math/Vector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    :cond_1
    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    iget-object v6, p0, Lcom/ardor3d/math/Ring;->_up:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6, v0, v1}, Lcom/ardor3d/math/Vector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v6

    invoke-static {v4, v5}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    move-result-object v6

    iget-object v7, p0, Lcom/ardor3d/math/Ring;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-static {v4, v5}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3, p1, p1}, Lcom/ardor3d/math/Vector3;->scaleAdd(DLcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-object p1
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/math/Ring;->_center:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "center"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/math/Ring;->_up:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_Z:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "up"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const-string v0, "innerRadius"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/math/Ring;->_innerRadius:D

    const-string v0, "outerRadius"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/math/Ring;->_outerRadius:D

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

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/Ring;->setCenter(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/Ring;->setUp(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Ring;->setInnerRadius(D)V

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Ring;->setOuterRadius(D)V

    return-void
.end method

.method public setCenter(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Ring;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public setInnerRadius(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/Ring;->_innerRadius:D

    return-void
.end method

.method public setOuterRadius(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/Ring;->_outerRadius:D

    return-void
.end method

.method public setUp(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Ring;->_up:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.ardor3d.math.Ring [Center: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/math/Ring;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Up: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/math/Ring;->_up:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - radii, outer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ardor3d/math/Ring;->_outerRadius:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "  inner: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ardor3d/math/Ring;->_innerRadius:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/math/Ring;->_center:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "center"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/math/Ring;->_up:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_Z:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "up"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-wide v1, p0, Lcom/ardor3d/math/Ring;->_innerRadius:D

    const-string v3, "innerRadius"

    const-wide/16 v4, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v1, p0, Lcom/ardor3d/math/Ring;->_outerRadius:D

    const-string v3, "outerRadius"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/math/Ring;->_center:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ardor3d/math/Ring;->_up:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/ardor3d/math/Ring;->_innerRadius:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    iget-wide v0, p0, Lcom/ardor3d/math/Ring;->_outerRadius:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    return-void
.end method
