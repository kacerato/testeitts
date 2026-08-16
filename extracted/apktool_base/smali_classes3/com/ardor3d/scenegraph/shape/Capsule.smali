.class public Lcom/ardor3d/scenegraph/shape/Capsule;
.super Lcom/ardor3d/scenegraph/Mesh;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private axisSamples:I

.field private height:D

.field private radialSamples:I

.field private radius:D

.field private sphereSamples:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIDD)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 3
    iput p2, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->axisSamples:I

    .line 4
    iput p4, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->sphereSamples:I

    .line 5
    iput p3, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radialSamples:I

    .line 6
    iput-wide p5, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radius:D

    .line 7
    iput-wide p7, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->height:D

    .line 8
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Capsule;->recreateBuffers()V

    return-void
.end method

.method private recreateBuffers()V
    .locals 5

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->sphereSamples:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->axisSamples:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radialSamples:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v0

    add-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ardor3d/scenegraph/MeshData;->setNormalBuffer(Ljava/nio/FloatBuffer;)V

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {v2}, Lcom/ardor3d/util/geom/BufferUtils;->createVector2Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/ardor3d/scenegraph/MeshData;->setTextureBuffer(Ljava/nio/FloatBuffer;I)V

    iget v2, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radialSamples:I

    mul-int/lit8 v2, v2, 0x2

    mul-int/2addr v2, v0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBufferLimit()I

    move-result v0

    mul-int/lit8 v3, v2, 0x3

    if-eq v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1}, Lcom/ardor3d/util/geom/BufferUtils;->createIndexBufferData(II)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->setIndices(Lcom/ardor3d/scenegraph/IndexBufferData;)V

    :cond_1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Capsule;->setGeometryData()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Capsule;->setIndexData()V

    return-void
.end method

