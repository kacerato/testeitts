.class public Lcom/ardor3d/scenegraph/shape/Hexagon;
.super Lcom/ardor3d/scenegraph/Mesh;
.source "SourceFile"


# static fields
.field private static final NUM_POINTS:I = 0x7

.field private static final NUM_TRIS:I = 0x6

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _sideLength:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 3
    iput p2, p0, Lcom/ardor3d/scenegraph/shape/Hexagon;->_sideLength:F

    .line 4
    iget-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 p2, 0x7

    invoke-static {p2}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    .line 5
    iget-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {p2}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ardor3d/scenegraph/MeshData;->setNormalBuffer(Ljava/nio/FloatBuffer;)V

    .line 6
    iget-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {p2}, Lcom/ardor3d/util/geom/BufferUtils;->createVector2Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/ardor3d/scenegraph/MeshData;->setTextureBuffer(Ljava/nio/FloatBuffer;I)V

    .line 7
    iget-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/16 p2, 0x12

    const/4 v0, 0x6

    invoke-static {p2, v0}, Lcom/ardor3d/util/geom/BufferUtils;->createIndexBufferData(II)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/MeshData;->setIndices(Lcom/ardor3d/scenegraph/IndexBufferData;)V

    .line 8
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Hexagon;->setVertexData()V

    .line 9
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Hexagon;->setIndexData()V

    .line 10
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Hexagon;->setTextureData()V

    .line 11
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Hexagon;->setNormalData()V

    return-void
.end method

.method private setIndexData()V
    .locals 4

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndexBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    return-void
.end method

.method private setNormalData()V
    .locals 8

    new-instance v7, Lcom/ardor3d/math/Vector3;

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v1, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v7, v1, v0}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setTextureData()V
    .locals 7

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    return-void
.end method

.method private setVertexData()V
    .locals 5

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget v1, p0, Lcom/ardor3d/scenegraph/shape/Hexagon;->_sideLength:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget v1, p0, Lcom/ardor3d/scenegraph/shape/Hexagon;->_sideLength:F

    const v3, 0x3f5db22d    # 0.866f

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget v4, p0, Lcom/ardor3d/scenegraph/shape/Hexagon;->_sideLength:F

    div-float/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget v4, p0, Lcom/ardor3d/scenegraph/shape/Hexagon;->_sideLength:F

    mul-float/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget v4, p0, Lcom/ardor3d/scenegraph/shape/Hexagon;->_sideLength:F

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget v4, p0, Lcom/ardor3d/scenegraph/shape/Hexagon;->_sideLength:F

    div-float/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget v4, p0, Lcom/ardor3d/scenegraph/shape/Hexagon;->_sideLength:F

    neg-float v4, v4

    mul-float/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget v4, p0, Lcom/ardor3d/scenegraph/shape/Hexagon;->_sideLength:F

    div-float/2addr v4, v2

    neg-float v2, v4

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget v2, p0, Lcom/ardor3d/scenegraph/shape/Hexagon;->_sideLength:F

    neg-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget v2, p0, Lcom/ardor3d/scenegraph/shape/Hexagon;->_sideLength:F

    neg-float v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "sideLength"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/ardor3d/scenegraph/shape/Hexagon;->_sideLength:F

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Hexagon;->_sideLength:F

    const-string v1, "sideLength"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
