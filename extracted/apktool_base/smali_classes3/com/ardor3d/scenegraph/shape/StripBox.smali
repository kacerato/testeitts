.class public Lcom/ardor3d/scenegraph/shape/StripBox;
.super Lcom/ardor3d/scenegraph/Mesh;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final _center:Lcom/ardor3d/math/Vector3;

.field public _xExtent:D

.field public _yExtent:D

.field public _zExtent:D


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    const-string v0, "temp"

    invoke-direct {p0, v0}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/ardor3d/math/Vector3;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_center:Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 3
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/ardor3d/math/Vector3;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_center:Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ardor3d/math/Vector3;DDD)V
    .locals 16

    .line 8
    invoke-direct/range {p0 .. p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v7, Lcom/ardor3d/math/Vector3;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/ardor3d/scenegraph/shape/StripBox;->_center:Lcom/ardor3d/math/Vector3;

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    .line 10
    invoke-virtual/range {v8 .. v15}, Lcom/ardor3d/scenegraph/shape/StripBox;->setData(Lcom/ardor3d/math/Vector3;DDD)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)V
    .locals 7

    .line 5
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/ardor3d/math/Vector3;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_center:Lcom/ardor3d/math/Vector3;

    .line 7
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/scenegraph/shape/StripBox;->setData(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method private setIndexData()V
    .locals 3

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    sget-object v2, Lcom/ardor3d/renderer/IndexMode;->TriangleStrip:Lcom/ardor3d/renderer/IndexMode;

    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/MeshData;->setIndexMode(Lcom/ardor3d/renderer/IndexMode;)V

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getIndexBuffer()Ljava/nio/Buffer;

    move-result-object v1

    if-nez v1, :cond_0

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1, v0}, Lcom/ardor3d/scenegraph/MeshData;->setIndexBuffer(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x2t
        0x3t
        0x6t
        0x7t
        0x5t
        0x3t
        0x0t
        0x2t
        0x1t
        0x6t
        0x4t
        0x5t
        0x1t
        0x0t
    .end array-data
.end method

.method private setNormalData()V
    .locals 6

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/shape/StripBox;->computeVertices()[Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/MeshData;->setNormalBuffer(Ljava/nio/FloatBuffer;)V

    new-instance v1, Lcom/ardor3d/math/Vector3;

    invoke-direct {v1}, Lcom/ardor3d/math/Vector3;-><init>()V

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v1, v4}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    iget-object v4, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setTextureData()V
    .locals 5

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    new-instance v2, Lcom/ardor3d/scenegraph/FloatBufferData;

    const/16 v3, 0x8

    invoke-static {v3}, Lcom/ardor3d/util/geom/BufferUtils;->createVector2Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/scenegraph/FloatBufferData;-><init>(Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v0, v2, v1}, Lcom/ardor3d/scenegraph/MeshData;->setTextureCoords(Lcom/ardor3d/scenegraph/FloatBufferData;I)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :cond_0
    return-void
.end method

.method private setVertexData()V
    .locals 4

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/shape/StripBox;->computeVertices()[Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x6

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x7

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public clone()Lcom/ardor3d/scenegraph/shape/StripBox;
    .locals 10

    .line 2
    new-instance v9, Lcom/ardor3d/scenegraph/shape/StripBox;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_clone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->clone()Lcom/ardor3d/math/Vector3;

    move-result-object v2

    iget-wide v3, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_xExtent:D

    iget-wide v5, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_yExtent:D

    iget-wide v7, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_zExtent:D

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/ardor3d/scenegraph/shape/StripBox;-><init>(Ljava/lang/String;Lcom/ardor3d/math/Vector3;DDD)V

    return-object v9
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/shape/StripBox;->clone()Lcom/ardor3d/scenegraph/shape/StripBox;

    move-result-object v0

    return-object v0
.end method

.method public computeVertices()[Lcom/ardor3d/math/Vector3;
    .locals 14

    sget-object v0, Lcom/ardor3d/math/Vector3;->UNIT_X:Lcom/ardor3d/math/type/ReadOnlyVector3;

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_xExtent:D

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    iget-wide v2, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_yExtent:D

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_Z:Lcom/ardor3d/math/type/ReadOnlyVector3;

    iget-wide v3, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_zExtent:D

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/ardor3d/math/type/ReadOnlyVector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_center:Lcom/ardor3d/math/Vector3;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    new-instance v4, Lcom/ardor3d/math/Vector3;

    invoke-direct {v4}, Lcom/ardor3d/math/Vector3;-><init>()V

    invoke-virtual {v1, v3, v4}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    const/4 v4, 0x2

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v6

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_center:Lcom/ardor3d/math/Vector3;

    aget-object v5, v0, v2

    new-instance v7, Lcom/ardor3d/math/Vector3;

    invoke-direct {v7}, Lcom/ardor3d/math/Vector3;-><init>()V

    invoke-virtual {v1, v5, v7}, Lcom/ardor3d/math/Vector3;->add(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v7

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_center:Lcom/ardor3d/math/Vector3;

    aget-object v5, v0, v2

    new-instance v8, Lcom/ardor3d/math/Vector3;

    invoke-direct {v8}, Lcom/ardor3d/math/Vector3;-><init>()V

    invoke-virtual {v1, v5, v8}, Lcom/ardor3d/math/Vector3;->add(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v8

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_center:Lcom/ardor3d/math/Vector3;

    aget-object v5, v0, v2

    new-instance v9, Lcom/ardor3d/math/Vector3;

    invoke-direct {v9}, Lcom/ardor3d/math/Vector3;-><init>()V

    invoke-virtual {v1, v5, v9}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v9

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_center:Lcom/ardor3d/math/Vector3;

    aget-object v5, v0, v2

    new-instance v10, Lcom/ardor3d/math/Vector3;

    invoke-direct {v10}, Lcom/ardor3d/math/Vector3;-><init>()V

    invoke-virtual {v1, v5, v10}, Lcom/ardor3d/math/Vector3;->add(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v10

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_center:Lcom/ardor3d/math/Vector3;

    aget-object v5, v0, v2

    new-instance v11, Lcom/ardor3d/math/Vector3;

    invoke-direct {v11}, Lcom/ardor3d/math/Vector3;-><init>()V

    invoke-virtual {v1, v5, v11}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v11

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_center:Lcom/ardor3d/math/Vector3;

    aget-object v5, v0, v2

    new-instance v12, Lcom/ardor3d/math/Vector3;

    invoke-direct {v12}, Lcom/ardor3d/math/Vector3;-><init>()V

    invoke-virtual {v1, v5, v12}, Lcom/ardor3d/math/Vector3;->add(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v12

    iget-object v1, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_center:Lcom/ardor3d/math/Vector3;

    aget-object v5, v0, v2

    new-instance v13, Lcom/ardor3d/math/Vector3;

    invoke-direct {v13}, Lcom/ardor3d/math/Vector3;-><init>()V

    invoke-virtual {v1, v5, v13}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    aget-object v3, v0, v4

    invoke-virtual {v1, v3}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v13

    filled-new-array/range {v6 .. v13}, [Lcom/ardor3d/math/Vector3;

    move-result-object v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getCenter()Lcom/ardor3d/math/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_center:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "xExtent"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_xExtent:D

    const-string v0, "yExtent"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_yExtent:D

    const-string v0, "zExtent"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_zExtent:D

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_center:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "center"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public setData(Lcom/ardor3d/math/Vector3;DDD)V
    .locals 1

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 7
    :cond_0
    iput-wide p2, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_xExtent:D

    .line 8
    iput-wide p4, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_yExtent:D

    .line 9
    iput-wide p6, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_zExtent:D

    .line 10
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/StripBox;->setVertexData()V

    .line 11
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/StripBox;->setNormalData()V

    .line 12
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/StripBox;->setTextureData()V

    .line 13
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/StripBox;->setIndexData()V

    return-void
.end method

.method public setData(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    .line 2
    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    iget-object p1, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    sub-double v6, v0, v2

    .line 3
    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v0

    iget-object p1, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    sub-double v8, v0, v2

    .line 4
    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide p1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v0

    sub-double v10, p1, v0

    .line 5
    iget-object v5, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_center:Lcom/ardor3d/math/Vector3;

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/ardor3d/scenegraph/shape/StripBox;->setData(Lcom/ardor3d/math/Vector3;DDD)V

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

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_xExtent:D

    const-string v3, "xExtent"

    const-wide/16 v4, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v7, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_yExtent:D

    const-string v9, "yExtent"

    const-wide/16 v10, 0x0

    move-object v6, p1

    invoke-interface/range {v6 .. v11}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_zExtent:D

    const-string v3, "zExtent"

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/StripBox;->_center:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "center"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    return-void
.end method
