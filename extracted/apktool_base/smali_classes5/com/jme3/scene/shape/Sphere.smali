.class public Lcom/jme3/scene/shape/Sphere;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/shape/Sphere$TextureMode;
    }
.end annotation


# instance fields
.field protected interior:Z

.field protected radialSamples:I

.field public radius:F

.field protected textureMode:Lcom/jme3/scene/shape/Sphere$TextureMode;

.field protected triCount:I

.field protected useEvenSlices:Z

.field protected vertCount:I

.field protected zSamples:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 2
    sget-object v0, Lcom/jme3/scene/shape/Sphere$TextureMode;->Original:Lcom/jme3/scene/shape/Sphere$TextureMode;

    iput-object v0, p0, Lcom/jme3/scene/shape/Sphere;->textureMode:Lcom/jme3/scene/shape/Sphere$TextureMode;

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/jme3/scene/shape/Sphere;-><init>(IIFZZ)V

    return-void
.end method

.method public constructor <init>(IIFZZ)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 5
    sget-object v0, Lcom/jme3/scene/shape/Sphere$TextureMode;->Original:Lcom/jme3/scene/shape/Sphere$TextureMode;

    iput-object v0, p0, Lcom/jme3/scene/shape/Sphere;->textureMode:Lcom/jme3/scene/shape/Sphere$TextureMode;

    .line 6
    invoke-virtual/range {p0 .. p5}, Lcom/jme3/scene/shape/Sphere;->updateGeometry(IIFZZ)V

    return-void
.end method

