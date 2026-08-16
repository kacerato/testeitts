.class public Lcom/ardor3d/scenegraph/shape/OrientedBox;
.super Lcom/ardor3d/scenegraph/Mesh;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _center:Lcom/ardor3d/math/Vector3;

.field public _correctCorners:Z

.field protected _extent:Lcom/ardor3d/math/Vector3;

.field protected _texBotLeft:Lcom/ardor3d/math/Vector2;

.field protected _texBotRight:Lcom/ardor3d/math/Vector2;

.field protected _texTopLeft:Lcom/ardor3d/math/Vector2;

.field protected _texTopRight:Lcom/ardor3d/math/Vector2;

.field public _vectorStore:[Lcom/ardor3d/math/Vector3;

.field protected _xAxis:Lcom/ardor3d/math/Vector3;

.field protected _yAxis:Lcom/ardor3d/math/Vector3;

.field protected _zAxis:Lcom/ardor3d/math/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 15

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Mesh;-><init>()V

    .line 2
    new-instance v7, Lcom/ardor3d/math/Vector3;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object v7, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    .line 3
    new-instance v0, Lcom/ardor3d/math/Vector3;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/16 v13, 0x0

    const-wide/16 v9, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    .line 4
    new-instance v0, Lcom/ardor3d/math/Vector3;

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    .line 5
    new-instance v0, Lcom/ardor3d/math/Vector3;

    const-wide/16 v11, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_extent:Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 14

    .line 6
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/ardor3d/math/Vector3;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    .line 8
    new-instance p1, Lcom/ardor3d/math/Vector3;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/16 v12, 0x0

    const-wide/16 v8, 0x0

    move-object v7, p1

    invoke-direct/range {v7 .. v13}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    .line 9
    new-instance p1, Lcom/ardor3d/math/Vector3;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v1, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    .line 10
    new-instance p1, Lcom/ardor3d/math/Vector3;

    const-wide/16 v10, 0x0

    move-object v7, p1

    invoke-direct/range {v7 .. v13}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_extent:Lcom/ardor3d/math/Vector3;

    const/16 p1, 0x8

    .line 11
    new-array p1, p1, [Lcom/ardor3d/math/Vector3;

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 p1, 0x0

    move v0, p1

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 13
    new-instance v2, Lcom/ardor3d/math/Vector3;

    invoke-direct {v2}, Lcom/ardor3d/math/Vector3;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lcom/ardor3d/math/Vector2;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_texTopRight:Lcom/ardor3d/math/Vector2;

    .line 15
    new-instance v0, Lcom/ardor3d/math/Vector2;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_texTopLeft:Lcom/ardor3d/math/Vector2;

    .line 16
    new-instance v0, Lcom/ardor3d/math/Vector2;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_texBotRight:Lcom/ardor3d/math/Vector2;

    .line 17
    new-instance v0, Lcom/ardor3d/math/Vector2;

    invoke-direct {v0, v3, v4, v3, v4}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_texBotLeft:Lcom/ardor3d/math/Vector2;

    .line 18
    new-instance v0, Lcom/ardor3d/math/Vector3;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v6, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_center:Lcom/ardor3d/math/Vector3;

    .line 19
    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_correctCorners:Z

    .line 20
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/shape/OrientedBox;->computeInformation()V

    return-void
.end method

.method private setIndexData()V
    .locals 5

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndexBuffer()Ljava/nio/Buffer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/16 v1, 0x24

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->setIndexBuffer(Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v1

    add-int/lit8 v4, v2, 0x3

    invoke-virtual {v1, v4}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v1

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setNormalData()V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->setNormalBuffer(Ljava/nio/FloatBuffer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    :goto_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    return-void
.end method

.method private setTextureData()V
    .locals 4

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->getTextureBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/16 v2, 0x18

    invoke-static {v2}, Lcom/ardor3d/util/geom/BufferUtils;->createVector2Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/ardor3d/scenegraph/MeshData;->setTextureBuffer(Ljava/nio/FloatBuffer;I)V

    move v0, v1

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2, v1}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_texTopRight:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector2;->getXf()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_texTopRight:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector2;->getYf()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2, v1}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_texTopLeft:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector2;->getXf()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_texTopLeft:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector2;->getYf()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2, v1}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_texBotLeft:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector2;->getXf()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_texBotLeft:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector2;->getYf()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2, v1}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_texBotRight:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector2;->getXf()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_texBotRight:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector2;->getYf()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private setVertexData()V
    .locals 10

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/shape/OrientedBox;->computeCorners()V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    :goto_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v4, 0x5

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v5, 0x3

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v6, 0x6

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v7, 0x2

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v8, 0x4

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v9, 0x7

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public computeCorners()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_correctCorners:Z

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v3

    iget-object v4, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v4}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v4

    iget-object v5, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    iget-object v4, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2, v4}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v4

    iget-object v5, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    iget-object v4, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v4

    iget-object v5, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    iget-object v4, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v4, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    aget-object v0, v4, v0

    iget-object v4, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v4}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v4, 0x2

    aget-object v0, v0, v4

    iget-object v4, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v4}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v4, 0x3

    aget-object v0, v0, v4

    iget-object v4, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v4}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v4, 0x4

    aget-object v0, v0, v4

    iget-object v4, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v4}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v4, 0x5

    aget-object v0, v0, v4

    iget-object v4, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v4}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v4, 0x6

    aget-object v0, v0, v4

    iget-object v4, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v4}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/4 v4, 0x7

    aget-object v0, v0, v4

    iget-object v4, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v4}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v3}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method public computeInformation()V
    .locals 0

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/OrientedBox;->setVertexData()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/OrientedBox;->setNormalData()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/OrientedBox;->setTextureData()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/OrientedBox;->setIndexData()V

    return-void
