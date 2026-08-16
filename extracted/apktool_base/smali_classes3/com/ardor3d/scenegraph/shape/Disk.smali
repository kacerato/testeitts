.class public Lcom/ardor3d/scenegraph/shape/Disk;
.super Lcom/ardor3d/scenegraph/Mesh;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _radialSamples:I

.field private _radius:D

.field private _shellSamples:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IID)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 3
    iput p2, p0, Lcom/ardor3d/scenegraph/shape/Disk;->_shellSamples:I

    .line 4
    iput p3, p0, Lcom/ardor3d/scenegraph/shape/Disk;->_radialSamples:I

    .line 5
    iput-wide p4, p0, Lcom/ardor3d/scenegraph/shape/Disk;->_radius:D

    add-int/lit8 p1, p3, -0x1

    add-int/lit8 p2, p2, -0x1

    mul-int p4, p3, p2

    add-int/lit8 p5, p4, 0x1

    .line 6
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {p5}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    .line 7
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {p5}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->setNormalBuffer(Ljava/nio/FloatBuffer;)V

    .line 8
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {p5}, Lcom/ardor3d/util/geom/BufferUtils;->createVector2Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object p5

    const/4 v1, 0x0

    invoke-virtual {v0, p5, v1}, Lcom/ardor3d/scenegraph/MeshData;->setTextureBuffer(Ljava/nio/FloatBuffer;I)V

    mul-int/lit8 p5, p2, 0x2

    add-int/lit8 p5, p5, -0x1

    mul-int/2addr p3, p5

    .line 9
    iget-object p5, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    mul-int/lit8 p3, p3, 0x3

    invoke-static {p3, p4}, Lcom/ardor3d/util/geom/BufferUtils;->createIndexBufferData(II)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object p3

    invoke-virtual {p5, p3}, Lcom/ardor3d/scenegraph/MeshData;->setIndices(Lcom/ardor3d/scenegraph/IndexBufferData;)V

    .line 10
    invoke-direct {p0, p2}, Lcom/ardor3d/scenegraph/shape/Disk;->setGeometryData(I)V

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/ardor3d/scenegraph/shape/Disk;->setIndexData(II)V

    return-void
.end method

.method private setGeometryData(I)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    iget-object v5, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v5, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3, v2}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/FloatBuffer;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    int-to-double v3, v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double v3, v5, v3

    iget v7, v0, Lcom/ardor3d/scenegraph/shape/Disk;->_radialSamples:I

    int-to-double v7, v7

    div-double v7, v5, v7

    new-instance v9, Lcom/ardor3d/math/Vector3;

    invoke-direct {v9}, Lcom/ardor3d/math/Vector3;-><init>()V

    new-instance v10, Lcom/ardor3d/math/Vector2;

    invoke-direct {v10}, Lcom/ardor3d/math/Vector2;-><init>()V

    move v11, v2

    :goto_1
    iget v12, v0, Lcom/ardor3d/scenegraph/shape/Disk;->_radialSamples:I

    if-ge v11, v12, :cond_2

    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v12, v7

    int-to-double v14, v11

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v15

    invoke-static {v12, v13}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v17

    new-instance v12, Lcom/ardor3d/math/Vector3;

    const-wide/16 v19, 0x0

    move-object v14, v12

    invoke-direct/range {v14 .. v20}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    const/4 v13, 0x1

    :goto_2
    iget v14, v0, Lcom/ardor3d/scenegraph/shape/Disk;->_shellSamples:I

    if-ge v13, v14, :cond_1

    int-to-double v14, v13

    mul-double/2addr v14, v3

    invoke-virtual {v9, v12}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    mul-int v2, v1, v11

    add-int/2addr v2, v13

    invoke-virtual {v9}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v14

    add-double/2addr v14, v5

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    mul-double v14, v14, v17

    invoke-virtual {v10, v14, v15}, Lcom/ardor3d/math/Vector2;->setX(D)V

    invoke-virtual {v9}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v14

    add-double/2addr v14, v5

    mul-double v14, v14, v17

    invoke-virtual {v10, v14, v15}, Lcom/ardor3d/math/Vector2;->setY(D)V

    iget-object v14, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/FloatBuffer;

    invoke-static {v10, v14, v2}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector2;Ljava/nio/FloatBuffer;I)V

    iget-wide v5, v0, Lcom/ardor3d/scenegraph/shape/Disk;->_radius:D

    invoke-virtual {v9, v5, v6}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    iget-object v5, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-static {v9, v5, v2}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v13, v13, 0x1

    move v2, v15

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_1
    move v15, v2

    add-int/lit8 v11, v11, 0x1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setIndexData(II)V
    .locals 10

    const/4 v0, 0x0

    move v1, p1

    move p1, v0

    :goto_0
    iget v2, p0, Lcom/ardor3d/scenegraph/shape/Disk;->_radialSamples:I

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    mul-int/2addr v1, p2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    mul-int v3, p2, p1

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    const/4 v2, 0x1

    :goto_1
    if-ge v2, p2, :cond_0

    add-int v4, v2, v1

    add-int v5, v2, v3

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v5, 0x1

    iget-object v8, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v8}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v8, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v8}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v4, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v4, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    move v9, v1

    move v1, p1

    move p1, v9

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "shellSamples"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/shape/Disk;->_shellSamples:I

    const-string v0, "radialSamples"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/shape/Disk;->_radialSamples:I

    const-string v0, "radius"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Disk;->_radius:D

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

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Disk;->_shellSamples:I

    const-string v1, "shellSamples"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Disk;->_radialSamples:I

    const-string v1, "radialSamples"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-wide v4, p0, Lcom/ardor3d/scenegraph/shape/Disk;->_radius:D

    const-string v6, "radius"

    const-wide/16 v7, 0x0

    move-object v3, p1

    invoke-interface/range {v3 .. v8}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    return-void
.end method
