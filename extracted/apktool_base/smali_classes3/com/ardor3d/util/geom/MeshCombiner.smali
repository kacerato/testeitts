.class public Lcom/ardor3d/util/geom/MeshCombiner;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_COLOR:[F

.field public static final DEFAULT_NORMAL:[F

.field public static final DEFAULT_TEXCOORD:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ardor3d/util/geom/MeshCombiner;->DEFAULT_COLOR:[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ardor3d/util/geom/MeshCombiner;->DEFAULT_NORMAL:[F

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/ardor3d/util/geom/MeshCombiner;->DEFAULT_TEXCOORD:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final combine(Lcom/ardor3d/scenegraph/Node;)Lcom/ardor3d/scenegraph/Mesh;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/common/collect/M1;->q()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/ardor3d/util/geom/MeshCombiner$1;

    invoke-direct {v1, v0}, Lcom/ardor3d/util/geom/MeshCombiner$1;-><init>(Ljava/util/List;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/ardor3d/scenegraph/Node;->acceptVisitor(Lcom/ardor3d/scenegraph/visitor/Visitor;Z)V

    .line 3
    invoke-static {v0}, Lcom/ardor3d/util/geom/MeshCombiner;->combine(Ljava/util/Collection;)Lcom/ardor3d/scenegraph/Mesh;

    move-result-object p0

    return-object p0
.end method

.method public static final combine(Ljava/util/Collection;)Lcom/ardor3d/scenegraph/Mesh;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/ardor3d/scenegraph/Mesh;",
            ">;)",
            "Lcom/ardor3d/scenegraph/Mesh;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    .line 5
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_15

    .line 6
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v3, v0

    move-object v14, v3

    move-object v15, v14

    move v6, v4

    move v8, v6

    move v10, v8

    move v11, v10

    move v12, v11

    move v13, v12

    const/4 v7, 0x3

    const/4 v9, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Lcom/ardor3d/scenegraph/Mesh;

    .line 7
    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/Spatial;->updateWorldTransform(Z)V

    .line 8
    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v4

    if-eqz v9, :cond_1

    .line 9
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/FloatBufferData;->getValuesPerTuple()I

    move-result v7

    .line 10
    invoke-virtual {v2, v0}, Lcom/ardor3d/scenegraph/Mesh;->getModelBound(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v3

    .line 11
    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/Spatial;->getLocalRenderStates()Ljava/util/EnumMap;

    move-result-object v15

    const/4 v9, 0x0

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/FloatBufferData;->getValuesPerTuple()I

    move-result v2

    if-ne v7, v2, :cond_b

    .line 13
    :goto_1
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v2

    add-int/2addr v6, v2

    if-nez v11, :cond_3

    .line 14
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getIndexBuffer()Ljava/nio/Buffer;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v4, v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndexMode(I)Lcom/ardor3d/renderer/IndexMode;

    move-result-object v14

    goto :goto_4

    .line 16
    :cond_3
    :goto_2
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getIndexBuffer()Ljava/nio/Buffer;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 17
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/IndexBufferData;->capacity()I

    :goto_3
    const/4 v11, 0x1

    goto :goto_4

    .line 18
    :cond_4
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    goto :goto_3

    :goto_4
    if-nez v10, :cond_5

    .line 19
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v10, 0x1

    :cond_5
    if-nez v8, :cond_6

    .line 20
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getColorBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v8, 0x1

    .line 21
    :cond_6
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getNumberOfUnits()I

    move-result v2

    if-lez v2, :cond_a

    if-nez v13, :cond_7

    const/4 v2, 0x0

    .line 22
    invoke-virtual {v4, v2}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/FloatBufferData;->getValuesPerTuple()I

    move-result v5

    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v4, v2}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v16

    if-eqz v16, :cond_9

    invoke-virtual {v4, v2}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/ardor3d/scenegraph/FloatBufferData;->getValuesPerTuple()I

    move-result v2

    if-ne v5, v2, :cond_8

    goto :goto_5

    .line 24
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "all MeshData objects with texcoords must use same tuple size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_9
    :goto_5
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getNumberOfUnits()I

    move-result v2

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 26
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "all MeshData vertex coords must use same tuple size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_c
    new-instance v1, Lcom/ardor3d/scenegraph/Mesh;

    const-string v2, "combined"

    invoke-direct {v1, v2}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance v2, Lcom/ardor3d/scenegraph/MeshData;

    invoke-direct {v2}, Lcom/ardor3d/scenegraph/MeshData;-><init>()V

    .line 29
    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/Mesh;->setMeshData(Lcom/ardor3d/scenegraph/MeshData;)V

    .line 30
    new-instance v4, Lcom/ardor3d/scenegraph/FloatBufferData;

    mul-int v9, v6, v7

    invoke-direct {v4, v9, v7}, Lcom/ardor3d/scenegraph/FloatBufferData;-><init>(II)V

    .line 31
    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/MeshData;->setVertexCoords(Lcom/ardor3d/scenegraph/FloatBufferData;)V

    if-eqz v8, :cond_d

    .line 32
    new-instance v7, Lcom/ardor3d/scenegraph/FloatBufferData;

    mul-int/lit8 v9, v6, 0x4

    const/4 v0, 0x4

    invoke-direct {v7, v9, v0}, Lcom/ardor3d/scenegraph/FloatBufferData;-><init>(II)V

    goto :goto_6

    :cond_d
    const/4 v7, 0x0

    .line 33
    :goto_6
    invoke-virtual {v2, v7}, Lcom/ardor3d/scenegraph/MeshData;->setColorCoords(Lcom/ardor3d/scenegraph/FloatBufferData;)V

    if-eqz v10, :cond_e

    .line 34
    new-instance v0, Lcom/ardor3d/scenegraph/FloatBufferData;

    mul-int/lit8 v9, v6, 0x3

    move-object/from16 v16, v15

    const/4 v15, 0x3

    invoke-direct {v0, v9, v15}, Lcom/ardor3d/scenegraph/FloatBufferData;-><init>(II)V

    goto :goto_7

    :cond_e
    move-object/from16 v16, v15

    const/4 v0, 0x0

    .line 35
    :goto_7
    invoke-virtual {v2, v0}, Lcom/ardor3d/scenegraph/MeshData;->setNormalCoords(Lcom/ardor3d/scenegraph/FloatBufferData;)V

    .line 36
    invoke-static {v12}, Lcom/google/common/collect/M1;->u(I)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v15, 0x0

    :goto_8
    if-ge v15, v12, :cond_f

    move-object/from16 v17, v1

    .line 37
    new-instance v1, Lcom/ardor3d/scenegraph/FloatBufferData;

    move-object/from16 v18, v3

    mul-int v3, v6, v5

    invoke-direct {v1, v3, v5}, Lcom/ardor3d/scenegraph/FloatBufferData;-><init>(II)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v17

    move-object/from16 v3, v18

    goto :goto_8

    :cond_f
    move-object/from16 v17, v1

    move-object/from16 v18, v3

    if-eqz v13, :cond_10

    move-object v1, v9

    goto :goto_9

    :cond_10
    const/4 v1, 0x0

    .line 38
    :goto_9
    invoke-virtual {v2, v1}, Lcom/ardor3d/scenegraph/MeshData;->setTextureCoords(Ljava/util/List;)V

    .line 39
    new-instance v1, Lcom/ardor3d/util/geom/IndexCombiner;

    invoke-direct {v1}, Lcom/ardor3d/util/geom/IndexCombiner;-><init>()V

    .line 40
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ardor3d/scenegraph/Mesh;

    move-object/from16 p0, v3

    .line 41
    invoke-virtual {v15}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 43
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v19

    move-object/from16 v20, v4

    move-object/from16 v4, v19

    check-cast v4, Ljava/nio/FloatBuffer;

    move-object/from16 v21, v2

    move-object/from16 v19, v14

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Lcom/ardor3d/scenegraph/Mesh;->getWorldVectors(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    if-eqz v10, :cond_12

    .line 44
    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 45
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 46
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    invoke-virtual {v15, v14}, Lcom/ardor3d/scenegraph/Mesh;->getWorldNormals(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    goto :goto_c

    :cond_11
    const/4 v2, 0x0

    .line 47
    :goto_b
    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v4

    if-ge v2, v4, :cond_12

    .line 48
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/FloatBuffer;

    sget-object v14, Lcom/ardor3d/util/geom/MeshCombiner;->DEFAULT_NORMAL:[F

    invoke-virtual {v4, v14}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_12
    :goto_c
    if-eqz v8, :cond_14

    .line 49
    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getColorBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 50
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 51
    invoke-virtual {v7}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    goto :goto_e

    :cond_13
    const/4 v2, 0x0

    .line 52
    :goto_d
    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v4

    if-ge v2, v4, :cond_14

    .line 53
    invoke-virtual {v7}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/FloatBuffer;

    sget-object v14, Lcom/ardor3d/util/geom/MeshCombiner;->DEFAULT_COLOR:[F

    invoke-virtual {v4, v14}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_14
    :goto_e
    if-eqz v13, :cond_17

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v12, :cond_17

    .line 54
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/FloatBuffer;

    .line 55
    invoke-virtual {v3, v2}, Lcom/ardor3d/scenegraph/MeshData;->getTextureBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v14

    if-eqz v14, :cond_15

    .line 56
    invoke-virtual {v14}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 57
    invoke-virtual {v4, v14}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    goto :goto_11

    :cond_15
    const/4 v14, 0x0

    .line 58
    :goto_10
    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v15

    mul-int/2addr v15, v5

    if-ge v14, v15, :cond_16

    .line 59
    sget-object v15, Lcom/ardor3d/util/geom/MeshCombiner;->DEFAULT_TEXCOORD:[F

    invoke-virtual {v4, v15}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v14, v14, 0x1

    goto :goto_10

    :cond_16
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_17
    if-eqz v11, :cond_18

    .line 60
    invoke-virtual {v1, v3, v6}, Lcom/ardor3d/util/geom/IndexCombiner;->addEntry(Lcom/ardor3d/scenegraph/MeshData;I)V

    .line 61
    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v2

    add-int/2addr v6, v2

    :cond_18
    move-object/from16 v3, p0

    move-object/from16 v14, v19

    move-object/from16 v4, v20

    move-object/from16 v2, v21

    goto/16 :goto_a

    :cond_19
    move-object/from16 v21, v2

    move-object/from16 v19, v14

    if-eqz v11, :cond_1a

    move-object/from16 v0, v21

    .line 62
    invoke-virtual {v1, v0}, Lcom/ardor3d/util/geom/IndexCombiner;->saveTo(Lcom/ardor3d/scenegraph/MeshData;)V

    :goto_12
    move-object/from16 v1, v17

    move-object/from16 v0, v18

    goto :goto_13

    :cond_1a
    move-object/from16 v0, v21

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->setIndexLengths([I)V

    move-object/from16 v14, v19

    .line 64
    invoke-virtual {v0, v14}, Lcom/ardor3d/scenegraph/MeshData;->setIndexMode(Lcom/ardor3d/renderer/IndexMode;)V

    goto :goto_12

    .line 65
    :goto_13
    invoke-virtual {v1, v0}, Lcom/ardor3d/scenegraph/Mesh;->setModelBound(Lcom/ardor3d/bounding/BoundingVolume;)V

    .line 66
    invoke-virtual/range {v16 .. v16}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/renderer/state/RenderState;

    .line 67
    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    goto :goto_14

    :cond_1b
    return-object v1

    :cond_1c
    :goto_15
    return-object v0
.end method

.method public static final varargs combine([Lcom/ardor3d/scenegraph/Mesh;)Lcom/ardor3d/scenegraph/Mesh;
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/google/common/collect/M1;->t([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/ardor3d/util/geom/MeshCombiner;->combine(Ljava/util/Collection;)Lcom/ardor3d/scenegraph/Mesh;

    move-result-object p0

    return-object p0
.end method
