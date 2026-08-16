.class public Lcom/ardor3d/scenegraph/shape/Sphere;
.super Lcom/ardor3d/scenegraph/Mesh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final _center:Lcom/ardor3d/math/Vector3;

.field protected _radialSamples:I

.field public _radius:D

.field protected _textureMode:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

.field protected _viewInside:Z

.field protected _zSamples:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Mesh;-><init>()V

    .line 2
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_center:Lcom/ardor3d/math/Vector3;

    .line 3
    sget-object v0, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;->Linear:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_textureMode:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_viewInside:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/ardor3d/math/Vector3;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_center:Lcom/ardor3d/math/Vector3;

    .line 7
    sget-object p1, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;->Linear:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_textureMode:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_viewInside:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IID)V
    .locals 8

    .line 9
    new-instance v7, Lcom/ardor3d/math/Vector3;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/scenegraph/shape/Sphere;-><init>(Ljava/lang/String;Lcom/ardor3d/math/type/ReadOnlyVector3;IID)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ardor3d/math/type/ReadOnlyVector3;IID)V
    .locals 6

    .line 10
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 11
    new-instance p1, Lcom/ardor3d/math/Vector3;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_center:Lcom/ardor3d/math/Vector3;

    .line 12
    sget-object p1, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;->Linear:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_textureMode:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_viewInside:Z

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/ardor3d/scenegraph/shape/Sphere;->setData(Lcom/ardor3d/math/type/ReadOnlyVector3;IID)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ardor3d/math/type/ReadOnlyVector3;IIDLcom/ardor3d/scenegraph/shape/Sphere$TextureMode;)V
    .locals 6

    .line 15
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance p1, Lcom/ardor3d/math/Vector3;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_center:Lcom/ardor3d/math/Vector3;

    .line 17
    sget-object p1, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;->Linear:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_viewInside:Z

    .line 19
    iput-object p7, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_textureMode:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/ardor3d/scenegraph/shape/Sphere;->setData(Lcom/ardor3d/math/type/ReadOnlyVector3;IID)V

    return-void
.end method

