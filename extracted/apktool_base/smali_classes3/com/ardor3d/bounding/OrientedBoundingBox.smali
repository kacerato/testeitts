.class public Lcom/ardor3d/bounding/OrientedBoundingBox;
.super Lcom/ardor3d/bounding/BoundingVolume;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _extent:Lcom/ardor3d/math/Vector3;

.field protected final _vectorStore:[Lcom/ardor3d/math/Vector3;

.field protected final _xAxis:Lcom/ardor3d/math/Vector3;

.field protected final _yAxis:Lcom/ardor3d/math/Vector3;

.field protected final _zAxis:Lcom/ardor3d/math/Vector3;

.field public correctCorners:Z


# direct methods
.method public constructor <init>()V
    .locals 15

    invoke-direct {p0}, Lcom/ardor3d/bounding/BoundingVolume;-><init>()V

    new-instance v7, Lcom/ardor3d/math/Vector3;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object v7, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    new-instance v0, Lcom/ardor3d/math/Vector3;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/16 v13, 0x0

    const-wide/16 v9, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    new-instance v0, Lcom/ardor3d/math/Vector3;

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    new-instance v0, Lcom/ardor3d/math/Vector3;

    const-wide/16 v11, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    const/16 v0, 0x8

    new-array v1, v0, [Lcom/ardor3d/math/Vector3;

    iput-object v1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->correctCorners:Z

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    new-instance v3, Lcom/ardor3d/math/Vector3;

    invoke-direct {v3}, Lcom/ardor3d/math/Vector3;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
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

.method private containAABB(Ljava/nio/FloatBuffer;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v8

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v10

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v12

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v16

    div-int/lit8 v3, v16, 0x3

    const/16 v16, 0x1

    move/from16 v0, v16

    :goto_0
    if-ge v0, v3, :cond_7

    invoke-static {v2, v1, v0}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v17

    cmpg-double v16, v17, v4

    if-gez v16, :cond_1

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v17

    cmpl-double v16, v17, v10

    if-lez v16, :cond_2

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v10

    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v17

    cmpg-double v16, v17, v6

    if-gez v16, :cond_3

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v17

    cmpl-double v16, v17, v12

    if-lez v16, :cond_4

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v12

    :cond_4
    :goto_2
    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v17

    cmpg-double v16, v17, v8

    if-gez v16, :cond_5

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v8

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v17

    cmpl-double v16, v17, v14

    if-lez v16, :cond_6

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v14

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    add-double v18, v4, v10

    add-double v20, v6, v12

    add-double v22, v8, v14

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v23}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v1, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v1, v2, v3}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    iget-object v1, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    iget-object v2, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    sub-double v18, v10, v2

    iget-object v2, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    sub-double v20, v12, v2

    iget-object v2, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    sub-double v22, v14, v2

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v23}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v2, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v2 .. v8}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v9, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/16 v14, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v1, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->correctCorners:Z

    :cond_8
    :goto_4
    return-void
.end method

.method private mergeAABB(Lcom/ardor3d/bounding/BoundingBox;)Lcom/ardor3d/bounding/BoundingVolume;
    .locals 7

    invoke-virtual {p0}, Lcom/ardor3d/bounding/OrientedBoundingBox;->getExtent()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->isInfinite(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->correctCorners:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ardor3d/bounding/OrientedBoundingBox;->computeCorners()V

    :cond_1
    const/16 v0, 0x30

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBufferOnHeap(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float p1, v3

    invoke-virtual {v2, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0}, Lcom/ardor3d/bounding/OrientedBoundingBox;->containAABB(Ljava/nio/FloatBuffer;)V

    iput-boolean v1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->correctCorners:Z

    return-object p0

    :cond_3
    :goto_1
    sget-object p1, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-virtual {p0, p1}, Lcom/ardor3d/bounding/BoundingVolume;->setCenter(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    return-object p0
.end method

.method private mergeOBB(Lcom/ardor3d/bounding/OrientedBoundingBox;)Lcom/ardor3d/bounding/BoundingVolume;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/OrientedBoundingBox;->getExtent()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->isInfinite(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/ardor3d/bounding/OrientedBoundingBox;->getExtent()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->isInfinite(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v2, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    iget-object v3, v1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ardor3d/math/Vector3;->add(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v2, v3, v4}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-static {}, Lcom/ardor3d/math/Quaternion;->fetchTempInstance()Lcom/ardor3d/math/Quaternion;

    move-result-object v5

    invoke-static {}, Lcom/ardor3d/math/Quaternion;->fetchTempInstance()Lcom/ardor3d/math/Quaternion;

    move-result-object v6

    iget-object v7, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    iget-object v8, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    iget-object v9, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5, v7, v8, v9}, Lcom/ardor3d/math/Quaternion;->fromAxes(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Quaternion;

    iget-object v7, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    iget-object v8, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    iget-object v9, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6, v7, v8, v9}, Lcom/ardor3d/math/Quaternion;->fromAxes(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Quaternion;

    invoke-virtual {v5, v6}, Lcom/ardor3d/math/Quaternion;->dot(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpg-double v7, v7, v9

    if-gez v7, :cond_1

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    invoke-virtual {v6, v7, v8}, Lcom/ardor3d/math/Quaternion;->multiplyLocal(D)Lcom/ardor3d/math/Quaternion;

    :cond_1
    invoke-virtual {v5, v6}, Lcom/ardor3d/math/Quaternion;->addLocal(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)Lcom/ardor3d/math/Quaternion;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ardor3d/math/Quaternion;->normalizeLocal()Lcom/ardor3d/math/Quaternion;

    invoke-static {}, Lcom/ardor3d/math/Matrix3;->fetchTempInstance()Lcom/ardor3d/math/Matrix3;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ardor3d/math/Quaternion;->toRotationMatrix(Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;

    move-result-object v7

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Lcom/ardor3d/math/Matrix3;->getColumn(ILcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v8

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v7, v11, v10}, Lcom/ardor3d/math/Matrix3;->getColumn(ILcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Lcom/ardor3d/math/Matrix3;->getColumn(ILcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v11

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v12

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v13

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v14

    iget-boolean v15, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->correctCorners:Z

    if-nez v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/OrientedBoundingBox;->computeCorners()V

    :cond_2
    move v15, v9

    :goto_0
    const/16 v9, 0x8

    if-ge v15, v9, :cond_9

    iget-object v9, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v9, v9, v15

    invoke-virtual {v9, v2, v12}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v12, v8}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v3

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v18

    cmpl-double v9, v3, v18

    if-lez v9, :cond_3

    invoke-virtual {v14, v3, v4}, Lcom/ardor3d/math/Vector3;->setX(D)V

    goto :goto_1

    :cond_3
    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v18

    cmpg-double v9, v3, v18

    if-gez v9, :cond_4

    invoke-virtual {v13, v3, v4}, Lcom/ardor3d/math/Vector3;->setX(D)V

    :cond_4
    :goto_1
    invoke-virtual {v12, v10}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v3

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v18

    cmpl-double v9, v3, v18

    if-lez v9, :cond_5

    invoke-virtual {v14, v3, v4}, Lcom/ardor3d/math/Vector3;->setY(D)V

    goto :goto_2

    :cond_5
    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v18

    cmpg-double v9, v3, v18

    if-gez v9, :cond_6

    invoke-virtual {v13, v3, v4}, Lcom/ardor3d/math/Vector3;->setY(D)V

    :cond_6
    :goto_2
    invoke-virtual {v12, v11}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v3

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v18

    cmpl-double v9, v3, v18

    if-lez v9, :cond_7

    invoke-virtual {v14, v3, v4}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    goto :goto_3

    :cond_7
    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v18

    cmpg-double v9, v3, v18

    if-gez v9, :cond_8

    invoke-virtual {v13, v3, v4}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    :cond_8
    :goto_3
    add-int/lit8 v15, v15, 0x1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    goto :goto_0

    :cond_9
    iget-boolean v3, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->correctCorners:Z

    if-nez v3, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/ardor3d/bounding/OrientedBoundingBox;->computeCorners()V

    :cond_a
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v9, :cond_11

    iget-object v4, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2, v12}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-object v4, v10

    invoke-virtual {v12, v8}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v9

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v18

    cmpl-double v18, v9, v18

    if-lez v18, :cond_b

    invoke-virtual {v14, v9, v10}, Lcom/ardor3d/math/Vector3;->setX(D)V

    goto :goto_5

    :cond_b
    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v18

    cmpg-double v18, v9, v18

    if-gez v18, :cond_c

    invoke-virtual {v13, v9, v10}, Lcom/ardor3d/math/Vector3;->setX(D)V

    :cond_c
    :goto_5
    invoke-virtual {v12, v4}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v9

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v18

    cmpl-double v18, v9, v18

    if-lez v18, :cond_d

    invoke-virtual {v14, v9, v10}, Lcom/ardor3d/math/Vector3;->setY(D)V

    goto :goto_6

    :cond_d
    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v18

    cmpg-double v18, v9, v18

    if-gez v18, :cond_e

    invoke-virtual {v13, v9, v10}, Lcom/ardor3d/math/Vector3;->setY(D)V

    :cond_e
    :goto_6
    invoke-virtual {v12, v11}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v9

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v18

    cmpl-double v18, v9, v18

    if-lez v18, :cond_f

    invoke-virtual {v14, v9, v10}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    goto :goto_7

    :cond_f
    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v18

    cmpg-double v18, v9, v18

    if-gez v18, :cond_10

    invoke-virtual {v13, v9, v10}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    :cond_10
    :goto_7
    add-int/lit8 v3, v3, 0x1

    move-object v10, v4

    const/16 v9, 0x8

    goto :goto_4

    :cond_11
    move-object v4, v10

    iget-object v1, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v8}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v1, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v4}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v1, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v11}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    iget-object v3, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v9

    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v18

    sub-double v9, v9, v18

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v9, v9, v16

    invoke-virtual {v3, v9, v10}, Lcom/ardor3d/math/Vector3;->setX(D)V

    iget-object v3, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v9

    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v18

    add-double v9, v9, v18

    mul-double v9, v9, v16

    invoke-virtual {v3, v9, v10, v1}, Lcom/ardor3d/math/Vector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v3, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v9

    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v18

    sub-double v9, v9, v18

    mul-double v9, v9, v16

    invoke-virtual {v3, v9, v10}, Lcom/ardor3d/math/Vector3;->setY(D)V

    iget-object v3, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v9

    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v18

    add-double v9, v9, v18

    mul-double v9, v9, v16

    invoke-virtual {v3, v9, v10, v1}, Lcom/ardor3d/math/Vector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v3, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v9

    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v18

    sub-double v9, v9, v18

    mul-double v9, v9, v16

    invoke-virtual {v3, v9, v10}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    iget-object v3, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v9

    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v18

    add-double v9, v9, v18

    mul-double v9, v9, v16

    invoke-virtual {v3, v9, v10, v1}, Lcom/ardor3d/math/Vector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v3, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->correctCorners:Z

    invoke-static {v5}, Lcom/ardor3d/math/Quaternion;->releaseTempInstance(Lcom/ardor3d/math/Quaternion;)V

    invoke-static {v6}, Lcom/ardor3d/math/Quaternion;->releaseTempInstance(Lcom/ardor3d/math/Quaternion;)V

    invoke-static {v7}, Lcom/ardor3d/math/Matrix3;->releaseTempInstance(Lcom/ardor3d/math/Matrix3;)V

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v8}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v4}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v11}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v12}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v13}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v14}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-object v0

    :cond_12
    :goto_8
    sget-object v1, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/bounding/BoundingVolume;->setCenter(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object v2, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v7, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual/range {v2 .. v8}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method private mergeSphere(Lcom/ardor3d/bounding/BoundingSphere;)Lcom/ardor3d/bounding/BoundingVolume;
    .locals 7

    invoke-virtual {p0}, Lcom/ardor3d/bounding/OrientedBoundingBox;->getExtent()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->isInfinite(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->correctCorners:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ardor3d/bounding/OrientedBoundingBox;->computeCorners()V

    :cond_1
    const/16 v0, 0x30

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBufferOnHeap(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float p1, v3

    invoke-virtual {v2, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0}, Lcom/ardor3d/bounding/OrientedBoundingBox;->containAABB(Ljava/nio/FloatBuffer;)V

    iput-boolean v1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->correctCorners:Z

    return-object p0

    :cond_3
    :goto_1
    sget-object p1, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-virtual {p0, p1}, Lcom/ardor3d/bounding/BoundingVolume;->setCenter(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    return-object p0
.end method


# virtual methods
.method public clone(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;
    .locals 3

    instance-of v0, p1, Lcom/ardor3d/bounding/OrientedBoundingBox;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ardor3d/bounding/OrientedBoundingBox;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/ardor3d/bounding/OrientedBoundingBox;

    invoke-direct {p1}, Lcom/ardor3d/bounding/OrientedBoundingBox;-><init>()V

    :goto_0
    iget-object v0, p1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_checkPlane:I

    iput v0, p1, Lcom/ardor3d/bounding/BoundingVolume;->_checkPlane:I

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    array-length v0, v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, p1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->correctCorners:Z

    iput-boolean v0, p1, Lcom/ardor3d/bounding/OrientedBoundingBox;->correctCorners:Z

    return-object p1
.end method

.method public computeCorners()V
    .locals 6

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ardor3d/math/Vector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/ardor3d/math/Vector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    iget-object v2, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    iget-object v3, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/ardor3d/math/Vector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v3, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget-object v5, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v5}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v3, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v5, 0x2

    aget-object v3, v3, v5

    iget-object v5, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v5}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v3, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v5, 0x3

    aget-object v3, v3, v5

    iget-object v5, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v5}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v3, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v5, 0x4

    aget-object v3, v3, v5

    iget-object v5, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v5}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v3, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v5, 0x5

    aget-object v3, v3, v5

    iget-object v5, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v5}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v3, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v5, 0x6

    aget-object v3, v3, v5

    iget-object v5, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v5}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v3, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v5, 0x7

    aget-object v3, v3, v5

    iget-object v5, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v5}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    iput-boolean v4, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->correctCorners:Z

    return-void
