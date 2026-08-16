.class public Lcom/jme3/scene/shape/Box;
.super Lcom/jme3/scene/shape/AbstractBox;
.source "SourceFile"


# static fields
.field private static final GEOMETRY_INDICES_DATA:[S

.field private static final GEOMETRY_NORMALS_DATA:[F

.field private static final GEOMETRY_TEXTURE_DATA:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x24

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jme3/scene/shape/Box;->GEOMETRY_INDICES_DATA:[S

    const/16 v0, 0x48

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jme3/scene/shape/Box;->GEOMETRY_NORMALS_DATA:[F

    const/16 v0, 0x30

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/jme3/scene/shape/Box;->GEOMETRY_TEXTURE_DATA:[F

    return-void

    :array_0
    .array-data 2
        0x2s
        0x1s
        0x0s
        0x3s
        0x2s
        0x0s
        0x6s
        0x5s
        0x4s
        0x7s
        0x6s
        0x4s
        0xas
        0x9s
        0x8s
        0xbs
        0xas
        0x8s
        0xes
        0xds
        0xcs
        0xfs
        0xes
        0xcs
        0x12s
        0x11s
        0x10s
        0x13s
        0x12s
        0x10s
        0x16s
        0x15s
        0x14s
        0x17s
        0x16s
        0x14s
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_2
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
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
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
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
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
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

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
    invoke-virtual {p0}, Lcom/jme3/scene/shape/Box;->clone()Lcom/jme3/scene/shape/Box;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/jme3/scene/shape/Box;
    .locals 5

    .line 3
    new-instance v0, Lcom/jme3/scene/shape/Box;

    iget-object v1, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v2, p0, Lcom/jme3/scene/shape/AbstractBox;->xExtent:F

    iget v3, p0, Lcom/jme3/scene/shape/AbstractBox;->yExtent:F

    iget v4, p0, Lcom/jme3/scene/shape/AbstractBox;->zExtent:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/scene/shape/Box;-><init>(Lcom/jme3/math/Vector3f;FFF)V

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
    invoke-virtual {p0}, Lcom/jme3/scene/shape/Box;->clone()Lcom/jme3/scene/shape/Box;

    move-result-object v0

    return-object v0
.end method

.method public doUpdateGeometryIndices()V
    .locals 3

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/jme3/scene/shape/Box;->GEOMETRY_INDICES_DATA:[S

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createShortBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V

    :cond_0
    return-void
.end method

.method public doUpdateGeometryNormals()V
    .locals 3

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/jme3/scene/shape/Box;->GEOMETRY_NORMALS_DATA:[F

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    :cond_0
    return-void
.end method

.method public doUpdateGeometryTextures()V
    .locals 3

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/jme3/scene/shape/Box;->GEOMETRY_TEXTURE_DATA:[F

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    :cond_0
    return-void
.end method

.method public doUpdateGeometryVertices()V
    .locals 35

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/shape/AbstractBox;->computeVertices()[Lcom/jme3/math/Vector3f;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v2, v3

    iget v5, v4, Lcom/jme3/math/Vector3f;->x:F

    iget v6, v4, Lcom/jme3/math/Vector3f;->y:F

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    const/4 v7, 0x1

    aget-object v8, v2, v7

    iget v9, v8, Lcom/jme3/math/Vector3f;->x:F

    iget v10, v8, Lcom/jme3/math/Vector3f;->y:F

    iget v8, v8, Lcom/jme3/math/Vector3f;->z:F

    const/4 v11, 0x2

    aget-object v12, v2, v11

    iget v13, v12, Lcom/jme3/math/Vector3f;->x:F

    iget v14, v12, Lcom/jme3/math/Vector3f;->y:F

    iget v12, v12, Lcom/jme3/math/Vector3f;->z:F

    const/4 v15, 0x3

    aget-object v0, v2, v15

    iget v15, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v11, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    const/16 v19, 0x4

    aget-object v7, v2, v19

    iget v3, v7, Lcom/jme3/math/Vector3f;->x:F

    move-object/from16 v22, v1

    iget v1, v7, Lcom/jme3/math/Vector3f;->y:F

    iget v7, v7, Lcom/jme3/math/Vector3f;->z:F

    const/16 v23, 0x6

    move/from16 v24, v7

    aget-object v7, v2, v23

    move/from16 v25, v1

    iget v1, v7, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v26, v1

    iget v1, v7, Lcom/jme3/math/Vector3f;->y:F

    iget v7, v7, Lcom/jme3/math/Vector3f;->z:F

    const/16 v27, 0x5

    move/from16 v28, v7

    aget-object v7, v2, v27

    move/from16 v29, v1

    iget v1, v7, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v30, v1

    iget v1, v7, Lcom/jme3/math/Vector3f;->y:F

    iget v7, v7, Lcom/jme3/math/Vector3f;->z:F

    const/16 v31, 0x7

    aget-object v2, v2, v31

    move/from16 v32, v7

    iget v7, v2, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v33, v7

    iget v7, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v34, v2

    const/16 v2, 0x48

    new-array v2, v2, [F

    const/16 v21, 0x0

    aput v5, v2, v21

    const/16 v20, 0x1

    aput v6, v2, v20

    const/16 v18, 0x2

    aput v4, v2, v18

    const/16 v17, 0x3

    aput v9, v2, v17

    aput v10, v2, v19

    aput v8, v2, v27

    aput v13, v2, v23

    aput v14, v2, v31

    const/16 v18, 0x8

    aput v12, v2, v18

    const/16 v18, 0x9

    aput v15, v2, v18

    const/16 v18, 0xa

    aput v11, v2, v18

    const/16 v18, 0xb

    aput v0, v2, v18

    const/16 v18, 0xc

    aput v9, v2, v18

    const/16 v18, 0xd

    aput v10, v2, v18

    const/16 v18, 0xe

    aput v8, v2, v18

    const/16 v18, 0xf

    aput v3, v2, v18

    const/16 v18, 0x10

    aput v25, v2, v18

    const/16 v18, 0x11

    aput v24, v2, v18

    const/16 v18, 0x12

    aput v26, v2, v18

    const/16 v18, 0x13

    aput v29, v2, v18

    const/16 v18, 0x14

    aput v28, v2, v18

    const/16 v18, 0x15

    aput v13, v2, v18

    const/16 v18, 0x16

    aput v14, v2, v18

    const/16 v18, 0x17

    aput v12, v2, v18

    const/16 v16, 0x18

    aput v3, v2, v16

    const/16 v16, 0x19

    aput v25, v2, v16

    const/16 v16, 0x1a

    aput v24, v2, v16

    const/16 v16, 0x1b

    aput v30, v2, v16

    const/16 v16, 0x1c

    aput v1, v2, v16

    const/16 v16, 0x1d

    aput v32, v2, v16

    const/16 v16, 0x1e

    aput v33, v2, v16

    const/16 v16, 0x1f

    aput v7, v2, v16

    const/16 v16, 0x20

    aput v34, v2, v16

    const/16 v16, 0x21

    aput v26, v2, v16

    const/16 v16, 0x22

    aput v29, v2, v16

    const/16 v16, 0x23

    aput v28, v2, v16

    const/16 v16, 0x24

    aput v30, v2, v16

    const/16 v16, 0x25

    aput v1, v2, v16

    const/16 v16, 0x26

    aput v32, v2, v16

    const/16 v16, 0x27

    aput v5, v2, v16

    const/16 v16, 0x28

    aput v6, v2, v16

    const/16 v16, 0x29

    aput v4, v2, v16

    const/16 v16, 0x2a

    aput v15, v2, v16

    const/16 v16, 0x2b

    aput v11, v2, v16

    const/16 v16, 0x2c

    aput v0, v2, v16

    const/16 v16, 0x2d

    aput v33, v2, v16

    const/16 v16, 0x2e

    aput v7, v2, v16

    const/16 v16, 0x2f

    aput v34, v2, v16

    const/16 v16, 0x30

    aput v13, v2, v16

    const/16 v13, 0x31

    aput v14, v2, v13

    const/16 v13, 0x32

    aput v12, v2, v13

    const/16 v12, 0x33

    aput v26, v2, v12

    const/16 v12, 0x34

    aput v29, v2, v12

    const/16 v12, 0x35

    aput v28, v2, v12

    const/16 v12, 0x36

    aput v33, v2, v12

    const/16 v12, 0x37

    aput v7, v2, v12

    const/16 v7, 0x38

    aput v34, v2, v7

    const/16 v7, 0x39

    aput v15, v2, v7

    const/16 v7, 0x3a

    aput v11, v2, v7

    const/16 v7, 0x3b

    aput v0, v2, v7

    const/16 v0, 0x3c

    aput v5, v2, v0

    const/16 v0, 0x3d

    aput v6, v2, v0

    const/16 v0, 0x3e

    aput v4, v2, v0

    const/16 v0, 0x3f

    aput v30, v2, v0

    const/16 v0, 0x40

    aput v1, v2, v0

    const/16 v0, 0x41

    aput v32, v2, v0

    const/16 v0, 0x42

    aput v3, v2, v0

    const/16 v0, 0x43

    aput v25, v2, v0

    const/16 v0, 0x44

    aput v24, v2, v0

    const/16 v0, 0x45

    aput v9, v2, v0

    const/16 v0, 0x46

    aput v10, v2, v0

    const/16 v0, 0x47

    aput v8, v2, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v3, 0x3

    move-object/from16 v2, p0

    invoke-virtual {v2, v1, v3, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-void
.end method
