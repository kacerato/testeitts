.class public Lcom/ardor3d/scenegraph/shape/Torus;
.super Lcom/ardor3d/scenegraph/Mesh;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _centerRadius:D

.field protected _circleSamples:I

.field protected _radialSamples:I

.field protected _tubeRadius:D

.field protected _viewInside:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIDD)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 3
    iput p2, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_circleSamples:I

    .line 4
    iput p3, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_radialSamples:I

    .line 5
    iput-wide p4, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_tubeRadius:D

    .line 6
    iput-wide p6, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_centerRadius:D

    .line 7
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Torus;->setGeometryData()V

    .line 8
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Torus;->setIndexData()V

    return-void
.end method

.method private setGeometryData()V
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lcom/ardor3d/scenegraph/shape/Torus;->_circleSamples:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, Lcom/ardor3d/scenegraph/shape/Torus;->_radialSamples:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    iget-object v2, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    iget-object v2, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/MeshData;->setNormalBuffer(Ljava/nio/FloatBuffer;)V

    iget-object v2, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createVector2Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/ardor3d/scenegraph/MeshData;->setTextureBuffer(Ljava/nio/FloatBuffer;I)V

    iget v1, v0, Lcom/ardor3d/scenegraph/shape/Torus;->_circleSamples:I

    int-to-double v1, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v1, v4, v1

    iget v6, v0, Lcom/ardor3d/scenegraph/shape/Torus;->_radialSamples:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    new-instance v13, Lcom/ardor3d/math/Vector3;

    invoke-direct {v13}, Lcom/ardor3d/math/Vector3;-><init>()V

    new-instance v14, Lcom/ardor3d/math/Vector3;

    invoke-direct {v14}, Lcom/ardor3d/math/Vector3;-><init>()V

    new-instance v15, Lcom/ardor3d/math/Vector3;

    invoke-direct {v15}, Lcom/ardor3d/math/Vector3;-><init>()V

    move v11, v3

    move v12, v11

    :goto_0
    iget v6, v0, Lcom/ardor3d/scenegraph/shape/Torus;->_circleSamples:I

    const/high16 v9, 0x3f800000    # 1.0f

    if-ge v11, v6, :cond_2

    int-to-double v6, v11

    mul-double v7, v6, v1

    const-wide v16, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v18, v7, v16

    invoke-static/range {v18 .. v19}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v20

    invoke-static/range {v18 .. v19}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v18

    const-wide/16 v22, 0x0

    move-object v6, v13

    move-wide/from16 v24, v7

    move-wide/from16 v7, v20

    move-wide/from16 v9, v18

    move/from16 v18, v11

    move/from16 v26, v12

    move-wide/from16 v11, v22

    invoke-virtual/range {v6 .. v12}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    iget-wide v6, v0, Lcom/ardor3d/scenegraph/shape/Torus;->_centerRadius:D

    invoke-virtual {v13, v6, v7, v14}, Lcom/ardor3d/math/Vector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move v6, v3

    move/from16 v12, v26

    :goto_1
    iget v7, v0, Lcom/ardor3d/scenegraph/shape/Torus;->_radialSamples:I

    if-ge v6, v7, :cond_1

    int-to-double v7, v6

    mul-double/2addr v7, v4

    mul-double v9, v7, v16

    move-wide/from16 v19, v4

    invoke-static {v9, v10}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v3

    invoke-static {v9, v10}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v9

    invoke-virtual {v15, v13}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    add-double/2addr v3, v9

    invoke-virtual {v15, v3, v4}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    iget-boolean v3, v0, Lcom/ardor3d/scenegraph/shape/Torus;->_viewInside:Z

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_2

    :cond_0
    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    neg-double v4, v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    neg-double v4, v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v4

    neg-double v4, v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_2
    iget-wide v3, v0, Lcom/ardor3d/scenegraph/shape/Torus;->_tubeRadius:D

    invoke-virtual {v15, v3, v4}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/FloatBuffer;

    double-to-float v4, v7

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    move-wide/from16 v4, v24

    double-to-float v7, v4

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v4, v19

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_1
    move-wide/from16 v19, v4

    move-wide/from16 v4, v24

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    move/from16 v6, v26

    invoke-static {v3, v6, v12}, Lcom/ardor3d/util/geom/BufferUtils;->copyInternalVector3(Ljava/nio/FloatBuffer;II)V

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static {v3, v6, v12}, Lcom/ardor3d/util/geom/BufferUtils;->copyInternalVector3(Ljava/nio/FloatBuffer;II)V

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/FloatBuffer;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v3, v18, 0x1

    move v11, v3

    move-wide/from16 v4, v19

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_2
    move v7, v9

    move v6, v12

    const/4 v4, 0x0

    :goto_3
    iget v1, v0, Lcom/ardor3d/scenegraph/shape/Torus;->_radialSamples:I

    if-gt v4, v1, :cond_3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v1, v4, v12}, Lcom/ardor3d/util/geom/BufferUtils;->copyInternalVector3(Ljava/nio/FloatBuffer;II)V

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v1, v4, v12}, Lcom/ardor3d/util/geom/BufferUtils;->copyInternalVector3(Ljava/nio/FloatBuffer;II)V

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-static {v1, v4, v12}, Lcom/ardor3d/util/geom/BufferUtils;->copyInternalVector2(Ljava/nio/FloatBuffer;II)V

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    mul-int/lit8 v3, v12, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private setIndexData()V
    .locals 10

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_circleSamples:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_radialSamples:I

    add-int/lit8 v3, v2, 0x1

    mul-int/2addr v1, v3

    mul-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/ardor3d/util/geom/BufferUtils;->createIndexBufferData(II)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ardor3d/scenegraph/MeshData;->setIndices(Lcom/ardor3d/scenegraph/IndexBufferData;)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_circleSamples:I

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_radialSamples:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v2

    add-int/lit8 v5, v4, 0x1

    move v6, v0

    move v7, v4

    :goto_1
    iget v8, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_radialSamples:I

    if-ge v6, v8, :cond_1

    iget-boolean v8, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_viewInside:Z

    if-nez v8, :cond_0

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

    :goto_2
    move v3, v8

    goto :goto_3

    :cond_0
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

    goto :goto_2

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto/16 :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public isViewFromInside()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_viewInside:Z

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

    const-string v0, "circleSamples"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_circleSamples:I

    const-string v0, "radialSamples"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_radialSamples:I

    const-string v0, "tubeRadius"

    const-wide/16 v2, 0x0

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_tubeRadius:D

    const-string v0, "centerRadius"

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_centerRadius:D

    const-string v0, "viewInside"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_viewInside:Z

    return-void
.end method

.method public setViewFromInside(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_viewInside:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_viewInside:Z

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Torus;->setGeometryData()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Torus;->setIndexData()V

    :cond_0
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

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_circleSamples:I

    const-string v1, "circleSamples"

    const/4 v6, 0x0

    invoke-interface {p1, v0, v1, v6}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_radialSamples:I

    const-string v1, "radialSamples"

    invoke-interface {p1, v0, v1, v6}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_tubeRadius:D

    const-string v3, "tubeRadius"

    const-wide/16 v4, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_centerRadius:D

    const-string v3, "centerRadius"

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/shape/Torus;->_viewInside:Z

    const-string v1, "viewInside"

    invoke-interface {p1, v0, v1, v6}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