.end method

.method public computeFromPoints(Ljava/nio/FloatBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ardor3d/bounding/OrientedBoundingBox;->containAABB(Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method public computeFromPrimitives(Lcom/ardor3d/scenegraph/MeshData;I[III)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p5

    sub-int v2, v1, p4

    if-gtz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/ardor3d/scenegraph/MeshData;->getIndexMode(I)Lcom/ardor3d/renderer/IndexMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/renderer/IndexMode;->getVertexCount()I

    move-result v2

    new-array v3, v2, [Lcom/ardor3d/math/Vector3;

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v4

    const-wide/high16 v7, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v9, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    move-result-object v4

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v5

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v10, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual/range {v5 .. v11}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    move-result-object v5

    move-object v6, v3

    move/from16 v3, p4

    :goto_0
    const/4 v7, 0x0

    if-ge v3, v1, :cond_8

    aget v8, p3, v3

    move-object/from16 v9, p1

    move/from16 v10, p2

    invoke-virtual {v9, v8, v10, v6}, Lcom/ardor3d/scenegraph/MeshData;->getPrimitive(II[Lcom/ardor3d/math/Vector3;)[Lcom/ardor3d/math/Vector3;

    move-result-object v6

    :goto_1
    if-ge v7, v2, :cond_7

    aget-object v8, v6, v7

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v11

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v13

    cmpg-double v11, v11, v13

    if-gez v11, :cond_1

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lcom/ardor3d/math/Vector3;->setX(D)V

    goto :goto_2

    :cond_1
    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v11

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v13

    cmpl-double v11, v11, v13

    if-lez v11, :cond_2

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lcom/ardor3d/math/Vector3;->setX(D)V

    :cond_2
    :goto_2
    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v11

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v13

    cmpg-double v11, v11, v13

    if-gez v11, :cond_3

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lcom/ardor3d/math/Vector3;->setY(D)V

    goto :goto_3

    :cond_3
    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v11

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v13

    cmpl-double v11, v11, v13

    if-lez v11, :cond_4

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lcom/ardor3d/math/Vector3;->setY(D)V

    :cond_4
    :goto_3
    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v11

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v13

    cmpg-double v11, v11, v13

    if-gez v11, :cond_5

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    goto :goto_4

    :cond_5
    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v11

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v13

    cmpl-double v11, v11, v13

    if-lez v11, :cond_6

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object v1, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v1, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v1, v2, v3}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    iget-object v8, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    iget-object v3, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v9

    sub-double v9, v1, v9

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    iget-object v3, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v11

    sub-double v11, v1, v11

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    iget-object v3, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v13

    sub-double v13, v1, v13

    invoke-virtual/range {v8 .. v14}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v15, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v15 .. v21}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v8, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/16 v13, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v8 .. v14}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v15, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    const-wide/16 v16, 0x0

    invoke-virtual/range {v15 .. v21}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    invoke-static {v4}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v5}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    iput-boolean v7, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->correctCorners:Z

    return-void
.end method

.method public contains(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z
    .locals 6

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    return v1

    :cond_2
    invoke-static {p1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 p1, 0x1

    return p1
.end method

.method public distanceToEdge(Lcom/ardor3d/math/type/ReadOnlyVector3;)D
    .locals 7

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v1}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v3}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v3

    iget-object v5, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v5}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-static {p1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    iget-object p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    neg-double v3, v3

    cmpg-double p1, v1, v3

    const-wide/16 v1, 0x0

    if-gez p1, :cond_0

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    iget-object p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    add-double/2addr v3, v5

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    iget-object p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/ardor3d/math/Vector3;->setX(D)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    iget-object p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    cmpl-double p1, v3, v5

    if-lez p1, :cond_1

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    iget-object p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    sub-double/2addr v3, v5

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    iget-object p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/ardor3d/math/Vector3;->setX(D)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    iget-object p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v5

    neg-double v5, v5

    cmpg-double p1, v3, v5

    if-gez p1, :cond_2

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    iget-object p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v5

    add-double/2addr v3, v5

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    iget-object p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/ardor3d/math/Vector3;->setY(D)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    iget-object p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v5

    cmpl-double p1, v3, v5

    if-lez p1, :cond_3

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    iget-object p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v5

    sub-double/2addr v3, v5

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    iget-object p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/ardor3d/math/Vector3;->setY(D)V

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    iget-object p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v5

    neg-double v5, v5

    cmpg-double p1, v3, v5

    if-gez p1, :cond_4

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    iget-object p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v5

    add-double/2addr v3, v5

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    iget-object p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    iget-object p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v5

    cmpl-double p1, v3, v5

    if-lez p1, :cond_5

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    iget-object p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v5

    sub-double/2addr v3, v5

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    iget-object p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    :cond_5
    :goto_2
    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtent()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getType()Lcom/ardor3d/bounding/BoundingVolume$Type;
    .locals 1

    sget-object v0, Lcom/ardor3d/bounding/BoundingVolume$Type;->OBB:Lcom/ardor3d/bounding/BoundingVolume$Type;

    return-object v0
.end method

.method public getVolume()D
    .locals 4

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getXAxis()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getYAxis()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getZAxis()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public intersection(Lcom/ardor3d/bounding/OrientedBoundingBox;)Z
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/OrientedBoundingBox;->getXAxis()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/OrientedBoundingBox;->getYAxis()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/OrientedBoundingBox;->getZAxis()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v4

    const/4 v5, 0x3

    new-array v6, v5, [Lcom/ardor3d/math/type/ReadOnlyVector3;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const/4 v3, 0x2

    aput-object v4, v6, v3

    invoke-virtual/range {p1 .. p1}, Lcom/ardor3d/bounding/OrientedBoundingBox;->getXAxis()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/ardor3d/bounding/OrientedBoundingBox;->getYAxis()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/ardor3d/bounding/OrientedBoundingBox;->getZAxis()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v9

    new-array v10, v5, [Lcom/ardor3d/math/type/ReadOnlyVector3;

    aput-object v4, v10, v7

    aput-object v8, v10, v2

    aput-object v9, v10, v3

    iget-object v4, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    iget-object v8, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    iget-object v0, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    iget-object v9, v1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v9

    new-array v0, v5, [D

    new-array v11, v5, [D

    new-array v12, v5, [D

    filled-new-array {v0, v11, v12}, [[D

    move-result-object v0

    new-array v11, v5, [D

    new-array v12, v5, [D

    new-array v13, v5, [D

    filled-new-array {v11, v12, v13}, [[D

    move-result-object v11

    new-array v12, v5, [D

    move v13, v7

    move v14, v13

    :goto_0
    const-wide v15, 0x3feffffde7210be9L    # 0.999999

    if-ge v13, v5, :cond_1

    :try_start_0
    aget-object v17, v0, v7

    aget-object v5, v6, v7

    aget-object v3, v10, v13

    invoke-interface {v5, v3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v20

    aput-wide v20, v17, v13

    aget-object v3, v11, v7

    aget-object v5, v0, v7

    aget-wide v20, v5, v13

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    aput-wide v20, v3, v13

    aget-object v3, v11, v7

    aget-wide v20, v3, v13

    cmpl-double v3, v20, v15

    if-lez v3, :cond_0

    move v14, v2

    :cond_0
    add-int/2addr v13, v2

    const/4 v3, 0x2

    const/4 v5, 0x3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    aget-object v3, v6, v7

    invoke-interface {v3, v9}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v20

    aput-wide v20, v12, v7

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v22

    aget-object v3, v11, v7

    aget-wide v24, v3, v7

    mul-double v22, v22, v24

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v24

    aget-object v3, v11, v7

    aget-wide v26, v3, v2

    mul-double v24, v24, v26

    add-double v22, v22, v24

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v24

    aget-object v3, v11, v7

    const/4 v5, 0x2

    aget-wide v26, v3, v5

    mul-double v24, v24, v26

    add-double v22, v22, v24

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-double v24, v24, v22

    cmpl-double v3, v20, v24

    if-lez v3, :cond_2

    invoke-static {v9}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return v7

    :cond_2
    move v3, v7

    const/4 v5, 0x3

    :goto_1
    if-ge v3, v5, :cond_4

    :try_start_1
    aget-object v5, v0, v2

    aget-object v13, v6, v2

    aget-object v7, v10, v3

    invoke-interface {v13, v7}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v20

    aput-wide v20, v5, v3

    aget-object v5, v11, v2

    aget-object v7, v0, v2

    aget-wide v20, v7, v3

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    aput-wide v20, v5, v3

    aget-object v5, v11, v2

    aget-wide v20, v5, v3

    cmpl-double v5, v20, v15

    if-lez v5, :cond_3

    move v14, v2

    :cond_3
    add-int/2addr v3, v2

    const/4 v5, 0x3

    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    aget-object v3, v6, v2

    invoke-interface {v3, v9}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v20

    aput-wide v20, v12, v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v22

    aget-object v3, v11, v2

    const/4 v5, 0x0

    aget-wide v24, v3, v5

    mul-double v22, v22, v24

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v24

    aget-object v3, v11, v2

    aget-wide v26, v3, v2

    mul-double v24, v24, v26

    add-double v22, v22, v24

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v24

    aget-object v3, v11, v2

    const/4 v5, 0x2

    aget-wide v26, v3, v5

    mul-double v24, v24, v26

    add-double v22, v22, v24

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-double v24, v24, v22

    cmpl-double v3, v20, v24

    if-lez v3, :cond_5

    invoke-static {v9}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v0, 0x0

    return v0

    :cond_5
    const/4 v3, 0x0

    :goto_2
    const/4 v5, 0x3

    if-ge v3, v5, :cond_7

    const/4 v7, 0x2

    :try_start_2
    aget-object v13, v0, v7

    aget-object v5, v6, v7

    aget-object v2, v10, v3

    invoke-interface {v5, v2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v21

    aput-wide v21, v13, v3

    aget-object v2, v11, v7

    aget-object v5, v0, v7

    aget-wide v21, v5, v3

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    aput-wide v21, v2, v3

    aget-object v2, v11, v7

    aget-wide v21, v2, v3

    cmpl-double v2, v21, v15

    if-lez v2, :cond_6

    const/4 v2, 0x1

    const/4 v14, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x1

    :goto_3
    add-int/2addr v3, v2

    goto :goto_2

    :cond_7
    const/4 v2, 0x2

    aget-object v3, v6, v2

    invoke-interface {v3, v9}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v5

    aput-wide v5, v12, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v15

    aget-object v3, v11, v2

    const/4 v7, 0x0

    aget-wide v18, v3, v7

    mul-double v15, v15, v18

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v18

    aget-object v3, v11, v2

    const/4 v7, 0x1

    aget-wide v21, v3, v7

    mul-double v18, v18, v21

    add-double v15, v15, v18

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v21

    aget-object v3, v11, v2

    aget-wide v23, v3, v2

    mul-double v21, v21, v23

    add-double v15, v15, v21

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-double/2addr v2, v15

    cmpl-double v2, v5, v2

    if-lez v2, :cond_8

    :goto_4
    invoke-static {v9}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v2, 0x0

    return v2

    :cond_8
    const/4 v2, 0x0

    :try_start_3
    aget-object v3, v10, v2

    invoke-interface {v3, v9}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v15

    aget-object v3, v11, v2

    aget-wide v17, v3, v2

    mul-double v15, v15, v17

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v17

    const/4 v3, 0x1

    aget-object v7, v11, v3

    aget-wide v21, v7, v2

    mul-double v17, v17, v21

    add-double v15, v15, v17

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v17

    const/4 v3, 0x2

    aget-object v7, v11, v3

    aget-wide v21, v7, v2

    mul-double v17, v17, v21

    add-double v15, v15, v17

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-double v15, v15, v17

    cmpl-double v3, v5, v15

    if-lez v3, :cond_9

    invoke-static {v9}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return v2

    :cond_9
    const/4 v3, 0x1

    :try_start_4
    aget-object v5, v10, v3

    invoke-interface {v5, v9}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v15

    aget-object v7, v11, v2

    aget-wide v20, v7, v3

    mul-double v15, v15, v20

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v20

    aget-object v2, v11, v3

    aget-wide v22, v2, v3

    mul-double v20, v20, v22

    add-double v15, v15, v20

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v21

    const/4 v2, 0x2

    aget-object v7, v11, v2

    aget-wide v23, v7, v3

    mul-double v21, v21, v23

    add-double v15, v15, v21

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v2

    add-double/2addr v15, v2

    cmpl-double v2, v5, v15

    if-lez v2, :cond_a

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    const/4 v3, 0x2

    aget-object v5, v10, v3

    invoke-interface {v5, v9}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v15

    aget-object v7, v11, v2

    aget-wide v18, v7, v3

    mul-double v15, v15, v18

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v18

    const/4 v2, 0x1

    aget-object v7, v11, v2

    aget-wide v21, v7, v3

    mul-double v18, v18, v21

    add-double v15, v15, v18

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v21

    aget-object v2, v11, v3

    aget-wide v23, v2, v3

    mul-double v21, v21, v23

    add-double v15, v15, v21

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-double/2addr v15, v2

    cmpl-double v2, v5, v15

    if-lez v2, :cond_b

    goto/16 :goto_4

    :cond_b
    const/4 v2, 0x0

    invoke-static {v9}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    if-eqz v14, :cond_c

    const/4 v3, 0x1

    return v3

    :cond_c
    const/4 v3, 0x1

    const/4 v5, 0x2

    aget-wide v6, v12, v5

    aget-object v9, v0, v3

    aget-wide v13, v9, v2

    mul-double/2addr v6, v13

    aget-wide v9, v12, v3

    aget-object v13, v0, v5

    aget-wide v14, v13, v2

    mul-double/2addr v9, v14

    sub-double/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v9

    aget-object v13, v11, v5

    aget-wide v14, v13, v2

    mul-double/2addr v9, v14

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v13

    aget-object v15, v11, v3

    aget-wide v16, v15, v2

    mul-double v13, v13, v16

    add-double/2addr v9, v13

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v13

    aget-object v15, v11, v2

    aget-wide v16, v15, v5

    mul-double v13, v13, v16

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v15

    aget-object v17, v11, v2

    aget-wide v18, v17, v3

    mul-double v15, v15, v18

    add-double/2addr v13, v15

    add-double/2addr v9, v13

    cmpl-double v6, v6, v9

    if-lez v6, :cond_d

    return v2

    :cond_d
    aget-wide v6, v12, v5

    aget-object v2, v0, v3

    aget-wide v9, v2, v3

    mul-double/2addr v6, v9

    aget-wide v9, v12, v3

    aget-object v2, v0, v5

    aget-wide v13, v2, v3

    mul-double/2addr v9, v13

    sub-double/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v9

    aget-object v2, v11, v5

    aget-wide v13, v2, v3

    mul-double/2addr v9, v13

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v13

    aget-object v2, v11, v3

    aget-wide v15, v2, v3

    mul-double/2addr v13, v15

    add-double/2addr v9, v13

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v2

    const/4 v13, 0x0

    aget-object v14, v11, v13

    aget-wide v15, v14, v5

    mul-double/2addr v2, v15

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v14

    aget-object v16, v11, v13

    aget-wide v17, v16, v13

    mul-double v14, v14, v17

    add-double/2addr v2, v14

    add-double/2addr v9, v2

    cmpl-double v2, v6, v9

    if-lez v2, :cond_e

    return v13

    :cond_e
    aget-wide v2, v12, v5

    const/4 v6, 0x1

    aget-object v7, v0, v6

    aget-wide v9, v7, v5

    mul-double/2addr v2, v9

    aget-wide v9, v12, v6

    aget-object v7, v0, v5

    aget-wide v13, v7, v5

    mul-double/2addr v9, v13

    sub-double/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v9

    aget-object v7, v11, v5

    aget-wide v13, v7, v5

    mul-double/2addr v9, v13

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v13

    aget-object v7, v11, v6

    aget-wide v15, v7, v5

    mul-double/2addr v13, v15

    add-double/2addr v9, v13

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v13

    const/4 v5, 0x0

    aget-object v7, v11, v5

    aget-wide v15, v7, v6

    mul-double/2addr v13, v15

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v6

    aget-object v15, v11, v5

    aget-wide v16, v15, v5

    mul-double v6, v6, v16

    add-double/2addr v13, v6

    add-double/2addr v9, v13

    cmpl-double v2, v2, v9

    if-lez v2, :cond_f

    return v5

    :cond_f
    aget-wide v2, v12, v5

    const/4 v6, 0x2

    aget-object v7, v0, v6

    aget-wide v9, v7, v5

    mul-double/2addr v2, v9

    aget-wide v9, v12, v6

    aget-object v7, v0, v5

    aget-wide v13, v7, v5

    mul-double/2addr v9, v13

    sub-double/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v9

    aget-object v7, v11, v6

    aget-wide v13, v7, v5

    mul-double/2addr v9, v13

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v13

    aget-object v7, v11, v5

    aget-wide v15, v7, v5

    mul-double/2addr v13, v15

    add-double/2addr v9, v13

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v13

    const/4 v5, 0x1

    aget-object v7, v11, v5

    aget-wide v15, v7, v6

    mul-double/2addr v13, v15

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v6

    aget-object v15, v11, v5

    aget-wide v20, v15, v5

    mul-double v6, v6, v20

    add-double/2addr v13, v6

    add-double/2addr v9, v13

    cmpl-double v2, v2, v9

    if-lez v2, :cond_10

    const/4 v2, 0x0

    return v2

    :cond_10
    const/4 v2, 0x0

    aget-wide v6, v12, v2

    const/4 v3, 0x2

    aget-object v9, v0, v3

    aget-wide v13, v9, v5

    mul-double/2addr v6, v13

    aget-wide v9, v12, v3

    aget-object v13, v0, v2

    aget-wide v14, v13, v5

    mul-double/2addr v9, v14

    sub-double/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v9

    aget-object v13, v11, v3

    aget-wide v14, v13, v5

    mul-double/2addr v9, v14

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v13

    aget-object v15, v11, v2

    aget-wide v16, v15, v5

    mul-double v13, v13, v16

    add-double/2addr v9, v13

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v13

    aget-object v15, v11, v5

    aget-wide v16, v15, v3

    mul-double v13, v13, v16

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v15

    aget-object v3, v11, v5

    aget-wide v17, v3, v2

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    add-double/2addr v9, v13

    cmpl-double v3, v6, v9

    if-lez v3, :cond_11

    return v2

    :cond_11
    aget-wide v5, v12, v2

    const/4 v3, 0x2

    aget-object v7, v0, v3

    aget-wide v9, v7, v3

    mul-double/2addr v5, v9

    aget-wide v9, v12, v3

    aget-object v7, v0, v2

    aget-wide v13, v7, v3

    mul-double/2addr v9, v13

    sub-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v9

    aget-object v7, v11, v3

    aget-wide v13, v7, v3

    mul-double/2addr v9, v13

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v13

    aget-object v7, v11, v2

    aget-wide v15, v7, v3

    mul-double/2addr v13, v15

    add-double/2addr v9, v13

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v13

    const/4 v3, 0x1

    aget-object v7, v11, v3

    aget-wide v15, v7, v3

    mul-double/2addr v13, v15

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v15

    aget-object v7, v11, v3

    aget-wide v17, v7, v2

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    add-double/2addr v9, v13

    cmpl-double v5, v5, v9

    if-lez v5, :cond_12

    return v2

    :cond_12
    aget-wide v5, v12, v3

    aget-object v7, v0, v2

    aget-wide v9, v7, v2

    mul-double/2addr v5, v9

    aget-wide v9, v12, v2

    aget-object v7, v0, v3

    aget-wide v13, v7, v2

    mul-double/2addr v9, v13

    sub-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v9

    aget-object v7, v11, v3

    aget-wide v13, v7, v2

    mul-double/2addr v9, v13

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v13

    aget-object v3, v11, v2

    aget-wide v15, v3, v2

    mul-double/2addr v13, v15

    add-double/2addr v9, v13

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v2

    const/4 v7, 0x2

    aget-object v13, v11, v7

    aget-wide v14, v13, v7

    mul-double/2addr v2, v14

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v13

    aget-object v15, v11, v7

    const/4 v7, 0x1

    aget-wide v20, v15, v7

    mul-double v13, v13, v20

    add-double/2addr v2, v13

    add-double/2addr v9, v2

    cmpl-double v2, v5, v9

    if-lez v2, :cond_13

    const/4 v2, 0x0

    return v2

    :cond_13
    const/4 v2, 0x0

    aget-wide v5, v12, v7

    aget-object v3, v0, v2

    aget-wide v9, v3, v7

    mul-double/2addr v5, v9

    aget-wide v9, v12, v2

    aget-object v3, v0, v7

    aget-wide v13, v3, v7

    mul-double/2addr v9, v13

    sub-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v9

    aget-object v3, v11, v7

    aget-wide v13, v3, v7

    mul-double/2addr v9, v13

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v13

    aget-object v3, v11, v2

    aget-wide v15, v3, v7

    mul-double/2addr v13, v15

    add-double/2addr v9, v13

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v13

    const/4 v3, 0x2

    aget-object v7, v11, v3

    aget-wide v15, v7, v3

    mul-double/2addr v13, v15

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v15

    aget-object v7, v11, v3

    aget-wide v17, v7, v2

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    add-double/2addr v9, v13

    cmpl-double v5, v5, v9

    if-lez v5, :cond_14

    return v2

    :cond_14
    const/4 v5, 0x1

    aget-wide v6, v12, v5

    aget-object v9, v0, v2

    aget-wide v13, v9, v3

    mul-double/2addr v6, v13

    aget-wide v9, v12, v2

    aget-object v0, v0, v5

    aget-wide v12, v0, v3

    mul-double/2addr v9, v12

    sub-double/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v9

    aget-object v0, v11, v5

    aget-wide v12, v0, v3

    mul-double/2addr v9, v12

    invoke-interface {v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v12

    aget-object v0, v11, v2

    aget-wide v14, v0, v3

    mul-double/2addr v12, v14

    add-double/2addr v9, v12

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v12

    aget-object v0, v11, v3

    aget-wide v14, v0, v5

    mul-double/2addr v12, v14

    invoke-interface {v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v14

    aget-object v0, v11, v3

    aget-wide v3, v0, v2

    mul-double/2addr v14, v3

    add-double/2addr v12, v14

    add-double/2addr v9, v12

    cmpl-double v0, v6, v9

    if-lez v0, :cond_15

    return v2

    :cond_15
    return v5

    :goto_5
    invoke-static {v9}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    throw v0
.end method

.method public intersects(Lcom/ardor3d/bounding/BoundingVolume;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p1, p0}, Lcom/ardor3d/bounding/BoundingVolume;->intersectsOrientedBoundingBox(Lcom/ardor3d/bounding/OrientedBoundingBox;)Z

    move-result p1

    return p1
.end method

.method public intersects(Lcom/ardor3d/math/type/ReadOnlyRay3;)Z
    .locals 17

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
    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    iget-object v4, v1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v4

    const/4 v5, 0x3

    .line 6
    new-array v6, v5, [D

    .line 7
    new-array v7, v5, [D

    .line 8
    new-array v8, v5, [D

    .line 9
    new-array v5, v5, [D

    .line 10
    :try_start_0
    iget-object v9, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-interface {v0, v9}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v9

    aput-wide v9, v6, v2

    .line 11
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    aput-wide v9, v7, v2

    .line 12
    iget-object v9, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v9}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v9

    aput-wide v9, v8, v2

    .line 13
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    .line 14
    iget-object v11, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v11}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v11

    cmpl-double v9, v9, v11

    const-wide/16 v10, 0x0

    if-lez v9, :cond_1

    aget-wide v12, v8, v2

    aget-wide v14, v6, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-double/2addr v12, v14

    cmpl-double v9, v12, v10

    if-ltz v9, :cond_1

    .line 15
    :goto_0
    invoke-static {v3}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    .line 16
    invoke-static {v4}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return v2

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    .line 17
    :cond_1
    :try_start_1
    iget-object v9, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-interface {v0, v9}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v12

    const/4 v9, 0x1

    aput-wide v12, v6, v9

    .line 18
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    aput-wide v12, v7, v9

    .line 19
    iget-object v12, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v12}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v12

    aput-wide v12, v8, v9

    .line 20
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    .line 21
    iget-object v14, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v14

    cmpl-double v12, v12, v14

    if-lez v12, :cond_2

    aget-wide v12, v8, v9

    aget-wide v14, v6, v9

    mul-double/2addr v12, v14

    cmpl-double v12, v12, v10

    if-ltz v12, :cond_2

    goto :goto_0

    .line 22
    :cond_2
    iget-object v12, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-interface {v0, v12}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v12

    const/4 v14, 0x2

    aput-wide v12, v6, v14

    .line 23
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    aput-wide v12, v7, v14

    .line 24
    iget-object v12, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v12}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v12

    aput-wide v12, v8, v14

    .line 25
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    .line 26
    iget-object v15, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    cmpl-double v12, v12, v15

    if-lez v12, :cond_3

    aget-wide v12, v8, v14

    aget-wide v15, v6, v14

    mul-double/2addr v12, v15

    cmpl-double v6, v12, v10

    if-ltz v6, :cond_3

    goto :goto_0

    .line 27
    :cond_3
    invoke-interface {v0, v3, v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    .line 28
    iget-object v0, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4, v0}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    aput-wide v10, v5, v2

    .line 29
    iget-object v0, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v10

    aget-wide v12, v7, v14

    mul-double/2addr v10, v12

    iget-object v0, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v12

    aget-wide v15, v7, v9

    mul-double/2addr v12, v15

    add-double/2addr v10, v12

    .line 30
    aget-wide v12, v5, v2

    cmpl-double v0, v12, v10

    if-lez v0, :cond_4

    goto/16 :goto_0

    .line 31
    :cond_4
    iget-object v0, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4, v0}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    aput-wide v10, v5, v9

    .line 32
    iget-object v0, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v10

    aget-wide v12, v7, v14

    mul-double/2addr v10, v12

    iget-object v0, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v12

    aget-wide v15, v7, v2

    mul-double/2addr v12, v15

    add-double/2addr v10, v12

    .line 33
    aget-wide v12, v5, v9

    cmpl-double v0, v12, v10

    if-lez v0, :cond_5

    goto/16 :goto_0

    .line 34
    :cond_5
    iget-object v0, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4, v0}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    aput-wide v10, v5, v14

    .line 35
    iget-object v0, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v10

    aget-wide v12, v7, v9

    mul-double/2addr v10, v12

    iget-object v0, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v12

    aget-wide v6, v7, v2

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    .line 36
    aget-wide v6, v5, v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpl-double v0, v6, v10

    if-lez v0, :cond_6

    goto/16 :goto_0

    .line 37
    :cond_6
    invoke-static {v3}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    .line 38
    invoke-static {v4}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return v9

    .line 39
    :goto_1
    invoke-static {v3}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    .line 40
    invoke-static {v4}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    throw v0
.end method

.method public intersectsBoundingBox(Lcom/ardor3d/bounding/BoundingBox;)Z
    .locals 26

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-static {v3}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_16

    :cond_0
    iget-object v3, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    iget-object v4, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    iget-object v5, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    filled-new-array {v3, v4, v5}, [Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v4

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v5

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Lcom/ardor3d/math/Vector3;

    move-result-object v4

    iget-object v5, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v11

    invoke-virtual/range {v6 .. v12}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    iget-object v7, v1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lcom/ardor3d/math/type/ReadOnlyVector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v7

    const/4 v8, 0x3

    new-array v0, v8, [D

    new-array v9, v8, [D

    new-array v10, v8, [D

    filled-new-array {v0, v9, v10}, [[D

    move-result-object v0

    new-array v9, v8, [D

    new-array v10, v8, [D

    new-array v11, v8, [D

    filled-new-array {v9, v10, v11}, [[D

    move-result-object v9

    new-array v10, v8, [D

    move v11, v2

    move v12, v11

    :goto_0
    const-wide v13, 0x3feffffde0000000L    # 0.9999989867210388

    if-ge v11, v8, :cond_2

    :try_start_0
    aget-object v16, v0, v2

    aget-object v8, v3, v2

    aget-object v15, v4, v11

    invoke-virtual {v8, v15}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v18

    aput-wide v18, v16, v11

    aget-object v8, v9, v2

    aget-object v15, v0, v2

    aget-wide v18, v15, v11

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    aput-wide v15, v8, v11

    aget-object v8, v9, v2

    aget-wide v15, v8, v11

    cmpl-double v8, v15, v13

    if-lez v8, :cond_1

    const/4 v12, 0x1

    :cond_1
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_2
    aget-object v8, v3, v2

    invoke-virtual {v8, v7}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v15

    aput-wide v15, v10, v2

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v18

    aget-object v8, v9, v2

    aget-wide v20, v8, v2

    mul-double v18, v18, v20

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v20

    aget-object v8, v9, v2

    const/4 v11, 0x1

    aget-wide v22, v8, v11

    mul-double v20, v20, v22

    add-double v18, v18, v20

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v20

    aget-object v8, v9, v2

    const/4 v11, 0x2

    aget-wide v22, v8, v11

    mul-double v20, v20, v22

    add-double v18, v18, v20

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-double v20, v20, v18

    cmpl-double v8, v15, v20

    if-lez v8, :cond_4

    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v6}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    move v0, v2

    const/4 v8, 0x3

    :goto_1
    if-ge v0, v8, :cond_3

    aget-object v3, v4, v0

    invoke-static {v3}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    const/4 v8, 0x3

    move v15, v2

    :goto_2
    if-ge v15, v8, :cond_6

    const/4 v8, 0x1

    :try_start_1
    aget-object v16, v0, v8

    aget-object v11, v3, v8

    aget-object v2, v4, v15

    invoke-virtual {v11, v2}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v20

    aput-wide v20, v16, v15

    aget-object v2, v9, v8

    aget-object v11, v0, v8

    aget-wide v16, v11, v15

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    aput-wide v16, v2, v15

    aget-object v2, v9, v8

    aget-wide v20, v2, v15

    cmpl-double v2, v20, v13

    if-lez v2, :cond_5

    const/4 v12, 0x1

    :cond_5
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x3

    const/4 v11, 0x2

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    aget-object v8, v3, v2

    invoke-virtual {v8, v7}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v15

    aput-wide v15, v10, v2

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v20

    aget-object v8, v9, v2

    const/4 v11, 0x0

    aget-wide v22, v8, v11

    mul-double v20, v20, v22

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v22

    aget-object v8, v9, v2

    aget-wide v24, v8, v2

    mul-double v22, v22, v24

    add-double v20, v20, v22

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v22

    aget-object v8, v9, v2

    const/4 v2, 0x2

    aget-wide v24, v8, v2

    mul-double v22, v22, v24

    add-double v20, v20, v22

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-double v22, v22, v20

    cmpl-double v2, v15, v22

    if-lez v2, :cond_8

    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v6}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v0, 0x0

    const/4 v2, 0x3

    :goto_3
    if-ge v0, v2, :cond_7

    aget-object v3, v4, v0

    invoke-static {v3}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    return v3

    :cond_8
    const/4 v2, 0x3

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v2, :cond_a

    const/4 v2, 0x2

    :try_start_2
    aget-object v11, v0, v2

    aget-object v15, v3, v2

    aget-object v13, v4, v8

    invoke-virtual {v15, v13}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v13

    aput-wide v13, v11, v8

    aget-object v11, v9, v2

    aget-object v13, v0, v2

    aget-wide v14, v13, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    aput-wide v13, v11, v8

    aget-object v11, v9, v2

    aget-wide v13, v11, v8

    const-wide v15, 0x3feffffde0000000L    # 0.9999989867210388

    cmpl-double v2, v13, v15

    if-lez v2, :cond_9

    const/4 v12, 0x1

    :cond_9
    add-int/lit8 v8, v8, 0x1

    move-wide v13, v15

    const/4 v2, 0x3

    goto :goto_4

    :cond_a
    const/4 v2, 0x2

    aget-object v3, v3, v2

    invoke-virtual {v3, v7}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v13

    aput-wide v13, v10, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v15

    aget-object v3, v9, v2

    const/4 v8, 0x0

    aget-wide v20, v3, v8

    mul-double v15, v15, v20

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v20

    aget-object v3, v9, v2

    const/4 v8, 0x1

    aget-wide v22, v3, v8

    mul-double v20, v20, v22

    add-double v15, v15, v20

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v20

    aget-object v3, v9, v2

    aget-wide v22, v3, v2

    mul-double v20, v20, v22

    add-double v15, v15, v20

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-double/2addr v2, v15

    cmpl-double v2, v13, v2

    if-lez v2, :cond_c

    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v6}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v0, 0x0

    :goto_5
    const/4 v2, 0x3

    if-ge v0, v2, :cond_b

    aget-object v2, v4, v0

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    return v2

    :cond_c
    const/4 v2, 0x0

    :try_start_3
    aget-object v3, v4, v2

    invoke-virtual {v3, v7}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v15

    aget-object v3, v9, v2

    aget-wide v19, v3, v2

    mul-double v15, v15, v19

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v19

    const/4 v3, 0x1

    aget-object v8, v9, v3

    aget-wide v21, v8, v2

    mul-double v19, v19, v21

    add-double v15, v15, v19

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v20

    const/4 v3, 0x2

    aget-object v8, v9, v3

    aget-wide v22, v8, v2

    mul-double v20, v20, v22

    add-double v15, v15, v20

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-double/2addr v15, v2

    cmpl-double v2, v13, v15

    if-lez v2, :cond_e

    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v6}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v0, 0x0

    :goto_6
    const/4 v2, 0x3

    if-ge v0, v2, :cond_d

    aget-object v2, v4, v0

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    return v2

    :cond_e
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_4
    aget-object v8, v4, v3

    invoke-virtual {v8, v7}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v15

    aget-object v8, v9, v2

    aget-wide v20, v8, v3

    mul-double v15, v15, v20

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v20

    aget-object v2, v9, v3

    aget-wide v22, v2, v3

    mul-double v20, v20, v22

    add-double v15, v15, v20

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v20

    const/4 v2, 0x2

    aget-object v8, v9, v2

    aget-wide v22, v8, v3

    mul-double v20, v20, v22

    add-double v15, v15, v20

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-double/2addr v15, v2

    cmpl-double v2, v13, v15

    if-lez v2, :cond_10

    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v6}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v0, 0x0

    :goto_7
    const/4 v2, 0x3

    if-ge v0, v2, :cond_f

    aget-object v2, v4, v0

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    return v2

    :cond_10
    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_5
    aget-object v8, v4, v3

    invoke-virtual {v8, v7}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v15

    aget-object v8, v9, v2

    aget-wide v20, v8, v3

    mul-double v15, v15, v20

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v20

    const/4 v2, 0x1

    aget-object v8, v9, v2

    aget-wide v22, v8, v3

    mul-double v20, v20, v22

    add-double v15, v15, v20

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v20

    aget-object v2, v9, v3

    aget-wide v22, v2, v3

    mul-double v20, v20, v22

    add-double v15, v15, v20

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-double/2addr v15, v2

    cmpl-double v2, v13, v15

    if-lez v2, :cond_12

    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v6}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v0, 0x0

    const/4 v2, 0x3

    :goto_8
    if-ge v0, v2, :cond_11

    aget-object v3, v4, v0

    invoke-static {v3}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_11
    const/4 v3, 0x0

    return v3

    :cond_12
    const/4 v2, 0x3

    if-eqz v12, :cond_14

    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v6}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_13

    aget-object v2, v4, v0

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x3

    goto :goto_9

    :cond_13
    const/4 v2, 0x1

    return v2

    :cond_14
    const/4 v2, 0x1

    const/4 v3, 0x2

    :try_start_6
    aget-wide v11, v10, v3

    aget-object v8, v0, v2

    const/4 v13, 0x0

    aget-wide v14, v8, v13

    mul-double/2addr v11, v14

    aget-wide v14, v10, v2

    aget-object v2, v0, v3

    aget-wide v18, v2, v13

    mul-double v14, v14, v18

    sub-double/2addr v11, v14

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v14

    aget-object v2, v9, v3

    aget-wide v19, v2, v13

    mul-double v14, v14, v19

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    const/4 v8, 0x1

    aget-object v16, v9, v8

    aget-wide v19, v16, v13

    mul-double v2, v2, v19

    add-double/2addr v14, v2

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    aget-object v8, v9, v13

    const/16 v16, 0x2

    aget-wide v19, v8, v16

    mul-double v2, v2, v19

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v20

    aget-object v8, v9, v13

    const/4 v13, 0x1

    aget-wide v22, v8, v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    mul-double v20, v20, v22

    add-double v2, v2, v20

    add-double/2addr v14, v2

    cmpl-double v2, v11, v14

    if-lez v2, :cond_16

    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v6}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v0, 0x0

    :goto_a
    const/4 v2, 0x3

    if-ge v0, v2, :cond_15

    aget-object v2, v4, v0

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_15
    const/4 v2, 0x0

    return v2

    :cond_16
    const/4 v2, 0x2

    :try_start_7
    aget-wide v11, v10, v2

    const/4 v3, 0x1

    aget-object v8, v0, v3

    aget-wide v13, v8, v3

    mul-double/2addr v11, v13

    aget-wide v13, v10, v3

    aget-object v8, v0, v2

    aget-wide v15, v8, v3

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v13

    aget-object v8, v9, v2

    aget-wide v15, v8, v3

    mul-double/2addr v13, v15

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    aget-object v2, v9, v3

    aget-wide v20, v2, v3

    mul-double v15, v15, v20

    add-double/2addr v13, v15

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    const/4 v8, 0x0

    aget-object v15, v9, v8

    const/16 v16, 0x2

    aget-wide v19, v15, v16

    mul-double v2, v2, v19

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    aget-object v19, v9, v8

    aget-wide v20, v19, v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    mul-double v15, v15, v20

    add-double/2addr v2, v15

    add-double/2addr v13, v2

    cmpl-double v2, v11, v13

    if-lez v2, :cond_18

    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v6}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v0, 0x0

    :goto_b
    const/4 v2, 0x3

    if-ge v0, v2, :cond_17

    aget-object v2, v4, v0

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_17
    const/4 v2, 0x0

    return v2

    :cond_18
    const/4 v2, 0x2

    :try_start_8
    aget-wide v11, v10, v2

    const/4 v3, 0x1

    aget-object v8, v0, v3

    aget-wide v13, v8, v2

    mul-double/2addr v11, v13

    aget-wide v13, v10, v3

    aget-object v3, v0, v2

    aget-wide v15, v3, v2

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v13

    aget-object v3, v9, v2

    aget-wide v15, v3, v2

    mul-double/2addr v13, v15

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    const/4 v3, 0x1

    aget-object v8, v9, v3

    aget-wide v20, v8, v2

    mul-double v15, v15, v20

    add-double/2addr v13, v15

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v15

    const/4 v2, 0x0

    aget-object v8, v9, v2

    aget-wide v19, v8, v3

    mul-double v15, v15, v19

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v20

    aget-object v3, v9, v2

    aget-wide v22, v3, v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    mul-double v20, v20, v22

    add-double v15, v15, v20

    add-double/2addr v13, v15

    cmpl-double v2, v11, v13

    if-lez v2, :cond_1a

    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v6}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v0, 0x0

    :goto_c
    const/4 v2, 0x3

    if-ge v0, v2, :cond_19

    aget-object v2, v4, v0

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_19
    const/4 v2, 0x0

    return v2

    :cond_1a
    const/4 v2, 0x0

    :try_start_9
    aget-wide v11, v10, v2

    const/4 v3, 0x2

    aget-object v8, v0, v3

    aget-wide v13, v8, v2

    mul-double/2addr v11, v13

    aget-wide v13, v10, v3

    aget-object v3, v0, v2

    aget-wide v15, v3, v2

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v13

    const/4 v3, 0x2

    aget-object v8, v9, v3

    aget-wide v15, v8, v2

    mul-double/2addr v13, v15

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    aget-object v3, v9, v2

    aget-wide v20, v3, v2

    mul-double v15, v15, v20

    add-double/2addr v13, v15

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    const/4 v8, 0x1

    aget-object v15, v9, v8

    const/16 v16, 0x2

    aget-wide v20, v15, v16

    mul-double v2, v2, v20

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    aget-object v17, v9, v8

    aget-wide v20, v17, v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    mul-double v15, v15, v20

    add-double/2addr v2, v15

    add-double/2addr v13, v2

    cmpl-double v2, v11, v13

    if-lez v2, :cond_1c

    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v6}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v0, 0x0

    :goto_d
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1b

    aget-object v2, v4, v0

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1b
    const/4 v2, 0x0

    return v2

    :cond_1c
    const/4 v2, 0x0

    :try_start_a
    aget-wide v11, v10, v2

    const/4 v3, 0x2

    aget-object v8, v0, v3

    const/4 v13, 0x1

    aget-wide v14, v8, v13

    mul-double/2addr v11, v14

    aget-wide v14, v10, v3

    aget-object v3, v0, v2

    aget-wide v2, v3, v13

    mul-double/2addr v14, v2

    sub-double/2addr v11, v14

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v11

    const/4 v8, 0x2

    aget-object v14, v9, v8

    aget-wide v15, v14, v13

    mul-double/2addr v11, v15

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v14

    const/4 v8, 0x0

    aget-object v16, v9, v8

    aget-wide v20, v16, v13

    mul-double v14, v14, v20

    add-double/2addr v11, v14

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v14

    aget-object v8, v9, v13

    const/16 v16, 0x2

    aget-wide v20, v8, v16

    mul-double v14, v14, v20

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v20

    aget-object v8, v9, v13

    const/4 v13, 0x0

    aget-wide v22, v8, v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    mul-double v20, v20, v22

    add-double v14, v14, v20

    add-double/2addr v11, v14

    cmpl-double v2, v2, v11

    if-lez v2, :cond_1e

    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v6}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v0, 0x0

    :goto_e
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1d

    aget-object v2, v4, v0

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1d
    const/4 v2, 0x0

    return v2

    :cond_1e
    const/4 v2, 0x0

    :try_start_b
    aget-wide v11, v10, v2

    const/4 v3, 0x2

    aget-object v8, v0, v3

    aget-wide v13, v8, v3

    mul-double/2addr v11, v13

    aget-wide v13, v10, v3

    aget-object v8, v0, v2

    aget-wide v15, v8, v3

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v13

    aget-object v2, v9, v3

    aget-wide v15, v2, v3

    mul-double/2addr v13, v15

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    const/4 v2, 0x0

    aget-object v8, v9, v2

    aget-wide v20, v8, v3

    mul-double v15, v15, v20

    add-double/2addr v13, v15

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    const/4 v8, 0x1

    aget-object v15, v9, v8

    aget-wide v16, v15, v8

    mul-double v2, v2, v16

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v15

    aget-object v20, v9, v8

    const/4 v8, 0x0

    aget-wide v21, v20, v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    mul-double v15, v15, v21

    add-double/2addr v2, v15

    add-double/2addr v13, v2

    cmpl-double v2, v11, v13

    if-lez v2, :cond_20

    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v6}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v0, 0x0

    :goto_f
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1f

    aget-object v2, v4, v0

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    const/4 v2, 0x0

    return v2

    :cond_20
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_c
    aget-wide v11, v10, v3

    aget-object v8, v0, v2

    aget-wide v13, v8, v2

    mul-double/2addr v11, v13

    aget-wide v13, v10, v2

    aget-object v8, v0, v3

    aget-wide v15, v8, v2

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v13

    aget-object v8, v9, v3

    aget-wide v15, v8, v2

    mul-double/2addr v13, v15

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v15

    aget-object v3, v9, v2

    aget-wide v20, v3, v2

    mul-double v15, v15, v20

    add-double/2addr v13, v15

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    const/4 v8, 0x2

    aget-object v15, v9, v8

    aget-wide v20, v15, v8

    mul-double v2, v2, v20

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    aget-object v20, v9, v8

    const/4 v8, 0x1

    aget-wide v21, v20, v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    mul-double v15, v15, v21

    add-double/2addr v2, v15

    add-double/2addr v13, v2

    cmpl-double v2, v11, v13

    if-lez v2, :cond_22

    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v6}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v0, 0x0

    :goto_10
    const/4 v2, 0x3

    if-ge v0, v2, :cond_21

    aget-object v2, v4, v0

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_21
    const/4 v2, 0x0

    return v2

    :cond_22
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_d
    aget-wide v11, v10, v3

    aget-object v8, v0, v2

    aget-wide v13, v8, v3

    mul-double/2addr v11, v13

    aget-wide v13, v10, v2

    aget-object v2, v0, v3

    aget-wide v15, v2, v3

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v13

    aget-object v2, v9, v3

    aget-wide v15, v2, v3

    mul-double/2addr v13, v15

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v15

    const/4 v2, 0x0

    aget-object v8, v9, v2

    aget-wide v20, v8, v3

    mul-double v15, v15, v20

    add-double/2addr v13, v15

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    const/4 v8, 0x2

    aget-object v15, v9, v8

    aget-wide v20, v15, v8

    mul-double v2, v2, v20

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    aget-object v20, v9, v8

    const/4 v8, 0x0

    aget-wide v21, v20, v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    mul-double v15, v15, v21

    add-double/2addr v2, v15

    add-double/2addr v13, v2

    cmpl-double v2, v11, v13

    if-lez v2, :cond_24

    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v6}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v0, 0x0

    :goto_11
    const/4 v2, 0x3

    if-ge v0, v2, :cond_23

    aget-object v2, v4, v0

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_23
    const/4 v2, 0x0

    return v2

    :cond_24
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_e
    aget-wide v11, v10, v3

    aget-object v8, v0, v2

    const/4 v13, 0x2

    aget-wide v14, v8, v13

    mul-double/2addr v11, v14

    aget-wide v14, v10, v2

    aget-object v0, v0, v3

    aget-wide v16, v0, v13

    mul-double v14, v14, v16

    sub-double/2addr v11, v14

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v14

    aget-object v0, v9, v3

    aget-wide v2, v0, v13

    mul-double/2addr v14, v2

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    const/4 v5, 0x0

    aget-object v0, v9, v5

    aget-wide v20, v0, v13

    mul-double v2, v2, v20

    add-double/2addr v14, v2

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    aget-object v0, v9, v13

    const/4 v5, 0x1

    aget-wide v20, v0, v5

    mul-double v2, v2, v20

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v20

    aget-object v0, v9, v13

    const/4 v5, 0x0

    aget-wide v8, v0, v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    mul-double v20, v20, v8

    add-double v2, v2, v20

    add-double/2addr v14, v2

    cmpl-double v0, v10, v14

    if-lez v0, :cond_26

    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v6}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v0, 0x0

    const/4 v2, 0x3

    :goto_12
    if-ge v0, v2, :cond_25

    aget-object v3, v4, v0

    invoke-static {v3}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_25
    const/4 v3, 0x0

    return v3

    :cond_26
    const/4 v2, 0x3

    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v6}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v2, :cond_27

    aget-object v2, v4, v0

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x3

    goto :goto_13

    :cond_27
    const/4 v0, 0x1

    return v0

    :goto_14
    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v6}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v2, 0x0

    const/4 v3, 0x3

    :goto_15
    if-ge v2, v3, :cond_28

    aget-object v5, v4, v2

    invoke-static {v5}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_28
    throw v0

    :cond_29
    :goto_16
    return v2
.end method

.method public intersectsOrientedBoundingBox(Lcom/ardor3d/bounding/OrientedBoundingBox;)Z
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v3

    goto/16 :goto_5

    :cond_1
    iget-object v2, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    iget-object v4, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    iget-object v5, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    filled-new-array {v2, v4, v5}, [Lcom/ardor3d/math/Vector3;

    move-result-object v2

    iget-object v4, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    iget-object v5, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    iget-object v6, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    filled-new-array {v4, v5, v6}, [Lcom/ardor3d/math/Vector3;

    move-result-object v4

    iget-object v5, v1, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    iget-object v6, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    iget-object v0, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    iget-object v7, v1, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v7

    const/4 v0, 0x3

    new-array v8, v0, [D

    new-array v9, v0, [D

    new-array v10, v0, [D

    filled-new-array {v8, v9, v10}, [[D

    move-result-object v8

    new-array v9, v0, [D

    new-array v10, v0, [D

    new-array v11, v0, [D

    filled-new-array {v9, v10, v11}, [[D

    move-result-object v9

    new-array v10, v0, [D

    move v11, v3

    move v12, v11

    :goto_0
    const-wide v13, 0x3feffffde0000000L    # 0.9999989867210388

    if-ge v11, v0, :cond_3

    :try_start_0
    aget-object v16, v8, v3

    aget-object v0, v2, v3

    aget-object v15, v4, v11

    invoke-virtual {v0, v15}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v18

    aput-wide v18, v16, v11

    aget-object v0, v9, v3

    aget-object v15, v8, v3

    aget-wide v18, v15, v11

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    aput-wide v15, v0, v11

    aget-object v0, v9, v3

    aget-wide v15, v0, v11

    cmpl-double v0, v15, v13

    if-lez v0, :cond_2

    const/4 v12, 0x1

    :cond_2
    add-int/lit8 v11, v11, 0x1

    const/4 v0, 0x3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_3
    aget-object v0, v2, v3

    invoke-virtual {v0, v7}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v15

    aput-wide v15, v10, v3

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v18

    aget-object v0, v9, v3

    aget-wide v20, v0, v3

    mul-double v18, v18, v20

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v20

    aget-object v0, v9, v3

    const/4 v11, 0x1

    aget-wide v22, v0, v11

    mul-double v20, v20, v22

    add-double v18, v18, v20

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v20

    aget-object v0, v9, v3

    const/4 v11, 0x2

    aget-wide v22, v0, v11

    mul-double v20, v20, v22

    add-double v18, v18, v20

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-double v20, v20, v18

    cmpl-double v0, v15, v20

    if-lez v0, :cond_4

    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return v3

    :cond_4
    move v15, v3

    const/4 v0, 0x3

    :goto_1
    if-ge v15, v0, :cond_6

    const/4 v0, 0x1

    :try_start_1
    aget-object v16, v8, v0

    aget-object v11, v2, v0

    aget-object v3, v4, v15

    invoke-virtual {v11, v3}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v20

    aput-wide v20, v16, v15

    aget-object v3, v9, v0

    aget-object v11, v8, v0

    aget-wide v16, v11, v15

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    aput-wide v16, v3, v15

    aget-object v3, v9, v0

    aget-wide v20, v3, v15

    cmpl-double v0, v20, v13

    if-lez v0, :cond_5

    const/4 v12, 0x1

    :cond_5
    add-int/lit8 v15, v15, 0x1

    const/4 v0, 0x3

    const/4 v3, 0x0

    const/4 v11, 0x2

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    aget-object v3, v2, v0

    invoke-virtual {v3, v7}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v15

    aput-wide v15, v10, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v20

    aget-object v3, v9, v0

    const/4 v11, 0x0

    aget-wide v22, v3, v11

    mul-double v20, v20, v22

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v22

    aget-object v3, v9, v0

    aget-wide v24, v3, v0

    mul-double v22, v22, v24

    add-double v20, v20, v22

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v22

    aget-object v3, v9, v0

    const/4 v0, 0x2

    aget-wide v24, v3, v0

    mul-double v22, v22, v24

    add-double v20, v20, v22

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-double v22, v22, v20

    cmpl-double v0, v15, v22

    if-lez v0, :cond_7

    :goto_2
    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v0, 0x0

    return v0

    :cond_7
    const/4 v0, 0x0

    :goto_3
    const/4 v3, 0x3

    if-ge v0, v3, :cond_9

    const/4 v11, 0x2

    :try_start_2
    aget-object v15, v8, v11

    aget-object v3, v2, v11

    aget-object v13, v4, v0

    invoke-virtual {v3, v13}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v13

    aput-wide v13, v15, v0

    aget-object v3, v9, v11

    aget-object v13, v8, v11

    aget-wide v14, v13, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    aput-wide v13, v3, v0

    aget-object v3, v9, v11

    aget-wide v13, v3, v0

    const-wide v15, 0x3feffffde0000000L    # 0.9999989867210388

    cmpl-double v3, v13, v15

    if-lez v3, :cond_8

    const/4 v12, 0x1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    move-wide v13, v15

    goto :goto_3

    :cond_9
    const/4 v0, 0x2

    aget-object v2, v2, v0

    invoke-virtual {v2, v7}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v2

    aput-wide v2, v10, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v13

    aget-object v11, v9, v0

    const/4 v15, 0x0

    aget-wide v20, v11, v15

    mul-double v13, v13, v20

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v15

    aget-object v11, v9, v0

    const/16 v17, 0x1

    aget-wide v20, v11, v17

    mul-double v15, v15, v20

    add-double/2addr v13, v15

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    aget-object v11, v9, v0

    aget-wide v20, v11, v0

    mul-double v15, v15, v20

    add-double/2addr v13, v15

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    add-double/2addr v15, v13

    cmpl-double v0, v2, v15

    if-lez v0, :cond_a

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    aget-object v2, v4, v0

    invoke-virtual {v2, v7}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v13

    aget-object v11, v9, v0

    aget-wide v15, v11, v0

    mul-double/2addr v13, v15

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v15

    const/4 v11, 0x1

    aget-object v19, v9, v11

    aget-wide v20, v19, v0

    mul-double v15, v15, v20

    add-double/2addr v13, v15

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    const/4 v11, 0x2

    aget-object v19, v9, v11

    aget-wide v20, v19, v0

    mul-double v15, v15, v20

    add-double/2addr v13, v15

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-double/2addr v13, v15

    cmpl-double v2, v2, v13

    if-lez v2, :cond_b

    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return v0

    :cond_b
    const/4 v2, 0x1

    :try_start_3
    aget-object v3, v4, v2

    invoke-virtual {v3, v7}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v15

    aget-object v3, v9, v0

    aget-wide v20, v3, v2

    mul-double v15, v15, v20

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v20

    aget-object v0, v9, v2

    aget-wide v22, v0, v2

    mul-double v20, v20, v22

    add-double v15, v15, v20

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v20

    const/4 v0, 0x2

    aget-object v3, v9, v0

    aget-wide v22, v3, v2

    mul-double v20, v20, v22

    add-double v15, v15, v20

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    add-double/2addr v15, v2

    cmpl-double v0, v13, v15

    if-lez v0, :cond_c

    goto/16 :goto_2

    :cond_c
    const/4 v0, 0x0

    const/4 v2, 0x2

    aget-object v3, v4, v2

    invoke-virtual {v3, v7}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v13

    aget-object v11, v9, v0

    aget-wide v15, v11, v2

    mul-double/2addr v13, v15

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v15

    const/4 v0, 0x1

    aget-object v11, v9, v0

    aget-wide v20, v11, v2

    mul-double v15, v15, v20

    add-double/2addr v13, v15

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    aget-object v0, v9, v2

    aget-wide v20, v0, v2

    mul-double v15, v15, v20

    add-double/2addr v13, v15

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-double/2addr v13, v15

    cmpl-double v0, v3, v13

    if-lez v0, :cond_d

    goto/16 :goto_2

    :cond_d
    const/4 v0, 0x0

    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    if-eqz v12, :cond_e

    const/4 v2, 0x1

    return v2

    :cond_e
    const/4 v2, 0x1

    const/4 v3, 0x2

    aget-wide v11, v10, v3

    aget-object v4, v8, v2

    aget-wide v13, v4, v0

    mul-double/2addr v11, v13

    aget-wide v13, v10, v2

    aget-object v4, v8, v3

    aget-wide v15, v4, v0

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v13

    aget-object v4, v9, v3

    aget-wide v15, v4, v0

    mul-double/2addr v13, v15

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    aget-object v4, v9, v2

    aget-wide v17, v4, v0

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v15

    aget-object v4, v9, v0

    aget-wide v17, v4, v3

    mul-double v15, v15, v17

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v17

    aget-object v4, v9, v0

    aget-wide v19, v4, v2

    mul-double v17, v17, v19

    add-double v15, v15, v17

    add-double/2addr v13, v15

    cmpl-double v4, v11, v13

    if-lez v4, :cond_f

    return v0

    :cond_f
    aget-wide v11, v10, v3

    aget-object v0, v8, v2

    aget-wide v13, v0, v2

    mul-double/2addr v11, v13

    aget-wide v13, v10, v2

    aget-object v0, v8, v3

    aget-wide v15, v0, v2

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v13

    aget-object v0, v9, v3

    aget-wide v15, v0, v2

    mul-double/2addr v13, v15

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    aget-object v0, v9, v2

    aget-wide v20, v0, v2

    mul-double v15, v15, v20

    add-double/2addr v13, v15

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v15

    const/4 v0, 0x0

    aget-object v2, v9, v0

    aget-wide v18, v2, v3

    mul-double v15, v15, v18

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v18

    aget-object v2, v9, v0

    aget-wide v20, v2, v0

    mul-double v18, v18, v20

    add-double v15, v15, v18

    add-double/2addr v13, v15

    cmpl-double v2, v11, v13

    if-lez v2, :cond_10

    return v0

    :cond_10
    aget-wide v11, v10, v3

    const/4 v0, 0x1

    aget-object v2, v8, v0

    aget-wide v13, v2, v3

    mul-double/2addr v11, v13

    aget-wide v13, v10, v0

    aget-object v2, v8, v3

    aget-wide v15, v2, v3

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v13

    aget-object v2, v9, v3

    aget-wide v15, v2, v3

    mul-double/2addr v13, v15

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    aget-object v2, v9, v0

    aget-wide v20, v2, v3

    mul-double v15, v15, v20

    add-double/2addr v13, v15

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    const/4 v4, 0x0

    aget-object v7, v9, v4

    aget-wide v15, v7, v0

    mul-double/2addr v2, v15

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v15

    aget-object v0, v9, v4

    aget-wide v19, v0, v4

    mul-double v15, v15, v19

    add-double/2addr v2, v15

    add-double/2addr v13, v2

    cmpl-double v0, v11, v13

    if-lez v0, :cond_11

    return v4

    :cond_11
    aget-wide v2, v10, v4

    const/4 v0, 0x2

    aget-object v7, v8, v0

    aget-wide v11, v7, v4

    mul-double/2addr v2, v11

    aget-wide v11, v10, v0

    aget-object v7, v8, v4

    aget-wide v13, v7, v4

    mul-double/2addr v11, v13

    sub-double/2addr v2, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v11

    aget-object v7, v9, v0

    aget-wide v13, v7, v4

    mul-double/2addr v11, v13

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v13

    aget-object v7, v9, v4

    aget-wide v15, v7, v4

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v13

    const/4 v4, 0x1

    aget-object v7, v9, v4

    aget-wide v15, v7, v0

    mul-double/2addr v13, v15

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    aget-object v0, v9, v4

    aget-wide v20, v0, v4

    mul-double v15, v15, v20

    add-double/2addr v13, v15

    add-double/2addr v11, v13

    cmpl-double v0, v2, v11

    if-lez v0, :cond_12

    const/4 v0, 0x0

    return v0

    :cond_12
    const/4 v0, 0x0

    aget-wide v2, v10, v0

    const/4 v7, 0x2

    aget-object v11, v8, v7

    aget-wide v12, v11, v4

    mul-double/2addr v2, v12

    aget-wide v11, v10, v7

    aget-object v13, v8, v0

    aget-wide v14, v13, v4

    mul-double/2addr v11, v14

    sub-double/2addr v2, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v11

    aget-object v13, v9, v7

    aget-wide v14, v13, v4

    mul-double/2addr v11, v14

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v13

    aget-object v15, v9, v0

    aget-wide v16, v15, v4

    mul-double v13, v13, v16

    add-double/2addr v11, v13

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v13

    aget-object v15, v9, v4

    aget-wide v16, v15, v7

    mul-double v13, v13, v16

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    aget-object v7, v9, v4

    aget-wide v19, v7, v0

    mul-double v15, v15, v19

    add-double/2addr v13, v15

    add-double/2addr v11, v13

    cmpl-double v2, v2, v11

    if-lez v2, :cond_13

    return v0

    :cond_13
    aget-wide v2, v10, v0

    const/4 v4, 0x2

    aget-object v7, v8, v4

    aget-wide v11, v7, v4

    mul-double/2addr v2, v11

    aget-wide v11, v10, v4

    aget-object v7, v8, v0

    aget-wide v13, v7, v4

    mul-double/2addr v11, v13

    sub-double/2addr v2, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v11

    aget-object v7, v9, v4

    aget-wide v13, v7, v4

    mul-double/2addr v11, v13

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v13

    aget-object v7, v9, v0

    aget-wide v15, v7, v4

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v13

    const/4 v4, 0x1

    aget-object v7, v9, v4

    aget-wide v15, v7, v4

    mul-double/2addr v13, v15

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v15

    aget-object v7, v9, v4

    aget-wide v19, v7, v0

    mul-double v15, v15, v19

    add-double/2addr v13, v15

    add-double/2addr v11, v13

    cmpl-double v2, v2, v11

    if-lez v2, :cond_14

    return v0

    :cond_14
    aget-wide v2, v10, v4

    aget-object v7, v8, v0

    aget-wide v11, v7, v0

    mul-double/2addr v2, v11

    aget-wide v11, v10, v0

    aget-object v7, v8, v4

    aget-wide v13, v7, v0

    mul-double/2addr v11, v13

    sub-double/2addr v2, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v11

    aget-object v7, v9, v4

    aget-wide v13, v7, v0

    mul-double/2addr v11, v13

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v13

    aget-object v4, v9, v0

    aget-wide v15, v4, v0

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v13

    const/4 v0, 0x2

    aget-object v4, v9, v0

    aget-wide v15, v4, v0

    mul-double/2addr v13, v15

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    aget-object v4, v9, v0

    const/4 v0, 0x1

    aget-wide v20, v4, v0

    mul-double v15, v15, v20

    add-double/2addr v13, v15

    add-double/2addr v11, v13

    cmpl-double v2, v2, v11

    if-lez v2, :cond_15

    const/4 v2, 0x0

    return v2

    :cond_15
    const/4 v2, 0x0

    aget-wide v3, v10, v0

    aget-object v7, v8, v2

    aget-wide v11, v7, v0

    mul-double/2addr v3, v11

    aget-wide v11, v10, v2

    aget-object v7, v8, v0

    aget-wide v13, v7, v0

    mul-double/2addr v11, v13

    sub-double/2addr v3, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v11

    aget-object v7, v9, v0

    aget-wide v13, v7, v0

    mul-double/2addr v11, v13

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v13

    aget-object v7, v9, v2

    aget-wide v15, v7, v0

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v13

    const/4 v0, 0x2

    aget-object v7, v9, v0

    aget-wide v15, v7, v0

    mul-double/2addr v13, v15

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    aget-object v7, v9, v0

    aget-wide v18, v7, v2

    mul-double v15, v15, v18

    add-double/2addr v13, v15

    add-double/2addr v11, v13

    cmpl-double v3, v3, v11

    if-lez v3, :cond_16

    return v2

    :cond_16
    const/4 v3, 0x1

    aget-wide v11, v10, v3

    aget-object v4, v8, v2

    aget-wide v13, v4, v0

    mul-double/2addr v11, v13

    aget-wide v13, v10, v2

    aget-object v4, v8, v3

    aget-wide v7, v4, v0

    mul-double/2addr v13, v7

    sub-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v10

    aget-object v4, v9, v3

    aget-wide v12, v4, v0

    mul-double/2addr v10, v12

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    aget-object v12, v9, v2

    aget-wide v13, v12, v0

    mul-double/2addr v4, v13

    add-double/2addr v10, v4

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    aget-object v12, v9, v0

    aget-wide v13, v12, v3

    mul-double/2addr v4, v13

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v12

    aget-object v0, v9, v0

    aget-wide v14, v0, v2

    mul-double/2addr v12, v14

    add-double/2addr v4, v12

    add-double/2addr v10, v4

    cmpl-double v0, v7, v10

    if-lez v0, :cond_17

    return v2

    :cond_17
    return v3

    :goto_4
    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    throw v0

    :goto_5
    return v0
.end method

.method public intersectsSphere(Lcom/ardor3d/bounding/BoundingSphere;)Z
    .locals 9

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

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iget-object v2, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v2}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-static {}, Lcom/ardor3d/math/Matrix3;->fetchTempInstance()Lcom/ardor3d/math/Matrix3;

    move-result-object v2

    iget-object v3, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    iget-object v4, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    iget-object v5, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2, v3, v4, v5}, Lcom/ardor3d/math/Matrix3;->fromAxes(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Matrix3;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Lcom/ardor3d/math/Matrix3;->applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v5

    iget-object v7, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v7

    add-double/2addr v5, v7

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v5

    iget-object v7, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v7

    add-double/2addr v5, v7

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v5

    iget-object p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v7

    add-double/2addr v5, v7

    cmpg-double p1, v3, v5

    if-gez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v2}, Lcom/ardor3d/math/Matrix3;->releaseTempInstance(Lcom/ardor3d/math/Matrix3;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public intersectsWhere(Lcom/ardor3d/math/type/ReadOnlyRay3;)Lcom/ardor3d/intersection/IntersectionRecord;
    .locals 25

    move-object/from16 v7, p0

    const/4 v0, 0x1

    const/4 v8, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v9

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-interface {v10, v1, v2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v6

    iget-object v1, v7, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v6}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v12

    iget-object v1, v7, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v6}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v14

    iget-object v1, v7, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v6}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v16

    move-object v11, v6

    invoke-virtual/range {v11 .. v17}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v18

    iget-object v1, v7, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v9}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v19

    iget-object v1, v7, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v9}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v21

    iget-object v1, v7, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v9}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v23

    invoke-virtual/range {v18 .. v24}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    move-result-object v11

    const/4 v1, 0x2

    new-array v12, v1, [D

    fill-array-data v12, :array_0

    :try_start_0
    aget-wide v13, v12, v8

    aget-wide v15, v12, v0

    invoke-virtual {v11}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    neg-double v4, v4

    iget-object v1, v7, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-double v4, v4, v17

    move-object/from16 v1, p0

    move-object/from16 v17, v6

    move-object v6, v12

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/ardor3d/bounding/OrientedBoundingBox;->clip(DD[D)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v11}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    neg-double v2, v1

    invoke-virtual/range {v17 .. v17}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    iget-object v1, v7, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v18

    sub-double v4, v4, v18

    move-object/from16 v1, p0

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/ardor3d/bounding/OrientedBoundingBox;->clip(DD[D)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v11}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    invoke-virtual/range {v17 .. v17}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    neg-double v4, v4

    iget-object v1, v7, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v18

    sub-double v4, v4, v18

    move-object/from16 v1, p0

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/ardor3d/bounding/OrientedBoundingBox;->clip(DD[D)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v11}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    neg-double v2, v1

    invoke-virtual/range {v17 .. v17}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    iget-object v1, v7, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v18

    sub-double v4, v4, v18

    move-object/from16 v1, p0

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/ardor3d/bounding/OrientedBoundingBox;->clip(DD[D)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v11}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    invoke-virtual/range {v17 .. v17}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v4

    neg-double v4, v4

    iget-object v1, v7, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v18

    sub-double v4, v4, v18

    move-object/from16 v1, p0

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/ardor3d/bounding/OrientedBoundingBox;->clip(DD[D)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v11}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    neg-double v2, v1

    invoke-virtual/range {v17 .. v17}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v4

    iget-object v1, v7, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v18

    sub-double v4, v4, v18

    move-object/from16 v1, p0

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/ardor3d/bounding/OrientedBoundingBox;->clip(DD[D)Z

    move-result v1

    if-eqz v1, :cond_2

    aget-wide v1, v12, v8

    cmpl-double v3, v1, v13

    if-nez v3, :cond_0

    aget-wide v3, v12, v0

    cmpl-double v3, v3, v15

    if-eqz v3, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    aget-wide v3, v12, v0

    cmpl-double v3, v3, v1

    if-lez v3, :cond_1

    new-instance v3, Lcom/ardor3d/math/Vector3;

    invoke-direct {v3}, Lcom/ardor3d/math/Vector3;-><init>()V

    invoke-interface {v9, v1, v2, v3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    aget-wide v2, v12, v0

    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    invoke-interface {v9, v2, v3, v0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    filled-new-array {v1, v0}, [Lcom/ardor3d/math/Vector3;

    move-result-object v0

    new-instance v1, Lcom/ardor3d/intersection/IntersectionRecord;

    invoke-direct {v1, v12, v0}, Lcom/ardor3d/intersection/IntersectionRecord;-><init>([D[Lcom/ardor3d/math/Vector3;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v17 .. v17}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v11}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-object v1

    :cond_1
    :try_start_2
    new-array v0, v0, [D

    aput-wide v1, v0, v8

    aget-wide v1, v0, v8

    new-instance v3, Lcom/ardor3d/math/Vector3;

    invoke-direct {v3}, Lcom/ardor3d/math/Vector3;-><init>()V

    invoke-interface {v9, v1, v2, v3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    filled-new-array {v1}, [Lcom/ardor3d/math/Vector3;

    move-result-object v1

    new-instance v2, Lcom/ardor3d/intersection/IntersectionRecord;

    invoke-direct {v2, v0, v1}, Lcom/ardor3d/intersection/IntersectionRecord;-><init>([D[Lcom/ardor3d/math/Vector3;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static/range {v17 .. v17}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v11}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-object v2

    :cond_2
    invoke-static/range {v17 .. v17}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v11}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v0, 0x0

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v17, v6

    :goto_1
    invoke-static/range {v17 .. v17}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v11}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    throw v0

    :array_0
    .array-data 8
        0x0
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
    .end array-data
.end method

.method public merge(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;
    .locals 1

    new-instance v0, Lcom/ardor3d/bounding/OrientedBoundingBox;

    invoke-direct {v0}, Lcom/ardor3d/bounding/OrientedBoundingBox;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ardor3d/bounding/OrientedBoundingBox;->clone(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ardor3d/bounding/BoundingVolume;->mergeLocal(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object p1

    return-object p1
.end method

.method public mergeLocal(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lcom/ardor3d/bounding/OrientedBoundingBox$1;->$SwitchMap$com$ardor3d$bounding$BoundingVolume$Type:[I

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
    check-cast p1, Lcom/ardor3d/bounding/BoundingSphere;

    invoke-direct {p0, p1}, Lcom/ardor3d/bounding/OrientedBoundingBox;->mergeSphere(Lcom/ardor3d/bounding/BoundingSphere;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object p1

    return-object p1

    :cond_2
    check-cast p1, Lcom/ardor3d/bounding/BoundingBox;

    invoke-direct {p0, p1}, Lcom/ardor3d/bounding/OrientedBoundingBox;->mergeAABB(Lcom/ardor3d/bounding/BoundingBox;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object p1

    return-object p1

    :cond_3
    check-cast p1, Lcom/ardor3d/bounding/OrientedBoundingBox;

    invoke-direct {p0, p1}, Lcom/ardor3d/bounding/OrientedBoundingBox;->mergeOBB(Lcom/ardor3d/bounding/OrientedBoundingBox;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/bounding/BoundingVolume;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_X:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "xAxis"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "yAxis"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_Z:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "zAxis"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "extent"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->correctCorners:Z

    return-void
.end method

.method public setExtent(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->correctCorners:Z

    return-void
.end method

.method public setXAxis(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->correctCorners:Z

    return-void
.end method

.method public setYAxis(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->correctCorners:Z

    return-void
.end method

.method public setZAxis(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->correctCorners:Z

    return-void
.end method

.method public transform(Lcom/ardor3d/math/type/ReadOnlyTransform;Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/ardor3d/bounding/BoundingVolume;->getType()Lcom/ardor3d/bounding/BoundingVolume$Type;

    move-result-object v2

    sget-object v3, Lcom/ardor3d/bounding/BoundingVolume$Type;->OBB:Lcom/ardor3d/bounding/BoundingVolume$Type;

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Lcom/ardor3d/bounding/OrientedBoundingBox;

    invoke-direct {v2}, Lcom/ardor3d/bounding/OrientedBoundingBox;-><init>()V

    :goto_1
    check-cast v2, Lcom/ardor3d/bounding/OrientedBoundingBox;

    new-instance v10, Lcom/ardor3d/math/Vector3;

    invoke-direct {v10}, Lcom/ardor3d/math/Vector3;-><init>()V

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v3, v10

    invoke-virtual/range {v3 .. v9}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    invoke-interface {v1, v10}, Lcom/ardor3d/math/type/ReadOnlyTransform;->applyForwardVector(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->length()D

    move-result-wide v11

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    move-object v3, v10

    invoke-virtual/range {v3 .. v9}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    invoke-interface {v1, v10}, Lcom/ardor3d/math/type/ReadOnlyTransform;->applyForwardVector(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->length()D

    move-result-wide v13

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object v3, v10

    invoke-virtual/range {v3 .. v9}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    invoke-interface {v1, v10}, Lcom/ardor3d/math/type/ReadOnlyTransform;->applyForwardVector(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->length()D

    move-result-wide v3

    iget-object v15, v2, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    iget-object v5, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    mul-double/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    iget-object v5, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v5

    mul-double/2addr v5, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    iget-object v5, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v5

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    invoke-virtual/range {v15 .. v21}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    move-result-object v3

    iget-object v4, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    iget-object v5, v2, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-interface {v3, v4, v5}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    move-result-object v3

    iget-object v4, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    iget-object v5, v2, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-interface {v3, v4, v5}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    move-result-object v3

    iget-object v4, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    iget-object v5, v2, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-interface {v3, v4, v5}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->isRotationMatrix()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    iget-object v3, v2, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    iget-object v3, v2, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    :cond_2
    iget-object v3, v0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    iget-object v4, v2, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-interface {v1, v3, v4}, Lcom/ardor3d/math/type/ReadOnlyTransform;->applyForward(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/ardor3d/bounding/OrientedBoundingBox;->correctCorners:Z

    invoke-virtual {v2}, Lcom/ardor3d/bounding/OrientedBoundingBox;->computeCorners()V

    return-object v2
.end method

.method public whichSide(Lcom/ardor3d/math/type/ReadOnlyPlane;)Lcom/ardor3d/math/type/ReadOnlyPlane$Side;
    .locals 7

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyPlane;->getNormal()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-interface {v0, v3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget-object v3, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    iget-object v5, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-interface {v0, v5}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    iget-object v3, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    iget-object v5, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-interface {v0, v5}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

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

    if-gtz p1, :cond_0

    sget-object p1, Lcom/ardor3d/math/type/ReadOnlyPlane$Side;->Inside:Lcom/ardor3d/math/type/ReadOnlyPlane$Side;

    return-object p1

    :cond_0
    cmpl-double p1, v3, v1

    if-ltz p1, :cond_1

    sget-object p1, Lcom/ardor3d/math/type/ReadOnlyPlane$Side;->Outside:Lcom/ardor3d/math/type/ReadOnlyPlane$Side;

    return-object p1

    :cond_1
    sget-object p1, Lcom/ardor3d/math/type/ReadOnlyPlane$Side;->Neither:Lcom/ardor3d/math/type/ReadOnlyPlane$Side;

    return-object p1
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/bounding/BoundingVolume;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_X:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "_xAxis"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "yAxis"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_Z:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "zAxis"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "extent"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    return-void
.end method
