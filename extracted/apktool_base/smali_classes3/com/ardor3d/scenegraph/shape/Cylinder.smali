.class public Lcom/ardor3d/scenegraph/shape/Cylinder;
.super Lcom/ardor3d/scenegraph/Mesh;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _axisSamples:I

.field private _closed:Z

.field private _height:D

.field private _inverted:Z

.field private _radialSamples:I

.field private _radius:D

.field private _radius2:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIDD)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    .line 2
    invoke-direct/range {v0 .. v8}, Lcom/ardor3d/scenegraph/shape/Cylinder;-><init>(Ljava/lang/String;IIDDZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIDDZ)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    .line 3
    invoke-direct/range {v0 .. v9}, Lcom/ardor3d/scenegraph/shape/Cylinder;-><init>(Ljava/lang/String;IIDDZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIDDZZ)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    if-eqz p8, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/2addr p2, p1

    .line 5
    iput p2, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_axisSamples:I

    .line 6
    iput p3, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_radialSamples:I

    .line 7
    invoke-virtual {p0, p4, p5}, Lcom/ardor3d/scenegraph/shape/Cylinder;->setRadius(D)V

    .line 8
    iput-wide p6, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_height:D

    .line 9
    iput-boolean p8, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_closed:Z

    .line 10
    iput-boolean p9, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_inverted:Z

    .line 11
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Cylinder;->allocateVertices()V

    return-void
.end method

.method private allocateVertices()V
    .locals 5

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_axisSamples:I

    iget v1, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_radialSamples:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_closed:Z

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ardor3d/scenegraph/MeshData;->setNormalBuffer(Ljava/nio/FloatBuffer;)V

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createVector2Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/ardor3d/scenegraph/MeshData;->setTextureBuffer(Ljava/nio/FloatBuffer;I)V

    iget-boolean v1, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_closed:Z

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    iget v1, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_axisSamples:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v3

    add-int/2addr v2, v1

    iget v1, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_radialSamples:I

    mul-int/2addr v2, v1

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBufferLimit()I

    move-result v1

    mul-int/lit8 v3, v2, 0x3

    if-eq v1, v3, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Lcom/ardor3d/util/geom/BufferUtils;->createIndexBufferData(II)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ardor3d/scenegraph/MeshData;->setIndices(Lcom/ardor3d/scenegraph/IndexBufferData;)V

    :cond_3
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Cylinder;->setGeometryData()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Cylinder;->setIndexData()V

    return-void
.end method

