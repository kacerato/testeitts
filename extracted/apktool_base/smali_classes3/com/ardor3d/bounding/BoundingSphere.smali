.class public Lcom/ardor3d/bounding/BoundingSphere;
.super Lcom/ardor3d/bounding/BoundingVolume;
.source "SourceFile"


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final radiusEpsilon:D = 1.00001

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _radius:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/bounding/BoundingSphere;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/bounding/BoundingSphere;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/bounding/BoundingVolume;-><init>()V

    return-void
.end method

.method public constructor <init>(DLcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/ardor3d/bounding/BoundingVolume;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p3}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/bounding/BoundingSphere;->setRadius(D)V

    return-void
.end method

.method private maxAxis(Lcom/ardor3d/math/type/ReadOnlyVector3;)D
    .locals 6

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private merge(DLcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/bounding/BoundingSphere;)Lcom/ardor3d/bounding/BoundingVolume;
    .locals 7

    .line 15
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->lengthSquared()D

    move-result-wide v1

    .line 18
    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v3

    sub-double v3, p1, v3

    mul-double v5, v3, v3

    cmpl-double v5, v5, v1

    if-ltz v5, :cond_2

    .line 19
    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const-wide/16 v0, 0x0

    cmpg-double v0, v3, v0

    if-gtz v0, :cond_1

    .line 20
    iget-object p1, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p4, p1}, Lcom/ardor3d/bounding/BoundingVolume;->setCenter(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    .line 21
    iget-wide p1, p0, Lcom/ardor3d/bounding/BoundingSphere;->_radius:D

    invoke-virtual {p4, p1, p2}, Lcom/ardor3d/bounding/BoundingSphere;->setRadius(D)V

    return-object p4

    .line 22
    :cond_1
    invoke-virtual {p4, p3}, Lcom/ardor3d/bounding/BoundingVolume;->setCenter(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    .line 23
    invoke-virtual {p4, p1, p2}, Lcom/ardor3d/bounding/BoundingSphere;->setRadius(D)V

    return-object p4

    .line 24
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 25
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object p3

    .line 26
    iget-object v5, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p3, v5}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const-wide/high16 v5, 0x3cb0000000000000L    # 2.220446049250313E-16

    cmpl-double v5, v1, v5

    if-lez v5, :cond_3

    add-double/2addr v3, v1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v1

    div-double/2addr v3, v5

    .line 27
    invoke-virtual {v0, v3, v4}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 28
    :cond_3
    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    .line 29
    invoke-virtual {p4, p3}, Lcom/ardor3d/bounding/BoundingVolume;->setCenter(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    .line 30
    invoke-static {p3}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    .line 31
    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v3

    add-double/2addr v1, v3

    add-double/2addr v1, p1

    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, p1

    invoke-virtual {p4, v1, v2}, Lcom/ardor3d/bounding/BoundingSphere;->setRadius(D)V

    return-object p4

    .line 32
    :cond_4
    :goto_0
    sget-object p1, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-virtual {p4, p1}, Lcom/ardor3d/bounding/BoundingVolume;->setCenter(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-wide/high16 p1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 33
    invoke-virtual {p4, p1, p2}, Lcom/ardor3d/bounding/BoundingSphere;->setRadius(D)V

    return-object p4
.end method

.method private mergeLocalOBB(Lcom/ardor3d/bounding/OrientedBoundingBox;)Lcom/ardor3d/bounding/BoundingSphere;
    .locals 6

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/OrientedBoundingBox;->getExtent()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->isInfinite(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p1, Lcom/ardor3d/bounding/OrientedBoundingBox;->correctCorners:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/ardor3d/bounding/OrientedBoundingBox;->computeCorners()V

    :cond_1
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBufferOnHeap(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    iget-object v2, p1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v1

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object p1

    iget-object v3, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v3}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/ardor3d/bounding/BoundingSphere;->computeFromPoints(Ljava/nio/FloatBuffer;)V

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iget-object v3, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v3}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v3

    iget-object v5, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0, v1, v2}, Lcom/ardor3d/bounding/BoundingSphere;->setRadius(D)V

    invoke-direct {p0, v3, v4, v0, p0}, Lcom/ardor3d/bounding/BoundingSphere;->merge(DLcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/bounding/BoundingSphere;)Lcom/ardor3d/bounding/BoundingVolume;

    invoke-static {p1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-object p0

    :cond_3
    :goto_1
    sget-object p1, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-virtual {p0, p1}, Lcom/ardor3d/bounding/BoundingVolume;->setCenter(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/bounding/BoundingSphere;->setRadius(D)V

    return-object p0
.end method

.method public static populateFromBuffer(Lcom/ardor3d/math/Vector3;[FI)V
    .locals 2

    mul-int/lit8 p2, p2, 0x3

    aget v0, p1, p2

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector3;->setX(D)V

    add-int/lit8 v0, p2, 0x1

    aget v0, p1, v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector3;->setY(D)V

    add-int/lit8 p2, p2, 0x2

    aget p1, p1, p2

    float-to-double p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    return-void
.end method

.method private recurseMini([FIII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v4

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    const/4 v7, 0x2

    if-eq v2, v7, :cond_2

    const/4 v7, 0x3

    if-eq v2, v7, :cond_1

    const/4 v7, 0x4

    if-eq v2, v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v2

    add-int/lit8 v6, p4, -0x1

    invoke-static {v3, v1, v6}, Lcom/ardor3d/bounding/BoundingSphere;->populateFromBuffer(Lcom/ardor3d/math/Vector3;[FI)V

    add-int/lit8 v6, p4, -0x2

    invoke-static {v4, v1, v6}, Lcom/ardor3d/bounding/BoundingSphere;->populateFromBuffer(Lcom/ardor3d/math/Vector3;[FI)V

    add-int/lit8 v6, p4, -0x3

    invoke-static {v5, v1, v6}, Lcom/ardor3d/bounding/BoundingSphere;->populateFromBuffer(Lcom/ardor3d/math/Vector3;[FI)V

    add-int/lit8 v6, p4, -0x4

    invoke-static {v2, v1, v6}, Lcom/ardor3d/bounding/BoundingSphere;->populateFromBuffer(Lcom/ardor3d/math/Vector3;[FI)V

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/ardor3d/bounding/BoundingSphere;->setSphere(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)V

    invoke-static {v3}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v4}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v5}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-void

    :cond_1
    add-int/lit8 v7, p4, -0x1

    invoke-static {v3, v1, v7}, Lcom/ardor3d/bounding/BoundingSphere;->populateFromBuffer(Lcom/ardor3d/math/Vector3;[FI)V

    add-int/lit8 v7, p4, -0x2

    invoke-static {v4, v1, v7}, Lcom/ardor3d/bounding/BoundingSphere;->populateFromBuffer(Lcom/ardor3d/math/Vector3;[FI)V

    add-int/lit8 v7, p4, -0x3

    invoke-static {v5, v1, v7}, Lcom/ardor3d/bounding/BoundingSphere;->populateFromBuffer(Lcom/ardor3d/math/Vector3;[FI)V

    invoke-direct {v0, v3, v4, v5}, Lcom/ardor3d/bounding/BoundingSphere;->setSphere(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v7, p4, -0x1

    invoke-static {v3, v1, v7}, Lcom/ardor3d/bounding/BoundingSphere;->populateFromBuffer(Lcom/ardor3d/math/Vector3;[FI)V

    add-int/lit8 v7, p4, -0x2

    invoke-static {v4, v1, v7}, Lcom/ardor3d/bounding/BoundingSphere;->populateFromBuffer(Lcom/ardor3d/math/Vector3;[FI)V

    invoke-direct {v0, v3, v4}, Lcom/ardor3d/bounding/BoundingSphere;->setSphere(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)V

    goto :goto_0

    :cond_3
    const-wide v7, -0x411b074a771c0000L    # -1.0000000000065512E-5

    invoke-virtual {v0, v7, v8}, Lcom/ardor3d/bounding/BoundingSphere;->setRadius(D)V

    iget-object v7, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    add-int/lit8 v8, p4, -0x1

    invoke-static {v7, v1, v8}, Lcom/ardor3d/bounding/BoundingSphere;->populateFromBuffer(Lcom/ardor3d/math/Vector3;[FI)V

    goto :goto_0

    :cond_4
    const-wide/16 v7, 0x0

    invoke-virtual {v0, v7, v8}, Lcom/ardor3d/bounding/BoundingSphere;->setRadius(D)V

    iget-object v9, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    :goto_0
    const/4 v7, 0x0

    move/from16 v8, p2

    :goto_1
    if-ge v7, v8, :cond_7

    add-int v9, v7, p4

    invoke-static {v3, v1, v9}, Lcom/ardor3d/bounding/BoundingSphere;->populateFromBuffer(Lcom/ardor3d/math/Vector3;[FI)V

    iget-object v9, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v9}, Lcom/ardor3d/math/Vector3;->distanceSquared(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v13

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    const-wide v11, 0x3ee4f8b588e40000L    # 1.0000000000065512E-5

    cmpl-double v9, v9, v11

    if-lez v9, :cond_6

    move v9, v7

    :goto_2
    if-lez v9, :cond_5

    add-int v10, v9, p4

    invoke-static {v4, v1, v10}, Lcom/ardor3d/bounding/BoundingSphere;->populateFromBuffer(Lcom/ardor3d/math/Vector3;[FI)V

    add-int/lit8 v11, v9, -0x1

    add-int v11, v11, p4

    invoke-static {v5, v1, v11}, Lcom/ardor3d/bounding/BoundingSphere;->populateFromBuffer(Lcom/ardor3d/math/Vector3;[FI)V

    invoke-static {v5, v1, v10}, Lcom/ardor3d/bounding/BoundingSphere;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;[FI)V

    invoke-static {v4, v1, v11}, Lcom/ardor3d/bounding/BoundingSphere;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;[FI)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v9, v2, 0x1

    add-int/lit8 v10, p4, 0x1

    invoke-direct {v0, v1, v7, v9, v10}, Lcom/ardor3d/bounding/BoundingSphere;->recurseMini([FIII)V

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    invoke-static {v3}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v4}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v5}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method public static setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;[FI)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    mul-int/lit8 p2, p2, 0x3

    const/4 p0, 0x0

    aput p0, p1, p2

    add-int/lit8 v0, p2, 0x1

    aput p0, p1, v0

    add-int/lit8 p2, p2, 0x2

    aput p0, p1, p2

    goto :goto_0

    :cond_1
    mul-int/lit8 p2, p2, 0x3

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getXf()F

    move-result v0

    aput v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getYf()F

    move-result v1

    aput v1, p1, v0

    add-int/lit8 p2, p2, 0x2

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZf()F

    move-result p0

    aput p0, p1, p2

    :goto_0
    return-void
.end method

.method private setSphere(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)V
    .locals 8

    .line 19
    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3ff0000a7c5ac472L    # 1.00001

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/bounding/BoundingSphere;->setRadius(D)V

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 20
    iget-object v2, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/ardor3d/math/Vector3;->lerp(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method private setSphere(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move-object/from16 v3, p2

    .line 10
    invoke-virtual {v3, v1, v2}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    move-object/from16 v4, p3

    .line 11
    invoke-virtual {v4, v1, v2}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v4

    .line 12
    invoke-virtual {v3, v4, v2}, Lcom/ardor3d/math/Vector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v5

    .line 13
    invoke-virtual {v5, v5}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-nez v10, :cond_0

    .line 14
    iget-object v11, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {v11 .. v17}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    .line 15
    invoke-virtual {v0, v8, v9}, Lcom/ardor3d/bounding/BoundingSphere;->setRadius(D)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v5, v3, v2}, Lcom/ardor3d/math/Vector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v8

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->lengthSquared()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    move-result-object v8

    invoke-virtual {v4, v5, v2}, Lcom/ardor3d/math/Vector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->lengthSquared()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lcom/ardor3d/math/Vector3;->divideLocal(D)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->length()D

    move-result-wide v3

    const-wide v5, 0x3ff0000a7c5ac472L    # 1.00001

    mul-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/ardor3d/bounding/BoundingSphere;->setRadius(D)V

    .line 18
    iget-object v3, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v2, v3}, Lcom/ardor3d/math/Vector3;->add(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    :goto_0
    return-void
.end method

.method private setSphere(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move-object/from16 v3, p2

    .line 1
    invoke-virtual {v3, v1, v2}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    move-object/from16 v4, p3

    .line 2
    invoke-virtual {v4, v1, v2}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v4

    move-object/from16 v5, p4

    .line 3
    invoke-virtual {v5, v1, v2}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v5

    .line 4
    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v6

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v8

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v10

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v8

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v10

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v12

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v14

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v8

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v10

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v12

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v14

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-nez v10, :cond_0

    .line 5
    iget-object v11, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {v11 .. v17}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    .line 6
    invoke-virtual {v0, v8, v9}, Lcom/ardor3d/bounding/BoundingSphere;->setRadius(D)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v3, v4, v2}, Lcom/ardor3d/math/Vector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v8

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->lengthSquared()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    move-result-object v8

    invoke-virtual {v5, v3, v2}, Lcom/ardor3d/math/Vector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v9

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->lengthSquared()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v8

    invoke-virtual {v4, v5, v2}, Lcom/ardor3d/math/Vector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->lengthSquared()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lcom/ardor3d/math/Vector3;->divideLocal(D)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->length()D

    move-result-wide v3

    const-wide v5, 0x3ff0000a7c5ac472L    # 1.00001

    mul-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/ardor3d/bounding/BoundingSphere;->setRadius(D)V

    .line 9
    iget-object v3, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v2, v3}, Lcom/ardor3d/math/Vector3;->add(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    :goto_0
    return-void
.end method


# virtual methods
.method public averagePoints([Lcom/ardor3d/math/Vector3;)V
    .locals 9

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v2, v4, v2

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v2, v3}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    const-wide/16 v2, 0x0

    :goto_1
    array-length v6, p1

    if-ge v1, v6, :cond_2

    aget-object v6, p1, v1

    iget-object v7, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6, v7, v0}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->lengthSquared()D

    move-result-wide v6

    cmpl-double v8, v6, v2

    if-lez v8, :cond_1

    move-wide v2, v6

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3ff0000a7c5ac472L    # 1.00001

    add-double/2addr v0, v2

    sub-double/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/bounding/BoundingSphere;->setRadius(D)V

    return-void
.end method

.method public calcWelzl(Ljava/nio/FloatBuffer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    new-array v1, v0, [F

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    div-int/lit8 v0, v0, 0x3

    const/4 p1, 0x0

    invoke-direct {p0, v1, v0, p1, p1}, Lcom/ardor3d/bounding/BoundingSphere;->recurseMini([FIII)V

    return-void
.end method

.method public clone(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingVolume;->getType()Lcom/ardor3d/bounding/BoundingVolume$Type;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/bounding/BoundingVolume$Type;->Sphere:Lcom/ardor3d/bounding/BoundingVolume$Type;

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/ardor3d/bounding/BoundingSphere;

    iget-object v0, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-wide v0, p0, Lcom/ardor3d/bounding/BoundingSphere;->_radius:D

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/bounding/BoundingSphere;->setRadius(D)V

    iget v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_checkPlane:I

    iput v0, p1, Lcom/ardor3d/bounding/BoundingVolume;->_checkPlane:I

    return-object p1

    :cond_0
    new-instance p1, Lcom/ardor3d/bounding/BoundingSphere;

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-direct {p1, v0, v1, v2}, Lcom/ardor3d/bounding/BoundingSphere;-><init>(DLcom/ardor3d/math/type/ReadOnlyVector3;)V

    return-object p1
.end method

.method public computeFromPoints(Ljava/nio/FloatBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ardor3d/bounding/BoundingSphere;->calcWelzl(Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method public computeFromPrimitives(Lcom/ardor3d/scenegraph/MeshData;I[III)V
    .locals 10

    sub-int v0, p5, p4

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/MeshData;->getIndexMode(I)Lcom/ardor3d/renderer/IndexMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/renderer/IndexMode;->getVertexCount()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v2, v0, [Lcom/ardor3d/math/Vector3;

    new-array v3, v1, [Lcom/ardor3d/math/Vector3;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge p4, p5, :cond_2

    aget v6, p3, p4

    invoke-virtual {p1, v6, p2, v3}, Lcom/ardor3d/scenegraph/MeshData;->getPrimitive(II[Lcom/ardor3d/math/Vector3;)[Lcom/ardor3d/math/Vector3;

    move-result-object v3

    move v6, v4

    :goto_1
    if-ge v6, v1, :cond_1

    add-int/lit8 v7, v5, 0x1

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v8

    aget-object v9, v3, v4

    invoke-virtual {v8, v9}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v8

    aput-object v8, v2, v5

    add-int/lit8 v6, v6, 0x1

    move v5, v7

    goto :goto_1

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/ardor3d/bounding/BoundingSphere;->averagePoints([Lcom/ardor3d/math/Vector3;)V

    :goto_2
    if-ge v4, v0, :cond_3

    aget-object p1, v2, v4

    invoke-static {p1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public contains(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->distanceSquared(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v4

    mul-double/2addr v2, v4

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
    .locals 4

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->distance(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/bounding/BoundingSphere;->_radius:D

    return-wide v0
.end method

.method public getType()Lcom/ardor3d/bounding/BoundingVolume$Type;
    .locals 1

    sget-object v0, Lcom/ardor3d/bounding/BoundingVolume$Type;->Sphere:Lcom/ardor3d/bounding/BoundingVolume$Type;

    return-object v0
.end method

.method public getVolume()D
    .locals 4

    const-wide v0, 0x4010c152382d7365L    # 4.1887902047863905

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v0

    mul-double/2addr v2, v0

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v0

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method public intersects(Lcom/ardor3d/bounding/BoundingVolume;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p1, p0}, Lcom/ardor3d/bounding/BoundingVolume;->intersectsSphere(Lcom/ardor3d/bounding/BoundingSphere;)Z

    move-result p1

    return p1
.end method

.method public intersects(Lcom/ardor3d/math/type/ReadOnlyRay3;)Z
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v4

    mul-double/2addr v2, v4

    .line 5
    invoke-virtual {v0, v0}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v4

    sub-double/2addr v4, v2

    const-wide/16 v2, 0x0

    cmpg-double v6, v4, v2

    const/4 v7, 0x1

    if-gtz v6, :cond_1

    .line 6
    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return v7

    .line 7
    :cond_1
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v6

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v8

    .line 9
    invoke-static {p1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    .line 10
    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    cmpl-double p1, v8, v2

    if-ltz p1, :cond_2

    return v1

    :cond_2
    mul-double/2addr v8, v8

    cmpl-double p1, v8, v4

    if-ltz p1, :cond_3

    move v1, v7

    :cond_3
    return v1
.end method

.method public intersectsBoundingBox(Lcom/ardor3d/bounding/BoundingBox;)Z
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
    iget-object v0, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-interface {v0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v6

    add-double/2addr v4, v6

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    iget-object v0, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-interface {v0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v6

    add-double/2addr v4, v6

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    iget-object v0, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-interface {v0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

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

.method public intersectsOrientedBoundingBox(Lcom/ardor3d/bounding/OrientedBoundingBox;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lcom/ardor3d/bounding/OrientedBoundingBox;->intersectsSphere(Lcom/ardor3d/bounding/BoundingSphere;)Z

    move-result p1

    return p1
.end method

.method public intersectsSphere(Lcom/ardor3d/bounding/BoundingSphere;)Z
    .locals 6

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {v0, v0}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v4

    mul-double/2addr v2, v2

    cmpg-double p1, v4, v2

    if-gtz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public intersectsWhere(Lcom/ardor3d/math/type/ReadOnlyRay3;)Lcom/ardor3d/intersection/IntersectionRecord;
    .locals 12

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v1}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    const/4 v7, 0x0

    if-gtz v6, :cond_0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v4

    mul-double v8, v4, v4

    sub-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sub-double/2addr v2, v4

    new-array v0, v0, [D

    aput-wide v2, v0, v7

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    aget-wide v3, v0, v7

    new-instance v5, Lcom/ardor3d/math/Vector3;

    invoke-direct {v5}, Lcom/ardor3d/math/Vector3;-><init>()V

    invoke-interface {v2, v3, v4, v5}, Lcom/ardor3d/math/type/ReadOnlyVector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    filled-new-array {p1}, [Lcom/ardor3d/math/Vector3;

    move-result-object p1

    new-instance v2, Lcom/ardor3d/intersection/IntersectionRecord;

    invoke-direct {v2, v0, p1}, Lcom/ardor3d/intersection/IntersectionRecord;-><init>([D[Lcom/ardor3d/math/Vector3;)V

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-object v2

    :cond_0
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v8

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    cmpl-double v1, v8, v4

    const/4 v6, 0x0

    if-ltz v1, :cond_1

    return-object v6

    :cond_1
    mul-double v10, v8, v8

    sub-double/2addr v10, v2

    cmpg-double v1, v10, v4

    if-gez v1, :cond_2

    return-object v6

    :cond_2
    const-wide v1, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v1, v10, v1

    if-ltz v1, :cond_3

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    neg-double v3, v8

    sub-double v5, v3, v1

    add-double/2addr v3, v1

    const/4 v1, 0x2

    new-array v1, v1, [D

    aput-wide v5, v1, v7

    aput-wide v3, v1, v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    aget-wide v3, v1, v7

    new-instance v5, Lcom/ardor3d/math/Vector3;

    invoke-direct {v5}, Lcom/ardor3d/math/Vector3;-><init>()V

    invoke-interface {v2, v3, v4, v5}, Lcom/ardor3d/math/type/ReadOnlyVector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    aget-wide v4, v1, v0

    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    invoke-interface {v3, v4, v5, v0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    filled-new-array {v2, p1}, [Lcom/ardor3d/math/Vector3;

    move-result-object p1

    new-instance v0, Lcom/ardor3d/intersection/IntersectionRecord;

    invoke-direct {v0, v1, p1}, Lcom/ardor3d/intersection/IntersectionRecord;-><init>([D[Lcom/ardor3d/math/Vector3;)V

    return-object v0

    :cond_3
    neg-double v1, v8

    new-array v0, v0, [D

    aput-wide v1, v0, v7

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    aget-wide v2, v0, v7

    new-instance v4, Lcom/ardor3d/math/Vector3;

    invoke-direct {v4}, Lcom/ardor3d/math/Vector3;-><init>()V

    invoke-interface {v1, v2, v3, v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    filled-new-array {p1}, [Lcom/ardor3d/math/Vector3;

    move-result-object p1

    new-instance v1, Lcom/ardor3d/intersection/IntersectionRecord;

    invoke-direct {v1, v0, p1}, Lcom/ardor3d/intersection/IntersectionRecord;-><init>([D[Lcom/ardor3d/math/Vector3;)V

    return-object v1
.end method

.method public merge(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;
    .locals 8

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    sget-object v0, Lcom/ardor3d/bounding/BoundingSphere$1;->$SwitchMap$com$ardor3d$bounding$BoundingVolume$Type:[I

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

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return-object v2

    .line 2
    :cond_1
    check-cast p1, Lcom/ardor3d/bounding/OrientedBoundingBox;

    .line 3
    invoke-virtual {p0, v2}, Lcom/ardor3d/bounding/BoundingSphere;->clone(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/bounding/BoundingSphere;

    .line 4
    invoke-direct {v0, p1}, Lcom/ardor3d/bounding/BoundingSphere;->mergeLocalOBB(Lcom/ardor3d/bounding/OrientedBoundingBox;)Lcom/ardor3d/bounding/BoundingSphere;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    check-cast p1, Lcom/ardor3d/bounding/BoundingBox;

    .line 6
    new-instance v7, Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    .line 7
    iget-object p1, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    .line 8
    new-instance v0, Lcom/ardor3d/bounding/BoundingSphere;

    invoke-direct {v0}, Lcom/ardor3d/bounding/BoundingSphere;-><init>()V

    .line 9
    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->length()D

    move-result-wide v1

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/ardor3d/bounding/BoundingSphere;->merge(DLcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/bounding/BoundingSphere;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    check-cast p1, Lcom/ardor3d/bounding/BoundingSphere;

    .line 11
    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v0

    .line 12
    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    .line 13
    new-instance v2, Lcom/ardor3d/bounding/BoundingSphere;

    invoke-direct {v2}, Lcom/ardor3d/bounding/BoundingSphere;-><init>()V

    .line 14
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/ardor3d/bounding/BoundingSphere;->merge(DLcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/bounding/BoundingSphere;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object p1

    return-object p1
.end method

.method public mergeLocal(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;
    .locals 8

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lcom/ardor3d/bounding/BoundingSphere$1;->$SwitchMap$com$ardor3d$bounding$BoundingVolume$Type:[I

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

    invoke-direct {p0, p1}, Lcom/ardor3d/bounding/BoundingSphere;->mergeLocalOBB(Lcom/ardor3d/bounding/OrientedBoundingBox;)Lcom/ardor3d/bounding/BoundingSphere;

    move-result-object p1

    return-object p1

    :cond_2
    check-cast p1, Lcom/ardor3d/bounding/BoundingBox;

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v7

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v5

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    iget-object p1, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->length()D

    move-result-wide v0

    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-direct {p0, v0, v1, p1, p0}, Lcom/ardor3d/bounding/BoundingSphere;->merge(DLcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/bounding/BoundingSphere;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object p1

    return-object p1

    :cond_3
    check-cast p1, Lcom/ardor3d/bounding/BoundingSphere;

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1, p0}, Lcom/ardor3d/bounding/BoundingSphere;->merge(DLcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/bounding/BoundingSphere;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/bounding/BoundingVolume;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    :try_start_0
    const-string v0, "radius"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/bounding/BoundingSphere;->setRadius(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v5, p1

    sget-object v0, Lcom/ardor3d/bounding/BoundingSphere;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "read(Ardor3DImporter)"

    const-string v4, "Exception"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setRadius(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/bounding/BoundingSphere;->_radius:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.ardor3d.scene.BoundingSphere [Radius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " Center: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/ardor3d/math/type/ReadOnlyTransform;Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;
    .locals 12

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/ardor3d/bounding/BoundingVolume;->getType()Lcom/ardor3d/bounding/BoundingVolume$Type;

    move-result-object v2

    sget-object v3, Lcom/ardor3d/bounding/BoundingVolume$Type;->Sphere:Lcom/ardor3d/bounding/BoundingVolume$Type;

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/ardor3d/bounding/BoundingSphere;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p2, Lcom/ardor3d/bounding/BoundingSphere;

    new-instance v9, Lcom/ardor3d/math/Vector3;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v3, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-direct {p2, v0, v1, v9}, Lcom/ardor3d/bounding/BoundingSphere;-><init>(DLcom/ardor3d/math/type/ReadOnlyVector3;)V

    :goto_1
    iget-object v2, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    iget-object v3, p2, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1, v2, v3}, Lcom/ardor3d/math/type/ReadOnlyTransform;->applyForward(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->isRotationMatrix()Z

    move-result v2

    const-wide v3, 0x3ff0000a7c5ac472L    # 1.00001

    if-nez v2, :cond_2

    new-instance v2, Lcom/ardor3d/math/Vector3;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-interface {p1, v2}, Lcom/ardor3d/math/type/ReadOnlyTransform;->applyForwardVector(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-direct {p0, v2}, Lcom/ardor3d/bounding/BoundingSphere;->maxAxis(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v7

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    add-double/2addr v5, v3

    sub-double/2addr v5, v0

    invoke-virtual {p2, v5, v6}, Lcom/ardor3d/bounding/BoundingSphere;->setRadius(D)V

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getScale()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ardor3d/bounding/BoundingSphere;->maxAxis(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v7

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    add-double/2addr v5, v3

    sub-double/2addr v5, v0

    invoke-virtual {p2, v5, v6}, Lcom/ardor3d/bounding/BoundingSphere;->setRadius(D)V

    :goto_2
    return-object p2
.end method

.method public whichSide(Lcom/ardor3d/math/type/ReadOnlyPlane;)Lcom/ardor3d/math/type/ReadOnlyPlane$Side;
    .locals 4

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1, v0}, Lcom/ardor3d/math/type/ReadOnlyPlane;->pseudoDistance(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v2

    neg-double v2, v2

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    sget-object p1, Lcom/ardor3d/math/type/ReadOnlyPlane$Side;->Inside:Lcom/ardor3d/math/type/ReadOnlyPlane$Side;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    sget-object p1, Lcom/ardor3d/math/type/ReadOnlyPlane$Side;->Outside:Lcom/ardor3d/math/type/ReadOnlyPlane$Side;

    return-object p1

    :cond_1
    sget-object p1, Lcom/ardor3d/math/type/ReadOnlyPlane$Side;->Neither:Lcom/ardor3d/math/type/ReadOnlyPlane$Side;

    return-object p1
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/bounding/BoundingVolume;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v1

    const-string v3, "radius"

    const-wide/16 v4, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v5, p1

    sget-object v0, Lcom/ardor3d/bounding/BoundingSphere;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "write(Ardor3DExporter)"

    const-string v4, "Exception"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
