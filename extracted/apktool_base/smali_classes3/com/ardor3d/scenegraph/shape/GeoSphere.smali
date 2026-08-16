.class public Lcom/ardor3d/scenegraph/shape/GeoSphere;
.super Lcom/ardor3d/scenegraph/Mesh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;,
        Lcom/ardor3d/scenegraph/shape/GeoSphere$TextureMode;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _maxlevels:I

.field private _radius:D

.field private _textureMode:Lcom/ardor3d/scenegraph/shape/GeoSphere$TextureMode;

.field private _usingIcosahedron:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Mesh;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_usingIcosahedron:Z

    .line 11
    sget-object v0, Lcom/ardor3d/scenegraph/shape/GeoSphere$TextureMode;->Original:Lcom/ardor3d/scenegraph/shape/GeoSphere$TextureMode;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_textureMode:Lcom/ardor3d/scenegraph/shape/GeoSphere$TextureMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZDILcom/ardor3d/scenegraph/shape/GeoSphere$TextureMode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_usingIcosahedron:Z

    .line 3
    sget-object p1, Lcom/ardor3d/scenegraph/shape/GeoSphere$TextureMode;->Original:Lcom/ardor3d/scenegraph/shape/GeoSphere$TextureMode;

    .line 4
    iput-wide p3, p0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_radius:D

    .line 5
    iput p5, p0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_maxlevels:I

    .line 6
    iput-boolean p2, p0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_usingIcosahedron:Z

    .line 7
    iput-object p6, p0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_textureMode:Lcom/ardor3d/scenegraph/shape/GeoSphere$TextureMode;

    .line 8
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->updateGeometry()V

    return-void
.end method

.method private calculateBorderTriangles(I)I
    .locals 2

    add-int/lit8 p1, p1, -0x4

    const/16 v0, 0x6c

    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-lez p1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xc

    move p1, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private put(Lcom/ardor3d/math/Vector3;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;Z)V

    return-void
.end method