.method private setGeometryData()V
    .locals 33

    move-object/from16 v0, p0

    iget v1, v0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_radialSamples:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v2, v4, v2

    iget-boolean v6, v0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_closed:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    iget v6, v0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_axisSamples:I

    add-int/lit8 v6, v6, -0x3

    goto :goto_0

    :cond_0
    iget v6, v0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_axisSamples:I

    sub-int/2addr v6, v7

    :goto_0
    int-to-double v8, v6

    div-double v8, v4, v8

    iget v6, v0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_axisSamples:I

    sub-int/2addr v6, v7

    int-to-double v10, v6

    div-double v10, v4, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    iget-wide v14, v0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_height:D

    mul-double/2addr v14, v12

    add-int/lit8 v6, v1, 0x1

    new-array v6, v6, [D

    add-int/2addr v1, v7

    new-array v1, v1, [D

    const/4 v12, 0x0

    move v13, v12

    :goto_1
    iget v7, v0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_radialSamples:I

    if-ge v13, v7, :cond_1

    const-wide v16, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v16, v16, v2

    int-to-double v4, v13

    mul-double v16, v16, v4

    invoke-static/range {v16 .. v17}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v4

    aput-wide v4, v1, v13

    invoke-static/range {v16 .. v17}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v4

    aput-wide v4, v6, v13

    add-int/lit8 v13, v13, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_1
    aget-wide v4, v6, v12

    aput-wide v4, v6, v7

    aget-wide v4, v1, v12

    aput-wide v4, v1, v7

    new-instance v4, Lcom/ardor3d/math/Vector3;

    invoke-direct {v4}, Lcom/ardor3d/math/Vector3;-><init>()V

    move v5, v12

    move v7, v5

    :goto_2
    iget v13, v0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_axisSamples:I

    const/16 v17, -0x1

    if-ge v5, v13, :cond_b

    iget-boolean v12, v0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_closed:Z

    if-nez v12, :cond_2

    int-to-double v12, v5

    mul-double/2addr v12, v8

    move-wide/from16 v25, v8

    move-wide/from16 v28, v10

    move-wide v8, v12

    :goto_3
    const/16 v27, 0x0

    goto :goto_4

    :cond_2
    if-nez v5, :cond_3

    const-wide/16 v12, 0x0

    move-wide/from16 v25, v8

    move-wide v8, v10

    move-wide/from16 v28, v8

    move/from16 v27, v17

    goto :goto_4

    :cond_3
    add-int/lit8 v13, v13, -0x1

    if-ne v5, v13, :cond_4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v18, v12, v10

    move-wide/from16 v25, v8

    move-wide/from16 v28, v10

    move-wide/from16 v8, v18

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const/16 v27, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v12, v5, -0x1

    int-to-double v12, v12

    mul-double/2addr v12, v8

    move-wide/from16 v25, v8

    int-to-double v8, v5

    mul-double/2addr v8, v10

    move-wide/from16 v28, v10

    goto :goto_3

    :goto_4
    neg-double v10, v14

    move-wide/from16 v30, v14

    iget-wide v14, v0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_height:D

    mul-double/2addr v14, v12

    add-double v23, v10, v14

    new-instance v10, Lcom/ardor3d/math/Vector3;

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    move-object/from16 v18, v10

    invoke-direct/range {v18 .. v24}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    move v14, v7

    const/4 v11, 0x0

    :goto_5
    iget v15, v0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_radialSamples:I

    if-ge v11, v15, :cond_9

    move/from16 v32, v14

    int-to-double v14, v11

    mul-double/2addr v14, v2

    aget-wide v19, v1, v11

    aget-wide v21, v6, v11

    const-wide/16 v23, 0x0

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v24}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    if-nez v27, :cond_6

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_inverted:Z

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    move-wide/from16 v19, v2

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_7

    :cond_5
    move-wide/from16 v19, v2

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_7

    :cond_6
    move-object/from16 v18, v1

    move-wide/from16 v19, v2

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-boolean v2, v0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_inverted:Z

    if-eqz v2, :cond_7

    move/from16 v2, v17

    goto :goto_6

    :cond_7
    const/4 v2, 0x1

    :goto_6
    mul-int v2, v2, v27

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_7
    iget-wide v1, v0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_radius:D

    move/from16 v21, v5

    move-object v3, v6

    iget-wide v5, v0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_radius2:D

    sub-double/2addr v1, v5

    mul-double/2addr v1, v12

    add-double/2addr v1, v5

    invoke-virtual {v4, v1, v2}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    iget-boolean v2, v0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_inverted:Z

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-eqz v2, :cond_8

    sub-double v14, v5, v14

    :cond_8
    double-to-float v2, v14

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    double-to-float v2, v8

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v14, v32, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object v6, v3

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    move/from16 v5, v21

    goto/16 :goto_5

    :cond_9
    move-object/from16 v18, v1

    move-wide/from16 v19, v2

    move/from16 v21, v5

    move-object v3, v6

    move/from16 v32, v14

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v1, v7, v14}, Lcom/ardor3d/util/geom/BufferUtils;->copyInternalVector3(Ljava/nio/FloatBuffer;II)V

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v1, v7, v14}, Lcom/ardor3d/util/geom/BufferUtils;->copyInternalVector3(Ljava/nio/FloatBuffer;II)V

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    iget-boolean v2, v0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_inverted:Z

    if-eqz v2, :cond_a

    const/4 v12, 0x0

    goto :goto_8

    :cond_a
    const/high16 v12, 0x3f800000    # 1.0f

    :goto_8
    invoke-virtual {v1, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    double-to-float v2, v8

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v7, v14, 0x1

    add-int/lit8 v1, v21, 0x1

    move v5, v1

    move-object v6, v3

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    move-wide/from16 v8, v25

    move-wide/from16 v10, v28

    move-wide/from16 v14, v30

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_b
    move-wide/from16 v30, v14

    iget-boolean v1, v0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_closed:Z

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    move-wide/from16 v14, v30

    neg-double v3, v14

    double-to-float v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-boolean v2, v0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_inverted:Z

    if-eqz v2, :cond_c

    move/from16 v2, v17

    goto :goto_9

    :cond_c
    const/4 v2, 0x1

    :goto_9
    mul-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    double-to-float v4, v14

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-boolean v3, v0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_inverted:Z

    if-eqz v3, :cond_d

    move/from16 v7, v17

    goto :goto_a

    :cond_d
    const/4 v7, 0x1

    :goto_a
    int-to-float v3, v7

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :cond_e
    return-void
.end method

.method private setIndexData()V
    .locals 10

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndexBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_axisSamples:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_6

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_radialSamples:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v2

    add-int/lit8 v5, v4, 0x1

    move v6, v0

    move v7, v4

    :goto_1
    iget v8, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_radialSamples:I

    if-ge v6, v8, :cond_5

    iget-boolean v8, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_closed:Z

    if-eqz v8, :cond_1

    if-nez v1, :cond_1

    iget-boolean v8, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_inverted:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v8}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v2}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    iget-object v8, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v8}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v2, v8}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    :goto_2
    move v3, v8

    move v2, v9

    goto/16 :goto_5

    :cond_0
    iget-object v8, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v8}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v2}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    goto :goto_2

    :cond_1
    if-eqz v8, :cond_3

    iget v8, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_axisSamples:I

    add-int/lit8 v8, v8, -0x2

    if-ne v1, v8, :cond_3

    iget-boolean v8, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_inverted:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v8}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v8, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v7, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v7}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v5}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v5, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v5

    iget-object v7, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v7}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    :goto_3
    move v5, v8

    move v7, v9

    goto/16 :goto_5

    :cond_2
    iget-object v8, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v8}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v8, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v7, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v7}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v7

    iget-object v8, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v8}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v7, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v7}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v5}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    goto :goto_3

    :cond_3
    iget-boolean v8, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_inverted:Z

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v8}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v2}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v2, v5}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v2, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move v7, v5

    move v2, v9

    move v5, v3

    :goto_4
    move v3, v8

    goto :goto_5

    :cond_4
    iget-object v8, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v8}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v2}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v2, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v2, v5}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move v5, v7

    move v2, v9

    move v7, v3

    goto :goto_4

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public getAxisSamples()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_axisSamples:I

    return v0