.end method

.method public getCenter()Lcom/ardor3d/math/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_center:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getExtent()Lcom/ardor3d/math/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_extent:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getYAxis()Lcom/ardor3d/math/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getZAxis()Lcom/ardor3d/math/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getxAxis()Lcom/ardor3d/math/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public isCorrectCorners()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_correctCorners:Z

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

    new-instance v0, Lcom/ardor3d/math/Vector3;

    sget-object v1, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "center"

    invoke-interface {p1, v2, v0}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector3;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_center:Lcom/ardor3d/math/Vector3;

    new-instance v0, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_X:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v0, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "_xAxis"

    invoke-interface {p1, v2, v0}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector3;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    new-instance v0, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v0, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "yAxis"

    invoke-interface {p1, v2, v0}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector3;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    new-instance v0, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_Z:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v0, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "zAxis"

    invoke-interface {p1, v2, v0}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector3;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v1, "extent"

    invoke-interface {p1, v1, v0}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector3;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_extent:Lcom/ardor3d/math/Vector3;

    new-instance v0, Lcom/ardor3d/math/Vector2;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    const-string v3, "texTopRight"

    invoke-interface {p1, v3, v0}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector2;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_texTopRight:Lcom/ardor3d/math/Vector2;

    new-instance v0, Lcom/ardor3d/math/Vector2;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    const-string v5, "texTopLeft"

    invoke-interface {p1, v5, v0}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector2;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_texTopLeft:Lcom/ardor3d/math/Vector2;

    new-instance v0, Lcom/ardor3d/math/Vector2;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    const-string v1, "texBotRight"

    invoke-interface {p1, v1, v0}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector2;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_texBotRight:Lcom/ardor3d/math/Vector2;

    new-instance v0, Lcom/ardor3d/math/Vector2;

    invoke-direct {v0, v3, v4, v3, v4}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    const-string v1, "texBotLeft"

    invoke-interface {p1, v1, v0}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector2;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_texBotLeft:Lcom/ardor3d/math/Vector2;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ardor3d/math/Vector3;

    const-string v1, "vectorStore"

    invoke-interface {p1, v1, v0}, Lcom/ardor3d/util/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/ardor3d/util/export/Savable;)[Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    const-class v1, Lcom/ardor3d/math/Vector3;

    invoke-static {v0, v1}, Lcom/ardor3d/util/export/CapsuleUtils;->asArray([Lcom/ardor3d/util/export/Savable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/math/Vector3;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const-string v0, "correctCorners"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_correctCorners:Z

    return-void
.end method

.method public setCenter(Lcom/ardor3d/math/Vector3;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_center:Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public setExtent(Lcom/ardor3d/math/Vector3;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_extent:Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public setXAxis(Lcom/ardor3d/math/Vector3;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public setYAxis(Lcom/ardor3d/math/Vector3;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public setZAxis(Lcom/ardor3d/math/Vector3;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

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

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_center:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v3, "center"

    invoke-interface {p1, v0, v3, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_xAxis:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v3, Lcom/ardor3d/math/Vector3;->UNIT_X:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v3}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v3, "_xAxis"

    invoke-interface {p1, v0, v3, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_yAxis:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v3, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v3}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v3, "yAxis"

    invoke-interface {p1, v0, v3, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_zAxis:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v3, Lcom/ardor3d/math/Vector3;->UNIT_Z:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v3}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v3, "zAxis"

    invoke-interface {p1, v0, v3, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_extent:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "extent"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_texTopRight:Lcom/ardor3d/math/Vector2;

    new-instance v1, Lcom/ardor3d/math/Vector2;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v2, v3, v2, v3}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    const-string v4, "texTopRight"

    invoke-interface {p1, v0, v4, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_texTopLeft:Lcom/ardor3d/math/Vector2;

    new-instance v1, Lcom/ardor3d/math/Vector2;

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    const-string v6, "texTopLeft"

    invoke-interface {p1, v0, v6, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_texBotRight:Lcom/ardor3d/math/Vector2;

    new-instance v1, Lcom/ardor3d/math/Vector2;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    const-string v2, "texBotRight"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_texBotLeft:Lcom/ardor3d/math/Vector2;

    new-instance v1, Lcom/ardor3d/math/Vector2;

    invoke-direct {v1, v4, v5, v4, v5}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    const-string v2, "texBotLeft"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_vectorStore:[Lcom/ardor3d/math/Vector3;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/ardor3d/math/Vector3;

    const-string v2, "vectorStore"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write([Lcom/ardor3d/util/export/Savable;Ljava/lang/String;[Lcom/ardor3d/util/export/Savable;)V

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/shape/OrientedBox;->_correctCorners:Z

    const-string v1, "correctCorners"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