.method private setGeometryData()V
    .locals 41

    move-object/from16 v0, p0

    iget v1, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_zSamples:I

    add-int/lit8 v1, v1, -0x2

    iget v2, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_radialSamples:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    iget-object v2, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/FloatBuffer;

    invoke-static {v4, v1}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/AbstractBufferData;->setBuffer(Ljava/nio/Buffer;)V

    :goto_0
    iget-object v2, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getNormalCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/MeshData;->setNormalBuffer(Ljava/nio/FloatBuffer;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/FloatBuffer;

    invoke-static {v4, v1}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/AbstractBufferData;->setBuffer(Ljava/nio/Buffer;)V

    :goto_1
    iget-object v2, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createVector2Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v2, v1, v4}, Lcom/ardor3d/scenegraph/MeshData;->setTextureBuffer(Ljava/nio/FloatBuffer;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/FloatBuffer;

    invoke-static {v5, v1}, Lcom/ardor3d/util/geom/BufferUtils;->createVector2Buffer(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->setBuffer(Ljava/nio/Buffer;)V

    :goto_2
    iget v1, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_radialSamples:I

    int-to-double v5, v1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double v5, v7, v5

    iget v2, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_zSamples:I

    sub-int/2addr v2, v3

    int-to-double v9, v2

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v9

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [D

    add-int/2addr v1, v3

    new-array v1, v1, [D

    move v9, v4

    :goto_3
    iget v10, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_radialSamples:I

    if-ge v9, v10, :cond_3

    const-wide v13, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v13, v5

    int-to-double v7, v9

    mul-double/2addr v13, v7

    invoke-static {v13, v14}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v7

    aput-wide v7, v1, v9

    invoke-static {v13, v14}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v7

    aput-wide v7, v2, v9

    add-int/lit8 v9, v9, 0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    :cond_3
    aget-wide v7, v2, v4

    aput-wide v7, v2, v10

    aget-wide v7, v1, v4

    aput-wide v7, v1, v10

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v7

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v8

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v9

    move v10, v3

    move v13, v4

    :goto_4
    iget v14, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_zSamples:I

    sub-int/2addr v14, v3

    if-ge v10, v14, :cond_c

    int-to-double v3, v10

    mul-double/2addr v3, v11

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    add-double v3, v3, v16

    const-wide v23, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v3, v3, v23

    invoke-static {v3, v4}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v25

    iget-wide v14, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_radius:D

    mul-double v14, v14, v25

    move-wide/from16 v27, v11

    iget-object v11, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v8, v11}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v16

    move/from16 v29, v13

    add-double v12, v16, v14

    invoke-virtual {v11, v12, v13}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    iget-wide v12, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_radius:D

    mul-double/2addr v12, v12

    mul-double/2addr v14, v14

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    move-object/from16 v30, v8

    move/from16 v14, v29

    const/4 v15, 0x0

    :goto_5
    iget v8, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_radialSamples:I

    const-wide v31, 0x400921fb54442d18L    # Math.PI

    const-wide v33, 0x3fd45f306dc9c883L    # 0.3183098861837907

    const-wide/high16 v35, 0x3fe0000000000000L    # 0.5

    if-ge v15, v8, :cond_8

    move-wide/from16 v37, v3

    int-to-double v3, v15

    mul-double/2addr v3, v5

    aget-wide v17, v1, v15

    aget-wide v19, v2, v15

    const-wide/16 v21, 0x0

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v22}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    move-result-object v8

    invoke-virtual {v8, v12, v13, v7}, Lcom/ardor3d/math/Vector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object v8, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v8}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-virtual {v11}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v16

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v18

    move-wide/from16 v20, v5

    add-double v5, v16, v18

    double-to-float v5, v5

    invoke-virtual {v8, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v11}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v16

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v18

    move-wide/from16 v39, v12

    add-double v12, v16, v18

    double-to-float v6, v12

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v11}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v12

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v16

    add-double v12, v12, v16

    double-to-float v6, v12

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v5, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-static {v7, v5, v14}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    iget-object v5, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v7, v5}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    iget-boolean v6, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_viewInside:Z

    if-nez v6, :cond_4

    iget-object v6, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v8

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v8

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v5

    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_6

    :cond_4
    iget-object v6, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v8

    neg-float v8, v8

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v8

    neg-float v8, v8

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_6
    iget-object v5, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_textureMode:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    sget-object v6, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;->Linear:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    if-ne v5, v6, :cond_5

    iget-object v5, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v5

    move v6, v14

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/FloatBuffer;

    double-to-float v3, v3

    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v12, v25, v4

    mul-double v12, v12, v35

    double-to-float v4, v12

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_7

    :cond_5
    move v6, v14

    sget-object v8, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;->Projected:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    if-ne v5, v8, :cond_6

    iget-object v5, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/FloatBuffer;

    double-to-float v3, v3

    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    add-double v4, v4, v23

    mul-double v4, v4, v33

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_7

    :cond_6
    sget-object v3, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;->Polar:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    if-ne v5, v3, :cond_7

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    sub-double v3, v23, v3

    div-double v3, v3, v31

    aget-wide v12, v1, v15

    mul-double/2addr v12, v3

    add-double v12, v12, v35

    aget-wide v18, v2, v15

    mul-double v3, v3, v18

    add-double v3, v3, v35

    iget-object v5, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/FloatBuffer;

    double-to-float v8, v12

    invoke-virtual {v5, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    double-to-float v3, v3

    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :cond_7
    :goto_7
    add-int/lit8 v3, v6, 0x1

    add-int/lit8 v15, v15, 0x1

    move v14, v3

    move-wide/from16 v5, v20

    move-wide/from16 v3, v37

    move-wide/from16 v12, v39

    goto/16 :goto_5

    :cond_8
    move-wide/from16 v37, v3

    move-wide/from16 v20, v5

    move v6, v14

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    move/from16 v4, v29

    invoke-static {v3, v4, v6}, Lcom/ardor3d/util/geom/BufferUtils;->copyInternalVector3(Ljava/nio/FloatBuffer;II)V

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static {v3, v4, v6}, Lcom/ardor3d/util/geom/BufferUtils;->copyInternalVector3(Ljava/nio/FloatBuffer;II)V

    iget-object v3, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_textureMode:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    sget-object v4, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;->Linear:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    if-ne v3, v4, :cond_9

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/FloatBuffer;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    add-double v25, v25, v11

    mul-double v4, v25, v35

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_8

    :cond_9
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sget-object v4, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;->Projected:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    if-ne v3, v4, :cond_a

    iget-object v3, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/FloatBuffer;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    add-double v4, v4, v23

    mul-double v4, v4, v33

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_8

    :cond_a
    sget-object v4, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;->Polar:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    if-ne v3, v4, :cond_b

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    sub-double v23, v23, v3

    div-double v3, v23, v31

    double-to-float v3, v3

    iget-object v4, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/FloatBuffer;

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :cond_b
    :goto_8
    add-int/lit8 v13, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v5, v20

    move-wide/from16 v11, v27

    move-object/from16 v8, v30

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_c
    move-object/from16 v30, v8

    move v4, v13

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    mul-int/lit8 v13, v4, 0x3

    invoke-virtual {v1, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    iget-wide v5, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_radius:D

    sub-double/2addr v2, v5

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-boolean v1, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_viewInside:Z

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_9

    :cond_d
    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_9
    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    mul-int/lit8 v13, v4, 0x2

    invoke-virtual {v1, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_textureMode:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    sget-object v4, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;->Polar:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    if-ne v1, v4, :cond_e

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1, v5}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_a

    :cond_e
    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1, v5}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_a
    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v5, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v5, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v5, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v5

    iget-wide v10, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_radius:D

    add-double/2addr v5, v10

    double-to-float v5, v5

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-boolean v1, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_viewInside:Z

    if-nez v1, :cond_f

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_b

    :cond_f
    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_b
    iget-object v1, v0, Lcom/ardor3d/scenegraph/shape/Sphere;->_textureMode:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    if-ne v1, v4, :cond_10

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_c

    :cond_10
    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_c
    invoke-static {v7}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static/range {v30 .. v30}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v9}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method private setIndexData()V
    .locals 10

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_zSamples:I

    add-int/lit8 v1, v0, -0x2

    iget v2, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_radialSamples:I

    add-int/lit8 v3, v2, 0x1

    mul-int/2addr v1, v3

    add-int/lit8 v0, v0, -0x2

    mul-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/ardor3d/util/geom/BufferUtils;->createIndexBufferData(II)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ardor3d/scenegraph/MeshData;->setIndices(Lcom/ardor3d/scenegraph/IndexBufferData;)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_zSamples:I

    add-int/lit8 v3, v3, -0x3

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_radialSamples:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v2

    add-int/lit8 v5, v4, 0x1

    move v6, v0

    move v7, v4

    :goto_1
    iget v8, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_radialSamples:I

    if-ge v6, v8, :cond_1

    iget-boolean v8, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_viewInside:Z

    if-nez v8, :cond_0

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

    goto :goto_2

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto/16 :goto_0

    :cond_2
    move v1, v0

    :goto_4
    iget v2, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_radialSamples:I

    if-ge v1, v2, :cond_4

    iget-boolean v2, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_viewInside:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    goto :goto_5

    :cond_3
    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    iget v1, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_zSamples:I

    add-int/lit8 v1, v1, -0x3

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    :goto_6
    iget v2, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_radialSamples:I

    if-ge v0, v2, :cond_6

    iget-boolean v2, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_viewInside:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    add-int v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    goto :goto_7

    :cond_5
    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    add-int v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method


