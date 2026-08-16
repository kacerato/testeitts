.class public Lcom/jme3/scene/shape/StripBox;
.super Lcom/jme3/scene/shape/AbstractBox;
.source "SourceFile"


# static fields
.field private static final GEOMETRY_INDICES_DATA:[S

.field private static final GEOMETRY_TEXTURE_DATA:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jme3/scene/shape/StripBox;->GEOMETRY_INDICES_DATA:[S

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jme3/scene/shape/StripBox;->GEOMETRY_TEXTURE_DATA:[F

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x4s
        0x2s
        0x6s
        0x7s
        0x4s
        0x5s
        0x0s
        0x7s
        0x3s
        0x2s
        0x0s
        0x1s
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/jme3/scene/shape/AbstractBox;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/shape/AbstractBox;-><init>()V

    .line 2
    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/jme3/scene/shape/AbstractBox;->updateGeometry(Lcom/jme3/math/Vector3f;FFF)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;FFF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/jme3/scene/shape/AbstractBox;-><init>()V

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jme3/scene/shape/AbstractBox;->updateGeometry(Lcom/jme3/math/Vector3f;FFF)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/jme3/scene/shape/AbstractBox;-><init>()V

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/jme3/scene/shape/AbstractBox;->updateGeometry(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/jme3/scene/Mesh;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/scene/shape/StripBox;->clone()Lcom/jme3/scene/shape/StripBox;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/jme3/scene/shape/StripBox;
    .locals 5

    .line 3
    new-instance v0, Lcom/jme3/scene/shape/StripBox;

    iget-object v1, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v2, p0, Lcom/jme3/scene/shape/AbstractBox;->xExtent:F

    iget v3, p0, Lcom/jme3/scene/shape/AbstractBox;->yExtent:F

    iget v4, p0, Lcom/jme3/scene/shape/AbstractBox;->zExtent:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/scene/shape/StripBox;-><init>(Lcom/jme3/math/Vector3f;FFF)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/jme3/scene/shape/StripBox;->clone()Lcom/jme3/scene/shape/StripBox;

    move-result-object v0

    return-object v0
.end method

.method public doUpdateGeometryIndices()V
    .locals 3

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/jme3/scene/shape/StripBox;->GEOMETRY_INDICES_DATA:[S

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createShortBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V

    :cond_0
    return-void
.end method

.method public doUpdateGeometryNormals()V
    .locals 7

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x18

    new-array v0, v0, [F

    invoke-virtual {p0}, Lcom/jme3/scene/shape/AbstractBox;->computeVertices()[Lcom/jme3/math/Vector3f;

    move-result-object v1

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    mul-int/lit8 v4, v3, 0x3

    iget v5, v2, Lcom/jme3/math/Vector3f;->x:F

    aput v5, v0, v4

    add-int/lit8 v5, v4, 0x1

    iget v6, v2, Lcom/jme3/math/Vector3f;->y:F

    aput v6, v0, v5

    add-int/lit8 v4, v4, 0x2

    iget v5, v2, Lcom/jme3/math/Vector3f;->z:F

    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    :cond_1
    return-void
.end method

.method public doUpdateGeometryTextures()V
    .locals 3

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/jme3/scene/shape/StripBox;->GEOMETRY_TEXTURE_DATA:[F

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    :cond_0
    return-void
.end method

.method public doUpdateGeometryVertices()V
    .locals 31

    move-object/from16 v0, p0

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/shape/AbstractBox;->computeVertices()[Lcom/jme3/math/Vector3f;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v5, v3, v4

    iget v6, v5, Lcom/jme3/math/Vector3f;->x:F

    iget v7, v5, Lcom/jme3/math/Vector3f;->y:F

    iget v5, v5, Lcom/jme3/math/Vector3f;->z:F

    const/4 v8, 0x1

    aget-object v9, v3, v8

    iget v10, v9, Lcom/jme3/math/Vector3f;->x:F

    iget v11, v9, Lcom/jme3/math/Vector3f;->y:F

    iget v9, v9, Lcom/jme3/math/Vector3f;->z:F

    const/4 v12, 0x2

    aget-object v13, v3, v12

    iget v14, v13, Lcom/jme3/math/Vector3f;->x:F

    iget v15, v13, Lcom/jme3/math/Vector3f;->y:F

    iget v13, v13, Lcom/jme3/math/Vector3f;->z:F

    const/4 v12, 0x3

    aget-object v8, v3, v12

    iget v12, v8, Lcom/jme3/math/Vector3f;->x:F

    iget v4, v8, Lcom/jme3/math/Vector3f;->y:F

    iget v8, v8, Lcom/jme3/math/Vector3f;->z:F

    const/16 v17, 0x4

    aget-object v1, v3, v17

    iget v0, v1, Lcom/jme3/math/Vector3f;->x:F

    move-object/from16 v18, v2

    iget v2, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    const/16 v19, 0x5

    move/from16 v20, v1

    aget-object v1, v3, v19

    move/from16 v21, v2

    iget v2, v1, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v22, v2

    iget v2, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    const/16 v23, 0x6

    move/from16 v24, v1

    aget-object v1, v3, v23

    move/from16 v25, v2

    iget v2, v1, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v26, v2

    iget v2, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    const/16 v27, 0x7

    aget-object v3, v3, v27

    move/from16 v28, v1

    iget v1, v3, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v29, v1

    iget v1, v3, Lcom/jme3/math/Vector3f;->y:F

    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v30, v3

    const/16 v3, 0x18

    new-array v3, v3, [F

    const/16 v16, 0x0

    aput v6, v3, v16

    const/4 v6, 0x1

    aput v7, v3, v6

    const/4 v6, 0x2

    aput v5, v3, v6

    const/4 v5, 0x3

    aput v10, v3, v5

    aput v11, v3, v17

    aput v9, v3, v19

    aput v14, v3, v23

    aput v15, v3, v27

    const/16 v5, 0x8

    aput v13, v3, v5

    const/16 v5, 0x9

    aput v12, v3, v5

    const/16 v5, 0xa

    aput v4, v3, v5

    const/16 v4, 0xb

    aput v8, v3, v4

    const/16 v4, 0xc

    aput v0, v3, v4

    const/16 v0, 0xd

    aput v21, v3, v0

    const/16 v0, 0xe

    aput v20, v3, v0

    const/16 v0, 0xf

    aput v22, v3, v0

    const/16 v0, 0x10

    aput v25, v3, v0

    const/16 v0, 0x11

    aput v24, v3, v0

    const/16 v0, 0x12

    aput v26, v3, v0

    const/16 v0, 0x13

    aput v2, v3, v0

    const/16 v0, 0x14

    aput v28, v3, v0

    const/16 v0, 0x15

    aput v29, v3, v0

    const/16 v0, 0x16

    aput v1, v3, v0

    const/16 v0, 0x17

    aput v30, v3, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v3, 0x3

    move-object/from16 v2, p0

    invoke-virtual {v2, v1, v3, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object v0, Lcom/jme3/scene/Mesh$Mode;->TriangleStrip:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v2, v0}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-void
.end method
