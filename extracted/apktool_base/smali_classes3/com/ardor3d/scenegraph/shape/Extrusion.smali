.class public Lcom/ardor3d/scenegraph/shape/Extrusion;
.super Lcom/ardor3d/scenegraph/Mesh;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/scenegraph/Line;Ljava/util/List;Lcom/ardor3d/math/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/scenegraph/Line;",
            "Ljava/util/List<",
            "Lcom/ardor3d/math/Vector3;",
            ">;",
            "Lcom/ardor3d/math/Vector3;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Mesh;-><init>()V

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/ardor3d/scenegraph/shape/Extrusion;->updateGeometry(Lcom/ardor3d/scenegraph/Line;Ljava/util/List;Lcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ardor3d/scenegraph/Line;Ljava/util/List;Lcom/ardor3d/math/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ardor3d/scenegraph/Line;",
            "Ljava/util/List<",
            "Lcom/ardor3d/math/Vector3;",
            ">;",
            "Lcom/ardor3d/math/Vector3;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p2, p3, p4}, Lcom/ardor3d/scenegraph/shape/Extrusion;->updateGeometry(Lcom/ardor3d/scenegraph/Line;Ljava/util/List;Lcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method private static solveTridiag([D[D[D[DI)V
    .locals 8

    const/4 v0, 0x2

    :goto_0
    if-gt v0, p4, :cond_0

    aget-wide v1, p0, v0

    add-int/lit8 v3, v0, -0x1

    aget-wide v4, p1, v3

    div-double/2addr v1, v4

    aput-wide v1, p0, v0

    aget-wide v4, p1, v0

    aget-wide v6, p2, v3

    mul-double/2addr v1, v6

    sub-double/2addr v4, v1

    aput-wide v4, p1, v0

    aget-wide v1, p3, v0

    aget-wide v4, p0, v0

    aget-wide v6, p3, v3

    mul-double/2addr v4, v6

    sub-double/2addr v1, v4

    aput-wide v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-wide v0, p3, p4

    aget-wide v2, p1, p4

    div-double/2addr v0, v2

    aput-wide v0, p3, p4

    const/4 p0, 0x1

    sub-int/2addr p4, p0

    :goto_1
    if-lt p4, p0, :cond_1

    aget-wide v0, p3, p4

    aget-wide v2, p2, p4

    add-int/lit8 v4, p4, 0x1

    aget-wide v4, p3, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    aget-wide v2, p1, p4

    div-double/2addr v0, v2

    aput-wide v0, p3, p4

    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public updateGeometry(Lcom/ardor3d/scenegraph/Line;Ljava/util/List;ILcom/ardor3d/math/Vector3;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/scenegraph/Line;",
            "Ljava/util/List<",
            "Lcom/ardor3d/math/Vector3;",
            ">;I",
            "Lcom/ardor3d/math/Vector3;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/ardor3d/scenegraph/shape/Extrusion;->updateGeometry(Lcom/ardor3d/scenegraph/Line;Ljava/util/List;IZLcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method public updateGeometry(Lcom/ardor3d/scenegraph/Line;Ljava/util/List;IZLcom/ardor3d/math/Vector3;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/scenegraph/Line;",
            "Ljava/util/List<",
            "Lcom/ardor3d/math/Vector3;",
            ">;IZ",
            "Lcom/ardor3d/math/Vector3;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    .line 59
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v2, :cond_0

    add-int/lit8 v3, v3, 0x3

    :cond_0
    const/4 v4, 0x2

    .line 60
    new-array v5, v4, [I

    const/4 v6, 0x1

    aput v3, v5, v6

    const/4 v7, 0x0

    const/4 v8, 0x3

    aput v8, v5, v7

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 61
    new-array v9, v3, [D

    .line 62
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v11, v7

    :goto_0
    if-ge v11, v3, :cond_4

    if-nez v2, :cond_1

    .line 63
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ardor3d/math/Vector3;

    goto :goto_1

    :cond_1
    if-nez v11, :cond_2

    .line 64
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ardor3d/math/Vector3;

    goto :goto_1

    :cond_2
    add-int/lit8 v12, v3, -0x2

    if-lt v11, v12, :cond_3

    sub-int v12, v11, v3

    add-int/2addr v12, v4

    .line 65
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ardor3d/math/Vector3;

    goto :goto_1

    :cond_3
    add-int/lit8 v12, v11, -0x1

    .line 66
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ardor3d/math/Vector3;

    :goto_1
    int-to-double v13, v11

    .line 67
    aput-wide v13, v9, v11

    .line 68
    aget-object v13, v5, v7

    invoke-virtual {v12}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v14

    aput-wide v14, v13, v11

    .line 69
    aget-object v13, v5, v6

    invoke-virtual {v12}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v14

    aput-wide v14, v13, v11

    .line 70
    aget-object v13, v5, v4

    invoke-virtual {v12}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v14

    aput-wide v14, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    if-le v3, v6, :cond_d

    .line 71
    new-array v0, v4, [I

    aput v3, v0, v6

    aput v8, v0, v7

    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 72
    new-array v11, v3, [D

    move v12, v6

    :goto_2
    add-int/lit8 v13, v3, -0x1

    if-gt v12, v13, :cond_5

    .line 73
    aget-wide v13, v9, v12

    add-int/lit8 v15, v12, -0x1

    aget-wide v15, v9, v15

    sub-double/2addr v13, v15

    aput-wide v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    const-wide/high16 v14, 0x4018000000000000L    # 6.0

    if-le v3, v4, :cond_8

    .line 74
    new-array v9, v13, [D

    .line 75
    new-array v12, v13, [D

    .line 76
    new-array v13, v13, [D

    move v4, v6

    :goto_3
    add-int/lit8 v6, v3, -0x2

    if-gt v4, v6, :cond_7

    .line 77
    aget-wide v17, v11, v4

    add-int/lit8 v6, v4, 0x1

    aget-wide v19, v11, v6

    add-double v17, v17, v19

    const-wide/high16 v19, 0x4008000000000000L    # 3.0

    div-double v17, v17, v19

    aput-wide v17, v12, v4

    .line 78
    aget-wide v17, v11, v6

    div-double v17, v17, v14

    aput-wide v17, v13, v4

    .line 79
    aget-wide v17, v11, v4

    div-double v17, v17, v14

    aput-wide v17, v9, v4

    move v14, v7

    :goto_4
    if-ge v14, v8, :cond_6

    .line 80
    aget-object v15, v0, v14

    aget-object v19, v5, v14

    aget-wide v20, v19, v6

    aget-wide v22, v19, v4

    sub-double v20, v20, v22

    aget-wide v24, v11, v6

    div-double v20, v20, v24

    add-int/lit8 v24, v4, -0x1

    aget-wide v24, v19, v24

    sub-double v22, v22, v24

    aget-wide v24, v11, v4

    div-double v22, v22, v24

    sub-double v20, v20, v22

    aput-wide v20, v15, v4

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_6
    move v4, v6

    const/4 v6, 0x1

    const-wide/high16 v14, 0x4018000000000000L    # 6.0

    goto :goto_3

    :cond_7
    move v4, v7

    :goto_5
    if-ge v4, v8, :cond_8

    .line 81
    invoke-virtual {v9}, [D->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [D

    invoke-virtual {v12}, [D->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [D

    invoke-virtual {v13}, [D->clone()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v8, v19

    check-cast v8, [D

    aget-object v7, v0, v4

    invoke-static {v14, v15, v8, v7, v6}, Lcom/ardor3d/scenegraph/shape/Extrusion;->solveTridiag([D[D[D[DI)V

    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x3

    goto :goto_5

    :cond_8
    if-nez v2, :cond_9

    .line 82
    new-instance v4, Lcom/ardor3d/math/Vector3;

    const/4 v6, 0x0

    aget-object v7, v5, v6

    aget-wide v22, v7, v6

    const/4 v7, 0x1

    aget-object v8, v5, v7

    aget-wide v24, v8, v6

    const/4 v7, 0x2

    aget-object v8, v5, v7

    aget-wide v26, v8, v6

    move-object/from16 v21, v4

    invoke-direct/range {v21 .. v27}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const/4 v4, 0x3

    .line 83
    new-array v6, v4, [D

    if-eqz v2, :cond_a

    const/4 v7, 0x2

    goto :goto_6

    :cond_a
    const/4 v7, 0x1

    :goto_6
    const/4 v8, 0x2

    :goto_7
    add-int/lit8 v9, v3, -0x2

    if-gt v7, v9, :cond_d

    const/4 v8, 0x1

    :goto_8
    if-gt v8, v1, :cond_c

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v4, :cond_b

    .line 84
    aget-wide v12, v11, v7

    int-to-double v14, v8

    mul-double/2addr v14, v12

    move-object/from16 v20, v5

    int-to-double v4, v1

    div-double/2addr v14, v4

    sub-double v4, v12, v14

    .line 85
    aget-object v22, v0, v9

    add-int/lit8 v23, v7, -0x1

    move-object/from16 p2, v0

    aget-wide v0, v22, v23

    neg-double v0, v0

    const-wide/high16 v17, 0x4018000000000000L    # 6.0

    div-double v0, v0, v17

    add-double v24, v4, v12

    mul-double v0, v0, v24

    mul-double/2addr v0, v14

    aget-object v24, v20, v9

    aget-wide v25, v24, v23

    add-double v0, v0, v25

    mul-double/2addr v0, v4

    move/from16 v23, v3

    aget-wide v2, v22, v7

    neg-double v2, v2

    div-double v2, v2, v17

    add-double v25, v14, v12

    mul-double v2, v2, v25

    mul-double/2addr v2, v4

    aget-wide v4, v24, v7

    add-double/2addr v2, v4

    mul-double/2addr v2, v14

    add-double/2addr v0, v2

    div-double/2addr v0, v12

    .line 86
    aput-wide v0, v6, v9

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v5, v20

    move/from16 v3, v23

    const/4 v4, 0x3

    goto :goto_9

    :cond_b
    move-object/from16 p2, v0

    move/from16 v23, v3

    move-object/from16 v20, v5

    const-wide/high16 v17, 0x4018000000000000L    # 6.0

    .line 87
    new-instance v0, Lcom/ardor3d/math/Vector3;

    const/4 v1, 0x0

    aget-wide v25, v6, v1

    const/4 v2, 0x1

    aget-wide v27, v6, v2

    const/4 v3, 0x2

    aget-wide v29, v6, v3

    move-object/from16 v24, v0

    invoke-direct/range {v24 .. v30}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, v23

    const/4 v4, 0x3

    goto :goto_8

    :cond_c
    move-object/from16 p2, v0

    move/from16 v23, v3

    move-object/from16 v20, v5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-wide/high16 v17, 0x4018000000000000L    # 6.0

    add-int/lit8 v7, v7, 0x1

    move/from16 v1, p3

    move/from16 v2, p4

    move v8, v3

    move/from16 v3, v23

    const/4 v4, 0x3

    goto/16 :goto_7

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p5

    .line 88
    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/ardor3d/scenegraph/shape/Extrusion;->updateGeometry(Lcom/ardor3d/scenegraph/Line;Ljava/util/List;ZLcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method public updateGeometry(Lcom/ardor3d/scenegraph/Line;Ljava/util/List;Lcom/ardor3d/math/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/scenegraph/Line;",
            "Ljava/util/List<",
            "Lcom/ardor3d/math/Vector3;",
            ">;",
            "Lcom/ardor3d/math/Vector3;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/ardor3d/scenegraph/shape/Extrusion;->updateGeometry(Lcom/ardor3d/scenegraph/Line;Ljava/util/List;ZLcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method public updateGeometry(Lcom/ardor3d/scenegraph/Line;Ljava/util/List;ZLcom/ardor3d/math/Vector3;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/scenegraph/Line;",
            "Ljava/util/List<",
            "Lcom/ardor3d/math/Vector3;",
            ">;Z",
            "Lcom/ardor3d/math/Vector3;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v5

    mul-int/2addr v4, v5

    .line 5
    iget-object v5, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 6
    iget-object v5, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 7
    iget-object v6, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 8
    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 9
    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v4}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 11
    invoke-static {v4}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 12
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v8

    mul-int/2addr v7, v8

    .line 13
    iget-object v8, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v8}, Lcom/ardor3d/scenegraph/MeshData;->getIndexBuffer()Ljava/nio/Buffer;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v8}, Lcom/ardor3d/scenegraph/MeshData;->getIndexBuffer()Ljava/nio/Buffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/Buffer;->limit()I

    move-result v8

    if-ne v8, v7, :cond_1

    .line 14
    iget-object v4, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v4

    .line 15
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 16
    invoke-static {v7, v4}, Lcom/ardor3d/util/geom/BufferUtils;->createIndexBufferData(II)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v4

    .line 17
    :goto_1
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    .line 18
    new-instance v15, Lcom/ardor3d/math/Vector3;

    invoke-direct {v15}, Lcom/ardor3d/math/Vector3;-><init>()V

    .line 19
    new-instance v13, Lcom/ardor3d/math/Vector3;

    invoke-direct {v13}, Lcom/ardor3d/math/Vector3;-><init>()V

    .line 20
    new-instance v14, Lcom/ardor3d/math/Quaternion;

    invoke-direct {v14}, Lcom/ardor3d/math/Quaternion;-><init>()V

    const/4 v11, 0x0

    move v12, v11

    .line 21
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v12, v8, :cond_a

    .line 22
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/ardor3d/math/Vector3;

    .line 23
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 24
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move v10, v11

    .line 25
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    const/16 v16, 0x0

    if-ge v12, v8, :cond_2

    add-int/lit8 v8, v12, 0x1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    :goto_4
    check-cast v8, Lcom/ardor3d/math/Vector3;

    goto :goto_5

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    goto :goto_4

    :cond_3
    move-object/from16 v8, v16

    :goto_5
    if-lez v12, :cond_4

    add-int/lit8 v11, v12, -0x1

    .line 26
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v16, v11

    check-cast v16, Lcom/ardor3d/math/Vector3;

    :cond_4
    move-object/from16 v11, v16

    if-eqz v8, :cond_5

    .line 27
    invoke-virtual {v13, v8}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    :goto_6
    move-object/from16 v11, p4

    goto :goto_7

    .line 28
    :cond_5
    invoke-virtual {v13, v9}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    goto :goto_6

    .line 29
    :goto_7
    invoke-virtual {v14, v13, v11}, Lcom/ardor3d/math/Quaternion;->lookAt(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    .line 30
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->get()F

    move-result v8

    move-object/from16 v16, v9

    move/from16 v17, v10

    float-to-double v9, v8

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->get()F

    move-result v8

    move/from16 v18, v12

    float-to-double v11, v8

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->get()F

    move-result v8

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    float-to-double v13, v8

    move-object v8, v15

    move-object/from16 v1, v16

    move-object/from16 v16, v3

    move/from16 v3, v17

    move/from16 v0, v18

    const/16 v17, 0x0

    move-object/from16 v18, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v20

    invoke-virtual/range {v8 .. v14}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    .line 31
    invoke-virtual {v4, v15, v15}, Lcom/ardor3d/math/Quaternion;->apply(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    .line 32
    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 33
    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 34
    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 35
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->get()F

    move-result v8

    float-to-double v9, v8

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->get()F

    move-result v8

    float-to-double v11, v8

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->get()F

    move-result v8

    float-to-double v13, v8

    move-object v8, v15

    invoke-virtual/range {v8 .. v14}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    .line 36
    invoke-virtual {v4, v15, v15}, Lcom/ardor3d/math/Quaternion;->apply(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    .line 37
    invoke-virtual {v15, v1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 38
    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v5, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 39
    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v5, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 40
    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v5, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    and-int/lit8 v8, v3, 0x1

    if-nez v8, :cond_7

    .line 41
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v0, v8, :cond_6

    mul-int v12, v0, v7

    add-int/2addr v12, v3

    move-object/from16 v8, v19

    .line 42
    invoke-virtual {v8, v12}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    add-int/lit8 v12, v12, 0x1

    .line 43
    invoke-virtual {v8, v12}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    add-int/lit8 v9, v0, 0x1

    mul-int/2addr v9, v7

    add-int/2addr v9, v3

    .line 44
    invoke-virtual {v8, v9}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    add-int/lit8 v10, v9, 0x1

    .line 45
    invoke-virtual {v8, v10}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    .line 46
    invoke-virtual {v8, v9}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    .line 47
    invoke-virtual {v8, v12}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    goto :goto_8

    :cond_6
    move-object/from16 v8, v19

    if-eqz p3, :cond_8

    mul-int v12, v0, v7

    add-int/2addr v12, v3

    .line 48
    invoke-virtual {v8, v12}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    add-int/lit8 v12, v12, 0x1

    .line 49
    invoke-virtual {v8, v12}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    .line 50
    invoke-virtual {v8, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    add-int/lit8 v10, v3, 0x1

    .line 51
    invoke-virtual {v8, v10}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    .line 52
    invoke-virtual {v8, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    .line 53
    invoke-virtual {v8, v12}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    goto :goto_8

    :cond_7
    move-object/from16 v8, v19

    :cond_8
    :goto_8
    add-int/lit8 v10, v3, 0x1

    .line 54
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_9

    add-int/lit8 v12, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v14, v4

    move-object v4, v8

    move-object/from16 v3, v16

    move/from16 v11, v17

    move-object/from16 v13, v18

    goto/16 :goto_2

    :cond_9
    move v12, v0

    move-object v9, v1

    move-object v14, v4

    move-object v4, v8

    move-object/from16 v3, v16

    move/from16 v11, v17

    move-object/from16 v13, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    goto/16 :goto_3

    :cond_a
    move-object v8, v4

    .line 55
    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1, v5}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    .line 56
    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1, v6}, Lcom/ardor3d/scenegraph/MeshData;->setNormalBuffer(Ljava/nio/FloatBuffer;)V

    .line 57
    iget-object v1, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1, v8}, Lcom/ardor3d/scenegraph/MeshData;->setIndices(Lcom/ardor3d/scenegraph/IndexBufferData;)V

    return-void
.end method
