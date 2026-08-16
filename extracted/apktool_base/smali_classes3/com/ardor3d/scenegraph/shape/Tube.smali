.class public Lcom/ardor3d/scenegraph/shape/Tube;
.super Lcom/ardor3d/scenegraph/Mesh;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _axisSamples:I

.field private _height:D

.field private _innerRadius:D

.field private _outerRadius:D

.field private _radialSamples:I

.field protected _viewInside:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDD)V
    .locals 10

    const/4 v8, 0x2

    const/16 v9, 0x14

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    .line 9
    invoke-direct/range {v0 .. v9}, Lcom/ardor3d/scenegraph/shape/Tube;-><init>(Ljava/lang/String;DDDII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDDII)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 3
    iput-wide p2, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_outerRadius:D

    .line 4
    iput-wide p4, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_innerRadius:D

    .line 5
    iput-wide p6, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_height:D

    .line 6
    iput p8, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_axisSamples:I

    .line 7
    iput p9, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    .line 8
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Tube;->allocateVertices()V

    return-void
.end method

.method private allocateVertices()V
    .locals 4

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_axisSamples:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    add-int/lit8 v2, v1, 0x1

    mul-int/2addr v0, v2

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/MeshData;->setNormalBuffer(Ljava/nio/FloatBuffer;)V

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/MeshData;->getTextureBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/ardor3d/util/geom/BufferUtils;->createVector2Buffer(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/ardor3d/scenegraph/MeshData;->setTextureBuffer(Ljava/nio/FloatBuffer;I)V

    iget v1, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    mul-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_axisSamples:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBufferLimit()I

    move-result v2

    mul-int/lit8 v3, v1, 0x3

    if-eq v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Lcom/ardor3d/util/geom/BufferUtils;->createIndexBufferData(II)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ardor3d/scenegraph/MeshData;->setIndices(Lcom/ardor3d/scenegraph/IndexBufferData;)V

    :cond_1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Tube;->setGeometryData()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Tube;->setIndexData()V

    return-void
.end method

.method public static getSerialVersionUID()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method private setGeometryData()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    iget v1, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    int-to-double v3, v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double v3, v5, v3

    iget-wide v7, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_height:D

    iget v9, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_axisSamples:I

    int-to-double v10, v9

    div-double v10, v7, v10

    int-to-double v12, v9

    div-double/2addr v5, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v7, v12

    iget-wide v14, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_innerRadius:D

    iget-wide v12, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_outerRadius:D

    div-double/2addr v14, v12

    new-array v9, v1, [D

    new-array v1, v1, [D

    move v12, v2

    :goto_0
    iget v13, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    if-ge v12, v13, :cond_0

    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v18, v18, v3

    move-wide/from16 v20, v3

    int-to-double v2, v12

    mul-double v18, v18, v2

    invoke-static/range {v18 .. v19}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v2

    aput-wide v2, v1, v12

    invoke-static/range {v18 .. v19}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v2

    aput-wide v2, v9, v12

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v3, v20

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-wide/from16 v20, v3

    const/4 v2, 0x0

    :goto_1
    iget v3, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    iget v12, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_axisSamples:I

    add-int/lit8 v12, v12, 0x1

    if-ge v3, v12, :cond_2

    iget-object v12, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v12}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v12

    iget v13, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    rem-int v13, v2, v13

    aget-wide v22, v1, v13

    move-wide/from16 v24, v5

    iget-wide v4, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_outerRadius:D

    mul-double v4, v4, v22

    double-to-float v4, v4

    invoke-virtual {v12, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    int-to-double v12, v3

    mul-double v22, v10, v12

    sub-double v5, v22, v7

    double-to-float v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v5, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    rem-int v5, v2, v5

    aget-wide v5, v9, v5

    move-wide/from16 v22, v12

    iget-wide v12, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_outerRadius:D

    mul-double/2addr v5, v12

    double-to-float v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-boolean v4, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_viewInside:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v5, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    rem-int v5, v2, v5

    aget-wide v5, v1, v5

    double-to-float v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v5, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    rem-int v5, v2, v5

    aget-wide v12, v9, v5

    double-to-float v5, v12

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_3

    :cond_1
    iget-object v4, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v5, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    rem-int v5, v2, v5

    aget-wide v12, v1, v5

    neg-double v12, v12

    double-to-float v5, v12

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v5, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    rem-int v5, v2, v5

    aget-wide v12, v9, v5

    neg-double v12, v12

    double-to-float v5, v12

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_3
    iget-object v4, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v4

    move-wide/from16 v18, v22

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/FloatBuffer;

    move-wide/from16 v22, v14

    int-to-double v13, v2

    mul-double v13, v13, v20

    double-to-float v12, v13

    invoke-virtual {v4, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    mul-double v12, v24, v18

    double-to-float v12, v12

    invoke-virtual {v4, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v14, v22

    move-wide/from16 v5, v24

    goto/16 :goto_2

    :cond_2
    move-wide/from16 v24, v5

    move-wide/from16 v22, v14

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    move-wide/from16 v24, v5

    move-wide/from16 v22, v14

    const/4 v2, 0x0

    :goto_4
    iget v3, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_6

    const/4 v3, 0x0

    :goto_5
    iget v4, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_axisSamples:I

    add-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_5

    iget-object v4, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v12, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    rem-int v12, v2, v12

    aget-wide v12, v1, v12

    iget-wide v14, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_innerRadius:D

    mul-double/2addr v12, v14

    double-to-float v12, v12

    invoke-virtual {v4, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    int-to-double v14, v3

    mul-double v12, v10, v14

    sub-double/2addr v12, v7

    double-to-float v12, v12

    invoke-virtual {v4, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v12, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    rem-int v12, v2, v12

    aget-wide v12, v9, v12

    iget-wide v5, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_innerRadius:D

    mul-double/2addr v12, v5

    double-to-float v5, v12

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-boolean v4, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_viewInside:Z

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v5, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    rem-int v5, v2, v5

    aget-wide v5, v1, v5

    neg-double v5, v5

    double-to-float v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v5, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    rem-int v5, v2, v5

    aget-wide v12, v9, v5

    neg-double v12, v12

    double-to-float v5, v12

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_6

    :cond_4
    iget-object v4, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v5, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    rem-int v5, v2, v5

    aget-wide v12, v1, v5

    double-to-float v5, v12

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v5, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    rem-int v5, v2, v5

    aget-wide v12, v9, v5

    double-to-float v5, v12

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_6
    iget-object v4, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/FloatBuffer;

    move-wide/from16 v18, v7

    int-to-double v6, v2

    mul-double v6, v6, v20

    double-to-float v6, v6

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    mul-double v6, v24, v14

    double-to-float v6, v6

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v7, v18

    goto/16 :goto_5

    :cond_5
    move-wide/from16 v18, v7

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_6
    move-wide/from16 v18, v7

    const/4 v2, 0x0

    :goto_7
    iget v3, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    const/high16 v7, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_8

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    aget-wide v10, v1, v2

    iget-wide v14, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_outerRadius:D

    mul-double/2addr v10, v14

    double-to-float v6, v10

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    move-wide/from16 v10, v18

    neg-double v14, v10

    double-to-float v6, v14

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    aget-wide v14, v9, v2

    iget-wide v4, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_outerRadius:D

    mul-double/2addr v14, v4

    double-to-float v4, v14

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    aget-wide v4, v1, v2

    iget-wide v14, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_innerRadius:D

    mul-double/2addr v4, v14

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    aget-wide v4, v9, v2

    iget-wide v14, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_innerRadius:D

    mul-double/2addr v4, v14

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-boolean v3, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_viewInside:Z

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_8

    :cond_7
    const/4 v4, 0x0

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_8
    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/FloatBuffer;

    aget-wide v4, v1, v2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v7

    add-double/2addr v4, v7

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    aget-wide v4, v9, v2

    mul-double/2addr v4, v7

    add-double/2addr v4, v7

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/FloatBuffer;

    mul-double v14, v22, v7

    aget-wide v4, v1, v2

    mul-double/2addr v4, v14

    add-double/2addr v4, v7

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    aget-wide v4, v9, v2

    mul-double/2addr v14, v4

    add-double/2addr v14, v7

    double-to-float v4, v14

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v18, v10

    goto/16 :goto_7

    :cond_8
    move-wide/from16 v10, v18

    const/4 v2, 0x0

    :goto_9
    iget v3, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    if-ge v2, v3, :cond_a

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    aget-wide v4, v1, v2

    iget-wide v14, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_outerRadius:D

    mul-double/2addr v4, v14

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    double-to-float v4, v10

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    aget-wide v14, v9, v2

    iget-wide v6, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_outerRadius:D

    mul-double/2addr v14, v6

    double-to-float v6, v14

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    aget-wide v6, v1, v2

    iget-wide v14, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_innerRadius:D

    mul-double/2addr v6, v14

    double-to-float v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    aget-wide v6, v9, v2

    iget-wide v14, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_innerRadius:D

    mul-double/2addr v6, v14

    double-to-float v4, v6

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-boolean v3, v0, Lcom/ardor3d/scenegraph/shape/Tube;->_viewInside:Z

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_9
    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_a
    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/FloatBuffer;

    aget-wide v7, v1, v2

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v7, v14

    add-double/2addr v7, v14

    double-to-float v7, v7

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    aget-wide v7, v9, v2

    mul-double/2addr v7, v14

    add-double/2addr v7, v14

    double-to-float v7, v7

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/FloatBuffer;

    mul-double v12, v22, v14

    aget-wide v16, v1, v2

    mul-double v16, v16, v12

    add-double v4, v16, v14

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    aget-wide v4, v9, v2

    mul-double/2addr v12, v4

    add-double/2addr v12, v14

    double-to-float v4, v12

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    move v7, v6

    goto/16 :goto_9

    :cond_a
    return-void
.end method

.method private setIndexData()V
    .locals 11

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndexBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_axisSamples:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    add-int/lit8 v2, v1, 0x1

    mul-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    if-ge v4, v5, :cond_2

    move v5, v3

    :goto_1
    iget v6, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_axisSamples:I

    if-ge v5, v6, :cond_1

    add-int/lit8 v7, v6, 0x1

    mul-int/2addr v7, v4

    add-int/2addr v7, v5

    add-int/lit8 v8, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v7

    add-int/lit8 v9, v6, 0x1

    iget-boolean v10, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_viewInside:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v7, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v7}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    goto :goto_2

    :cond_0
    iget-object v10, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v7, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v7}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_3
    iget v5, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    if-ge v4, v5, :cond_5

    move v5, v3

    :goto_4
    iget v6, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_axisSamples:I

    if-ge v5, v6, :cond_4

    add-int v7, v0, v5

    add-int/lit8 v8, v6, 0x1

    mul-int/2addr v8, v4

    add-int/2addr v7, v8

    add-int/lit8 v8, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v7

    add-int/lit8 v9, v6, 0x1

    iget-boolean v10, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_viewInside:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v7, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v7}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    goto :goto_5

    :cond_3
    iget-object v10, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v7, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v7}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    move v0, v3

    :goto_6
    iget v4, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    if-ge v0, v4, :cond_7

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v2

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v0, v0, 0x1

    rem-int v4, v0, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    add-int/lit8 v7, v4, 0x1

    iget-boolean v8, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_viewInside:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v8}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v5, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    goto :goto_6

    :cond_6
    iget-object v8, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v8}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v5, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    goto :goto_6

    :cond_7
    :goto_7
    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    if-ge v3, v0, :cond_9

    mul-int/lit8 v2, v3, 0x2

    add-int/2addr v2, v1

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    rem-int v0, v3, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    iget-boolean v6, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_viewInside:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    goto :goto_7

    :cond_8
    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    goto :goto_7

    :cond_9
    return-void
.end method


# virtual methods
.method public getAxisSamples()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_axisSamples:I

    return v0
.end method

.method public getHeight()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_height:D

    return-wide v0
.end method

.method public getInnerRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_innerRadius:D

    return-wide v0
.end method

.method public getOuterRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_outerRadius:D

    return-wide v0
.end method

.method public getRadialSamples()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    return v0
.end method

.method public isViewFromInside()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_viewInside:Z

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

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/shape/Tube;->setAxisSamples(I)V

    const-string v0, "radialSamples"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/shape/Tube;->setRadialSamples(I)V

    const-string v0, "outerRadius"

    const-wide/16 v2, 0x0

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/ardor3d/scenegraph/shape/Tube;->setOuterRadius(D)V

    const-string v0, "innerRadius"

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/ardor3d/scenegraph/shape/Tube;->setInnerRadius(D)V

    const-string v0, "height"

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/ardor3d/scenegraph/shape/Tube;->setHeight(D)V

    const-string v0, "viewInside"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_viewInside:Z

    return-void
.end method

.method public setAxisSamples(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_axisSamples:I

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Tube;->allocateVertices()V

    return-void
.end method

.method public setHeight(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_height:D

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Tube;->allocateVertices()V

    return-void
.end method

.method public setInnerRadius(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_innerRadius:D

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Tube;->allocateVertices()V

    return-void
.end method

.method public setOuterRadius(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_outerRadius:D

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Tube;->allocateVertices()V

    return-void
.end method

.method public setRadialSamples(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_radialSamples:I

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Tube;->allocateVertices()V

    return-void
.end method

.method public setViewFromInside(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_viewInside:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_viewInside:Z

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Tube;->setGeometryData()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Tube;->setIndexData()V

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

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/shape/Tube;->getAxisSamples()I

    move-result v0

    const-string v1, "axisSamples"

    const/4 v6, 0x0

    invoke-interface {p1, v0, v1, v6}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/shape/Tube;->getRadialSamples()I

    move-result v0

    const-string v1, "radialSamples"

    invoke-interface {p1, v0, v1, v6}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/shape/Tube;->getOuterRadius()D

    move-result-wide v1

    const-string v3, "outerRadius"

    const-wide/16 v4, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/shape/Tube;->getInnerRadius()D

    move-result-wide v1

    const-string v3, "innerRadius"

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/shape/Tube;->getHeight()D

    move-result-wide v1

    const-string v3, "height"

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-boolean v1, p0, Lcom/ardor3d/scenegraph/shape/Tube;->_viewInside:Z

    const-string v2, "viewInside"

    invoke-interface {p1, v1, v2, v6}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