.end method

.method public getHeight()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_height:D

    return-wide v0
.end method

.method public getRadialSamples()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_radialSamples:I

    return v0
.end method

.method public getRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_radius:D

    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_closed:Z

    return v0
.end method

.method public isInverted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_inverted:Z

    return v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "axisSamples"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_axisSamples:I

    const-string v0, "radialSamples"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_radialSamples:I

    const-string v0, "radius"

    const-wide/16 v2, 0x0

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_radius:D

    const-string v0, "radius2"

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_radius2:D

    const-string v0, "height"

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_height:D

    const-string v0, "closed"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_closed:Z

    const-string v0, "inverted"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_inverted:Z

    return-void
.end method

.method public setHeight(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_height:D

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Cylinder;->allocateVertices()V

    return-void
.end method

.method public setRadius(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_radius:D

    iput-wide p1, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_radius2:D

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Cylinder;->allocateVertices()V

    return-void
.end method

.method public setRadius1(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_radius:D

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Cylinder;->allocateVertices()V

    return-void
.end method

.method public setRadius2(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_radius2:D

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Cylinder;->allocateVertices()V

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_axisSamples:I

    const-string v1, "axisSamples"

    const/4 v6, 0x0

    invoke-interface {p1, v0, v1, v6}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_radialSamples:I

    const-string v1, "radialSamples"

    invoke-interface {p1, v0, v1, v6}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_radius:D

    const-string v3, "radius"

    const-wide/16 v4, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_radius2:D

    const-string v3, "radius2"

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_height:D

    const-string v3, "height"

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_closed:Z

    const-string v1, "closed"

    invoke-interface {p1, v0, v1, v6}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/shape/Cylinder;->_inverted:Z

    const-string v1, "inverted"

    invoke-interface {p1, v0, v1, v6}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
