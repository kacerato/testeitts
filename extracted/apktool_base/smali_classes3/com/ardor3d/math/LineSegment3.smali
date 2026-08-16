.class public Lcom/ardor3d/math/LineSegment3;
.super Lcom/ardor3d/math/Line3Base;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/math/type/ReadOnlyLineSegment3;
.implements Lcom/ardor3d/math/Poolable;


# static fields
.field private static final LINESEG3_POOL:Lcom/ardor3d/math/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ardor3d/math/ObjectPool<",
            "Lcom/ardor3d/math/LineSegment3;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _extent:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/ardor3d/math/LineSegment3;

    sget v1, Lcom/ardor3d/util/Constants;->maxPoolSize:I

    invoke-static {v0, v1}, Lcom/ardor3d/math/ObjectPool;->create(Ljava/lang/Class;I)Lcom/ardor3d/math/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/math/LineSegment3;->LINESEG3_POOL:Lcom/ardor3d/math/ObjectPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    sget-object v1, Lcom/ardor3d/math/Vector3;->UNIT_Z:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {p0, v0, v1}, Lcom/ardor3d/math/Line3Base;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lcom/ardor3d/math/LineSegment3;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/ardor3d/math/Line3Base;->_origin:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    .line 6
    iget-object v0, p0, Lcom/ardor3d/math/Line3Base;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 7
    iget-object p1, p0, Lcom/ardor3d/math/Line3Base;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->length()D

    move-result-wide p1

    mul-double/2addr p1, v1

    iput-wide p1, p0, Lcom/ardor3d/math/LineSegment3;->_extent:D

    .line 8
    iget-object p1, p0, Lcom/ardor3d/math/Line3Base;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;D)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ardor3d/math/Line3Base;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    .line 3
    iput-wide p3, p0, Lcom/ardor3d/math/LineSegment3;->_extent:D

    return-void
.end method

.method public static final fetchTempInstance()Lcom/ardor3d/math/LineSegment3;
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/LineSegment3;->LINESEG3_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0}, Lcom/ardor3d/math/ObjectPool;->fetch()Lcom/ardor3d/math/Poolable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/LineSegment3;

    return-object v0

    :cond_0
    new-instance v0, Lcom/ardor3d/math/LineSegment3;

    invoke-direct {v0}, Lcom/ardor3d/math/LineSegment3;-><init>()V

    return-object v0
.end method

