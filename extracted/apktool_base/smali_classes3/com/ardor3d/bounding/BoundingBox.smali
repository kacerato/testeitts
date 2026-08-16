.class public Lcom/ardor3d/bounding/BoundingBox;
.super Lcom/ardor3d/bounding/BoundingVolume;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _xExtent:D

.field private _yExtent:D

.field private _zExtent:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/bounding/BoundingVolume;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/bounding/BoundingBox;)V
    .locals 8

    .line 2
    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/ardor3d/bounding/BoundingBox;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;DDD)V

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/math/type/ReadOnlyVector3;DDD)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/ardor3d/bounding/BoundingVolume;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/bounding/BoundingBox;->setXExtent(D)V

    .line 6
    invoke-virtual {p0, p4, p5}, Lcom/ardor3d/bounding/BoundingBox;->setYExtent(D)V

    .line 7
    invoke-virtual {p0, p6, p7}, Lcom/ardor3d/bounding/BoundingBox;->setZExtent(D)V

    return-void
.end method

.method private checkMinMax(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 4

    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->setX(D)V

    :cond_0
    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/ardor3d/math/Vector3;->setX(D)V

    :cond_1
    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->setY(D)V

    :cond_2
    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/ardor3d/math/Vector3;->setY(D)V

    :cond_3
    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    :cond_4
    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-lez p1, :cond_5

    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    :cond_5
    return-void
.end method

.method private clip(DD[D)Z
    .locals 5

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_2

    aget-wide v0, p5, v4

    mul-double/2addr v0, p1

    cmpl-double v0, p3, v0

    if-lez v0, :cond_0

    return v3

    :cond_0
    aget-wide v0, p5, v3

    mul-double/2addr v0, p1

    cmpl-double v0, p3, v0

    if-lez v0, :cond_1

    div-double/2addr p3, p1

    aput-wide p3, p5, v3

    :cond_1
    return v4

    :cond_2
    cmpg-double v2, p1, v0

    if-gez v2, :cond_5

    aget-wide v0, p5, v3

    mul-double/2addr v0, p1

    cmpl-double v0, p3, v0

    if-lez v0, :cond_3

    return v3

    :cond_3
    aget-wide v0, p5, v4

    mul-double/2addr v0, p1

    cmpl-double v0, p3, v0

    if-lez v0, :cond_4

    div-double/2addr p3, p1

    aput-wide p3, p5, v4

    :cond_4
    return v4

    :cond_5
    cmpg-double p1, p3, v0

    if-gtz p1, :cond_6

    move v3, v4

    :cond_6
    return v3
.end method

.method private merge(Lcom/ardor3d/math/Vector3;DDDLcom/ardor3d/bounding/BoundingBox;)Lcom/ardor3d/bounding/BoundingBox;
    .locals 6

    .line 9
    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p4, p5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p6, p7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/ardor3d/math/Vector3;->setX(D)V

    .line 13
    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    sub-double/2addr v4, p2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    sub-double/2addr v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/ardor3d/math/Vector3;->setX(D)V

    .line 15
    :cond_1
    iget-object v2, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/ardor3d/math/Vector3;->setY(D)V

    .line 16
    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    sub-double/2addr v4, p4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 17
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    sub-double/2addr v2, p4

    invoke-virtual {v0, v2, v3}, Lcom/ardor3d/math/Vector3;->setY(D)V

    .line 18
    :cond_2
    iget-object v2, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    .line 19
    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v4

    sub-double/2addr v4, p6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    .line 20
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    sub-double/2addr v2, p6

    invoke-virtual {v0, v2, v3}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    .line 21
    :cond_3
    iget-object v2, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/ardor3d/math/Vector3;->setX(D)V

    .line 22
    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    add-double/2addr v4, p2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_4

    .line 23
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    add-double/2addr v2, p2

    invoke-virtual {v1, v2, v3}, Lcom/ardor3d/math/Vector3;->setX(D)V

    .line 24
    :cond_4
    iget-object p2, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide p2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v2

    add-double/2addr p2, v2

    invoke-virtual {v1, p2, p3}, Lcom/ardor3d/math/Vector3;->setY(D)V

    .line 25
    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide p2

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    add-double/2addr v2, p4

    cmpg-double p2, p2, v2

    if-gez p2, :cond_5

    .line 26
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide p2

    add-double/2addr p2, p4

    invoke-virtual {v1, p2, p3}, Lcom/ardor3d/math/Vector3;->setY(D)V

    .line 27
    :cond_5
    iget-object p2, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide p2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide p4

    add-double/2addr p2, p4

    invoke-virtual {v1, p2, p3}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    .line 28
    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide p2

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide p4

    add-double/2addr p4, p6

    cmpg-double p2, p2, p4

    if-gez p2, :cond_6

    .line 29
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide p1

    add-double/2addr p1, p6

    invoke-virtual {v1, p1, p2}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    .line 30
    :cond_6
    iget-object p1, p8, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    const-wide/high16 p2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p1, p2, p3}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    .line 31
    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide p1

    iget-object p3, p8, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide p3

    sub-double/2addr p1, p3

    invoke-virtual {p8, p1, p2}, Lcom/ardor3d/bounding/BoundingBox;->setXExtent(D)V

    .line 32
    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide p1

    iget-object p3, p8, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide p3

    sub-double/2addr p1, p3

    invoke-virtual {p8, p1, p2}, Lcom/ardor3d/bounding/BoundingBox;->setYExtent(D)V

    .line 33
    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide p1

    iget-object p3, p8, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide p3

    sub-double/2addr p1, p3

    invoke-virtual {p8, p1, p2}, Lcom/ardor3d/bounding/BoundingBox;->setZExtent(D)V

    .line 34
    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    .line 35
    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-object p8

    .line 36
    :cond_7
    :goto_0
    sget-object p1, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-virtual {p8, p1}, Lcom/ardor3d/bounding/BoundingVolume;->setCenter(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-wide/high16 p1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 37
    invoke-virtual {p8, p1, p2}, Lcom/ardor3d/bounding/BoundingBox;->setXExtent(D)V

    .line 38
    invoke-virtual {p8, p1, p2}, Lcom/ardor3d/bounding/BoundingBox;->setYExtent(D)V

    .line 39
    invoke-virtual {p8, p1, p2}, Lcom/ardor3d/bounding/BoundingBox;->setZExtent(D)V

    return-object p8
.end method

.method private mergeOBB(Lcom/ardor3d/bounding/OrientedBoundingBox;)Lcom/ardor3d/bounding/BoundingBox;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/ardor3d/bounding/OrientedBoundingBox;->getExtent()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->isInfinite(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v2, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->correctCorners:Z

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/ardor3d/bounding/OrientedBoundingBox;->computeCorners()V

    :cond_1
    iget-object v2, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v6

    sub-double/2addr v4, v6

    iget-object v6, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v8

    sub-double/2addr v6, v8

    iget-object v8, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v10

    add-double/2addr v8, v10

    iget-object v10, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v10}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v12

    add-double/2addr v10, v12

    iget-object v12, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v12}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v14

    add-double/2addr v12, v14

    const/4 v14, 0x1

    :goto_0
    iget-object v15, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    array-length v1, v15

    if-ge v14, v1, :cond_8

    aget-object v1, v15, v14

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v15

    cmpg-double v15, v15, v2

    if-gez v15, :cond_2

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v15

    cmpl-double v15, v15, v8

    if-lez v15, :cond_3

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v8

    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v15

    cmpg-double v15, v15, v4

    if-gez v15, :cond_4

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v15

    cmpl-double v15, v15, v10

    if-lez v15, :cond_5

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v10

    :cond_5
    :goto_2
    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    cmpg-double v15, v15, v6

    if-gez v15, :cond_6

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    cmpl-double v15, v15, v12

    if-lez v15, :cond_7

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v12

    :cond_7
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    goto :goto_0

    :cond_8
    iget-object v15, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    add-double v16, v2, v8

    add-double v18, v4, v10

    add-double v20, v6, v12

    invoke-virtual/range {v15 .. v21}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v1, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v1, v2, v3}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    iget-object v1, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    sub-double/2addr v8, v1

    invoke-virtual {v0, v8, v9}, Lcom/ardor3d/bounding/BoundingBox;->setXExtent(D)V

    iget-object v1, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    sub-double/2addr v10, v1

    invoke-virtual {v0, v10, v11}, Lcom/ardor3d/bounding/BoundingBox;->setYExtent(D)V

    iget-object v1, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    sub-double/2addr v12, v1

    invoke-virtual {v0, v12, v13}, Lcom/ardor3d/bounding/BoundingBox;->setZExtent(D)V

    return-object v0

    :cond_9
    :goto_4
    sget-object v1, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/bounding/BoundingVolume;->setCenter(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/bounding/BoundingBox;->setXExtent(D)V

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/bounding/BoundingBox;->setYExtent(D)V

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/bounding/BoundingBox;->setZExtent(D)V

    return-object v0
.end method


# virtual methods
.method public clone(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;
    .locals 9

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingVolume;->getType()Lcom/ardor3d/bounding/BoundingVolume$Type;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/bounding/BoundingVolume$Type;->AABB:Lcom/ardor3d/bounding/BoundingVolume$Type;

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/ardor3d/bounding/BoundingBox;

    iget-object v0, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-wide v0, p0, Lcom/ardor3d/bounding/BoundingBox;->_xExtent:D

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/bounding/BoundingBox;->setXExtent(D)V

    iget-wide v0, p0, Lcom/ardor3d/bounding/BoundingBox;->_yExtent:D

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/bounding/BoundingBox;->setYExtent(D)V

    iget-wide v0, p0, Lcom/ardor3d/bounding/BoundingBox;->_zExtent:D

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/bounding/BoundingBox;->setZExtent(D)V

    iget v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_checkPlane:I

    iput v0, p1, Lcom/ardor3d/bounding/BoundingVolume;->_checkPlane:I

    return-object p1

    :cond_0
    new-instance p1, Lcom/ardor3d/bounding/BoundingBox;

    iget-object v2, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v7

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/ardor3d/bounding/BoundingBox;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;DDD)V

    return-object p1
.end method

.method public computeFromPoints(Ljava/nio/FloatBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ardor3d/bounding/BoundingBox;->containAABB(Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method public computeFromPrimitives(Lcom/ardor3d/scenegraph/MeshData;I[III)V
    .locals 8

    sub-int v0, p5, p4

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/MeshData;->getIndexMode(I)Lcom/ardor3d/renderer/IndexMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/renderer/IndexMode;->getVertexCount()I

    move-result v2

    new-array v2, v2, [Lcom/ardor3d/math/Vector3;

    :goto_0
    if-ge p4, p5, :cond_2

    aget v3, p3, p4

    invoke-virtual {p1, v3, p2, v2}, Lcom/ardor3d/scenegraph/MeshData;->getPrimitive(II[Lcom/ardor3d/math/Vector3;)[Lcom/ardor3d/math/Vector3;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    invoke-direct {p0, v0, v1, v4}, Lcom/ardor3d/bounding/BoundingBox;->checkMinMax(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object p1, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    const-wide/high16 p2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p1, p2, p3}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide p1

    iget-object p3, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide p3

    sub-double/2addr p1, p3

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/bounding/BoundingBox;->setXExtent(D)V

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide p1

    iget-object p3, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide p3

    sub-double/2addr p1, p3

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/bounding/BoundingBox;->setYExtent(D)V

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide p1

    iget-object p3, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide p3

    sub-double/2addr p1, p3

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/bounding/BoundingBox;->setZExtent(D)V

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method public containAABB(Ljava/nio/FloatBuffer;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v5

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v7

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v9

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v11

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v15

    div-int/lit8 v15, v15, 0x3

    const/16 v16, 0x1

    move/from16 v0, v16

    :goto_0
    if-ge v0, v15, :cond_8

    invoke-static {v2, v1, v0}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v16

    cmpg-double v16, v16, v3

    if-gez v16, :cond_2

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v16

    cmpl-double v16, v16, v9

    if-lez v16, :cond_3

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v9

    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v16

    cmpg-double v16, v16, v5

    if-gez v16, :cond_4

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v5

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v16

    cmpl-double v16, v16, v11

    if-lez v16, :cond_5

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v11

    :cond_5
    :goto_2
    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v16

    cmpg-double v16, v16, v7

    if-gez v16, :cond_6

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v7

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v16

    cmpl-double v16, v16, v13

    if-lez v16, :cond_7

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v13

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    add-double v16, v3, v9

    add-double v18, v5, v11

    add-double v20, v7, v13

    invoke-virtual/range {v15 .. v21}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v1, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v1, v2, v3}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    iget-object v1, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    sub-double/2addr v9, v1

    invoke-virtual {v0, v9, v10}, Lcom/ardor3d/bounding/BoundingBox;->setXExtent(D)V

    iget-object v1, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    sub-double/2addr v11, v1

    invoke-virtual {v0, v11, v12}, Lcom/ardor3d/bounding/BoundingBox;->setYExtent(D)V

    iget-object v1, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    sub-double/2addr v13, v1

    invoke-virtual {v0, v13, v14}, Lcom/ardor3d/bounding/BoundingBox;->setZExtent(D)V

    return-void
.end method

.method public contains(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z
    .locals 4

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v2

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public distanceToEdge(Lcom/ardor3d/math/type/ReadOnlyVector3;)D
    .locals 7

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v2

    neg-double v2, v2

    cmpg-double v0, v0, v2

    const-wide/16 v1, 0x0

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v5

    add-double/2addr v3, v5

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {p1, v3, v4}, Lcom/ardor3d/math/Vector3;->setX(D)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v5

    cmpl-double v0, v3, v5

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v5

    sub-double/2addr v3, v5

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/ardor3d/math/Vector3;->setX(D)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v5

    neg-double v5, v5

    cmpg-double v0, v3, v5

    if-gez v0, :cond_2

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v5

    add-double/2addr v3, v5

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {p1, v3, v4}, Lcom/ardor3d/math/Vector3;->setY(D)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v5

    cmpl-double v0, v3, v5

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v5

    sub-double/2addr v3, v5

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/ardor3d/math/Vector3;->setY(D)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v5

    neg-double v5, v5

    cmpg-double v0, v3, v5

    if-gez v0, :cond_4

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v5

    add-double/2addr v3, v5

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {p1, v3, v4}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v5

    cmpl-double v0, v3, v5

    if-lez v0, :cond_5

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v5

    sub-double/2addr v3, v5

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    :cond_5
    :goto_2
    invoke-static {p1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/bounding/BoundingBox;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/bounding/BoundingBox;

    iget-object v1, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v3}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/ardor3d/bounding/BoundingBox;->_xExtent:D

    iget-wide v5, p1, Lcom/ardor3d/bounding/BoundingBox;->_xExtent:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/ardor3d/bounding/BoundingBox;->_yExtent:D

    iget-wide v5, p1, Lcom/ardor3d/bounding/BoundingBox;->_yExtent:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/ardor3d/bounding/BoundingBox;->_zExtent:D

    iget-wide v5, p1, Lcom/ardor3d/bounding/BoundingBox;->_zExtent:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getExtent(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 7

    if-nez p1, :cond_0

    new-instance p1, Lcom/ardor3d/math/Vector3;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector3;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    return-object p1
.end method

.method public getType()Lcom/ardor3d/bounding/BoundingVolume$Type;
    .locals 1

    sget-object v0, Lcom/ardor3d/bounding/BoundingVolume$Type;->AABB:Lcom/ardor3d/bounding/BoundingVolume$Type;

    return-object v0
.end method

.method public getVolume()D
    .locals 4

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v0

    mul-double/2addr v2, v0

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v0

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method public getXExtent()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/bounding/BoundingBox;->_xExtent:D

    return-wide v0
.end method

.method public getYExtent()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/bounding/BoundingBox;->_yExtent:D

    return-wide v0
.end method

.method public getZExtent()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/bounding/BoundingBox;->_zExtent:D

    return-wide v0
.end method

.method public intersects(Lcom/ardor3d/bounding/BoundingVolume;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p1, p0}, Lcom/ardor3d/bounding/BoundingVolume;->intersectsBoundingBox(Lcom/ardor3d/bounding/BoundingBox;)Z

    move-result p1

    return p1
.end method

.method public intersects(Lcom/ardor3d/math/type/ReadOnlyRay3;)Z
    .locals 25

    move-object/from16 v1, p0

    .line 2
    iget-object v0, v1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v3

    .line 4
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v4

    .line 5
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v5

    invoke-interface {v0, v5, v3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    .line 6
    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v5

    sget-object v6, Lcom/ardor3d/math/Vector3;->UNIT_X:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-interface {v5, v6}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v7

    .line 7
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    .line 8
    invoke-virtual {v0, v6}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v11

    .line 9
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-double v5, v13, v15

    const-wide/16 v13, 0x0

    if-lez v5, :cond_1

    mul-double/2addr v11, v7

    cmpl-double v5, v11, v13

    if-ltz v5, :cond_1

    .line 11
    :goto_0
    invoke-static {v3}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    .line 12
    invoke-static {v4}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return v2

    .line 13
    :cond_1
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v5

    sget-object v7, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-interface {v5, v7}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v11

    .line 14
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    .line 15
    invoke-virtual {v0, v7}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v17

    .line 16
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v21

    cmpl-double v5, v19, v21

    if-lez v5, :cond_2

    mul-double v17, v17, v11

    cmpl-double v5, v17, v13

    if-ltz v5, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v5

    sget-object v8, Lcom/ardor3d/math/Vector3;->UNIT_Z:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-interface {v5, v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v11

    .line 19
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    .line 20
    invoke-virtual {v0, v8}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v19

    .line 21
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v23

    cmpl-double v5, v21, v23

    if-lez v5, :cond_3

    mul-double v19, v19, v11

    cmpl-double v5, v19, v13

    if-ltz v5, :cond_3

    goto :goto_0

    .line 23
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v5

    invoke-interface {v5, v0, v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v6}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v11

    mul-double v11, v11, v17

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v13

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    cmpl-double v5, v5, v11

    if-lez v5, :cond_4

    goto :goto_0

    .line 26
    :cond_4
    invoke-virtual {v0, v7}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v11

    mul-double v11, v11, v17

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v13

    mul-double/2addr v13, v9

    add-double/2addr v11, v13

    cmpl-double v5, v5, v11

    if-lez v5, :cond_5

    goto/16 :goto_0

    .line 28
    :cond_5
    invoke-virtual {v0, v8}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v7

    mul-double/2addr v7, v15

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    mul-double/2addr v11, v9

    add-double/2addr v7, v11

    cmpl-double v0, v5, v7

    if-lez v0, :cond_6

    goto/16 :goto_0

    .line 30
    :cond_6
    invoke-static {v3}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    .line 31
    invoke-static {v4}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 32
    invoke-static {v3}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    .line 33
    invoke-static {v4}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    throw v0
.end method

.method public intersectsBoundingBox(Lcom/ardor3d/bounding/BoundingBox;)Z
    .locals 8

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v4

    add-double/2addr v2, v4

    iget-object v0, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v6

    sub-double/2addr v4, v6

    cmpg-double v0, v2, v4

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v0, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v6

    add-double/2addr v4, v6

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v4

    add-double/2addr v2, v4

    iget-object v0, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v6

    sub-double/2addr v4, v6

    cmpg-double v0, v2, v4

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v0, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v6

    add-double/2addr v4, v6

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v4

    add-double/2addr v2, v4

    iget-object v0, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v6

    sub-double/2addr v4, v6

    cmpg-double v0, v2, v4

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v0, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v6

    add-double/2addr v4, v6

    cmpl-double p1, v2, v4

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public intersectsOrientedBoundingBox(Lcom/ardor3d/bounding/OrientedBoundingBox;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lcom/ardor3d/bounding/OrientedBoundingBox;->intersectsBoundingBox(Lcom/ardor3d/bounding/BoundingBox;)Z

    move-result p1

    return p1
.end method

.method public intersectsSphere(Lcom/ardor3d/bounding/BoundingSphere;)Z
    .locals 8

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-interface {v0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v6

    add-double/2addr v4, v6

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-interface {v0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v6

    add-double/2addr v4, v6

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-interface {v0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v6

    add-double/2addr v4, v6

    cmpg-double p1, v2, v4

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public intersectsWhere(Lcom/ardor3d/math/type/ReadOnlyRay3;)Lcom/ardor3d/intersection/IntersectionRecord;
    .locals 20

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    move-object/from16 v9, p0

    iget-object v3, v9, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-interface {v2, v3, v0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v10

    const/4 v3, 0x2

    new-array v11, v3, [D

    fill-array-data v11, :array_0

    const/4 v12, 0x0

    aget-wide v13, v11, v12

    const/4 v15, 0x1

    aget-wide v16, v11, v15

    invoke-interface {v10}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v18

    sub-double v6, v6, v18

    move-object/from16 v3, p0

    move-object v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/ardor3d/bounding/BoundingBox;->clip(DD[D)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v10}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v3

    neg-double v4, v3

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v18

    sub-double v6, v6, v18

    move-object/from16 v3, p0

    move-object v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/ardor3d/bounding/BoundingBox;->clip(DD[D)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v10}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v18

    sub-double v6, v6, v18

    move-object/from16 v3, p0

    move-object v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/ardor3d/bounding/BoundingBox;->clip(DD[D)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v10}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v3

    neg-double v4, v3

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v18

    sub-double v6, v6, v18

    move-object/from16 v3, p0

    move-object v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/ardor3d/bounding/BoundingBox;->clip(DD[D)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v10}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v18

    sub-double v6, v6, v18

    move-object/from16 v3, p0

    move-object v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/ardor3d/bounding/BoundingBox;->clip(DD[D)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v10}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v3

    neg-double v4, v3

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v6

    sub-double v6, v2, v6

    move-object/from16 v3, p0

    move-object v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/ardor3d/bounding/BoundingBox;->clip(DD[D)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-wide v2, v11, v12

    cmpl-double v4, v2, v13

    if-nez v4, :cond_0

    aget-wide v4, v11, v15

    cmpl-double v4, v4, v16

    if-eqz v4, :cond_2

    :cond_0
    aget-wide v4, v11, v15

    cmpl-double v4, v4, v2

    if-lez v4, :cond_1

    new-instance v2, Lcom/ardor3d/math/Vector3;

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    aget-wide v3, v11, v12

    invoke-virtual {v2, v3, v4}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    new-instance v3, Lcom/ardor3d/math/Vector3;

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    aget-wide v4, v11, v15

    invoke-virtual {v3, v4, v5}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    filled-new-array {v2, v3}, [Lcom/ardor3d/math/Vector3;

    move-result-object v2

    new-instance v3, Lcom/ardor3d/intersection/IntersectionRecord;

    invoke-direct {v3, v11, v2}, Lcom/ardor3d/intersection/IntersectionRecord;-><init>([D[Lcom/ardor3d/math/Vector3;)V

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-object v3

    :cond_1
    new-array v4, v15, [D

    aput-wide v2, v4, v12

    new-instance v2, Lcom/ardor3d/math/Vector3;

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    aget-wide v5, v4, v12

    invoke-virtual {v2, v5, v6}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    filled-new-array {v2}, [Lcom/ardor3d/math/Vector3;

    move-result-object v2

    new-instance v3, Lcom/ardor3d/intersection/IntersectionRecord;

    invoke-direct {v3, v4, v2}, Lcom/ardor3d/intersection/IntersectionRecord;-><init>([D[Lcom/ardor3d/math/Vector3;)V

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-object v3

    :cond_2
    const/4 v0, 0x0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x0
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
    .end array-data
.end method

.method public merge(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;
    .locals 18

    move-object/from16 v9, p0

    if-nez p1, :cond_0

    return-object v9

    .line 1
    :cond_0
    sget-object v0, Lcom/ardor3d/bounding/BoundingBox$1;->$SwitchMap$com$ardor3d$bounding$BoundingVolume$Type:[I

    invoke-virtual/range {p1 .. p1}, Lcom/ardor3d/bounding/BoundingVolume;->getType()Lcom/ardor3d/bounding/BoundingVolume$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return-object v2

    .line 2
    :cond_1
    move-object/from16 v0, p1

    check-cast v0, Lcom/ardor3d/bounding/OrientedBoundingBox;

    .line 3
    invoke-virtual {v9, v2}, Lcom/ardor3d/bounding/BoundingBox;->clone(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/bounding/BoundingBox;

    .line 4
    invoke-direct {v1, v0}, Lcom/ardor3d/bounding/BoundingBox;->mergeOBB(Lcom/ardor3d/bounding/OrientedBoundingBox;)Lcom/ardor3d/bounding/BoundingBox;

    move-result-object v0

    return-object v0

    .line 5
    :cond_2
    move-object/from16 v0, p1

    check-cast v0, Lcom/ardor3d/bounding/BoundingSphere;

    .line 6
    iget-object v1, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v6

    new-instance v8, Lcom/ardor3d/bounding/BoundingBox;

    new-instance v0, Lcom/ardor3d/math/Vector3;

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v11, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v12, 0x0

    move-object v10, v8

    move-object v11, v0

    invoke-direct/range {v10 .. v17}, Lcom/ardor3d/bounding/BoundingBox;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;DDD)V

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/ardor3d/bounding/BoundingBox;->merge(Lcom/ardor3d/math/Vector3;DDDLcom/ardor3d/bounding/BoundingBox;)Lcom/ardor3d/bounding/BoundingBox;

    move-result-object v0

    return-object v0

    .line 7
    :cond_3
    move-object/from16 v0, p1

    check-cast v0, Lcom/ardor3d/bounding/BoundingBox;

    .line 8
    iget-object v1, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v6

    new-instance v8, Lcom/ardor3d/bounding/BoundingBox;

    new-instance v0, Lcom/ardor3d/math/Vector3;

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v11, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v12, 0x0

    move-object v10, v8

    move-object v11, v0

    invoke-direct/range {v10 .. v17}, Lcom/ardor3d/bounding/BoundingBox;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;DDD)V

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/ardor3d/bounding/BoundingBox;->merge(Lcom/ardor3d/math/Vector3;DDDLcom/ardor3d/bounding/BoundingBox;)Lcom/ardor3d/bounding/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public mergeLocal(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;
    .locals 9

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lcom/ardor3d/bounding/BoundingBox$1;->$SwitchMap$com$ardor3d$bounding$BoundingVolume$Type:[I

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingVolume;->getType()Lcom/ardor3d/bounding/BoundingVolume$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    check-cast p1, Lcom/ardor3d/bounding/OrientedBoundingBox;

    invoke-direct {p0, p1}, Lcom/ardor3d/bounding/BoundingBox;->mergeOBB(Lcom/ardor3d/bounding/OrientedBoundingBox;)Lcom/ardor3d/bounding/BoundingBox;

    move-result-object p1

    return-object p1

    :cond_2
    check-cast p1, Lcom/ardor3d/bounding/BoundingSphere;

    iget-object v1, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v6

    move-object v0, p0

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/ardor3d/bounding/BoundingBox;->merge(Lcom/ardor3d/math/Vector3;DDDLcom/ardor3d/bounding/BoundingBox;)Lcom/ardor3d/bounding/BoundingBox;

    move-result-object p1

    return-object p1

    :cond_3
    check-cast p1, Lcom/ardor3d/bounding/BoundingBox;

    iget-object v1, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v6

    move-object v0, p0

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/ardor3d/bounding/BoundingBox;->merge(Lcom/ardor3d/math/Vector3;DDDLcom/ardor3d/bounding/BoundingBox;)Lcom/ardor3d/bounding/BoundingBox;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/bounding/BoundingVolume;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "xExtent"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/ardor3d/bounding/BoundingBox;->setXExtent(D)V

    const-string v0, "yExtent"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/ardor3d/bounding/BoundingBox;->setYExtent(D)V

    const-string v0, "zExtent"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/bounding/BoundingBox;->setZExtent(D)V

    return-void
.end method

.method public setXExtent(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/bounding/BoundingBox;->_xExtent:D

    return-void
.end method

.method public setYExtent(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/bounding/BoundingBox;->_yExtent:D

    return-void
.end method

.method public setZExtent(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/bounding/BoundingBox;->_zExtent:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.ardor3d.scene.BoundingBox [Center: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  xExtent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "  yExtent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "  zExtent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/ardor3d/math/type/ReadOnlyTransform;Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;
    .locals 27

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->isRotationMatrix()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p2}, Lcom/ardor3d/bounding/BoundingBox;->transformRotational(Lcom/ardor3d/math/type/ReadOnlyTransform;Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v1

    return-object v1

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/ardor3d/bounding/BoundingVolume;->getType()Lcom/ardor3d/bounding/BoundingVolume$Type;

    move-result-object v1

    sget-object v2, Lcom/ardor3d/bounding/BoundingVolume$Type;->AABB:Lcom/ardor3d/bounding/BoundingVolume$Type;

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v1, p2

    check-cast v1, Lcom/ardor3d/bounding/BoundingBox;

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v1, Lcom/ardor3d/bounding/BoundingBox;

    invoke-direct {v1}, Lcom/ardor3d/bounding/BoundingBox;-><init>()V

    :goto_1
    const/16 v2, 0x8

    new-array v3, v2, [Lcom/ardor3d/math/Vector3;

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_3

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    const/4 v7, 0x2

    if-ge v5, v7, :cond_9

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v7, :cond_8

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v7, :cond_7

    add-int/lit8 v11, v6, 0x1

    aget-object v12, v3, v6

    iget-object v6, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v13

    if-nez v5, :cond_4

    const/4 v15, 0x1

    goto :goto_6

    :cond_4
    const/4 v15, -0x1

    :goto_6
    int-to-double v6, v15

    move-object/from16 v19, v3

    iget-wide v2, v0, Lcom/ardor3d/bounding/BoundingBox;->_xExtent:D

    mul-double/2addr v6, v2

    add-double/2addr v13, v6

    iget-object v2, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    if-nez v9, :cond_5

    const/4 v6, 0x1

    goto :goto_7

    :cond_5
    const/4 v6, -0x1

    :goto_7
    int-to-double v6, v6

    move/from16 v20, v5

    iget-wide v4, v0, Lcom/ardor3d/bounding/BoundingBox;->_yExtent:D

    mul-double/2addr v6, v4

    add-double/2addr v2, v6

    iget-object v4, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v4

    if-nez v10, :cond_6

    const/4 v6, 0x1

    goto :goto_8

    :cond_6
    const/4 v6, -0x1

    :goto_8
    int-to-double v6, v6

    move/from16 v22, v9

    iget-wide v8, v0, Lcom/ardor3d/bounding/BoundingBox;->_zExtent:D

    mul-double/2addr v6, v8

    add-double v17, v4, v6

    move-wide v15, v2

    invoke-virtual/range {v12 .. v18}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    add-int/lit8 v10, v10, 0x1

    move v6, v11

    move-object/from16 v3, v19

    move/from16 v5, v20

    move/from16 v9, v22

    const/16 v2, 0x8

    const/4 v7, 0x2

    goto :goto_5

    :cond_7
    move-object/from16 v19, v3

    move/from16 v20, v5

    move/from16 v22, v9

    add-int/lit8 v9, v22, 0x1

    const/16 v2, 0x8

    const/4 v7, 0x2

    goto :goto_4

    :cond_8
    move-object/from16 v19, v3

    move/from16 v20, v5

    add-int/lit8 v5, v20, 0x1

    const/16 v2, 0x8

    goto :goto_3

    :cond_9
    move-object/from16 v19, v3

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_a

    aget-object v2, v19, v3

    move-object/from16 v4, p1

    invoke-interface {v4, v2}, Lcom/ardor3d/math/type/ReadOnlyTransform;->applyForward(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    add-int/lit8 v3, v3, 0x1

    const/16 v2, 0x8

    goto :goto_9

    :cond_a
    const/4 v2, 0x0

    aget-object v3, v19, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    aget-object v5, v19, v2

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v5

    aget-object v7, v19, v2

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v7

    move-wide v9, v5

    move-wide v11, v7

    move-wide v13, v11

    const/16 v2, 0x8

    const/4 v15, 0x1

    move-wide v5, v3

    move-wide v7, v9

    :goto_a
    if-ge v15, v2, :cond_b

    aget-object v2, v19, v15

    move-object/from16 v16, v1

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    aget-object v2, v19, v15

    move-wide/from16 v17, v11

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v11

    aget-object v2, v19, v15

    move-wide/from16 v20, v7

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v7

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    move-wide/from16 v11, v17

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    add-int/lit8 v15, v15, 0x1

    move-wide v7, v0

    move-object/from16 v1, v16

    const/16 v2, 0x8

    move-object/from16 v0, p0

    goto :goto_a

    :cond_b
    move-object/from16 v16, v1

    move-wide v0, v7

    add-double/2addr v5, v3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v7

    add-double/2addr v9, v0

    mul-double/2addr v9, v7

    add-double/2addr v13, v11

    mul-double/2addr v13, v7

    move-object/from16 v2, v16

    iget-object v7, v2, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    move-object/from16 v20, v7

    move-wide/from16 v21, v5

    move-wide/from16 v23, v9

    move-wide/from16 v25, v13

    invoke-virtual/range {v20 .. v26}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    sub-double/2addr v3, v5

    iput-wide v3, v2, Lcom/ardor3d/bounding/BoundingBox;->_xExtent:D

    sub-double v7, v0, v9

    iput-wide v7, v2, Lcom/ardor3d/bounding/BoundingBox;->_yExtent:D

    sub-double/2addr v11, v13

    iput-wide v11, v2, Lcom/ardor3d/bounding/BoundingBox;->_zExtent:D

    const/16 v0, 0x8

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v0, :cond_c

    aget-object v1, v19, v4

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_c
    return-object v2
.end method

.method public transformRotational(Lcom/ardor3d/math/type/ReadOnlyTransform;Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;
    .locals 10

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    move-result-object v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getScale()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/ardor3d/bounding/BoundingVolume;->getType()Lcom/ardor3d/bounding/BoundingVolume$Type;

    move-result-object v2

    sget-object v3, Lcom/ardor3d/bounding/BoundingVolume$Type;->AABB:Lcom/ardor3d/bounding/BoundingVolume$Type;

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/ardor3d/bounding/BoundingBox;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p2, Lcom/ardor3d/bounding/BoundingBox;

    invoke-direct {p2}, Lcom/ardor3d/bounding/BoundingBox;-><init>()V

    :goto_1
    iget-object v2, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    iget-object v3, p2, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2, v1, v3}, Lcom/ardor3d/math/Vector3;->multiply(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object v2, p2, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-interface {v0, v2, v2}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object v2, p2, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2, p1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object p1

    invoke-static {}, Lcom/ardor3d/math/Matrix3;->fetchTempInstance()Lcom/ardor3d/math/Matrix3;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ardor3d/math/Matrix3;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0}, Lcom/ardor3d/math/Matrix3;->getValue(II)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-virtual {v2, v0, v0, v3, v4}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/ardor3d/math/Matrix3;->getValue(II)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v4}, Lcom/ardor3d/math/Matrix3;->getValue(II)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v2, v3, v0}, Lcom/ardor3d/math/Matrix3;->getValue(II)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-virtual {v2, v3, v0, v5, v6}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v2, v3, v3}, Lcom/ardor3d/math/Matrix3;->getValue(II)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-virtual {v2, v3, v3, v5, v6}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v2, v3, v4}, Lcom/ardor3d/math/Matrix3;->getValue(II)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v2, v4, v0}, Lcom/ardor3d/math/Matrix3;->getValue(II)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-virtual {v2, v4, v0, v5, v6}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v2, v4, v3}, Lcom/ardor3d/math/Matrix3;->getValue(II)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-virtual {v2, v4, v3, v5, v6}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v2, v4, v4}, Lcom/ardor3d/math/Matrix3;->getValue(II)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-virtual {v2, v4, v4, v5, v6}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v3

    invoke-interface {v1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v5

    mul-double v4, v3, v5

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v6

    invoke-interface {v1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v8

    invoke-interface {v1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v0

    mul-double/2addr v8, v0

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2, p1, p1}, Lcom/ardor3d/math/Matrix3;->applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/ardor3d/bounding/BoundingBox;->setXExtent(D)V

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/ardor3d/bounding/BoundingBox;->setYExtent(D)V

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/ardor3d/bounding/BoundingBox;->setZExtent(D)V

    invoke-static {p1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v2}, Lcom/ardor3d/math/Matrix3;->releaseTempInstance(Lcom/ardor3d/math/Matrix3;)V

    return-object p2
.end method

.method public whichSide(Lcom/ardor3d/math/type/ReadOnlyPlane;)Lcom/ardor3d/math/type/ReadOnlyPlane$Side;
    .locals 7

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyPlane;->getNormal()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v1

    invoke-interface {v0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v3

    invoke-interface {v0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v3

    invoke-interface {v0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1, v0}, Lcom/ardor3d/math/type/ReadOnlyPlane;->pseudoDistance(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v3

    neg-double v5, v1

    cmpg-double p1, v3, v5

    if-gez p1, :cond_0

    sget-object p1, Lcom/ardor3d/math/type/ReadOnlyPlane$Side;->Inside:Lcom/ardor3d/math/type/ReadOnlyPlane$Side;

    return-object p1

    :cond_0
    cmpl-double p1, v3, v1

    if-lez p1, :cond_1

    sget-object p1, Lcom/ardor3d/math/type/ReadOnlyPlane$Side;->Outside:Lcom/ardor3d/math/type/ReadOnlyPlane$Side;

    return-object p1

    :cond_1
    sget-object p1, Lcom/ardor3d/math/type/ReadOnlyPlane$Side;->Neither:Lcom/ardor3d/math/type/ReadOnlyPlane$Side;

    return-object p1
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/bounding/BoundingVolume;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v1

    const-string v3, "xExtent"

    const-wide/16 v4, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v7

    const-string v9, "yExtent"

    const-wide/16 v10, 0x0

    move-object v6, p1

    invoke-interface/range {v6 .. v11}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v1

    const-string v3, "zExtent"

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    return-void
.end method
