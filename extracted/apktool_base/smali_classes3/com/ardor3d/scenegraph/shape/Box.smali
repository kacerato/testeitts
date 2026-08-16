.class public Lcom/ardor3d/scenegraph/shape/Box;
.super Lcom/ardor3d/scenegraph/Mesh;
.source "SourceFile"


# instance fields
.field private final _center:Lcom/ardor3d/math/Vector3;

.field private _xExtent:D

.field private _yExtent:D

.field private _zExtent:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "unnamed Box"

    invoke-direct {p0, v0}, Lcom/ardor3d/scenegraph/shape/Box;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 16

    .line 2
    invoke-direct/range {p0 .. p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v7, Lcom/ardor3d/math/Vector3;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/ardor3d/scenegraph/shape/Box;->_center:Lcom/ardor3d/math/Vector3;

    .line 4
    sget-object v9, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v15}, Lcom/ardor3d/scenegraph/shape/Box;->setData(Lcom/ardor3d/math/type/ReadOnlyVector3;DDD)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ardor3d/math/type/ReadOnlyVector3;DDD)V
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

    iput-object v7, v0, Lcom/ardor3d/scenegraph/shape/Box;->_center:Lcom/ardor3d/math/Vector3;

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    .line 10
    invoke-virtual/range {v8 .. v15}, Lcom/ardor3d/scenegraph/shape/Box;->setData(Lcom/ardor3d/math/type/ReadOnlyVector3;DDD)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V
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

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/Box;->_center:Lcom/ardor3d/math/Vector3;

    .line 7
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/scenegraph/shape/Box;->setData(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    return-void
.end method

.method private setIndexData()V
    .locals 2

    const/16 v0, 0x24

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

    nop

    :array_0
    .array-data 1
        0x2t
        0x1t
        0x0t
        0x3t
        0x2t
        0x0t
        0x6t
        0x5t
        0x4t
        0x7t
        0x6t
        0x4t
        0xat
        0x9t
        0x8t
        0xbt
        0xat
        0x8t
        0xet
        0xdt
        0xct
        0xft
        0xet
        0xct
        0x12t
        0x11t
        0x10t
        0x13t
        0x12t
        0x10t
        0x16t
        0x15t
        0x14t
        0x17t
        0x16t
        0x14t
    .end array-data
.end method

.method private setNormalData()V
    .locals 7

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->setNormalBuffer(Ljava/nio/FloatBuffer;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v1, v3, :cond_1

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_2

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_3

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_4
    if-ge v1, v3, :cond_4

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    if-ge v0, v3, :cond_5

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
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

    const/16 v2, 0x18

    invoke-static {v2}, Lcom/ardor3d/util/geom/BufferUtils;->createVector2Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/ardor3d/scenegraph/MeshData;->setTextureBuffer(Ljava/nio/FloatBuffer;I)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->getTextureBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/ardor3d/scenegraph/shape/Box;
    .locals 10

    .line 2
    new-instance v9, Lcom/ardor3d/scenegraph/shape/Box;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_clone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/Box;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->clone()Lcom/ardor3d/math/Vector3;

    move-result-object v2

    iget-wide v3, p0, Lcom/ardor3d/scenegraph/shape/Box;->_xExtent:D

    iget-wide v5, p0, Lcom/ardor3d/scenegraph/shape/Box;->_yExtent:D

    iget-wide v7, p0, Lcom/ardor3d/scenegraph/shape/Box;->_zExtent:D

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/ardor3d/scenegraph/shape/Box;-><init>(Ljava/lang/String;Lcom/ardor3d/math/type/ReadOnlyVector3;DDD)V

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
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/shape/Box;->clone()Lcom/ardor3d/scenegraph/shape/Box;

    move-result-object v0

    return-object v0
.end method

.method public computeVertices()[Lcom/ardor3d/math/Vector3;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/Box;->_center:Lcom/ardor3d/math/Vector3;

    iget-wide v2, v0, Lcom/ardor3d/scenegraph/shape/Box;->_xExtent:D

    neg-double v2, v2

    iget-wide v4, v0, Lcom/ardor3d/scenegraph/shape/Box;->_yExtent:D

    neg-double v4, v4

    iget-wide v6, v0, Lcom/ardor3d/scenegraph/shape/Box;->_zExtent:D

    neg-double v6, v6

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/ardor3d/math/Vector3;->add(DDDLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v9

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/Box;->_center:Lcom/ardor3d/math/Vector3;

    iget-wide v2, v0, Lcom/ardor3d/scenegraph/shape/Box;->_xExtent:D

    iget-wide v4, v0, Lcom/ardor3d/scenegraph/shape/Box;->_yExtent:D

    neg-double v4, v4

    iget-wide v6, v0, Lcom/ardor3d/scenegraph/shape/Box;->_zExtent:D

    neg-double v6, v6

    invoke-virtual/range {v1 .. v8}, Lcom/ardor3d/math/Vector3;->add(DDDLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v10

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/Box;->_center:Lcom/ardor3d/math/Vector3;

    iget-wide v2, v0, Lcom/ardor3d/scenegraph/shape/Box;->_xExtent:D

    iget-wide v4, v0, Lcom/ardor3d/scenegraph/shape/Box;->_yExtent:D

    iget-wide v6, v0, Lcom/ardor3d/scenegraph/shape/Box;->_zExtent:D

    neg-double v6, v6

    invoke-virtual/range {v1 .. v8}, Lcom/ardor3d/math/Vector3;->add(DDDLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v11

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/Box;->_center:Lcom/ardor3d/math/Vector3;

    iget-wide v2, v0, Lcom/ardor3d/scenegraph/shape/Box;->_xExtent:D

    neg-double v2, v2

    iget-wide v4, v0, Lcom/ardor3d/scenegraph/shape/Box;->_yExtent:D

    iget-wide v6, v0, Lcom/ardor3d/scenegraph/shape/Box;->_zExtent:D

    neg-double v6, v6

    invoke-virtual/range {v1 .. v8}, Lcom/ardor3d/math/Vector3;->add(DDDLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v12

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/Box;->_center:Lcom/ardor3d/math/Vector3;

    iget-wide v2, v0, Lcom/ardor3d/scenegraph/shape/Box;->_xExtent:D

    iget-wide v4, v0, Lcom/ardor3d/scenegraph/shape/Box;->_yExtent:D

    neg-double v4, v4

    iget-wide v6, v0, Lcom/ardor3d/scenegraph/shape/Box;->_zExtent:D

    invoke-virtual/range {v1 .. v8}, Lcom/ardor3d/math/Vector3;->add(DDDLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v13

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/Box;->_center:Lcom/ardor3d/math/Vector3;

    iget-wide v2, v0, Lcom/ardor3d/scenegraph/shape/Box;->_xExtent:D

    neg-double v2, v2

    iget-wide v4, v0, Lcom/ardor3d/scenegraph/shape/Box;->_yExtent:D

    neg-double v4, v4

    iget-wide v6, v0, Lcom/ardor3d/scenegraph/shape/Box;->_zExtent:D

    invoke-virtual/range {v1 .. v8}, Lcom/ardor3d/math/Vector3;->add(DDDLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v14

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/Box;->_center:Lcom/ardor3d/math/Vector3;

    iget-wide v2, v0, Lcom/ardor3d/scenegraph/shape/Box;->_xExtent:D

    iget-wide v4, v0, Lcom/ardor3d/scenegraph/shape/Box;->_yExtent:D

    iget-wide v6, v0, Lcom/ardor3d/scenegraph/shape/Box;->_zExtent:D

    invoke-virtual/range {v1 .. v8}, Lcom/ardor3d/math/Vector3;->add(DDDLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v15

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/Box;->_center:Lcom/ardor3d/math/Vector3;

    iget-wide v2, v0, Lcom/ardor3d/scenegraph/shape/Box;->_xExtent:D

    neg-double v2, v2

    iget-wide v4, v0, Lcom/ardor3d/scenegraph/shape/Box;->_yExtent:D

    iget-wide v6, v0, Lcom/ardor3d/scenegraph/shape/Box;->_zExtent:D

    invoke-virtual/range {v1 .. v8}, Lcom/ardor3d/math/Vector3;->add(DDDLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v16

    filled-new-array/range {v9 .. v16}, [Lcom/ardor3d/math/Vector3;

    move-result-object v1

    return-object v1
.end method

.method public getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/Box;->_center:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getXExtent()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Box;->_xExtent:D

    return-wide v0
.end method

.method public getYExtent()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Box;->_yExtent:D

    return-wide v0
.end method

.method public getZExtent()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Box;->_zExtent:D

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

    const-string v0, "xExtent"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/ardor3d/scenegraph/shape/Box;->_xExtent:D

    const-string v0, "yExtent"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/ardor3d/scenegraph/shape/Box;->_yExtent:D

    const-string v0, "zExtent"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Box;->_zExtent:D

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/Box;->_center:Lcom/ardor3d/math/Vector3;

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

.method public setData(Lcom/ardor3d/math/type/ReadOnlyVector3;DDD)V
    .locals 1

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/Box;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 7
    :cond_0
    iput-wide p2, p0, Lcom/ardor3d/scenegraph/shape/Box;->_xExtent:D

    .line 8
    iput-wide p4, p0, Lcom/ardor3d/scenegraph/shape/Box;->_yExtent:D

    .line 9
    iput-wide p6, p0, Lcom/ardor3d/scenegraph/shape/Box;->_zExtent:D

    .line 10
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/shape/Box;->setVertexData()V

    .line 11
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Box;->setNormalData()V

    .line 12
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Box;->setTextureData()V

    .line 13
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Box;->setIndexData()V

    return-void
.end method

.method public setData(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/Box;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    .line 2
    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v0

    iget-object p1, p0, Lcom/ardor3d/scenegraph/shape/Box;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 3
    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v0

    iget-object p1, p0, Lcom/ardor3d/scenegraph/shape/Box;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 4
    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide p1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/Box;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v0

    sub-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    .line 5
    iget-object v3, p0, Lcom/ardor3d/scenegraph/shape/Box;->_center:Lcom/ardor3d/math/Vector3;

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/ardor3d/scenegraph/shape/Box;->setData(Lcom/ardor3d/math/type/ReadOnlyVector3;DDD)V

    return-void
.end method

.method public setVertexData()V
    .locals 12

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/shape/Box;->computeVertices()[Lcom/ardor3d/math/Vector3;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    const/4 v2, 0x1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    const/4 v3, 0x2

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    const/4 v4, 0x3

    aget-object v5, v0, v4

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    aget-object v5, v0, v2

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v5, v6, v7}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    aget-object v5, v0, v7

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    const/4 v8, 0x5

    invoke-static {v5, v6, v8}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    const/4 v5, 0x6

    aget-object v6, v0, v5

    iget-object v9, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v9}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-static {v6, v9, v5}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    aget-object v6, v0, v3

    iget-object v9, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v9}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    const/4 v10, 0x7

    invoke-static {v6, v9, v10}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    aget-object v6, v0, v7

    iget-object v9, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v9}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    const/16 v11, 0x8

    invoke-static {v6, v9, v11}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    aget-object v6, v0, v8

    iget-object v9, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v9}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    const/16 v11, 0x9

    invoke-static {v6, v9, v11}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    aget-object v6, v0, v10

    iget-object v9, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v9}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    const/16 v11, 0xa

    invoke-static {v6, v9, v11}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    aget-object v6, v0, v5

    iget-object v9, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v9}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    const/16 v11, 0xb

    invoke-static {v6, v9, v11}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    aget-object v6, v0, v8

    iget-object v9, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v9}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    const/16 v11, 0xc

    invoke-static {v6, v9, v11}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    aget-object v6, v0, v1

    iget-object v9, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v9}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    const/16 v11, 0xd

    invoke-static {v6, v9, v11}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    aget-object v6, v0, v4

    iget-object v9, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v9}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    const/16 v11, 0xe

    invoke-static {v6, v9, v11}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    aget-object v6, v0, v10

    iget-object v9, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v9}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    const/16 v11, 0xf

    invoke-static {v6, v9, v11}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    aget-object v3, v0, v3

    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    const/16 v9, 0x10

    invoke-static {v3, v6, v9}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    aget-object v3, v0, v5

    iget-object v5, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    const/16 v6, 0x11

    invoke-static {v3, v5, v6}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    aget-object v3, v0, v10

    iget-object v5, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    const/16 v6, 0x12

    invoke-static {v3, v5, v6}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    aget-object v3, v0, v4

    iget-object v4, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    const/16 v5, 0x13

    invoke-static {v3, v4, v5}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    aget-object v1, v0, v1

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    const/16 v4, 0x14

    invoke-static {v1, v3, v4}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    aget-object v1, v0, v8

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    const/16 v4, 0x15

    invoke-static {v1, v3, v4}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    aget-object v1, v0, v7

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    const/16 v4, 0x16

    invoke-static {v1, v3, v4}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v0, v1, v2}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

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

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/shape/Box;->_xExtent:D

    const-string v3, "xExtent"

    const-wide/16 v4, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v7, p0, Lcom/ardor3d/scenegraph/shape/Box;->_yExtent:D

    const-string v9, "yExtent"

    const-wide/16 v10, 0x0

    move-object v6, p1

    invoke-interface/range {v6 .. v11}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/shape/Box;->_zExtent:D

    const-string v3, "zExtent"

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/Box;->_center:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "center"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    return-void
.end method
