.class public Lcom/ardor3d/util/ExtendedCamera;
.super Lcom/ardor3d/renderer/Camera;
.source "SourceFile"


# instance fields
.field protected final _corners:[Lcom/ardor3d/math/Vector3;

.field protected final _extents:Lcom/ardor3d/math/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/ardor3d/util/ExtendedCamera;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ardor3d/renderer/Camera;-><init>(II)V

    const/16 p1, 0x8

    .line 3
    new-array p1, p1, [Lcom/ardor3d/math/Vector3;

    iput-object p1, p0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    .line 4
    new-instance p1, Lcom/ardor3d/math/Vector3;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    .line 5
    invoke-direct {p0}, Lcom/ardor3d/util/ExtendedCamera;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/renderer/Camera;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/ardor3d/renderer/Camera;-><init>(Lcom/ardor3d/renderer/Camera;)V

    const/16 p1, 0x8

    .line 7
    new-array p1, p1, [Lcom/ardor3d/math/Vector3;

    iput-object p1, p0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    .line 8
    new-instance p1, Lcom/ardor3d/math/Vector3;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    .line 9
    invoke-direct {p0}, Lcom/ardor3d/util/ExtendedCamera;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/ardor3d/math/Vector3;

    invoke-direct {v2}, Lcom/ardor3d/math/Vector3;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public calculateFrustum()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    iget-wide v2, p0, Lcom/ardor3d/renderer/Camera;->_frustumFar:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ardor3d/util/ExtendedCamera;->calculateFrustum(DD)V

    return-void
.end method

.method public calculateFrustum(DD)V
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 2
    iget-wide v5, v0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    iget-wide v7, v0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    sub-double v9, v5, v7

    mul-double/2addr v9, v1

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v9, v11

    iget-wide v13, v0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    div-double/2addr v9, v13

    .line 3
    iget-wide v11, v0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    move-wide/from16 v17, v9

    iget-wide v9, v0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    sub-double v19, v11, v9

    mul-double v19, v19, v1

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    mul-double v19, v19, v15

    div-double v19, v19, v13

    sub-double/2addr v5, v7

    mul-double/2addr v5, v3

    mul-double/2addr v5, v15

    div-double/2addr v5, v13

    sub-double/2addr v11, v9

    mul-double/2addr v11, v3

    mul-double/2addr v11, v15

    div-double/2addr v11, v13

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getProjectionMode()Lcom/ardor3d/renderer/Camera$ProjectionMode;

    move-result-object v7

    sget-object v8, Lcom/ardor3d/renderer/Camera$ProjectionMode;->Parallel:Lcom/ardor3d/renderer/Camera$ProjectionMode;

    if-ne v7, v8, :cond_0

    .line 5
    iget-wide v5, v0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    iget-wide v7, v0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    sub-double v9, v5, v7

    mul-double/2addr v9, v15

    .line 6
    iget-wide v11, v0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    iget-wide v13, v0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    sub-double v17, v11, v13

    mul-double v19, v17, v15

    sub-double/2addr v5, v7

    mul-double/2addr v5, v15

    sub-double/2addr v11, v13

    mul-double/2addr v11, v15

    :goto_0
    move-wide/from16 v7, v19

    goto :goto_1

    :cond_0
    move-wide/from16 v9, v17

    goto :goto_0

    .line 7
    :goto_1
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v13

    .line 8
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v14

    .line 9
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v15

    move-wide/from16 v16, v5

    .line 10
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v5

    .line 11
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v6

    move-wide/from16 v18, v11

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v11

    invoke-virtual {v15, v11}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getLeft()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getUp()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    .line 18
    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v13}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 19
    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, v13}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 20
    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, v13}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 21
    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1, v13}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getLeft()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    move-wide/from16 v11, v18

    invoke-virtual {v1, v11, v12}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getUp()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    move-wide/from16 v2, v16

    invoke-virtual {v1, v2, v3}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    .line 24
    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1, v14}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 25
    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1, v14}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 26
    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v1, v14}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 27
    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v1, v14}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 28
    invoke-static {v13}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    .line 29
    invoke-static {v14}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    .line 30
    invoke-static {v15}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    .line 31
    invoke-static {v5}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    .line 32
    invoke-static {v6}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method public getCorners()[Lcom/ardor3d/math/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public pack(Lcom/ardor3d/bounding/BoundingVolume;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, v0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    array-length v6, v5

    if-ge v4, v6, :cond_0

    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lcom/ardor3d/bounding/BoundingBox;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/ardor3d/bounding/BoundingBox;

    iget-object v2, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/ardor3d/bounding/BoundingBox;->getExtent(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    goto :goto_1

    :cond_1
    instance-of v2, v1, Lcom/ardor3d/bounding/BoundingSphere;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/ardor3d/bounding/BoundingSphere;

    iget-object v4, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v7

    invoke-virtual {v1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v9

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    aget-object v4, v1, v3

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v7

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v9

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v2, 0x1

    aget-object v4, v1, v2

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    neg-double v7, v1

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v9

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v2, 0x2

    aget-object v4, v1, v2

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v7

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    neg-double v9, v1

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v2, 0x3

    aget-object v4, v1, v2

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    neg-double v7, v1

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    neg-double v9, v1

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v2, 0x4

    aget-object v4, v1, v2

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    neg-double v5, v1

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v7

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v9

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v2, 0x5

    aget-object v4, v1, v2

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    neg-double v5, v1

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    neg-double v7, v1

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v9

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v2, 0x6

    aget-object v4, v1, v2

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    neg-double v5, v1

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v7

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    neg-double v9, v1

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v2, 0x7

    aget-object v4, v1, v2

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    neg-double v5, v1

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    neg-double v7, v1

    iget-object v1, v0, Lcom/ardor3d/util/ExtendedCamera;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    neg-double v9, v1

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getModelViewMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix4;

    move-result-object v1

    invoke-static {}, Lcom/ardor3d/math/Vector4;->fetchTempInstance()Lcom/ardor3d/math/Vector4;

    move-result-object v2

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v6, -0x10000000000001L

    move-wide v13, v4

    move-wide v11, v6

    :goto_2
    iget-object v4, v0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    array-length v5, v4

    if-ge v3, v5, :cond_3

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    iget-object v4, v0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v7

    iget-object v4, v0, Lcom/ardor3d/util/ExtendedCamera;->_corners:[Lcom/ardor3d/math/Vector3;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v9

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    move-object v4, v2

    move-wide/from16 v17, v11

    move-wide v11, v15

    invoke-virtual/range {v4 .. v12}, Lcom/ardor3d/math/Vector4;->set(DDDD)Lcom/ardor3d/math/Vector4;

    invoke-interface {v1, v2, v2}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->applyPre(Lcom/ardor3d/math/type/ReadOnlyVector4;Lcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v4

    neg-double v4, v4

    move-wide/from16 v6, v17

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move-wide v6, v11

    invoke-static {v2}, Lcom/ardor3d/math/Vector4;->releaseTempInstance(Lcom/ardor3d/math/Vector4;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getFrustumNear()D

    move-result-wide v1

    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getFrustumFar()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getFrustumFar()D

    move-result-wide v3

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    iget-wide v5, v0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    div-double v5, v1, v5

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getFrustumLeft()D

    move-result-wide v7

    mul-double/2addr v7, v5

    invoke-virtual {v0, v7, v8}, Lcom/ardor3d/renderer/Camera;->setFrustumLeft(D)V

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getFrustumRight()D

    move-result-wide v7

    mul-double/2addr v7, v5

    invoke-virtual {v0, v7, v8}, Lcom/ardor3d/renderer/Camera;->setFrustumRight(D)V

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getFrustumTop()D

    move-result-wide v7

    mul-double/2addr v7, v5

    invoke-virtual {v0, v7, v8}, Lcom/ardor3d/renderer/Camera;->setFrustumTop(D)V

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getFrustumBottom()D

    move-result-wide v7

    mul-double/2addr v7, v5

    invoke-virtual {v0, v7, v8}, Lcom/ardor3d/renderer/Camera;->setFrustumBottom(D)V

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/renderer/Camera;->setFrustumNear(D)V

    invoke-virtual {v0, v3, v4}, Lcom/ardor3d/renderer/Camera;->setFrustumFar(D)V

    return-void
.end method
