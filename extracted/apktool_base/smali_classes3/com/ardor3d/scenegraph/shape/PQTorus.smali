.class public Lcom/ardor3d/scenegraph/shape/PQTorus;
.super Lcom/ardor3d/scenegraph/Mesh;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _p:D

.field private _q:D

.field private _radialSamples:I

.field private _radius:D

.field private _steps:I

.field private _width:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDDDII)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 3
    iput-wide p2, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_p:D

    .line 4
    iput-wide p4, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_q:D

    .line 5
    iput-wide p6, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_radius:D

    .line 6
    iput-wide p8, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_width:D

    .line 7
    iput p10, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_steps:I

    .line 8
    iput p11, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_radialSamples:I

    .line 9
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/PQTorus;->setGeometryData()V

    .line 10
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/PQTorus;->setIndexData()V

    return-void
.end method

.method private setGeometryData()V
    .locals 36

    move-object/from16 v0, p0

    iget v1, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_steps:I

    int-to-double v2, v1

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    div-double v2, v4, v2

    iget v6, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_radialSamples:I

    int-to-double v7, v6

    div-double/2addr v4, v7

    new-array v7, v1, [Lcom/ardor3d/math/Vector3;

    mul-int/2addr v6, v1

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {v6}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {v6}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/ardor3d/scenegraph/MeshData;->setNormalBuffer(Ljava/nio/FloatBuffer;)V

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {v6}, Lcom/ardor3d/util/geom/BufferUtils;->createVector2Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8}, Lcom/ardor3d/scenegraph/MeshData;->setTextureBuffer(Ljava/nio/FloatBuffer;I)V

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v6

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v14

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v15

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v12

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v13

    const-wide/16 v16, 0x0

    move v10, v8

    move-wide/from16 v18, v16

    :goto_0
    iget v9, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_steps:I

    if-ge v10, v9, :cond_1

    add-double v18, v18, v2

    move-wide/from16 v20, v2

    int-to-double v2, v10

    int-to-double v8, v9

    div-double/2addr v2, v8

    iget-wide v8, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_q:D

    mul-double v8, v8, v18

    invoke-static {v8, v9}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v8

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    add-double v8, v8, v22

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    mul-double v8, v8, v24

    move-object/from16 v26, v12

    iget-wide v11, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_radius:D

    mul-double/2addr v8, v11

    iget-wide v11, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_p:D

    mul-double v11, v11, v18

    invoke-static {v11, v12}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v8

    move-object/from16 v28, v13

    move-object/from16 v27, v14

    iget-wide v13, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_radius:D

    mul-double v30, v11, v13

    iget-wide v11, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_p:D

    mul-double v11, v11, v18

    invoke-static {v11, v12}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v8

    iget-wide v13, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_radius:D

    mul-double v32, v11, v13

    iget-wide v11, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_q:D

    mul-double v11, v11, v18

    invoke-static {v11, v12}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v11

    mul-double/2addr v8, v11

    iget-wide v11, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_radius:D

    mul-double v34, v8, v11

    new-instance v8, Lcom/ardor3d/math/Vector3;

    move-object/from16 v29, v8

    invoke-direct/range {v29 .. v35}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    aput-object v8, v7, v10

    iget-wide v8, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_q:D

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    add-double v11, v18, v11

    mul-double/2addr v8, v11

    invoke-static {v8, v9}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v8

    add-double v8, v8, v22

    mul-double v8, v8, v24

    iget-wide v13, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_radius:D

    mul-double/2addr v8, v13

    iget-wide v13, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_p:D

    mul-double/2addr v13, v11

    invoke-static {v13, v14}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v8

    move-wide/from16 v22, v2

    iget-wide v2, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_radius:D

    mul-double/2addr v2, v13

    iget-wide v13, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_p:D

    mul-double/2addr v13, v11

    invoke-static {v13, v14}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v8

    move-wide/from16 v24, v4

    iget-wide v4, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_radius:D

    mul-double/2addr v4, v13

    iget-wide v13, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_q:D

    mul-double/2addr v13, v11

    invoke-static {v13, v14}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v11

    mul-double/2addr v8, v11

    iget-wide v11, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_radius:D

    mul-double v29, v8, v11

    move-object v9, v1

    move v8, v10

    move-wide v10, v2

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    move-wide v12, v4

    move-object v5, v15

    move-object/from16 v4, v27

    move-wide/from16 v14, v29

    invoke-virtual/range {v9 .. v15}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    aget-object v9, v7, v8

    invoke-virtual {v1, v9, v6}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    aget-object v9, v7, v8

    invoke-virtual {v9, v1, v4}, Lcom/ardor3d/math/Vector3;->add(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6, v4, v5}, Lcom/ardor3d/math/Vector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5, v6, v4}, Lcom/ardor3d/math/Vector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    move-wide/from16 v10, v16

    const/4 v9, 0x0

    :goto_1
    iget v12, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_radialSamples:I

    if-ge v9, v12, :cond_0

    add-double v10, v10, v24

    invoke-static {v10, v11}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v12

    iget-wide v14, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_width:D

    mul-double/2addr v12, v14

    invoke-static {v10, v11}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v14

    move-wide/from16 v26, v10

    iget-wide v10, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_width:D

    mul-double/2addr v14, v10

    int-to-double v10, v9

    move-object/from16 v28, v1

    iget v1, v0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_radialSamples:I

    int-to-double v0, v1

    div-double/2addr v10, v0

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    mul-double/2addr v0, v12

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v29

    mul-double v29, v29, v14

    add-double v0, v0, v29

    invoke-virtual {v2, v0, v1}, Lcom/ardor3d/math/Vector3;->setX(D)V

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v0

    mul-double/2addr v0, v12

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v29

    mul-double v29, v29, v14

    add-double v0, v0, v29

    invoke-virtual {v2, v0, v1}, Lcom/ardor3d/math/Vector3;->setY(D)V

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v0

    mul-double/2addr v12, v0

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v0

    mul-double/2addr v14, v0

    add-double/2addr v12, v14

    invoke-virtual {v2, v12, v13}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    invoke-virtual {v2, v3}, Lcom/ardor3d/math/Vector3;->normalize(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    aget-object v0, v7, v8

    invoke-virtual {v2, v0}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v12

    invoke-virtual {v1, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v12

    invoke-virtual {v1, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v12

    invoke-virtual {v1, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v12

    invoke-virtual {v1, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v12

    invoke-virtual {v1, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v12

    invoke-virtual {v1, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    double-to-float v10, v10

    invoke-virtual {v1, v10}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    move-wide/from16 v10, v22

    double-to-float v13, v10

    invoke-virtual {v1, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v10, v26

    move-object/from16 v1, v28

    goto/16 :goto_1

    :cond_0
    move-object/from16 v28, v1

    const/4 v12, 0x0

    add-int/lit8 v10, v8, 0x1

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move v8, v12

    move-wide/from16 v4, v24

    move-object v12, v2

    move-wide/from16 v2, v20

    goto/16 :goto_0

    :cond_1
    move-object/from16 v28, v1

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v3}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v6}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v4}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v5}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static/range {v28 .. v28}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method private setIndexData()V
    .locals 5

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/ardor3d/util/geom/BufferUtils;->createIndexBufferData(II)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    iget v1, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_radialSamples:I

    :goto_0
    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v2

    iget v3, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_radialSamples:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget v2, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_radialSamples:I

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget v3, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_radialSamples:I

    sub-int v3, v1, v3

    invoke-virtual {v0, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget v3, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_radialSamples:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBufferCapacity()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/IndexBufferData;->get(I)I

    move-result v3

    if-gez v3, :cond_1

    iget-object v4, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(II)Lcom/ardor3d/scenegraph/IndexBufferData;

    :cond_1
    iget-object v4, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v4

    if-lt v3, v4, :cond_2

    iget-object v4, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(II)Lcom/ardor3d/scenegraph/IndexBufferData;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1, v0}, Lcom/ardor3d/scenegraph/MeshData;->setIndices(Lcom/ardor3d/scenegraph/IndexBufferData;)V

    return-void
.end method


# virtual methods
.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "p"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_p:D

    const-string v0, "q"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_q:D

    const-string v0, "radius"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_radius:D

    const-string v0, "width"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_width:D

    const-string v0, "steps"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_steps:I

    const-string v0, "radialSamples"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_radialSamples:I

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_p:D

    const-string v3, "p"

    const-wide/16 v4, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v7, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_q:D

    const-string v9, "q"

    const-wide/16 v10, 0x0

    move-object v6, p1

    invoke-interface/range {v6 .. v11}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_radius:D

    const-string v3, "radius"

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v7, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_width:D

    const-string v9, "width"

    invoke-interface/range {v6 .. v11}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_steps:I

    const-string v1, "steps"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/PQTorus;->_radialSamples:I

    const-string v1, "radialSamples"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method
