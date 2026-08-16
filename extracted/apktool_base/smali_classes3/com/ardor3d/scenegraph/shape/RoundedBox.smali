.class public Lcom/ardor3d/scenegraph/shape/RoundedBox;
.super Lcom/ardor3d/scenegraph/Mesh;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _border:Lcom/ardor3d/math/Vector3;

.field private final _extent:Lcom/ardor3d/math/Vector3;

.field private final _slope:Lcom/ardor3d/math/Vector3;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 14

    .line 1
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/ardor3d/math/Vector3;

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    .line 3
    new-instance p1, Lcom/ardor3d/math/Vector3;

    const-wide v10, 0x3fa999999999999aL    # 0.05

    const-wide v12, 0x3fa999999999999aL    # 0.05

    const-wide v8, 0x3fa999999999999aL    # 0.05

    move-object v7, p1

    invoke-direct/range {v7 .. v13}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    .line 4
    new-instance p1, Lcom/ardor3d/math/Vector3;

    const-wide v3, 0x3f947ae147ae147bL    # 0.02

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    const-wide v1, 0x3f947ae147ae147bL    # 0.02

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    .line 5
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->setData()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ardor3d/math/Vector3;)V
    .locals 23

    move-object/from16 v0, p0

    .line 6
    invoke-direct/range {p0 .. p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v8, Lcom/ardor3d/math/Vector3;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object v8, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    .line 8
    new-instance v1, Lcom/ardor3d/math/Vector3;

    const-wide v12, 0x3fa999999999999aL    # 0.05

    const-wide v14, 0x3fa999999999999aL    # 0.05

    const-wide v10, 0x3fa999999999999aL    # 0.05

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    .line 9
    new-instance v1, Lcom/ardor3d/math/Vector3;

    const-wide v19, 0x3f947ae147ae147bL    # 0.02

    const-wide v21, 0x3f947ae147ae147bL    # 0.02

    const-wide v17, 0x3f947ae147ae147bL    # 0.02

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v22}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    move-object/from16 v2, p2

    .line 10
    invoke-virtual {v2, v1, v8}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->setData()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)V
    .locals 23

    move-object/from16 v0, p0

    .line 12
    invoke-direct/range {p0 .. p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance v8, Lcom/ardor3d/math/Vector3;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object v8, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    .line 14
    new-instance v1, Lcom/ardor3d/math/Vector3;

    const-wide v12, 0x3fa999999999999aL    # 0.05

    const-wide v14, 0x3fa999999999999aL    # 0.05

    const-wide v10, 0x3fa999999999999aL    # 0.05

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    .line 15
    new-instance v2, Lcom/ardor3d/math/Vector3;

    const-wide v19, 0x3f947ae147ae147bL    # 0.02

    const-wide v21, 0x3f947ae147ae147bL    # 0.02

    const-wide v17, 0x3f947ae147ae147bL    # 0.02

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object v2, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    move-object/from16 v3, p3

    .line 16
    invoke-virtual {v1, v3}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-object/from16 v1, p4

    .line 17
    invoke-virtual {v2, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-object/from16 v1, p2

    .line 18
    invoke-virtual {v1, v2, v8}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    .line 19
    invoke-direct/range {p0 .. p0}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->setData()V

    return-void
.end method

.method private put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V
    .locals 2

    invoke-virtual {p3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/ardor3d/math/Vector3;->normalize(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    double-to-float p3, v0

    invoke-virtual {p2, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v0

    double-to-float p3, v0

    invoke-virtual {p2, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v0

    double-to-float p3, v0

    invoke-virtual {p2, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-static {p1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method private setData()V
    .locals 0

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->setVertexAndNormalData()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->setTextureData()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->setIndexData()V

    return-void
.end method

.method private setIndexData()V
    .locals 10

    const/16 v0, 0x1e

    const/4 v1, 0x0

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getIndexBuffer()Ljava/nio/Buffer;

    move-result-object v3

    if-nez v3, :cond_2

    const/16 v3, 0xb4

    const/16 v4, 0x2f

    invoke-static {v3, v4}, Lcom/ardor3d/util/geom/BufferUtils;->createIndexBufferData(II)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v3

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    move v5, v1

    :goto_0
    if-ge v5, v2, :cond_1

    move v6, v1

    :goto_1
    if-ge v6, v0, :cond_0

    mul-int/lit8 v7, v5, 0x1e

    add-int/2addr v7, v6

    mul-int/lit8 v8, v5, 0x8

    aget v9, v4, v6

    add-int/2addr v8, v9

    invoke-virtual {v3, v7, v8}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(II)Lcom/ardor3d/scenegraph/IndexBufferData;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0, v3}, Lcom/ardor3d/scenegraph/MeshData;->setIndices(Lcom/ardor3d/scenegraph/IndexBufferData;)V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0x1
        0x1
        0x4
        0x5
        0x1
        0x5
        0x3
        0x3
        0x5
        0x7
        0x3
        0x7
        0x2
        0x2
        0x7
        0x6
        0x2
        0x6
        0x0
        0x0
        0x6
        0x4
        0x4
        0x6
        0x5
        0x5
        0x6
        0x7
    .end array-data
.end method

.method private setTextureData()V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/16 v5, 0x30

    invoke-static {v5}, Lcom/ardor3d/util/geom/BufferUtils;->createVector2Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/ardor3d/scenegraph/MeshData;->setTextureBuffer(Ljava/nio/FloatBuffer;I)V

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3, v4}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/FloatBuffer;

    iget-object v5, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v7

    iget-object v9, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v9}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v9

    iget-object v11, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v11}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v11

    add-double/2addr v9, v11

    div-double/2addr v5, v9

    iget-object v9, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v9}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v9

    mul-double/2addr v9, v7

    iget-object v11, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v11}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v11

    iget-object v13, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v13

    add-double/2addr v11, v13

    div-double/2addr v9, v11

    new-array v11, v1, [D

    aput-wide v5, v11, v4

    aput-wide v9, v11, v2

    iget-object v5, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    mul-double/2addr v5, v7

    iget-object v9, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v9}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v9

    iget-object v12, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v12}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v12

    add-double/2addr v9, v12

    div-double/2addr v5, v9

    iget-object v9, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v9}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v9

    mul-double/2addr v9, v7

    iget-object v12, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v12}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v12

    iget-object v14, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v14

    add-double/2addr v12, v14

    div-double/2addr v9, v12

    new-array v12, v1, [D

    aput-wide v5, v12, v4

    aput-wide v9, v12, v2

    iget-object v5, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v5

    mul-double/2addr v5, v7

    iget-object v9, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v9}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v9

    iget-object v13, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v13

    add-double/2addr v9, v13

    div-double/2addr v5, v9

    iget-object v9, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v9}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v9

    mul-double/2addr v9, v7

    iget-object v13, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v13

    iget-object v15, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v15

    add-double/2addr v13, v15

    div-double/2addr v9, v13

    new-array v13, v1, [D

    aput-wide v5, v13, v4

    aput-wide v9, v13, v2

    iget-object v5, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    mul-double/2addr v5, v7

    iget-object v9, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v9}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v9

    iget-object v14, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v14

    add-double/2addr v9, v14

    div-double/2addr v5, v9

    iget-object v9, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v9}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v9

    mul-double/2addr v9, v7

    iget-object v14, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v14

    iget-object v7, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v7

    add-double/2addr v14, v7

    div-double/2addr v9, v14

    new-array v14, v1, [D

    aput-wide v5, v14, v4

    aput-wide v9, v14, v2

    iget-object v5, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v7

    iget-object v9, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v9}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v9

    iget-object v15, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    add-double/2addr v9, v15

    div-double/2addr v5, v9

    iget-object v9, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v9}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v9

    mul-double/2addr v9, v7

    iget-object v7, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v7

    iget-object v15, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v17

    add-double v7, v7, v17

    div-double/2addr v9, v7

    new-array v15, v1, [D

    aput-wide v5, v15, v4

    aput-wide v9, v15, v2

    iget-object v5, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v7

    iget-object v9, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v9}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v9

    iget-object v2, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v17

    add-double v9, v9, v17

    div-double/2addr v5, v9

    iget-object v2, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v9

    mul-double/2addr v9, v7

    iget-object v2, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v7

    iget-object v2, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v17

    add-double v7, v7, v17

    div-double/2addr v9, v7

    new-array v1, v1, [D

    aput-wide v5, v1, v4

    const/4 v2, 0x1

    aput-wide v9, v1, v2

    move-object/from16 v16, v1

    filled-new-array/range {v11 .. v16}, [[D

    move-result-object v1

    move v2, v4

    :goto_0
    const/4 v5, 0x6

    if-ge v2, v5, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    aget-object v5, v1, v2

    aget-wide v6, v5, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v5, v8, v6

    double-to-float v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    aget-object v6, v1, v2

    const/4 v7, 0x1

    aget-wide v10, v6, v7

    const-wide/16 v12, 0x0

    add-double/2addr v10, v12

    double-to-float v6, v10

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    aget-object v5, v1, v2

    aget-wide v10, v5, v4

    add-double/2addr v10, v12

    double-to-float v5, v10

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    aget-object v6, v1, v2

    aget-wide v10, v6, v7

    add-double/2addr v10, v12

    double-to-float v6, v10

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    aget-object v5, v1, v2

    aget-wide v10, v5, v4

    sub-double v5, v8, v10

    double-to-float v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    aget-object v6, v1, v2

    aget-wide v10, v6, v7

    sub-double v10, v8, v10

    double-to-float v6, v10

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    aget-object v5, v1, v2

    aget-wide v10, v5, v4

    add-double/2addr v10, v12

    double-to-float v5, v10

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    aget-object v6, v1, v2

    aget-wide v10, v6, v7

    sub-double/2addr v8, v10

    double-to-float v6, v8

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/2addr v2, v7

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setVertexAndNormalData()V
    .locals 10

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {v2}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->setNormalBuffer(Ljava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->computeVertices()[Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-direct {p0, v1, v2, v4}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/4 v4, 0x1

    aget-object v5, v0, v4

    invoke-direct {p0, v1, v2, v5}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/4 v5, 0x2

    aget-object v6, v0, v5

    invoke-direct {p0, v1, v2, v6}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/4 v6, 0x3

    aget-object v7, v0, v6

    invoke-direct {p0, v1, v2, v7}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v7, 0x8

    aget-object v7, v0, v7

    invoke-direct {p0, v1, v2, v7}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v7, 0x9

    aget-object v7, v0, v7

    invoke-direct {p0, v1, v2, v7}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v7, 0xa

    aget-object v7, v0, v7

    invoke-direct {p0, v1, v2, v7}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v7, 0xb

    aget-object v7, v0, v7

    invoke-direct {p0, v1, v2, v7}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    aget-object v7, v0, v4

    invoke-direct {p0, v1, v2, v7}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    aget-object v7, v0, v3

    invoke-direct {p0, v1, v2, v7}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/4 v7, 0x5

    aget-object v8, v0, v7

    invoke-direct {p0, v1, v2, v8}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/4 v8, 0x4

    aget-object v9, v0, v8

    invoke-direct {p0, v1, v2, v9}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v9, 0xd

    aget-object v9, v0, v9

    invoke-direct {p0, v1, v2, v9}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v9, 0xc

    aget-object v9, v0, v9

    invoke-direct {p0, v1, v2, v9}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v9, 0xf

    aget-object v9, v0, v9

    invoke-direct {p0, v1, v2, v9}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v9, 0xe

    aget-object v9, v0, v9

    invoke-direct {p0, v1, v2, v9}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    aget-object v9, v0, v6

    invoke-direct {p0, v1, v2, v9}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    aget-object v4, v0, v4

    invoke-direct {p0, v1, v2, v4}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/4 v4, 0x7

    aget-object v9, v0, v4

    invoke-direct {p0, v1, v2, v9}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    aget-object v9, v0, v7

    invoke-direct {p0, v1, v2, v9}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v9, 0x11

    aget-object v9, v0, v9

    invoke-direct {p0, v1, v2, v9}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v9, 0x10

    aget-object v9, v0, v9

    invoke-direct {p0, v1, v2, v9}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v9, 0x13

    aget-object v9, v0, v9

    invoke-direct {p0, v1, v2, v9}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v9, 0x12

    aget-object v9, v0, v9

    invoke-direct {p0, v1, v2, v9}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    aget-object v9, v0, v5

    invoke-direct {p0, v1, v2, v9}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    aget-object v6, v0, v6

    invoke-direct {p0, v1, v2, v6}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/4 v6, 0x6

    aget-object v9, v0, v6

    invoke-direct {p0, v1, v2, v9}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    aget-object v9, v0, v4

    invoke-direct {p0, v1, v2, v9}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v9, 0x14

    aget-object v9, v0, v9

    invoke-direct {p0, v1, v2, v9}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v9, 0x15

    aget-object v9, v0, v9

    invoke-direct {p0, v1, v2, v9}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v9, 0x16

    aget-object v9, v0, v9

    invoke-direct {p0, v1, v2, v9}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v9, 0x17

    aget-object v9, v0, v9

    invoke-direct {p0, v1, v2, v9}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    aget-object v3, v0, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    aget-object v3, v0, v5

    invoke-direct {p0, v1, v2, v3}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    aget-object v3, v0, v8

    invoke-direct {p0, v1, v2, v3}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    aget-object v3, v0, v6

    invoke-direct {p0, v1, v2, v3}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v3, 0x18

    aget-object v3, v0, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v3, 0x19

    aget-object v3, v0, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v3, 0x1a

    aget-object v3, v0, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v3, 0x1b

    aget-object v3, v0, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    aget-object v3, v0, v7

    invoke-direct {p0, v1, v2, v3}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    aget-object v3, v0, v8

    invoke-direct {p0, v1, v2, v3}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    aget-object v3, v0, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    aget-object v3, v0, v6

    invoke-direct {p0, v1, v2, v3}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v3, 0x1d

    aget-object v3, v0, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v3, 0x1c

    aget-object v3, v0, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v3, 0x1f

    aget-object v3, v0, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    const/16 v3, 0x1e

    aget-object v0, v0, v3

    invoke-direct {p0, v1, v2, v0}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->put(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/math/Vector3;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/ardor3d/scenegraph/shape/RoundedBox;
    .locals 5

    .line 2
    new-instance v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_clone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->clone()Lcom/ardor3d/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->clone()Lcom/ardor3d/math/Vector3;

    move-result-object v3

    iget-object v4, p0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->clone()Lcom/ardor3d/math/Vector3;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ardor3d/scenegraph/shape/RoundedBox;-><init>(Ljava/lang/String;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/shape/RoundedBox;->clone()Lcom/ardor3d/scenegraph/shape/RoundedBox;

    move-result-object v0

    return-object v0
.end method

.method public computeVertices()[Lcom/ardor3d/math/Vector3;
    .locals 48

    move-object/from16 v0, p0

    new-instance v1, Lcom/ardor3d/math/Vector3;

    move-object v8, v1

    iget-object v2, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    neg-double v2, v2

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    neg-double v4, v4

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v10, Lcom/ardor3d/math/Vector3;

    move-object v9, v10

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v11

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    neg-double v13, v1

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v15

    invoke-direct/range {v10 .. v16}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v1, Lcom/ardor3d/math/Vector3;

    move-object v10, v1

    iget-object v2, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    neg-double v2, v2

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    neg-double v4, v4

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    neg-double v6, v6

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v12, Lcom/ardor3d/math/Vector3;

    move-object v11, v12

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v13

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    neg-double v3, v3

    move-wide v15, v1

    move-wide/from16 v17, v3

    invoke-direct/range {v12 .. v18}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v15, Lcom/ardor3d/math/Vector3;

    move-object v12, v15

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v18

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v20

    move-wide/from16 v16, v1

    invoke-direct/range {v15 .. v21}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v22, Lcom/ardor3d/math/Vector3;

    move-object/from16 v13, v22

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v23

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v25

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v27

    invoke-direct/range {v22 .. v28}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v1, Lcom/ardor3d/math/Vector3;

    move-object v14, v1

    iget-object v2, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    neg-double v2, v2

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    neg-double v6, v6

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v16, Lcom/ardor3d/math/Vector3;

    move-object/from16 v15, v16

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v17

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v19

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    neg-double v1, v1

    move-wide/from16 v21, v1

    invoke-direct/range {v16 .. v22}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v21, Lcom/ardor3d/math/Vector3;

    move-object/from16 v16, v21

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    add-double v22, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    sub-double v24, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    sub-double v26, v1, v3

    invoke-direct/range {v21 .. v27}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v1, Lcom/ardor3d/math/Vector3;

    move-object/from16 v17, v1

    iget-object v2, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    neg-double v4, v4

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    sub-double/2addr v4, v6

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    move-object/from16 v40, v8

    iget-object v8, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v18

    sub-double v6, v6, v18

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v19, Lcom/ardor3d/math/Vector3;

    move-object/from16 v18, v19

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    add-double v20, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    sub-double v22, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    add-double v24, v1, v3

    invoke-direct/range {v19 .. v25}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v1, Lcom/ardor3d/math/Vector3;

    move-object/from16 v19, v1

    iget-object v2, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    neg-double v4, v4

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    sub-double/2addr v4, v6

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    neg-double v6, v6

    iget-object v8, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v20

    add-double v6, v6, v20

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v21, Lcom/ardor3d/math/Vector3;

    move-object/from16 v20, v21

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    add-double v22, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    add-double v24, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    add-double v26, v1, v3

    invoke-direct/range {v21 .. v27}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v1, Lcom/ardor3d/math/Vector3;

    move-object/from16 v21, v1

    iget-object v2, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    neg-double v4, v4

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    add-double/2addr v4, v6

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    iget-object v8, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v22

    add-double v6, v6, v22

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v23, Lcom/ardor3d/math/Vector3;

    move-object/from16 v22, v23

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    add-double v24, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    sub-double v26, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    add-double v28, v1, v3

    invoke-direct/range {v23 .. v29}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v1, Lcom/ardor3d/math/Vector3;

    move-object/from16 v23, v1

    iget-object v2, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    sub-double/2addr v4, v6

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    iget-object v8, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v24

    add-double v6, v6, v24

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v25, Lcom/ardor3d/math/Vector3;

    move-object/from16 v24, v25

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    add-double v26, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    add-double v28, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    sub-double v30, v1, v3

    invoke-direct/range {v25 .. v31}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v1, Lcom/ardor3d/math/Vector3;

    move-object/from16 v25, v1

    iget-object v2, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    add-double/2addr v2, v4

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    neg-double v4, v4

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    add-double/2addr v4, v6

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    neg-double v6, v6

    iget-object v8, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v26

    add-double v6, v6, v26

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v27, Lcom/ardor3d/math/Vector3;

    move-object/from16 v26, v27

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    add-double v28, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    sub-double v30, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    sub-double v32, v1, v3

    invoke-direct/range {v27 .. v33}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v1, Lcom/ardor3d/math/Vector3;

    move-object/from16 v27, v1

    iget-object v2, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    add-double/2addr v2, v4

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    sub-double/2addr v4, v6

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    neg-double v6, v6

    iget-object v8, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v28

    add-double v6, v6, v28

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v29, Lcom/ardor3d/math/Vector3;

    move-object/from16 v28, v29

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    add-double v30, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    add-double v32, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    sub-double v34, v1, v3

    invoke-direct/range {v29 .. v35}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v1, Lcom/ardor3d/math/Vector3;

    move-object/from16 v29, v1

    iget-object v2, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    neg-double v4, v4

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    add-double/2addr v4, v6

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    neg-double v6, v6

    iget-object v8, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v30

    sub-double v6, v6, v30

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v31, Lcom/ardor3d/math/Vector3;

    move-object/from16 v30, v31

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    add-double v32, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    sub-double v34, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    sub-double v36, v1, v3

    invoke-direct/range {v31 .. v37}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v1, Lcom/ardor3d/math/Vector3;

    move-object/from16 v31, v1

    iget-object v2, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    sub-double/2addr v4, v6

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    neg-double v6, v6

    iget-object v8, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v32

    sub-double v6, v6, v32

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v33, Lcom/ardor3d/math/Vector3;

    move-object/from16 v32, v33

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    sub-double v34, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    add-double v36, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    sub-double v38, v1, v3

    invoke-direct/range {v33 .. v39}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v1, Lcom/ardor3d/math/Vector3;

    move-object/from16 v33, v1

    iget-object v2, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    neg-double v2, v2

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    neg-double v4, v4

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    add-double/2addr v4, v6

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    neg-double v6, v6

    iget-object v8, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v34

    add-double v6, v6, v34

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v41, Lcom/ardor3d/math/Vector3;

    move-object/from16 v34, v41

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    sub-double v42, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    sub-double v44, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    sub-double v46, v1, v3

    invoke-direct/range {v41 .. v47}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v1, Lcom/ardor3d/math/Vector3;

    move-object/from16 v35, v1

    iget-object v2, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    neg-double v2, v2

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    sub-double/2addr v4, v6

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    neg-double v6, v6

    iget-object v8, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v36

    add-double v6, v6, v36

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v41, Lcom/ardor3d/math/Vector3;

    move-object/from16 v36, v41

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    add-double v42, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    add-double v44, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    sub-double v46, v1, v3

    invoke-direct/range {v41 .. v47}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v1, Lcom/ardor3d/math/Vector3;

    move-object/from16 v37, v1

    iget-object v2, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    add-double/2addr v4, v6

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    iget-object v8, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v38

    sub-double v6, v6, v38

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v41, Lcom/ardor3d/math/Vector3;

    move-object/from16 v38, v41

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    add-double v42, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    add-double v44, v1, v3

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    add-double v46, v1, v3

    invoke-direct/range {v41 .. v47}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v1, Lcom/ardor3d/math/Vector3;

    move-object/from16 v39, v1

    iget-object v2, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    add-double/2addr v4, v6

    iget-object v6, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    neg-double v6, v6

    iget-object v8, v0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v41

    add-double v6, v6, v41

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    move-object/from16 v8, v40

    filled-new-array/range {v8 .. v39}, [Lcom/ardor3d/math/Vector3;

    move-result-object v1

    return-object v1
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v3, "extent"

    invoke-interface {p1, v3, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v3, "border"

    invoke-interface {p1, v3, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "slope"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_extent:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v3, "extent"

    invoke-interface {p1, v0, v3, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_border:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v3, "border"

    invoke-interface {p1, v0, v3, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/RoundedBox;->_slope:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "slope"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    return-void
.end method
