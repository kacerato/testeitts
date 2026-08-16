.class public abstract Lcom/ardor3d/util/geom/GeometryTool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/util/geom/GeometryTool;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/util/geom/GeometryTool;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTexs([[Lcom/ardor3d/math/Vector2;I)[Lcom/ardor3d/math/Vector2;
    .locals 3

    array-length v0, p0

    new-array v0, v0, [Lcom/ardor3d/math/Vector2;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    aget-object v2, v2, p1

    aput-object v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static minimizeVerts(Lcom/ardor3d/scenegraph/Mesh;Lcom/ardor3d/util/geom/VertGroupData;)Lcom/ardor3d/util/geom/VertMap;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v4

    .line 6
    new-instance v5, Lcom/ardor3d/util/geom/VertMap;

    invoke-direct {v5, v0}, Lcom/ardor3d/util/geom/VertMap;-><init>(Lcom/ardor3d/scenegraph/Mesh;)V

    const/4 v6, -0x1

    const/4 v8, 0x0

    :goto_0
    if-eq v6, v8, :cond_15

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v6

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-static {v8}, Lcom/ardor3d/util/geom/BufferUtils;->getVector3Array(Ljava/nio/FloatBuffer;)[Lcom/ardor3d/math/Vector3;

    move-result-object v8

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-static {v9}, Lcom/ardor3d/util/geom/BufferUtils;->getVector3Array(Ljava/nio/FloatBuffer;)[Lcom/ardor3d/math/Vector3;

    move-result-object v9

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    .line 11
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ardor3d/scenegraph/MeshData;->getColorBuffer()Ljava/nio/FloatBuffer;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ardor3d/scenegraph/MeshData;->getColorBuffer()Ljava/nio/FloatBuffer;

    move-result-object v11

    invoke-static {v11}, Lcom/ardor3d/util/geom/BufferUtils;->getColorArray(Ljava/nio/FloatBuffer;)[Lcom/ardor3d/math/ColorRGBA;

    move-result-object v11

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    .line 13
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ardor3d/scenegraph/MeshData;->getNumberOfUnits()I

    move-result v12

    new-array v13, v12, [[Lcom/ardor3d/math/Vector2;

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v12, :cond_3

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/FloatBuffer;

    invoke-static {v15}, Lcom/ardor3d/util/geom/BufferUtils;->getVector2Array(Ljava/nio/FloatBuffer;)[Lcom/ardor3d/math/Vector2;

    move-result-object v15

    aput-object v15, v13, v14

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 16
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v14

    invoke-static {v14}, Lcom/ardor3d/util/geom/BufferUtils;->getIntArray(Lcom/ardor3d/scenegraph/IndexBufferData;)[I

    move-result-object v14

    .line 17
    invoke-static {}, Lcom/google/common/collect/Q1;->Y()Ljava/util/HashMap;

    move-result-object v15

    .line 18
    invoke-static {}, Lcom/google/common/collect/Q1;->Y()Ljava/util/HashMap;

    move-result-object v7

    .line 19
    array-length v10, v8

    move-wide/from16 v17, v2

    move/from16 v16, v6

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v10, :cond_d

    move/from16 v27, v4

    .line 20
    invoke-virtual {v1, v6}, Lcom/ardor3d/util/geom/VertGroupData;->getGroupForVertex(I)J

    move-result-wide v3

    .line 21
    new-instance v0, Lcom/ardor3d/util/geom/VertKey;

    aget-object v20, v8, v6

    if-eqz v9, :cond_4

    aget-object v19, v9, v6

    move-object/from16 v21, v19

    goto :goto_5

    :cond_4
    const/16 v21, 0x0

    :goto_5
    if-eqz v11, :cond_5

    aget-object v19, v11, v6

    move-object/from16 v22, v19

    goto :goto_6

    :cond_5
    const/16 v22, 0x0

    :goto_6
    invoke-static {v13, v6}, Lcom/ardor3d/util/geom/GeometryTool;->getTexs([[Lcom/ardor3d/math/Vector2;I)[Lcom/ardor3d/math/Vector2;

    move-result-object v23

    invoke-virtual {v1, v3, v4}, Lcom/ardor3d/util/geom/VertGroupData;->getGroupConditions(J)Ljava/util/EnumSet;

    move-result-object v24

    move-object/from16 v19, v0

    move-wide/from16 v25, v3

    invoke-direct/range {v19 .. v26}, Lcom/ardor3d/util/geom/VertKey;-><init>(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/ColorRGBA;[Lcom/ardor3d/math/Vector2;Ljava/util/EnumSet;J)V

    .line 22
    invoke-interface {v15, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 23
    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 24
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 25
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 26
    :cond_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    add-int/lit8 v10, v10, -0x1

    if-eq v6, v10, :cond_b

    .line 27
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    aget-object v0, v8, v10

    aput-object v0, v8, v6

    const/4 v0, 0x0

    .line 29
    aput-object v0, v8, v10

    if-eqz v9, :cond_7

    .line 30
    aget-object v0, v9, v3

    aget-object v3, v9, v6

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 31
    aget-object v0, v9, v10

    aput-object v0, v9, v6

    :cond_7
    if-eqz v11, :cond_8

    .line 32
    aget-object v0, v11, v10

    aput-object v0, v11, v6

    :cond_8
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v12, :cond_a

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 34
    aget-object v3, v13, v0

    aget-object v4, v3, v10

    aput-object v4, v3, v6

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_a
    add-int/lit8 v6, v6, -0x1

    const/4 v3, 0x0

    goto :goto_9

    :cond_b
    const/4 v3, 0x0

    .line 35
    aput-object v3, v8, v10

    goto :goto_9

    :cond_c
    const/4 v3, 0x0

    .line 36
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    :goto_9
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v27

    goto/16 :goto_4

    :cond_d
    move/from16 v27, v4

    if-eqz v9, :cond_e

    .line 37
    array-length v0, v9

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_e

    aget-object v4, v9, v3

    .line 38
    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 39
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3, v2, v8}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(II[Lcom/ardor3d/math/type/ReadOnlyVector3;)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    if-eqz v9, :cond_f

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-static {v3, v2, v9}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(II[Lcom/ardor3d/math/type/ReadOnlyVector3;)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ardor3d/scenegraph/MeshData;->setNormalBuffer(Ljava/nio/FloatBuffer;)V

    :cond_f
    if-eqz v11, :cond_10

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-static {v3, v2, v11}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(II[Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ardor3d/scenegraph/MeshData;->setColorBuffer(Ljava/nio/FloatBuffer;)V

    :cond_10
    move v0, v3

    :goto_b
    if-ge v0, v12, :cond_12

    .line 42
    aget-object v4, v13, v0

    if-eqz v4, :cond_11

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v4

    aget-object v6, v13, v0

    invoke-static {v3, v2, v6}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(II[Lcom/ardor3d/math/type/ReadOnlyVector2;)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Lcom/ardor3d/scenegraph/MeshData;->setTextureBuffer(Ljava/nio/FloatBuffer;I)V

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 44
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/IndexBufferData;->rewind()V

    .line 46
    array-length v2, v14

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_14

    aget v6, v14, v4

    .line 47
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 48
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    goto :goto_d

    .line 49
    :cond_13
    invoke-virtual {v0, v6}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 50
    :cond_14
    invoke-virtual {v5, v7}, Lcom/ardor3d/util/geom/VertMap;->applyRemapping(Ljava/util/Map;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v8

    move-object/from16 v0, p0

    move/from16 v6, v16

    move-wide/from16 v2, v17

    move/from16 v4, v27

    goto/16 :goto_0

    :cond_15
    move-wide/from16 v17, v2

    move/from16 v27, v4

    .line 52
    sget-object v0, Lcom/ardor3d/util/geom/GeometryTool;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vertex reduction complete on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  old vertex count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new vertex count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v17

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-object v5
.end method

.method public static minimizeVerts(Lcom/ardor3d/scenegraph/Mesh;Ljava/util/EnumSet;)Lcom/ardor3d/util/geom/VertMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/scenegraph/Mesh;",
            "Ljava/util/EnumSet<",
            "Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;",
            ">;)",
            "Lcom/ardor3d/util/geom/VertMap;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ardor3d/util/geom/VertGroupData;

    invoke-direct {v0}, Lcom/ardor3d/util/geom/VertGroupData;-><init>()V

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, p1}, Lcom/ardor3d/util/geom/VertGroupData;->setGroupConditions(JLjava/util/EnumSet;)V

    .line 3
    invoke-static {p0, v0}, Lcom/ardor3d/util/geom/GeometryTool;->minimizeVerts(Lcom/ardor3d/scenegraph/Mesh;Lcom/ardor3d/util/geom/VertGroupData;)Lcom/ardor3d/util/geom/VertMap;

    move-result-object p0

    return-object p0
.end method