.method private setGeometryData()V
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lcom/jme3/scene/shape/Sphere;->zSamples:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    iget v3, v0, Lcom/jme3/scene/shape/Sphere;->radialSamples:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/jme3/scene/shape/Sphere;->vertCount:I

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget v3, v0, Lcom/jme3/scene/shape/Sphere;->vertCount:I

    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    iget v5, v0, Lcom/jme3/scene/shape/Sphere;->vertCount:I

    invoke-static {v5}, Lcom/jme3/util/BufferUtils;->createVector2Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v5

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v7, 0x3

    invoke-virtual {v0, v6, v7, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v6, v7, v3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v6, v2, v5}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    iget v6, v0, Lcom/jme3/scene/shape/Sphere;->radialSamples:I

    int-to-float v7, v6

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v7, v8, v7

    iget v9, v0, Lcom/jme3/scene/shape/Sphere;->zSamples:I

    sub-int/2addr v9, v4

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v10, v9

    add-int/lit8 v9, v6, 0x1

    new-array v9, v9, [F

    add-int/2addr v6, v4

    new-array v6, v6, [F

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    iget v13, v0, Lcom/jme3/scene/shape/Sphere;->radialSamples:I

    if-ge v12, v13, :cond_0

    const v13, 0x40c90fdb

    mul-float/2addr v13, v7

    int-to-float v14, v12

    mul-float/2addr v13, v14

    invoke-static {v13}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v14

    aput v14, v6, v12

    invoke-static {v13}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v13

    aput v13, v9, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    aget v12, v9, v11

    aput v12, v9, v13

    aget v12, v6, v11

    aput v12, v6, v13

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v12

    iget-object v13, v12, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v14, v12, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v15, v12, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    move v2, v11

    move v11, v4

    :goto_1
    iget v8, v0, Lcom/jme3/scene/shape/Sphere;->zSamples:I

    sub-int/2addr v8, v4

    if-ge v11, v8, :cond_a

    int-to-float v8, v11

    mul-float/2addr v8, v10

    const/high16 v16, -0x40800000    # -1.0f

    add-float v8, v8, v16

    const v16, 0x3fc90fdb

    mul-float v17, v8, v16

    iget-boolean v4, v0, Lcom/jme3/scene/shape/Sphere;->useEvenSlices:Z

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-static/range {v17 .. v17}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v8

    :goto_2
    iget v4, v0, Lcom/jme3/scene/shape/Sphere;->radius:F

    mul-float/2addr v4, v8

    move/from16 v18, v10

    sget-object v10, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v14, v10}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v10

    move-object/from16 v19, v14

    iget v14, v10, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v14, v4

    iput v14, v10, Lcom/jme3/math/Vector3f;->z:F

    iget v14, v0, Lcom/jme3/scene/shape/Sphere;->radius:F

    mul-float/2addr v14, v14

    mul-float/2addr v4, v4

    sub-float/2addr v14, v4

    invoke-static {v14}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v4

    invoke-static {v4}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v4

    move/from16 v21, v11

    move-object/from16 v20, v12

    const/4 v14, 0x0

    move v12, v2

    :goto_3
    iget v11, v0, Lcom/jme3/scene/shape/Sphere;->radialSamples:I

    const v22, 0x40490fdb    # (float)Math.PI

    const v23, 0x3ea2f983

    if-ge v14, v11, :cond_6

    int-to-float v11, v14

    mul-float/2addr v11, v7

    move/from16 v24, v7

    aget v7, v6, v14

    move/from16 v25, v2

    aget v2, v9, v14

    move-object/from16 v26, v9

    const/4 v9, 0x0

    invoke-virtual {v15, v7, v2, v9}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2, v4, v13}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v2, v10, Lcom/jme3/math/Vector3f;->x:F

    iget v7, v13, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v2, v7

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v7, v10, Lcom/jme3/math/Vector3f;->y:F

    iget v9, v13, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr v7, v9

    invoke-virtual {v2, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v7, v10, Lcom/jme3/math/Vector3f;->z:F

    iget v9, v13, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v7, v9

    invoke-virtual {v2, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-static {v13, v1, v12}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v13}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    iget-boolean v2, v0, Lcom/jme3/scene/shape/Sphere;->interior:Z

    if-nez v2, :cond_2

    iget v2, v13, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v7, v13, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v2, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v7, v13, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v2, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_4

    :cond_2
    iget v2, v13, Lcom/jme3/math/Vector3f;->x:F

    neg-float v2, v2

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v7, v13, Lcom/jme3/math/Vector3f;->y:F

    neg-float v7, v7

    invoke-virtual {v2, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v7, v13, Lcom/jme3/math/Vector3f;->z:F

    neg-float v7, v7

    invoke-virtual {v2, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_4
    iget-object v2, v0, Lcom/jme3/scene/shape/Sphere;->textureMode:Lcom/jme3/scene/shape/Sphere$TextureMode;

    sget-object v7, Lcom/jme3/scene/shape/Sphere$TextureMode;->Original:Lcom/jme3/scene/shape/Sphere$TextureMode;

    if-ne v2, v7, :cond_3

    invoke-virtual {v5, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/high16 v7, 0x3f800000    # 1.0f

    add-float v9, v8, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v9, v7

    invoke-virtual {v2, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_5

    :cond_3
    sget-object v7, Lcom/jme3/scene/shape/Sphere$TextureMode;->Projected:Lcom/jme3/scene/shape/Sphere$TextureMode;

    if-ne v2, v7, :cond_4

    invoke-virtual {v5, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v8}, Lcom/jme3/math/FastMath;->asin(F)F

    move-result v7

    add-float v7, v7, v16

    mul-float v7, v7, v23

    invoke-virtual {v2, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_5

    :cond_4
    sget-object v7, Lcom/jme3/scene/shape/Sphere$TextureMode;->Polar:Lcom/jme3/scene/shape/Sphere$TextureMode;

    if-ne v2, v7, :cond_5

    invoke-static/range {v17 .. v17}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v2

    sub-float v2, v16, v2

    div-float v2, v2, v22

    aget v7, v6, v14

    mul-float/2addr v7, v2

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v7, v9

    aget v11, v26, v14

    mul-float/2addr v2, v11

    add-float/2addr v2, v9

    invoke-virtual {v5, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :cond_5
    :goto_5
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v24

    move/from16 v2, v25

    move-object/from16 v9, v26

    goto/16 :goto_3

    :cond_6
    move v11, v2

    move/from16 v24, v7

    move-object/from16 v26, v9

    invoke-static {v1, v11, v12}, Lcom/jme3/util/BufferUtils;->copyInternalVector3(Ljava/nio/FloatBuffer;II)V

    invoke-static {v3, v11, v12}, Lcom/jme3/util/BufferUtils;->copyInternalVector3(Ljava/nio/FloatBuffer;II)V

    iget-object v2, v0, Lcom/jme3/scene/shape/Sphere;->textureMode:Lcom/jme3/scene/shape/Sphere$TextureMode;

    sget-object v4, Lcom/jme3/scene/shape/Sphere$TextureMode;->Original:Lcom/jme3/scene/shape/Sphere$TextureMode;

    if-ne v2, v4, :cond_7

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v5, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    add-float/2addr v8, v4

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v8, v7

    invoke-virtual {v2, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_6

    :cond_7
    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v7, Lcom/jme3/scene/shape/Sphere$TextureMode;->Projected:Lcom/jme3/scene/shape/Sphere$TextureMode;

    if-ne v2, v7, :cond_8

    invoke-virtual {v5, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v8}, Lcom/jme3/math/FastMath;->asin(F)F

    move-result v4

    add-float v4, v4, v16

    mul-float v4, v4, v23

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_6

    :cond_8
    sget-object v4, Lcom/jme3/scene/shape/Sphere$TextureMode;->Polar:Lcom/jme3/scene/shape/Sphere$TextureMode;

    if-ne v2, v4, :cond_9

    invoke-static/range {v17 .. v17}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v2

    sub-float v16, v16, v2

    div-float v16, v16, v22

    const/high16 v2, 0x3f000000    # 0.5f

    add-float v4, v16, v2

    invoke-virtual {v5, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :cond_9
    :goto_6
    add-int/lit8 v2, v12, 0x1

    add-int/lit8 v11, v21, 0x1

    move/from16 v10, v18

    move-object/from16 v14, v19

    move-object/from16 v12, v20

    move/from16 v7, v24

    move-object/from16 v9, v26

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_a
    move v11, v2

    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Lcom/jme3/util/TempVars;->release()V

    mul-int/lit8 v2, v11, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    iget v7, v0, Lcom/jme3/scene/shape/Sphere;->radius:F

    neg-float v7, v7

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-boolean v2, v0, Lcom/jme3/scene/shape/Sphere;->interior:Z

    if-nez v2, :cond_b

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_7
    const/4 v2, 0x2

    goto :goto_8

    :cond_b
    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_7

    :goto_8
    mul-int/2addr v2, v11

    invoke-virtual {v5, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, v0, Lcom/jme3/scene/shape/Sphere;->textureMode:Lcom/jme3/scene/shape/Sphere$TextureMode;

    sget-object v4, Lcom/jme3/scene/shape/Sphere$TextureMode;->Polar:Lcom/jme3/scene/shape/Sphere$TextureMode;

    if-ne v2, v4, :cond_c

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v5, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    goto :goto_9

    :cond_c
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v5, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_9
    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget v6, v0, Lcom/jme3/scene/shape/Sphere;->radius:F

    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-boolean v1, v0, Lcom/jme3/scene/shape/Sphere;->interior:Z

    if-nez v1, :cond_d

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_a

    :cond_d
    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_a
    iget-object v1, v0, Lcom/jme3/scene/shape/Sphere;->textureMode:Lcom/jme3/scene/shape/Sphere$TextureMode;

    if-ne v1, v4, :cond_e

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v5, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_b

    :cond_e
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v5, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-void
.end method

.method private setIndexData()V
    .locals 12

    iget v0, p0, Lcom/jme3/scene/shape/Sphere;->zSamples:I

    add-int/lit8 v0, v0, -0x2

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/jme3/scene/shape/Sphere;->radialSamples:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/jme3/scene/shape/Sphere;->triCount:I

    const/4 v1, 0x3

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2, v1, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    iget v5, p0, Lcom/jme3/scene/shape/Sphere;->zSamples:I

    sub-int/2addr v5, v1

    if-ge v3, v5, :cond_2

    add-int/lit8 v5, v4, 0x1

    iget v6, p0, Lcom/jme3/scene/shape/Sphere;->radialSamples:I

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v4

    add-int/lit8 v7, v6, 0x1

    move v8, v2

    move v9, v6

    :goto_1
    iget v10, p0, Lcom/jme3/scene/shape/Sphere;->radialSamples:I

    if-ge v8, v10, :cond_1

    iget-boolean v10, p0, Lcom/jme3/scene/shape/Sphere;->interior:Z

    if-nez v10, :cond_0

    add-int/lit8 v10, v4, 0x1

    int-to-short v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    int-to-short v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    int-to-short v11, v9

    invoke-virtual {v0, v11}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v7, 0x1

    int-to-short v7, v7

    invoke-virtual {v0, v7}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v11}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    :goto_2
    move v7, v4

    move v4, v10

    goto :goto_3

    :cond_0
    add-int/lit8 v10, v4, 0x1

    int-to-short v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    int-to-short v4, v9

    invoke-virtual {v0, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    int-to-short v11, v5

    invoke-virtual {v0, v11}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v11}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v7, 0x1

    int-to-short v7, v7

    invoke-virtual {v0, v7}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    goto :goto_2

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_4
    iget v4, p0, Lcom/jme3/scene/shape/Sphere;->radialSamples:I

    if-ge v3, v4, :cond_4

    iget-boolean v4, p0, Lcom/jme3/scene/shape/Sphere;->interior:Z

    if-nez v4, :cond_3

    int-to-short v4, v3

    invoke-virtual {v0, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    iget v4, p0, Lcom/jme3/scene/shape/Sphere;->vertCount:I

    add-int/lit8 v4, v4, -0x2

    int-to-short v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v3, 0x1

    int-to-short v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    goto :goto_5

    :cond_3
    int-to-short v4, v3

    invoke-virtual {v0, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v3, 0x1

    int-to-short v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    iget v4, p0, Lcom/jme3/scene/shape/Sphere;->vertCount:I

    add-int/lit8 v4, v4, -0x2

    int-to-short v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    iget v3, p0, Lcom/jme3/scene/shape/Sphere;->zSamples:I

    sub-int/2addr v3, v1

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    :goto_6
    iget v1, p0, Lcom/jme3/scene/shape/Sphere;->radialSamples:I

    if-ge v2, v1, :cond_6

    iget-boolean v1, p0, Lcom/jme3/scene/shape/Sphere;->interior:Z

    if-nez v1, :cond_5

    add-int v1, v2, v3

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v1, v3

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    iget v1, p0, Lcom/jme3/scene/shape/Sphere;->vertCount:I

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    goto :goto_7

    :cond_5
    add-int v1, v2, v3

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    iget v1, p0, Lcom/jme3/scene/shape/Sphere;->vertCount:I

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v1, v3

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method


# virtual methods
.method public getRadialSamples()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/Sphere;->radialSamples:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/Sphere;->radius:F

    return v0
.end method

.method public getTextureMode()Lcom/jme3/scene/shape/Sphere$TextureMode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/shape/Sphere;->textureMode:Lcom/jme3/scene/shape/Sphere$TextureMode;

    return-object v0
.end method

.method public getZSamples()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/Sphere;->zSamples:I

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Mesh;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "zSamples"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/Sphere;->zSamples:I

    const-string v0, "radialSamples"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/Sphere;->radialSamples:I

    const-string v0, "radius"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/Sphere;->radius:F

    const-string v0, "useEvenSlices"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/scene/shape/Sphere;->useEvenSlices:Z

    const-class v0, Lcom/jme3/scene/shape/Sphere$TextureMode;

    sget-object v2, Lcom/jme3/scene/shape/Sphere$TextureMode;->Original:Lcom/jme3/scene/shape/Sphere$TextureMode;

    const-string v3, "textureMode"

    invoke-interface {p1, v3, v0, v2}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/shape/Sphere$TextureMode;

    iput-object v0, p0, Lcom/jme3/scene/shape/Sphere;->textureMode:Lcom/jme3/scene/shape/Sphere$TextureMode;

    const-string v0, "interior"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jme3/scene/shape/Sphere;->interior:Z

    return-void
.end method

.method public setTextureMode(Lcom/jme3/scene/shape/Sphere$TextureMode;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/shape/Sphere;->textureMode:Lcom/jme3/scene/shape/Sphere$TextureMode;

    invoke-direct {p0}, Lcom/jme3/scene/shape/Sphere;->setGeometryData()V

    return-void
.end method

.method public updateGeometry(IIF)V
    .locals 7

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 1
    invoke-virtual/range {v1 .. v6}, Lcom/jme3/scene/shape/Sphere;->updateGeometry(IIFZZ)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "zSamples cannot be smaller than 3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateGeometry(IIFZZ)V
    .locals 1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 3
    iput p1, p0, Lcom/jme3/scene/shape/Sphere;->zSamples:I

    .line 4
    iput p2, p0, Lcom/jme3/scene/shape/Sphere;->radialSamples:I

    .line 5
    iput p3, p0, Lcom/jme3/scene/shape/Sphere;->radius:F

    .line 6
    iput-boolean p4, p0, Lcom/jme3/scene/shape/Sphere;->useEvenSlices:Z

    .line 7
    iput-boolean p5, p0, Lcom/jme3/scene/shape/Sphere;->interior:Z

    .line 8
    invoke-direct {p0}, Lcom/jme3/scene/shape/Sphere;->setGeometryData()V

    .line 9
    invoke-direct {p0}, Lcom/jme3/scene/shape/Sphere;->setIndexData()V

    .line 10
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "zSamples cannot be smaller than 3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Mesh;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/scene/shape/Sphere;->zSamples:I

    const-string v1, "zSamples"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/scene/shape/Sphere;->radialSamples:I

    const-string v1, "radialSamples"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/scene/shape/Sphere;->radius:F

    const-string v1, "radius"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-boolean v0, p0, Lcom/jme3/scene/shape/Sphere;->useEvenSlices:Z

    const-string v1, "useEvenSlices"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/scene/shape/Sphere;->textureMode:Lcom/jme3/scene/shape/Sphere$TextureMode;

    const-string v1, "textureMode"

    sget-object v3, Lcom/jme3/scene/shape/Sphere$TextureMode;->Original:Lcom/jme3/scene/shape/Sphere$TextureMode;

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-boolean v0, p0, Lcom/jme3/scene/shape/Sphere;->interior:Z

    const-string v1, "interior"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