.method private setGeometryData()V
    .locals 34

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ardor3d/scenegraph/MeshData;->getTextureBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    iget v5, v0, Lcom/ardor3d/scenegraph/shape/Capsule;->radialSamples:I

    int-to-double v6, v5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v6, v8, v6

    iget v10, v0, Lcom/ardor3d/scenegraph/shape/Capsule;->sphereSamples:I

    int-to-double v10, v10

    div-double v10, v8, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    iget-wide v14, v0, Lcom/ardor3d/scenegraph/shape/Capsule;->height:D

    mul-double/2addr v14, v12

    add-int/lit8 v12, v5, 0x1

    new-array v12, v12, [D

    const/4 v13, 0x1

    add-int/2addr v5, v13

    new-array v5, v5, [D

    move v13, v4

    :goto_0
    iget v8, v0, Lcom/ardor3d/scenegraph/shape/Capsule;->radialSamples:I

    if-ge v13, v8, :cond_0

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v8, v6

    move-object/from16 v18, v5

    int-to-double v4, v13

    mul-double/2addr v8, v4

    invoke-static {v8, v9}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v4

    aput-wide v4, v18, v13

    invoke-static {v8, v9}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v4

    aput-wide v4, v12, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, v18

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v18, v5

    aget-wide v19, v12, v4

    aput-wide v19, v12, v8

    aget-wide v19, v18, v4

    aput-wide v19, v18, v8

    new-instance v5, Lcom/ardor3d/math/Vector3;

    invoke-direct {v5}, Lcom/ardor3d/math/Vector3;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v9

    move-object v13, v5

    iget-wide v4, v0, Lcom/ardor3d/scenegraph/shape/Capsule;->radius:D

    add-double/2addr v4, v14

    double-to-float v4, v4

    invoke-virtual {v9, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    :goto_1
    iget v5, v0, Lcom/ardor3d/scenegraph/shape/Capsule;->sphereSamples:I

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    if-ge v4, v5, :cond_2

    iget-wide v8, v0, Lcom/ardor3d/scenegraph/shape/Capsule;->radius:D

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v28, v6

    int-to-double v5, v4

    mul-double/2addr v5, v10

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v5, v16, v5

    mul-double/2addr v5, v8

    move-wide/from16 v30, v10

    iget-wide v10, v0, Lcom/ardor3d/scenegraph/shape/Capsule;->height:D

    add-double v21, v5, v10

    add-double v21, v21, v8

    mul-double v19, v19, v8

    add-double v10, v10, v19

    div-double v10, v21, v10

    mul-double/2addr v8, v8

    mul-double v19, v5, v5

    sub-double v8, v8, v19

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    move/from16 v32, v4

    const/4 v7, 0x0

    :goto_2
    iget v4, v0, Lcom/ardor3d/scenegraph/shape/Capsule;->radialSamples:I

    if-gt v7, v4, :cond_1

    aget-wide v22, v18, v7

    const-wide/16 v24, 0x0

    aget-wide v26, v12, v7

    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v27}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    move-wide/from16 v19, v8

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v8

    invoke-virtual {v1, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v8

    move-object v9, v12

    move-object/from16 v33, v13

    add-double v12, v5, v14

    double-to-float v12, v12

    invoke-virtual {v8, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v12

    invoke-virtual {v8, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v5, v6}, Lcom/ardor3d/math/Vector3;->setY(D)V

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v8

    invoke-virtual {v2, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v12

    invoke-virtual {v8, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v4

    invoke-virtual {v8, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    int-to-double v12, v7

    mul-double v12, v12, v28

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v12, v16, v12

    double-to-float v4, v12

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    double-to-float v8, v10

    invoke-virtual {v4, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v7, v7, 0x1

    move-object v12, v9

    move-wide/from16 v8, v19

    move-object/from16 v13, v33

    goto :goto_2

    :cond_1
    move-wide/from16 v6, v28

    move-wide/from16 v10, v30

    move/from16 v4, v32

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_2
    move-wide/from16 v28, v6

    move-object v9, v12

    move-object/from16 v33, v13

    const/4 v13, 0x1

    :goto_3
    iget v4, v0, Lcom/ardor3d/scenegraph/shape/Capsule;->axisSamples:I

    if-ge v13, v4, :cond_4

    int-to-double v5, v13

    iget-wide v7, v0, Lcom/ardor3d/scenegraph/shape/Capsule;->height:D

    mul-double/2addr v5, v7

    int-to-double v10, v4

    div-double/2addr v5, v10

    sub-double v4, v14, v5

    add-double v10, v4, v14

    move-wide/from16 v30, v14

    iget-wide v14, v0, Lcom/ardor3d/scenegraph/shape/Capsule;->radius:D

    add-double/2addr v10, v14

    mul-double v14, v14, v19

    add-double/2addr v7, v14

    div-double/2addr v10, v7

    const/4 v6, 0x0

    :goto_4
    iget v7, v0, Lcom/ardor3d/scenegraph/shape/Capsule;->radialSamples:I

    if-gt v6, v7, :cond_3

    aget-wide v22, v18, v6

    const-wide/16 v24, 0x0

    aget-wide v26, v9, v6

    move-object/from16 v21, v33

    invoke-virtual/range {v21 .. v27}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    move-result-object v7

    iget-wide v14, v0, Lcom/ardor3d/scenegraph/shape/Capsule;->radius:D

    invoke-virtual {v7, v14, v15}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v8

    invoke-virtual {v1, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v8

    double-to-float v12, v4

    invoke-virtual {v8, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v12

    invoke-virtual {v8, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v8

    invoke-virtual {v2, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v12

    invoke-virtual {v8, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v7

    invoke-virtual {v8, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    int-to-double v7, v6

    mul-double v7, v7, v28

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v7, v14, v7

    double-to-float v7, v7

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v7

    double-to-float v8, v10

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v14, v30

    goto :goto_3

    :cond_4
    move-wide/from16 v30, v14

    const/4 v4, 0x0

    :goto_5
    iget v5, v0, Lcom/ardor3d/scenegraph/shape/Capsule;->sphereSamples:I

    if-ge v4, v5, :cond_6

    int-to-double v6, v4

    iget-wide v10, v0, Lcom/ardor3d/scenegraph/shape/Capsule;->radius:D

    int-to-double v12, v5

    div-double v12, v10, v12

    mul-double/2addr v6, v12

    sub-double v12, v10, v6

    iget-wide v14, v0, Lcom/ardor3d/scenegraph/shape/Capsule;->height:D

    mul-double v21, v10, v19

    add-double v14, v14, v21

    div-double/2addr v12, v14

    mul-double/2addr v10, v10

    mul-double v14, v6, v6

    sub-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    const/4 v5, 0x0

    :goto_6
    iget v8, v0, Lcom/ardor3d/scenegraph/shape/Capsule;->radialSamples:I

    if-gt v5, v8, :cond_5

    aget-wide v22, v18, v5

    const-wide/16 v24, 0x0

    aget-wide v26, v9, v5

    move-object/from16 v21, v33

    invoke-virtual/range {v21 .. v27}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v14

    invoke-virtual {v1, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v14

    move-object v15, v9

    move-wide/from16 v21, v10

    neg-double v9, v6

    move-wide/from16 v23, v6

    sub-double v6, v9, v30

    double-to-float v6, v6

    invoke-virtual {v14, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v9, v10}, Lcom/ardor3d/math/Vector3;->setY(D)V

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    int-to-double v6, v5

    mul-double v6, v6, v28

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v6, v8, v6

    double-to-float v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    double-to-float v7, v12

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v5, 0x1

    move-object v9, v15

    move-wide/from16 v10, v21

    move-wide/from16 v6, v23

    goto :goto_6

    :cond_5
    move-object v15, v9

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v4, v4, 0x1

    move-object v9, v15

    goto/16 :goto_5

    :cond_6
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-wide v5, v0, Lcom/ardor3d/scenegraph/shape/Capsule;->radius:D

    neg-double v5, v5

    sub-double v5, v5, v30

    double-to-float v5, v5

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    return-void
.end method

.method private setIndexData()V
    .locals 9

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndexBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radialSamples:I

    const/4 v3, 0x0

    if-gt v1, v2, :cond_0

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget v2, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->sphereSamples:I

    if-ge v1, v2, :cond_2

    iget v2, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radialSamples:I

    add-int/lit8 v4, v2, 0x1

    mul-int/2addr v4, v1

    add-int/lit8 v5, v1, -0x1

    add-int/2addr v2, v0

    mul-int/2addr v5, v2

    move v2, v0

    :goto_2
    iget v6, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radialSamples:I

    if-gt v2, v6, :cond_1

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    add-int v7, v5, v2

    invoke-virtual {v6, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    add-int/2addr v7, v0

    invoke-virtual {v6, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    add-int v8, v4, v2

    invoke-virtual {v6, v8}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v6, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radialSamples:I

    add-int/2addr v1, v0

    mul-int/2addr v2, v1

    :goto_3
    iget v1, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->axisSamples:I

    if-ge v3, v1, :cond_4

    iget v1, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radialSamples:I

    add-int/lit8 v4, v1, 0x1

    mul-int/2addr v4, v3

    add-int/2addr v4, v2

    add-int/lit8 v5, v3, -0x1

    add-int/2addr v1, v0

    mul-int/2addr v5, v1

    add-int/2addr v5, v2

    move v1, v0

    :goto_4
    iget v6, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radialSamples:I

    if-gt v1, v6, :cond_3

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    add-int v7, v5, v1

    invoke-virtual {v6, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    add-int/2addr v7, v0

    invoke-virtual {v6, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    add-int v8, v4, v1

    invoke-virtual {v6, v8}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v6, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    sub-int/2addr v1, v0

    iget v3, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radialSamples:I

    add-int/2addr v3, v0

    mul-int/2addr v1, v3

    add-int/2addr v2, v1

    move v1, v0

    :goto_5
    iget v3, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->sphereSamples:I

    if-ge v1, v3, :cond_6

    iget v3, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radialSamples:I

    add-int/lit8 v4, v3, 0x1

    mul-int/2addr v4, v1

    add-int/2addr v4, v2

    add-int/lit8 v5, v1, -0x1

    add-int/2addr v3, v0

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    move v3, v0

    :goto_6
    iget v6, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radialSamples:I

    if-gt v3, v6, :cond_5

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    add-int v7, v5, v3

    invoke-virtual {v6, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    add-int/2addr v7, v0

    invoke-virtual {v6, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    add-int v8, v4, v3

    invoke-virtual {v6, v8}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v6, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    sub-int/2addr v3, v0

    iget v1, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radialSamples:I

    add-int/2addr v1, v0

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    move v1, v0

    :goto_7
    iget v3, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radialSamples:I

    if-gt v1, v3, :cond_7

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v3

    add-int v4, v2, v1

    invoke-virtual {v3, v4}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v3

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v3

    iget v4, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radialSamples:I

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    return-void
.end method


# virtual methods
.method public getHeight()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->height:D

    return-wide v0
.end method

.method public getRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radius:D

    return-wide v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "circleSamples"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->axisSamples:I

    const-string v0, "radialSamples"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radialSamples:I

    const-string v0, "sphereSamples"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->sphereSamples:I

    const-string v0, "radius"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radius:D

    const-string v0, "height"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->height:D

    return-void
.end method

.method public reconstruct(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;D)V
    .locals 4

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {p1, p2}, Lcom/ardor3d/math/Vector3;->distance(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->height:D

    iput-wide p3, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radius:D

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Capsule;->setGeometryData()V

    iget-object p3, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {p3}, Lcom/ardor3d/math/Transform;->getTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, p2, v0}, Lcom/ardor3d/math/Vector3;->add(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p2

    const-wide/high16 p3, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p2, p3, p4}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    invoke-static {}, Lcom/ardor3d/math/Matrix3;->fetchTempInstance()Lcom/ardor3d/math/Matrix3;

    move-result-object p1

    sget-object p2, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-virtual {p1, p2, v1}, Lcom/ardor3d/math/Matrix3;->fromStartEndLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Matrix3;

    iget-object p2, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {p2, p1}, Lcom/ardor3d/math/Transform;->setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {p1}, Lcom/ardor3d/math/Matrix3;->releaseTempInstance(Lcom/ardor3d/math/Matrix3;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->updateWorldTransform(Z)V

    return-void
.end method

.method public setHeight(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->height:D

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Capsule;->recreateBuffers()V

    return-void
.end method

.method public setRadius(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radius:D

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Capsule;->setGeometryData()V

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->axisSamples:I

    const-string v1, "axisSamples"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radialSamples:I

    const-string v1, "radialSamples"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->sphereSamples:I

    const-string v1, "sphereSamples"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->radius:D

    const-string v3, "radius"

    const-wide/16 v4, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/shape/Capsule;->height:D

    const-string v3, "height"

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    return-void
.end method