.method private put(Lcom/ardor3d/math/Vector3;Z)V
    .locals 13

    .line 2
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 4
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 5
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 6
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->length()D

    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 8
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    div-double/2addr v3, v0

    double-to-float v5, v3

    .line 9
    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 10
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v5

    div-double/2addr v5, v0

    double-to-float v7, v5

    .line 11
    invoke-virtual {v2, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 12
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v7

    div-double/2addr v7, v0

    double-to-float v0, v7

    .line 13
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 14
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    .line 15
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    const-wide/16 v9, 0x0

    cmpl-double v1, v1, v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    cmpl-double p1, v1, v9

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 16
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 17
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr p1, v1

    add-double/2addr p1, v11

    rem-double/2addr p1, v11

    double-to-float p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 19
    :goto_0
    sget-object p1, Lcom/ardor3d/scenegraph/shape/GeoSphere$1;->$SwitchMap$com$ardor3d$scenegraph$shape$GeoSphere$TextureMode:[I

    iget-object p2, p0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_textureMode:Lcom/ardor3d/scenegraph/shape/GeoSphere$TextureMode;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const-wide p1, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 20
    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    add-double/2addr v1, p1

    const-wide p1, 0x3fd45f306dc9c883L    # 0.3183098861837907

    mul-double v9, v1, p1

    goto :goto_1

    :cond_3
    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    add-double/2addr v7, v11

    mul-double v9, v7, p1

    :goto_1
    double-to-float p1, v9

    .line 21
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    return-void
.end method

.method private updateGeometry()V
    .locals 35

    move-object/from16 v0, p0

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    iget-boolean v9, v0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_usingIcosahedron:Z

    const/16 v10, 0x8

    if-eqz v9, :cond_0

    const/16 v12, 0x14

    goto :goto_0

    :cond_0
    move v12, v10

    :goto_0
    if-eqz v9, :cond_1

    const/16 v9, 0xc

    goto :goto_1

    :cond_1
    move v9, v4

    :goto_1
    iget v14, v0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_maxlevels:I

    add-int/lit8 v15, v14, -0x1

    mul-int/2addr v15, v7

    shl-int v15, v12, v15

    mul-int/lit8 v16, v14, 0x2

    shl-int v16, v8, v16

    add-int/lit8 v16, v16, -0x1

    div-int/lit8 v16, v16, 0x3

    add-int/lit8 v16, v16, -0x1

    mul-int v12, v12, v16

    add-int/2addr v12, v9

    invoke-direct {v0, v14}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->calculateBorderTriangles(I)I

    move-result v9

    add-int/2addr v12, v9

    iget-object v9, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v9}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    iget-object v14, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {v9, v12}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v14, v9}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    iget-object v14, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v14}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v13

    invoke-static {v13, v12}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v13

    invoke-virtual {v14, v13}, Lcom/ardor3d/scenegraph/MeshData;->setNormalBuffer(Ljava/nio/FloatBuffer;)V

    iget-object v13, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v13, v3}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v13

    iget-object v14, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    new-instance v1, Lcom/ardor3d/scenegraph/FloatBufferData;

    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/FloatBuffer;

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    invoke-static {v13, v12}, Lcom/ardor3d/util/geom/BufferUtils;->createVector2Buffer(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v13

    invoke-direct {v1, v13, v7}, Lcom/ardor3d/scenegraph/FloatBufferData;-><init>(Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v14, v1, v3}, Lcom/ardor3d/scenegraph/MeshData;->setTextureCoords(Lcom/ardor3d/scenegraph/FloatBufferData;I)V

    iget-boolean v1, v0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_usingIcosahedron:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x3c

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iget-wide v13, v0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_radius:D

    const-wide v17, 0x3fdc9eecbfb15b57L    # 0.4472

    mul-double v7, v13, v17

    const-wide v17, 0x3fec9eecbfb15b57L    # 0.8944

    mul-double v3, v13, v17

    const-wide v17, 0x3fd1b089a0275254L    # 0.2764

    mul-double v5, v13, v17

    const-wide v17, 0x3fe727bb2fec56d6L    # 0.7236

    move/from16 v26, v12

    mul-double v11, v13, v17

    const-wide v17, 0x3feb38ef34d6a162L    # 0.8507

    move-object/from16 v27, v9

    mul-double v9, v13, v17

    const-wide v17, 0x3fe0d288ce703afbL    # 0.5257

    mul-double v13, v13, v17

    new-instance v2, Lcom/ardor3d/math/Vector3;

    move-wide/from16 v28, v13

    iget-wide v13, v0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_radius:D

    const-wide/16 v22, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v17, v2

    move-wide/from16 v20, v13

    invoke-direct/range {v17 .. v23}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-direct {v0, v2}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;)V

    new-instance v2, Lcom/ardor3d/math/Vector3;

    const-wide/16 v24, 0x0

    move-object/from16 v19, v2

    move-wide/from16 v20, v3

    move-wide/from16 v22, v7

    invoke-direct/range {v19 .. v25}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-direct {v0, v2}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;)V

    new-instance v2, Lcom/ardor3d/math/Vector3;

    neg-double v13, v9

    move-object/from16 v19, v2

    move-wide/from16 v20, v5

    move-wide/from16 v24, v13

    invoke-direct/range {v19 .. v25}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-direct {v0, v2}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;)V

    new-instance v2, Lcom/ardor3d/math/Vector3;

    move-wide/from16 v30, v3

    neg-double v3, v11

    move-wide/from16 v32, v13

    move-wide/from16 v13, v28

    move-wide/from16 v28, v11

    neg-double v11, v13

    move-object/from16 v19, v2

    move-wide/from16 v20, v3

    move-wide/from16 v24, v11

    invoke-direct/range {v19 .. v25}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-direct {v0, v2}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;)V

    new-instance v2, Lcom/ardor3d/math/Vector3;

    move-object/from16 v19, v2

    move-wide/from16 v24, v13

    invoke-direct/range {v19 .. v25}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-direct {v0, v2}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;)V

    new-instance v2, Lcom/ardor3d/math/Vector3;

    move-object/from16 v19, v2

    move-wide/from16 v20, v5

    move-wide/from16 v24, v9

    invoke-direct/range {v19 .. v25}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-direct {v0, v2}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;)V

    new-instance v2, Lcom/ardor3d/math/Vector3;

    neg-double v3, v7

    move-object/from16 v19, v2

    move-wide/from16 v20, v28

    move-wide/from16 v22, v3

    move-wide/from16 v24, v11

    invoke-direct/range {v19 .. v25}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-direct {v0, v2}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;)V

    new-instance v2, Lcom/ardor3d/math/Vector3;

    neg-double v5, v5

    move-object/from16 v17, v2

    move-wide/from16 v18, v5

    move-wide/from16 v20, v3

    move-wide/from16 v22, v32

    invoke-direct/range {v17 .. v23}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-direct {v0, v2}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;)V

    new-instance v2, Lcom/ardor3d/math/Vector3;

    move-wide/from16 v7, v30

    neg-double v7, v7

    const-wide/16 v22, 0x0

    move-object/from16 v17, v2

    move-wide/from16 v18, v7

    invoke-direct/range {v17 .. v23}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-direct {v0, v2}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;)V

    new-instance v2, Lcom/ardor3d/math/Vector3;

    move-object/from16 v19, v2

    move-wide/from16 v20, v5

    move-wide/from16 v22, v3

    move-wide/from16 v24, v9

    invoke-direct/range {v19 .. v25}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-direct {v0, v2}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;)V

    new-instance v2, Lcom/ardor3d/math/Vector3;

    move-object/from16 v19, v2

    move-wide/from16 v20, v28

    move-wide/from16 v24, v13

    invoke-direct/range {v19 .. v25}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-direct {v0, v2}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;)V

    new-instance v2, Lcom/ardor3d/math/Vector3;

    iget-wide v3, v0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_radius:D

    neg-double v8, v3

    const-wide/16 v10, 0x0

    const-wide/16 v6, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-direct {v0, v2}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;)V

    const/16 v2, 0x14

    new-array v3, v2, [Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_3

    new-instance v5, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;

    invoke-direct {v5}, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;-><init>()V

    aput-object v5, v3, v4

    iget-object v5, v5, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;->pt:[I

    const/4 v6, 0x3

    mul-int/lit8 v7, v4, 0x3

    aget v6, v1, v7

    const/4 v8, 0x0

    aput v6, v5, v8

    const/4 v6, 0x1

    add-int/lit8 v8, v7, 0x1

    aget v8, v1, v8

    aput v8, v5, v6

    const/4 v8, 0x2

    add-int/2addr v7, v8

    aget v7, v1, v7

    aput v7, v5, v8

    add-int/2addr v4, v6

    goto :goto_3

    :cond_3
    const/16 v4, 0xc

    goto/16 :goto_4

    :cond_4
    move-object/from16 v27, v9

    move/from16 v26, v12

    new-instance v1, Lcom/ardor3d/math/Vector3;

    iget-wide v5, v0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_radius:D

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    move-object/from16 v18, v1

    move-wide/from16 v19, v5

    invoke-direct/range {v18 .. v24}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v3, Lcom/ardor3d/math/Vector3;

    iget-wide v5, v0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_radius:D

    neg-double v5, v5

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    move-object/from16 v28, v3

    move-wide/from16 v29, v5

    invoke-direct/range {v28 .. v34}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v5, Lcom/ardor3d/math/Vector3;

    iget-wide v6, v0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_radius:D

    const-wide/16 v19, 0x0

    move-object/from16 v18, v5

    move-wide/from16 v21, v6

    invoke-direct/range {v18 .. v24}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v6, Lcom/ardor3d/math/Vector3;

    iget-wide v7, v0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_radius:D

    neg-double v7, v7

    const-wide/16 v29, 0x0

    move-object/from16 v28, v6

    move-wide/from16 v31, v7

    invoke-direct/range {v28 .. v34}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v7, Lcom/ardor3d/math/Vector3;

    const-wide/16 v21, 0x0

    iget-wide v8, v0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_radius:D

    move-object/from16 v18, v7

    move-wide/from16 v23, v8

    invoke-direct/range {v18 .. v24}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v8, Lcom/ardor3d/math/Vector3;

    iget-wide v11, v0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_radius:D

    neg-double v11, v11

    const-wide/16 v31, 0x0

    move-object/from16 v28, v8

    move-wide/from16 v33, v11

    invoke-direct/range {v28 .. v34}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-direct {v0, v1}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;)V

    invoke-direct {v0, v3}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;)V

    invoke-direct {v0, v5}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;)V

    invoke-direct {v0, v6}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;)V

    invoke-direct {v0, v7}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;)V

    invoke-direct {v0, v8}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;)V

    new-array v3, v10, [Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;

    new-instance v1, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-direct {v1, v5, v6, v7}, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;-><init>(III)V

    aput-object v1, v3, v7

    new-instance v1, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;

    const/4 v8, 0x1

    invoke-direct {v1, v8, v6, v5}, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;-><init>(III)V

    aput-object v1, v3, v8

    new-instance v1, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;

    const/4 v9, 0x3

    invoke-direct {v1, v9, v6, v8}, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;-><init>(III)V

    aput-object v1, v3, v5

    new-instance v1, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;

    invoke-direct {v1, v7, v6, v9}, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;-><init>(III)V

    aput-object v1, v3, v9

    new-instance v1, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;

    invoke-direct {v1, v2, v5, v7}, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;-><init>(III)V

    aput-object v1, v3, v6

    new-instance v1, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;

    invoke-direct {v1, v2, v8, v5}, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;-><init>(III)V

    aput-object v1, v3, v2

    new-instance v1, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;

    invoke-direct {v1, v2, v9, v8}, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;-><init>(III)V

    aput-object v1, v3, v4

    new-instance v1, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;

    invoke-direct {v1, v2, v7, v9}, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;-><init>(III)V

    const/4 v2, 0x7

    aput-object v1, v3, v2

    :goto_4
    new-instance v1, Lcom/ardor3d/math/Vector3;

    invoke-direct {v1}, Lcom/ardor3d/math/Vector3;-><init>()V

    new-instance v2, Lcom/ardor3d/math/Vector3;

    invoke-direct {v2}, Lcom/ardor3d/math/Vector3;-><init>()V

    new-instance v5, Lcom/ardor3d/math/Vector3;

    invoke-direct {v5}, Lcom/ardor3d/math/Vector3;-><init>()V

    const/4 v6, 0x1

    :goto_5
    iget v7, v0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_maxlevels:I

    if-ge v6, v7, :cond_7

    array-length v7, v3

    const/4 v8, 0x4

    mul-int/2addr v7, v8

    new-array v8, v7, [Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v7, :cond_5

    new-instance v10, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;

    invoke-direct {v10}, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;-><init>()V

    aput-object v10, v8, v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    goto :goto_6

    :cond_5
    const/4 v7, 0x0

    :goto_7
    array-length v9, v3

    if-ge v7, v9, :cond_6

    const/4 v9, 0x4

    mul-int/lit8 v10, v7, 0x4

    aget-object v11, v3, v7

    aget-object v12, v8, v10

    iget-object v13, v11, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;->pt:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v14, v27

    invoke-static {v1, v14, v13}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    iget-object v13, v11, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;->pt:[I

    const/16 v16, 0x1

    aget v13, v13, v16

    invoke-static {v2, v14, v13}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    iget-object v13, v11, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;->pt:[I

    const/16 v16, 0x2

    aget v13, v13, v16

    invoke-static {v5, v14, v13}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v0, v1, v5}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->createMidpoint(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    move-result-object v13

    move/from16 v16, v10

    iget-wide v9, v0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_radius:D

    invoke-virtual {v13, v9, v10}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    move-result-object v9

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->createMidpoint(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    move-result-object v10

    iget-wide v13, v0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_radius:D

    invoke-virtual {v10, v13, v14}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    move-result-object v10

    invoke-virtual {v0, v2, v5}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->createMidpoint(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    move-result-object v13

    move-object v14, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_radius:D

    invoke-virtual {v13, v1, v2}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    const/4 v2, 0x1

    add-int/lit8 v13, v4, 0x1

    invoke-direct {v0, v9}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;)V

    const/4 v9, 0x2

    add-int/lit8 v18, v4, 0x2

    invoke-direct {v0, v10}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;)V

    const/4 v10, 0x3

    add-int/lit8 v19, v4, 0x3

    invoke-direct {v0, v1}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;)V

    iget-object v1, v12, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;->pt:[I

    iget-object v10, v11, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;->pt:[I

    const/4 v11, 0x0

    aget v12, v10, v11

    aput v12, v1, v11

    aput v13, v1, v2

    aput v4, v1, v9

    add-int/lit8 v1, v16, 0x1

    aget-object v1, v8, v1

    iget-object v1, v1, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;->pt:[I

    aput v13, v1, v11

    aget v12, v10, v2

    aput v12, v1, v2

    aput v18, v1, v9

    add-int/lit8 v1, v16, 0x2

    aget-object v1, v8, v1

    iget-object v1, v1, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;->pt:[I

    aput v4, v1, v11

    aput v13, v1, v2

    aput v18, v1, v9

    const/4 v1, 0x3

    add-int/lit8 v12, v16, 0x3

    aget-object v12, v8, v12

    iget-object v12, v12, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;->pt:[I

    aput v4, v12, v11

    aput v18, v12, v2

    aget v4, v10, v9

    aput v4, v12, v9

    add-int/2addr v7, v2

    move-object v1, v14

    move-object/from16 v2, v17

    move/from16 v4, v19

    goto/16 :goto_7

    :cond_6
    move-object v14, v1

    move-object/from16 v17, v2

    const/4 v1, 0x3

    const/4 v2, 0x1

    add-int/2addr v6, v2

    move-object v3, v8

    move-object v1, v14

    move-object/from16 v2, v17

    goto/16 :goto_5

    :cond_7
    const/4 v1, 0x3

    const/4 v2, 0x1

    mul-int/2addr v15, v1

    add-int/lit8 v12, v26, -0x1

    invoke-static {v15, v12}, Lcom/ardor3d/util/geom/BufferUtils;->createIndexBufferData(II)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    iget-object v4, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4, v2}, Lcom/ardor3d/scenegraph/MeshData;->setIndices(Lcom/ardor3d/scenegraph/IndexBufferData;)V

    iget-object v4, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v4

    div-int/2addr v4, v1

    array-length v1, v3

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v1, :cond_b

    aget-object v5, v3, v8

    iget-object v6, v5, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;->pt:[I

    array-length v7, v6

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v7, :cond_a

    aget v10, v6, v9

    new-instance v11, Lcom/ardor3d/math/Vector3;

    invoke-direct {v11}, Lcom/ardor3d/math/Vector3;-><init>()V

    iget-object v12, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v12}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v12

    invoke-static {v11, v12, v10}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v11}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_8

    invoke-virtual {v11}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v12

    cmpl-double v12, v12, v14

    if-nez v12, :cond_8

    iget-object v12, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v12}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v12

    iget-object v13, v5, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;->pt:[I

    const/16 v16, 0x0

    aget v13, v13, v16

    const/16 v17, 0x3

    mul-int/lit8 v13, v13, 0x3

    const/4 v14, 0x1

    add-int/2addr v13, v14

    invoke-virtual {v12, v13}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v12

    iget-object v13, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v13}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v13

    iget-object v15, v5, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;->pt:[I

    aget v15, v15, v14

    mul-int/lit8 v15, v15, 0x3

    add-int/2addr v15, v14

    invoke-virtual {v13, v15}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v13

    add-float/2addr v12, v13

    iget-object v13, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v13}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v13

    iget-object v15, v5, Lcom/ardor3d/scenegraph/shape/GeoSphere$Triangle;->pt:[I

    const/16 v20, 0x2

    aget v15, v15, v20

    mul-int/lit8 v15, v15, 0x3

    add-int/2addr v15, v14

    invoke-virtual {v13, v15}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v13

    add-float/2addr v12, v13

    float-to-double v12, v12

    const-wide/high16 v21, 0x4008000000000000L    # 3.0

    div-double v12, v12, v21

    const-wide/16 v18, 0x0

    cmpl-double v12, v12, v18

    if-lez v12, :cond_9

    invoke-direct {v0, v11, v14}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->put(Lcom/ardor3d/math/Vector3;Z)V

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    move v4, v10

    goto :goto_a

    :cond_8
    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x3

    const/16 v20, 0x2

    :cond_9
    invoke-virtual {v2, v10}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    :goto_a
    add-int/2addr v9, v14

    goto/16 :goto_9

    :cond_a
    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x3

    const/16 v20, 0x2

    add-int/2addr v8, v14

    goto/16 :goto_8

    :cond_b
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x0
        0x2
        0x3
        0x0
        0x3
        0x4
        0x0
        0x4
        0x5
        0x0
        0x5
        0x1
        0x1
        0xa
        0x6
        0x2
        0x6
        0x7
        0x3
        0x7
        0x8
        0x4
        0x8
        0x9
        0x5
        0x9
        0xa
        0x6
        0x2
        0x1
        0x7
        0x3
        0x2
        0x8
        0x4
        0x3
        0x9
        0x5
        0x4
        0xa
        0x1
        0x5
        0xb
        0x7
        0x6
        0xb
        0x8
        0x7
        0xb
        0x9
        0x8
        0xb
        0xa
        0x9
        0xb
        0x6
        0xa
    .end array-data
.end method


# virtual methods
.method public createMidpoint(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 10

    new-instance v7, Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v4, v0, v2

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v8

    add-double/2addr v0, v8

    mul-double v8, v0, v2

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide p1

    add-double/2addr v0, p1

    mul-double p1, v0, v2

    move-object v0, v7

    move-wide v1, v4

    move-wide v3, v8

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    return-object v7
.end method

.method public getRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_radius:D

    return-wide v0
.end method

.method public getTextureMode()Lcom/ardor3d/scenegraph/shape/GeoSphere$TextureMode;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_textureMode:Lcom/ardor3d/scenegraph/shape/GeoSphere$TextureMode;

    return-object v0
.end method

.method public isUsingIcosahedron()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_usingIcosahedron:Z

    return v0
.end method

.method public setTextureMode(Lcom/ardor3d/scenegraph/shape/GeoSphere$TextureMode;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_textureMode:Lcom/ardor3d/scenegraph/shape/GeoSphere$TextureMode;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/GeoSphere;->_textureMode:Lcom/ardor3d/scenegraph/shape/GeoSphere$TextureMode;

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/GeoSphere;->updateGeometry()V

    :cond_0
    return-void
.end method
