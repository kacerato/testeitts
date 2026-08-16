.class public Lcom/jme3/util/TangentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static genNormalLines(Lcom/jme3/scene/Mesh;F)Lcom/jme3/scene/Mesh;
    .locals 11

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    sget-object v2, Lcom/jme3/math/ColorRGBA;->Blue:Lcom/jme3/math/ColorRGBA;

    new-instance v3, Lcom/jme3/scene/Mesh;

    invoke-direct {v3}, Lcom/jme3/scene/Mesh;-><init>()V

    sget-object v4, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v3, v4}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v5, Lcom/jme3/math/Vector3f;

    invoke-direct {v5}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v6}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v7

    const/4 v8, 0x3

    div-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x8

    invoke-static {v7}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v7

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v10

    div-int/2addr v10, v8

    if-ge v9, v10, :cond_0

    invoke-static {v4, v0, v9}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    invoke-static {v5, p0, v9}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    mul-int/lit8 v10, v9, 0x2

    invoke-static {v4, v6, v10}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    invoke-static {v1, v7, v10}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/ColorRGBA;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v5, p1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int/lit8 v10, v10, 0x1

    invoke-static {v5, v6, v10}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    invoke-static {v2, v7, v10}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/ColorRGBA;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v3, p0, v8, v6}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object p0, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 p1, 0x4

    invoke-virtual {v3, p0, p1, v7}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    invoke-virtual {v3}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-object v3
.end method

.method public static genTangentLines(Lcom/jme3/scene/Mesh;F)Lcom/jme3/scene/Mesh;
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v3}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/FloatBuffer;

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v4}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/FloatBuffer;

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->Binormal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v6}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v0, v6}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    sget-object v7, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    sget-object v8, Lcom/jme3/math/ColorRGBA;->Red:Lcom/jme3/math/ColorRGBA;

    sget-object v9, Lcom/jme3/math/ColorRGBA;->Green:Lcom/jme3/math/ColorRGBA;

    sget-object v10, Lcom/jme3/math/ColorRGBA;->Blue:Lcom/jme3/math/ColorRGBA;

    new-instance v11, Lcom/jme3/scene/Mesh;

    invoke-direct {v11}, Lcom/jme3/scene/Mesh;-><init>()V

    sget-object v12, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v11, v12}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    new-instance v12, Lcom/jme3/math/Vector3f;

    invoke-direct {v12}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v13, Lcom/jme3/math/Vector3f;

    invoke-direct {v13}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v14, Lcom/jme3/math/Vector3f;

    invoke-direct {v14}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v15, Lcom/jme3/math/Vector3f;

    invoke-direct {v15}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v16

    move-object/from16 v17, v11

    const/4 v11, 0x3

    div-int/lit8 v16, v16, 0x3

    mul-int/lit8 v16, v16, 0x6

    invoke-static/range {v16 .. v16}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v11

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v16

    move-object/from16 v19, v10

    const/4 v10, 0x4

    mul-int/lit8 v16, v16, 0x4

    invoke-static/range {v16 .. v16}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v16

    const/16 v18, 0x3

    div-int/lit8 v16, v16, 0x3

    mul-int/lit8 v16, v16, 0x10

    move-object/from16 v20, v9

    invoke-static/range {v16 .. v16}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v0, v4}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v21, v4

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v22

    move-object/from16 v23, v6

    const/16 v18, 0x3

    div-int/lit8 v6, v22, 0x3

    if-ge v4, v6, :cond_4

    invoke-static {v12, v2, v4}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    invoke-static {v15, v3, v4}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    if-eqz v0, :cond_2

    mul-int/lit8 v6, v4, 0x4

    move/from16 p0, v0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    iput v0, v14, Lcom/jme3/math/Vector3f;->x:F

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v5, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    iput v0, v14, Lcom/jme3/math/Vector3f;->y:F

    add-int/lit8 v0, v6, 0x2

    invoke-virtual {v5, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    iput v0, v14, Lcom/jme3/math/Vector3f;->z:F

    const/4 v0, 0x3

    add-int/2addr v6, v0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    goto :goto_3

    :cond_2
    move/from16 p0, v0

    invoke-static {v14, v5, v4}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    move/from16 v0, v21

    :goto_3
    mul-int/lit8 v6, v4, 0x4

    move-object/from16 v21, v2

    mul-int/lit8 v2, v4, 0x6

    invoke-virtual {v11, v2, v6}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-object/from16 v22, v3

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v24, v5

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v11, v3, v5}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {v11, v3, v6}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v3, v2, 0x3

    move/from16 v25, v4

    add-int/lit8 v4, v6, 0x2

    invoke-virtual {v11, v3, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v3, v2, 0x4

    invoke-virtual {v11, v3, v6}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v3, v6, 0x3

    invoke-virtual {v11, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    invoke-static {v12, v10, v6}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    invoke-static {v7, v9, v6}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/ColorRGBA;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v13, v14}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v13, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    invoke-virtual {v13, v12}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {v13, v10, v5}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    invoke-static {v8, v9, v5}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/ColorRGBA;Ljava/nio/FloatBuffer;I)V

    if-nez v23, :cond_3

    invoke-virtual {v15, v14, v13}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    neg-float v2, v0

    invoke-virtual {v13, v2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    invoke-virtual {v13}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-object/from16 v6, v23

    move/from16 v2, v25

    goto :goto_4

    :cond_3
    move-object/from16 v6, v23

    move/from16 v2, v25

    invoke-static {v13, v6, v2}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    :goto_4
    invoke-virtual {v13, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    invoke-virtual {v13, v12}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {v13, v10, v4}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    move-object/from16 v5, v20

    invoke-static {v5, v9, v4}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/ColorRGBA;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v13, v15}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v13, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    invoke-virtual {v13, v12}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {v13, v10, v3}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    move-object/from16 v4, v19

    invoke-static {v4, v9, v3}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/ColorRGBA;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v22

    move-object/from16 v5, v24

    move v4, v2

    move-object/from16 v2, v21

    move/from16 v21, v0

    move/from16 v0, p0

    goto/16 :goto_2

    :cond_4
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    move-object/from16 v1, v17

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, v11}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/IntBuffer;)V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2, v10}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2, v9}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-object v1
.end method

.method public static genTbnLines(Lcom/jme3/scene/Mesh;F)Lcom/jme3/scene/Mesh;
    .locals 1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/jme3/util/TangentUtils;->genNormalLines(Lcom/jme3/scene/Mesh;F)Lcom/jme3/scene/Mesh;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/jme3/util/TangentUtils;->genTangentLines(Lcom/jme3/scene/Mesh;F)Lcom/jme3/scene/Mesh;

    move-result-object p0

    return-object p0
.end method

.method public static generateBindPoseTangentsIfNecessary(Lcom/jme3/scene/Mesh;)V
    .locals 7

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/jme3/scene/VertexBuffer;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseTangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v1, v2}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Usage;->CpuOnly:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v5

    invoke-static {v5}, Lcom/jme3/util/BufferUtils;->clone(Ljava/nio/Buffer;)Ljava/nio/Buffer;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v1, v3, v6, v4, v5}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    sget-object p0, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v0, p0}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    :cond_1
    return-void
.end method
