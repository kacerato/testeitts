.class public Lcom/ardor3d/scenegraph/shape/Dome;
.super Lcom/ardor3d/scenegraph/Mesh;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _planes:I

.field private _radialSamples:I

.field private _radius:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IID)V
    .locals 8

    .line 3
    new-instance v7, Lcom/ardor3d/math/Vector3;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/scenegraph/shape/Dome;-><init>(Ljava/lang/String;Lcom/ardor3d/math/Vector3;IID)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ardor3d/math/Vector3;IID)V
    .locals 8

    .line 4
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    .line 5
    invoke-virtual/range {v0 .. v7}, Lcom/ardor3d/scenegraph/shape/Dome;->setData(Lcom/ardor3d/math/Vector3;IIDZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ardor3d/math/Vector3;IIDZ)V
    .locals 8

    .line 6
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    move v7, p7

    .line 7
    invoke-virtual/range {v0 .. v7}, Lcom/ardor3d/scenegraph/shape/Dome;->setData(Lcom/ardor3d/math/Vector3;IIDZZ)V

    return-void
.end method

.method private setGeometryData(ZLcom/ardor3d/math/Vector3;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v11

    iget v4, v0, Lcom/ardor3d/scenegraph/shape/Dome;->_planes:I

    add-int/lit8 v4, v4, -0x1

    iget v5, v0, Lcom/ardor3d/scenegraph/shape/Dome;->_radialSamples:I

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iget-object v5, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {v4}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    iget-object v5, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {v4}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ardor3d/scenegraph/MeshData;->setNormalBuffer(Ljava/nio/FloatBuffer;)V

    iget-object v5, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {v4}, Lcom/ardor3d/util/geom/BufferUtils;->createVector2Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v12, 0x0

    invoke-virtual {v5, v4, v12}, Lcom/ardor3d/scenegraph/MeshData;->setTextureBuffer(Ljava/nio/FloatBuffer;I)V

    iget v4, v0, Lcom/ardor3d/scenegraph/shape/Dome;->_radialSamples:I

    int-to-double v5, v4

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double v13, v7, v5

    iget v5, v0, Lcom/ardor3d/scenegraph/shape/Dome;->_planes:I

    add-int/lit8 v5, v5, -0x1

    int-to-double v5, v5

    div-double v15, v7, v5

    new-array v9, v4, [D

    new-array v10, v4, [D

    move v4, v12

    :goto_0
    iget v5, v0, Lcom/ardor3d/scenegraph/shape/Dome;->_radialSamples:I

    if-ge v4, v5, :cond_0

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v5, v13

    int-to-double v7, v4

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v7

    aput-wide v7, v10, v4

    invoke-static {v5, v6}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v5

    aput-wide v5, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v7, v12

    move v8, v7

    :goto_1
    iget v4, v0, Lcom/ardor3d/scenegraph/shape/Dome;->_planes:I

    add-int/lit8 v4, v4, -0x1

    if-ge v7, v4, :cond_3

    int-to-double v5, v7

    mul-double/2addr v5, v15

    move-wide/from16 v18, v13

    iget-wide v12, v0, Lcom/ardor3d/scenegraph/shape/Dome;->_radius:D

    mul-double/2addr v12, v5

    invoke-virtual {v3, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v14

    const-wide/16 v21, 0x0

    const-wide/16 v25, 0x0

    move-object/from16 v20, v14

    move-wide/from16 v23, v12

    invoke-virtual/range {v20 .. v26}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    move-wide/from16 v20, v5

    iget-wide v4, v0, Lcom/ardor3d/scenegraph/shape/Dome;->_radius:D

    mul-double/2addr v4, v4

    mul-double/2addr v12, v12

    sub-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    move v6, v8

    const/4 v5, 0x0

    :goto_2
    iget v4, v0, Lcom/ardor3d/scenegraph/shape/Dome;->_radialSamples:I

    if-ge v5, v4, :cond_2

    move/from16 v23, v6

    move/from16 v22, v7

    int-to-double v6, v5

    mul-double v6, v6, v18

    aget-wide v24, v10, v5

    const-wide/16 v26, 0x0

    aget-wide v28, v9, v5

    move-object v4, v11

    move/from16 v17, v5

    move-wide/from16 v32, v6

    move-wide/from16 v30, v20

    const/high16 v7, 0x3f800000    # 1.0f

    move-wide/from16 v20, v15

    move/from16 v15, v23

    move-wide/from16 v5, v24

    move-object/from16 v23, v3

    move v3, v7

    move/from16 v16, v22

    move-object/from16 v22, v11

    move v11, v8

    move-wide/from16 v7, v26

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-wide/from16 v9, v28

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v12, v13, v2}, Lcom/ardor3d/math/Vector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object v4, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-float v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v5

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-float v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v5

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-float v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v4, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-static {v2, v4, v15}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v2, v1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    if-eqz p1, :cond_1

    iget-object v5, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    double-to-float v4, v6

    invoke-virtual {v5, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_3

    :cond_1
    iget-object v5, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v6

    neg-double v6, v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    neg-double v6, v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    neg-double v6, v6

    double-to-float v4, v6

    invoke-virtual {v5, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_3
    iget-object v4, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/FloatBuffer;

    move-wide/from16 v6, v32

    double-to-float v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    move-wide/from16 v5, v30

    double-to-float v7, v5

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v15, 0x1

    add-int/lit8 v7, v17, 0x1

    move v8, v11

    move-object/from16 v11, v22

    move-object/from16 v3, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-wide/from16 v34, v5

    move v6, v4

    move v5, v7

    move/from16 v7, v16

    move-wide/from16 v15, v20

    move-wide/from16 v20, v34

    goto/16 :goto_2

    :cond_2
    move-object/from16 v23, v3

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v22, v11

    const/high16 v3, 0x3f800000    # 1.0f

    move v11, v8

    move-wide/from16 v34, v15

    move v15, v6

    move/from16 v16, v7

    move-wide/from16 v5, v20

    move-wide/from16 v20, v34

    iget-object v4, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-static {v4, v11, v15}, Lcom/ardor3d/util/geom/BufferUtils;->copyInternalVector3(Ljava/nio/FloatBuffer;II)V

    iget-object v4, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-static {v4, v11, v15}, Lcom/ardor3d/util/geom/BufferUtils;->copyInternalVector3(Ljava/nio/FloatBuffer;II)V

    iget-object v4, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    double-to-float v4, v5

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v8, v15, 0x1

    add-int/lit8 v7, v16, 0x1

    move-wide/from16 v13, v18

    move-wide/from16 v15, v20

    move-object/from16 v11, v22

    move-object/from16 v3, v23

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_3
    move-object/from16 v23, v3

    move-object/from16 v22, v11

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v5

    iget-wide v7, v0, Lcom/ardor3d/scenegraph/shape/Dome;->_radius:D

    add-double/2addr v5, v7

    double-to-float v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v5

    double-to-float v1, v5

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object v4, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_4

    :cond_4
    iget-object v4, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_4
    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static/range {v23 .. v23}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static/range {v22 .. v22}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method private setIndexData()V
    .locals 8

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Dome;->_planes:I

    add-int/lit8 v1, v0, -0x1

    iget v2, p0, Lcom/ardor3d/scenegraph/shape/Dome;->_radialSamples:I

    add-int/lit8 v3, v2, 0x1

    mul-int/2addr v1, v3

    add-int/lit8 v0, v0, -0x2

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0, v1}, Lcom/ardor3d/util/geom/BufferUtils;->createIndexBufferData(II)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ardor3d/scenegraph/MeshData;->setIndices(Lcom/ardor3d/scenegraph/IndexBufferData;)V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/ardor3d/scenegraph/shape/Dome;->_planes:I

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    if-ge v1, v3, :cond_1

    add-int/lit8 v2, v1, -0x1

    iget v3, p0, Lcom/ardor3d/scenegraph/shape/Dome;->_radialSamples:I

    add-int/lit8 v5, v3, 0x1

    mul-int/2addr v2, v5

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    :goto_1
    iget v5, p0, Lcom/ardor3d/scenegraph/shape/Dome;->_radialSamples:I

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v5

    add-int v6, v2, v4

    invoke-virtual {v5, v6}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v5, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v5

    add-int v7, v3, v4

    invoke-virtual {v5, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v5, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v5

    add-int/2addr v6, v0

    invoke-virtual {v5, v6}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v5, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v5, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v5, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v5

    add-int/2addr v7, v0

    invoke-virtual {v5, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x2

    iget v1, p0, Lcom/ardor3d/scenegraph/shape/Dome;->_radialSamples:I

    add-int/2addr v1, v0

    mul-int/2addr v2, v1

    :goto_2
    iget v1, p0, Lcom/ardor3d/scenegraph/shape/Dome;->_radialSamples:I

    if-ge v4, v1, :cond_2

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v1

    add-int v3, v2, v4

    invoke-virtual {v1, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v1

    iget-object v5, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v1, v5}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v1

    add-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public getPlanes()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Dome;->_planes:I

    return v0
.end method

.method public getRadialSamples()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Dome;->_radialSamples:I

    return v0
.end method

.method public getRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Dome;->_radius:D

    return-wide v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "planes"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/shape/Dome;->_planes:I

    const-string v0, "radialSamples"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/shape/Dome;->_radialSamples:I

    const-string v0, "radius"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Dome;->_radius:D

    return-void
.end method

.method public setData(Lcom/ardor3d/math/Vector3;IIDZZ)V
    .locals 0

    iput p2, p0, Lcom/ardor3d/scenegraph/shape/Dome;->_planes:I

    iput p3, p0, Lcom/ardor3d/scenegraph/shape/Dome;->_radialSamples:I

    iput-wide p4, p0, Lcom/ardor3d/scenegraph/shape/Dome;->_radius:D

    if-eqz p6, :cond_0

    invoke-direct {p0, p7, p1}, Lcom/ardor3d/scenegraph/shape/Dome;->setGeometryData(ZLcom/ardor3d/math/Vector3;)V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Dome;->setIndexData()V

    :cond_0
    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Dome;->_planes:I

    const-string v1, "planes"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Dome;->_radialSamples:I

    const-string v1, "radialSamples"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-wide v4, p0, Lcom/ardor3d/scenegraph/shape/Dome;->_radius:D

    const-string v6, "radius"

    const-wide/16 v7, 0x0

    move-object v3, p1

    invoke-interface/range {v3 .. v8}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    return-void
.end method