.method public static isValid(Lcom/ardor3d/math/type/ReadOnlyLineSegment3;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyLineSegment3;->getExtent()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyLineSegment3;->getExtent()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static final releaseTempInstance(Lcom/ardor3d/math/LineSegment3;)V
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/LineSegment3;->LINESEG3_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/ardor3d/math/ObjectPool;->release(Lcom/ardor3d/math/Poolable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/ardor3d/math/Line3Base;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/LineSegment3;->clone()Lcom/ardor3d/math/LineSegment3;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ardor3d/math/LineSegment3;
    .locals 1

    .line 3
    invoke-super {p0}, Lcom/ardor3d/math/Line3Base;->clone()Lcom/ardor3d/math/Line3Base;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/LineSegment3;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/math/LineSegment3;->clone()Lcom/ardor3d/math/LineSegment3;

    move-result-object v0

    return-object v0
.end method

.method public distanceSquared(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)D
    .locals 7

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    iget-object v2, p0, Lcom/ardor3d/math/Line3Base;->_origin:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/math/Line3Base;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v0}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/ardor3d/math/LineSegment3;->_extent:D

    neg-double v5, v3

    cmpg-double v5, v5, v1

    if-gez v5, :cond_1

    cmpg-double v3, v1, v3

    if-gez v3, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/math/Line3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0}, Lcom/ardor3d/math/Line3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/ardor3d/math/LineSegment3;->getPositiveEnd(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/ardor3d/math/LineSegment3;->getNegativeEnd(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2, v0}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    :cond_2
    invoke-interface {p1, v0, v0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->lengthSquared()D

    move-result-wide p1

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-wide p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/math/type/ReadOnlyLineSegment3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/math/type/ReadOnlyLineSegment3;

    iget-object v1, p0, Lcom/ardor3d/math/Line3Base;->_origin:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ardor3d/math/Line3Base;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/ardor3d/math/LineSegment3;->_extent:D

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyLineSegment3;->getExtent()D

    move-result-wide v5

    cmpl-double p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getExtent()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/LineSegment3;->_extent:D

    return-wide v0
.end method

.method public getNegativeEnd(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/ardor3d/math/Vector3;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector3;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/math/Line3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iget-wide v1, p0, Lcom/ardor3d/math/LineSegment3;->_extent:D

    neg-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0}, Lcom/ardor3d/math/Line3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    return-object p1
.end method

.method public getPositiveEnd(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/ardor3d/math/Vector3;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector3;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/math/Line3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iget-wide v1, p0, Lcom/ardor3d/math/LineSegment3;->_extent:D

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0}, Lcom/ardor3d/math/Line3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    return-object p1
.end method

.method public random(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 14

    if-nez p1, :cond_0

    new-instance p1, Lcom/ardor3d/math/Vector3;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector3;-><init>()V

    :cond_0
    invoke-static {}, Lcom/ardor3d/math/MathUtils;->nextRandomDouble()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/ardor3d/math/LineSegment3;->_extent:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    invoke-virtual {p0}, Lcom/ardor3d/math/Line3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v6

    invoke-interface {v6}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v6

    mul-double/2addr v2, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v8, v6, v0

    mul-double/2addr v2, v8

    invoke-virtual {p0}, Lcom/ardor3d/math/Line3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v10

    invoke-interface {v10}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v10

    iget-wide v12, p0, Lcom/ardor3d/math/LineSegment3;->_extent:D

    mul-double/2addr v10, v12

    mul-double/2addr v0, v4

    sub-double/2addr v0, v6

    mul-double/2addr v10, v0

    add-double/2addr v2, v10

    invoke-virtual {p1, v2, v3}, Lcom/ardor3d/math/Vector3;->setX(D)V

    iget-wide v2, p0, Lcom/ardor3d/math/LineSegment3;->_extent:D

    mul-double/2addr v2, v4

    invoke-virtual {p0}, Lcom/ardor3d/math/Line3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v6

    invoke-interface {v6}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v6

    mul-double/2addr v2, v6

    mul-double/2addr v2, v8

    invoke-virtual {p0}, Lcom/ardor3d/math/Line3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v6

    invoke-interface {v6}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v6

    iget-wide v10, p0, Lcom/ardor3d/math/LineSegment3;->_extent:D

    mul-double/2addr v6, v10

    mul-double/2addr v6, v0

    add-double/2addr v2, v6

    invoke-virtual {p1, v2, v3}, Lcom/ardor3d/math/Vector3;->setY(D)V

    iget-wide v2, p0, Lcom/ardor3d/math/LineSegment3;->_extent:D

    mul-double/2addr v2, v4

    invoke-virtual {p0}, Lcom/ardor3d/math/Line3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v4

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v4

    mul-double/2addr v2, v4

    mul-double/2addr v2, v8

    invoke-virtual {p0}, Lcom/ardor3d/math/Line3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v4

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/ardor3d/math/LineSegment3;->_extent:D

    mul-double/2addr v4, v6

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    return-object p1
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/math/Line3Base;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "extent"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/math/LineSegment3;->_extent:D

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

    invoke-super {p0, p1}, Lcom/ardor3d/math/Line3Base;->readExternal(Ljava/io/ObjectInput;)V

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/math/LineSegment3;->_extent:D

    return-void
.end method

.method public set(Lcom/ardor3d/math/type/ReadOnlyLineSegment3;)Lcom/ardor3d/math/LineSegment3;
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/math/Line3Base;->_origin:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/math/Line3Base;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    return-object p0
.end method

.method public setExtent(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/LineSegment3;->_extent:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.ardor3d.math.LineSegment3 [Origin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/math/Line3Base;->_origin:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - Direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/math/Line3Base;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - Extent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ardor3d/math/LineSegment3;->_extent:D

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

    invoke-super {p0, p1}, Lcom/ardor3d/math/Line3Base;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-wide v1, p0, Lcom/ardor3d/math/LineSegment3;->_extent:D

    const-string v3, "extent"

    const-wide/16 v4, 0x0

    move-object v0, p1

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

    invoke-super {p0, p1}, Lcom/ardor3d/math/Line3Base;->writeExternal(Ljava/io/ObjectOutput;)V

    iget-wide v0, p0, Lcom/ardor3d/math/LineSegment3;->_extent:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    return-void
.end method
