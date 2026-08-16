.class public Lcom/jme3/scene/shape/Dome;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# instance fields
.field private center:Lcom/jme3/math/Vector3f;

.field private insideView:Z

.field private planes:I

.field private radialSamples:I

.field private radius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/jme3/scene/shape/Dome;->insideView:Z

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 2

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/jme3/scene/shape/Dome;-><init>(Lcom/jme3/math/Vector3f;IIF)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;IIF)V
    .locals 7

    .line 4
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/jme3/scene/shape/Dome;->insideView:Z

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/jme3/scene/shape/Dome;->updateGeometry(Lcom/jme3/math/Vector3f;IIFZ)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;IIFZ)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/jme3/scene/shape/Dome;->insideView:Z

    .line 9
    invoke-virtual/range {p0 .. p5}, Lcom/jme3/scene/shape/Dome;->updateGeometry(Lcom/jme3/math/Vector3f;IIFZ)V

    return-void
.end method


# virtual methods
.method public getCenter()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/shape/Dome;->center:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getPlanes()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/Dome;->planes:I

    return v0
.end method

.method public getRadialSamples()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/Dome;->radialSamples:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/Dome;->radius:F

    return v0
.end method

.method public isInsideView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/scene/shape/Dome;->insideView:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Mesh;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "planes"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/Dome;->planes:I

    const-string v0, "radialSamples"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/Dome;->radialSamples:I

    const-string v0, "radius"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/Dome;->radius:F

    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    const-string v1, "center"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/scene/shape/Dome;->center:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public updateGeometry(Lcom/jme3/math/Vector3f;IIFZ)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    iput-boolean v5, v0, Lcom/jme3/scene/shape/Dome;->insideView:Z

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/jme3/math/Vector3f;

    invoke-direct {v7, v6, v6, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    :goto_0
    iput-object v7, v0, Lcom/jme3/scene/shape/Dome;->center:Lcom/jme3/math/Vector3f;

    iput v2, v0, Lcom/jme3/scene/shape/Dome;->planes:I

    iput v3, v0, Lcom/jme3/scene/shape/Dome;->radialSamples:I

    iput v4, v0, Lcom/jme3/scene/shape/Dome;->radius:F

    add-int/lit8 v7, v2, -0x1

    add-int/lit8 v8, v3, 0x1

    mul-int v9, v7, v8

    add-int/lit8 v10, v9, 0x1

    invoke-static {v10}, Lcom/jme3/util/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v11

    invoke-static {v10}, Lcom/jme3/util/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v12

    invoke-static {v10}, Lcom/jme3/util/BufferUtils;->createVector2Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v10

    sget-object v13, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v14, 0x3

    invoke-virtual {v0, v13, v14, v11}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object v13, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v13, v14, v12}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object v13, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v15, 0x2

    invoke-virtual {v0, v13, v15, v10}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    int-to-float v13, v3

    const/high16 v14, 0x3f800000    # 1.0f

    div-float v13, v14, v13

    int-to-float v15, v7

    div-float v15, v14, v15

    new-array v14, v3, [F

    new-array v6, v3, [F

    const/16 v16, 0x0

    move/from16 v17, v9

    move/from16 v9, v16

    :goto_1
    if-ge v9, v3, :cond_1

    const v18, 0x40c90fdb

    mul-float v18, v18, v13

    move/from16 v19, v8

    int-to-float v8, v9

    mul-float v18, v18, v8

    invoke-static/range {v18 .. v18}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v8

    aput v8, v6, v9

    invoke-static/range {v18 .. v18}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v8

    aput v8, v14, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v19

    goto :goto_1

    :cond_1
    move/from16 v19, v8

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v8

    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    iget-object v2, v8, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v0, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    move-object/from16 v18, v8

    move/from16 v8, v16

    move/from16 v20, v8

    :goto_2
    if-ge v8, v7, :cond_4

    move/from16 v21, v7

    int-to-float v7, v8

    mul-float/2addr v7, v15

    mul-float v22, v4, v7

    move/from16 v23, v15

    invoke-virtual {v2, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v15

    move-object/from16 v24, v2

    iget v2, v15, Lcom/jme3/math/Vector3f;->y:F

    add-float v2, v2, v22

    iput v2, v15, Lcom/jme3/math/Vector3f;->y:F

    mul-float v2, v4, v4

    mul-float v22, v22, v22

    sub-float v2, v2, v22

    invoke-static {v2}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v2

    invoke-static {v2}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v2

    move/from16 v22, v8

    move/from16 v4, v16

    move/from16 v8, v20

    :goto_3
    if-ge v4, v3, :cond_3

    int-to-float v3, v4

    mul-float/2addr v3, v13

    move/from16 v25, v13

    aget v13, v6, v4

    move-object/from16 v26, v6

    aget v6, v14, v4

    move-object/from16 v27, v14

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14, v6}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v6, v2, v0}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v6, v15, Lcom/jme3/math/Vector3f;->x:F

    iget v13, v0, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v6, v13

    invoke-virtual {v11, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    iget v13, v15, Lcom/jme3/math/Vector3f;->y:F

    iget v14, v0, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr v13, v14

    invoke-virtual {v6, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    iget v13, v15, Lcom/jme3/math/Vector3f;->z:F

    iget v14, v0, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v13, v14

    invoke-virtual {v6, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-static {v0, v11, v8}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    if-nez v5, :cond_2

    iget v13, v6, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v12, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v13

    iget v14, v6, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v13, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v13

    iget v6, v6, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v13, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_4

    :cond_2
    iget v13, v6, Lcom/jme3/math/Vector3f;->x:F

    neg-float v13, v13

    invoke-virtual {v12, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v13

    iget v14, v6, Lcom/jme3/math/Vector3f;->y:F

    neg-float v14, v14

    invoke-virtual {v13, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v13

    iget v6, v6, Lcom/jme3/math/Vector3f;->z:F

    neg-float v6, v6

    invoke-virtual {v13, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_4
    invoke-virtual {v10, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v8, v8, 0x1

    move/from16 v3, p3

    move/from16 v13, v25

    move-object/from16 v6, v26

    move-object/from16 v14, v27

    goto :goto_3

    :cond_3
    move-object/from16 v26, v6

    move/from16 v25, v13

    move-object/from16 v27, v14

    move/from16 v3, v20

    invoke-static {v11, v3, v8}, Lcom/jme3/util/BufferUtils;->copyInternalVector3(Ljava/nio/FloatBuffer;II)V

    invoke-static {v12, v3, v8}, Lcom/jme3/util/BufferUtils;->copyInternalVector3(Ljava/nio/FloatBuffer;II)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v10, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v22, 0x1

    add-int/lit8 v20, v8, 0x1

    move/from16 v3, p3

    move/from16 v4, p4

    move v8, v2

    move/from16 v7, v21

    move/from16 v15, v23

    move-object/from16 v2, v24

    goto/16 :goto_2

    :cond_4
    move/from16 v21, v7

    invoke-virtual/range {v18 .. v18}, Lcom/jme3/util/TempVars;->release()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jme3/scene/shape/Dome;->center:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v11, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, v0, Lcom/jme3/scene/shape/Dome;->center:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    add-float v2, v2, p4

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, v0, Lcom/jme3/scene/shape/Dome;->center:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    if-eqz v5, :cond_5

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_5

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_5
    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v10, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    add-int/lit8 v2, p2, -0x2

    move/from16 v3, p3

    mul-int v4, v2, v3

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    const/4 v1, 0x3

    mul-int/2addr v4, v1

    invoke-static {v4}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v4

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v6, v1, v4}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V

    const/4 v1, 0x1

    move v7, v1

    move/from16 v6, v21

    :goto_6
    if-ge v7, v6, :cond_8

    add-int/lit8 v8, v7, -0x1

    mul-int v8, v8, v19

    mul-int v9, v7, v19

    move/from16 v10, v16

    :goto_7
    if-ge v10, v3, :cond_7

    if-eqz v5, :cond_6

    add-int v11, v8, v10

    int-to-short v12, v11

    invoke-virtual {v4, v12}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/2addr v11, v1

    int-to-short v11, v11

    invoke-virtual {v4, v11}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int v12, v9, v10

    int-to-short v13, v12

    invoke-virtual {v4, v13}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    invoke-virtual {v4, v11}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/2addr v12, v1

    int-to-short v11, v12

    invoke-virtual {v4, v11}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    invoke-virtual {v4, v13}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    goto :goto_8

    :cond_6
    add-int v11, v8, v10

    int-to-short v12, v11

    invoke-virtual {v4, v12}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int v12, v9, v10

    int-to-short v13, v12

    invoke-virtual {v4, v13}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/2addr v11, v1

    int-to-short v11, v11

    invoke-virtual {v4, v11}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    invoke-virtual {v4, v11}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    invoke-virtual {v4, v13}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/2addr v12, v1

    int-to-short v11, v12

    invoke-virtual {v4, v11}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_8
    mul-int v2, v2, v19

    move/from16 v6, v16

    :goto_9
    if-ge v6, v3, :cond_a

    if-eqz v5, :cond_9

    add-int v7, v2, v6

    int-to-short v8, v7

    invoke-virtual {v4, v8}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/2addr v7, v1

    int-to-short v7, v7

    invoke-virtual {v4, v7}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move/from16 v7, v17

    int-to-short v8, v7

    invoke-virtual {v4, v8}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    goto :goto_a

    :cond_9
    move/from16 v7, v17

    add-int v8, v2, v6

    int-to-short v9, v8

    invoke-virtual {v4, v9}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    int-to-short v9, v7

    invoke-virtual {v4, v9}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/2addr v8, v1

    int-to-short v8, v8

    invoke-virtual {v4, v8}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    :goto_a
    add-int/lit8 v6, v6, 0x1

    move/from16 v17, v7

    goto :goto_9

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Mesh;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/scene/shape/Dome;->planes:I

    const-string v1, "planes"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/scene/shape/Dome;->radialSamples:I

    const-string v1, "radialSamples"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/scene/shape/Dome;->radius:F

    const-string v1, "radius"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/scene/shape/Dome;->center:Lcom/jme3/math/Vector3f;

    const-string v1, "center"

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