# virtual methods
.method public getCenter()Lcom/ardor3d/math/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_center:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_radius:D

    return-wide v0
.end method

.method public getTextureMode()Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_textureMode:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    return-object v0
.end method

.method public isViewFromInside()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_viewInside:Z

    return v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "zSamples"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_zSamples:I

    const-string v0, "radialSamples"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_radialSamples:I

    const-string v0, "radius"

    const-wide/16 v2, 0x0

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_radius:D

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_center:Lcom/ardor3d/math/Vector3;

    new-instance v2, Lcom/ardor3d/math/Vector3;

    sget-object v3, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v2, v3}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v3, "center"

    invoke-interface {p1, v3, v2}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const-class v0, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    sget-object v2, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;->Linear:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    const-string v3, "textureMode"

    invoke-interface {p1, v3, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_textureMode:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    const-string v0, "viewInside"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_viewInside:Z

    return-void
.end method

.method public setData(Lcom/ardor3d/math/type/ReadOnlyVector3;IID)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iput p2, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_zSamples:I

    iput p3, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_radialSamples:I

    iput-wide p4, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_radius:D

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Sphere;->setGeometryData()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Sphere;->setIndexData()V

    return-void
.end method

.method public setTextureMode(Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_textureMode:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Sphere;->setGeometryData()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Sphere;->setIndexData()V

    return-void
.end method

.method public setViewFromInside(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_viewInside:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_viewInside:Z

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Sphere;->setGeometryData()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Sphere;->setIndexData()V

    :cond_0
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

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_zSamples:I

    const-string v1, "zSamples"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_radialSamples:I

    const-string v1, "radialSamples"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-wide v4, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_radius:D

    const-string v6, "radius"

    const-wide/16 v7, 0x0

    move-object v3, p1

    invoke-interface/range {v3 .. v8}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_center:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v3, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v3}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v3, "center"

    invoke-interface {p1, v0, v3, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_textureMode:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    const-string v1, "textureMode"

    sget-object v3, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;->Linear:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/shape/Sphere;->_viewInside:Z

    const-string v1, "viewInside"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
