.class public Lcom/jme3/scene/shape/Cylinder;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# instance fields
.field private axisSamples:I

.field private closed:Z

.field private height:F

.field private inverted:Z

.field private radialSamples:I

.field private radius:F

.field private radius2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(IIFF)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/jme3/scene/shape/Cylinder;-><init>(IIFFZ)V

    return-void
.end method

.method public constructor <init>(IIFFFZZ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 6
    invoke-virtual/range {p0 .. p7}, Lcom/jme3/scene/shape/Cylinder;->updateGeometry(IIFFFZZ)V

    return-void
.end method

.method public constructor <init>(IIFFZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/jme3/scene/shape/Cylinder;-><init>(IIFFZZ)V

    return-void
.end method

.method public constructor <init>(IIFFZZ)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/jme3/scene/shape/Cylinder;-><init>(IIFFFZZ)V

    return-void
.end method


# virtual methods
.method public getAxisSamples()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/Cylinder;->axisSamples:I

    return v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/Cylinder;->height:F

    return v0
.end method

.method public getRadialSamples()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/Cylinder;->radialSamples:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/Cylinder;->radius:F

    return v0
.end method

.method public getRadius2()F
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/Cylinder;->radius2:F

    return v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/scene/shape/Cylinder;->closed:Z

    return v0
.end method

.method public isInverted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/scene/shape/Cylinder;->inverted:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Mesh;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "axisSamples"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/Cylinder;->axisSamples:I

    const-string v0, "radialSamples"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/Cylinder;->radialSamples:I

    const-string v0, "radius"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/Cylinder;->radius:F

    const-string v0, "radius2"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/Cylinder;->radius2:F

    const-string v0, "height"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/Cylinder;->height:F

    const-string v0, "closed"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/scene/shape/Cylinder;->closed:Z

    const-string v0, "inverted"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jme3/scene/shape/Cylinder;->inverted:Z

    return-void
.end method

.method public updateGeometry(IIFFFZZ)V
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    const/4 v8, 0x2

    if-lt v1, v8, :cond_e

    const/4 v9, 0x3

    if-lt v2, v9, :cond_e

    const/4 v10, 0x0

    cmpg-float v11, v3, v10

    if-lez v11, :cond_e

    cmpg-float v11, v4, v10

    if-lez v11, :cond_e

    cmpg-float v11, v5, v10

    if-lez v11, :cond_e

    iput v1, v0, Lcom/jme3/scene/shape/Cylinder;->axisSamples:I

    iput v2, v0, Lcom/jme3/scene/shape/Cylinder;->radialSamples:I

    iput v4, v0, Lcom/jme3/scene/shape/Cylinder;->radius:F

    iput v3, v0, Lcom/jme3/scene/shape/Cylinder;->radius2:F

    iput v5, v0, Lcom/jme3/scene/shape/Cylinder;->height:F

    iput-boolean v6, v0, Lcom/jme3/scene/shape/Cylinder;->closed:Z

    iput-boolean v7, v0, Lcom/jme3/scene/shape/Cylinder;->inverted:Z

    add-int/lit8 v11, v2, 0x1

    mul-int v12, v1, v11

    mul-int v13, v1, v2

    mul-int/2addr v13, v8

    if-eqz v6, :cond_0

    mul-int/lit8 v14, v11, 0x2

    add-int/2addr v14, v8

    add-int/2addr v14, v12

    mul-int/lit8 v15, v2, 0x2

    add-int/2addr v13, v15

    goto :goto_0

    :cond_0
    move v14, v12

    :goto_0
    new-array v15, v8, [I

    const/16 v16, 0x1

    aput v8, v15, v16

    const/16 v17, 0x0

    aput v11, v15, v17

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[F

    move/from16 v15, v17

    :goto_1
    if-ge v15, v2, :cond_1

    const v18, 0x40c90fdb

    int-to-float v8, v2

    div-float v18, v18, v8

    int-to-float v8, v15

    mul-float v18, v18, v8

    aget-object v8, v9, v15

    invoke-static/range {v18 .. v18}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v19

    aput v19, v8, v17

    aget-object v8, v9, v15

    invoke-static/range {v18 .. v18}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v18

    aput v18, v8, v16

    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x2

    goto :goto_1

    :cond_1
    aget-object v8, v9, v2

    aget-object v15, v9, v17

    aget v18, v15, v17

    aput v18, v8, v17

    aget v15, v15, v16

    aput v15, v8, v16

    new-array v8, v11, [Lcom/jme3/math/Vector3f;

    move/from16 v15, v17

    :goto_2
    if-ge v15, v11, :cond_2

    new-instance v10, Lcom/jme3/math/Vector3f;

    aget-object v19, v9, v15

    aget v20, v19, v17

    mul-float v0, v5, v20

    aget v19, v19, v16

    mul-float v7, v5, v19

    move/from16 v19, v12

    sub-float v12, v4, v3

    invoke-direct {v10, v0, v7, v12}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v10}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object v0

    aput-object v0, v8, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v7, p7

    move/from16 v12, v19

    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    move/from16 v19, v12

    mul-int/lit8 v0, v14, 0x3

    new-array v7, v0, [F

    new-array v10, v0, [F

    mul-int/lit8 v12, v14, 0x2

    new-array v12, v12, [F

    move/from16 v15, v17

    move/from16 v20, v15

    :goto_3
    const/high16 v21, 0x40000000    # 2.0f

    if-ge v15, v1, :cond_5

    move/from16 v22, v0

    neg-float v0, v5

    div-float v0, v0, v21

    move/from16 v23, v14

    int-to-float v14, v15

    mul-float v24, v5, v14

    move/from16 v25, v13

    add-int/lit8 v13, v1, -0x1

    int-to-float v13, v13

    div-float v24, v24, v13

    add-float v0, v0, v24

    sub-float v24, v3, v4

    mul-float v24, v24, v14

    div-float v24, v24, v13

    add-float v13, v4, v24

    move/from16 v14, v17

    :goto_4
    if-ge v14, v11, :cond_4

    mul-int/lit8 v24, v20, 0x3

    aget-object v26, v9, v14

    aget v27, v26, v17

    mul-float v27, v27, v13

    aput v27, v7, v24

    add-int/lit8 v27, v24, 0x1

    aget v26, v26, v16

    mul-float v26, v26, v13

    aput v26, v7, v27

    add-int/lit8 v26, v24, 0x2

    aput v0, v7, v26

    move/from16 v28, v13

    aget-object v13, v8, v14

    move-object/from16 v29, v8

    iget v8, v13, Lcom/jme3/math/Vector3f;->x:F

    aput v8, v10, v24

    iget v8, v13, Lcom/jme3/math/Vector3f;->y:F

    aput v8, v10, v27

    iget v8, v13, Lcom/jme3/math/Vector3f;->z:F

    aput v8, v10, v26

    mul-int/lit8 v8, v20, 0x2

    int-to-float v13, v14

    int-to-float v1, v2

    div-float/2addr v13, v1

    aput v13, v12, v8

    if-eqz v6, :cond_3

    add-int/lit8 v8, v8, 0x1

    div-float v1, v5, v21

    add-float/2addr v1, v4

    add-float/2addr v1, v0

    add-float v13, v4, v5

    add-float/2addr v13, v3

    div-float/2addr v1, v13

    aput v1, v12, v8

    goto :goto_5

    :cond_3
    add-int/lit8 v8, v8, 0x1

    div-float v1, v5, v21

    add-float/2addr v1, v0

    aput v1, v12, v8

    :goto_5
    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p1

    move/from16 v13, v28

    move-object/from16 v8, v29

    goto :goto_4

    :cond_4
    move-object/from16 v29, v8

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    move/from16 v0, v22

    move/from16 v14, v23

    move/from16 v13, v25

    goto :goto_3

    :cond_5
    move/from16 v22, v0

    move/from16 v25, v13

    move/from16 v23, v14

    if-eqz v6, :cond_8

    move/from16 v0, v17

    :goto_6
    const/high16 v1, -0x40800000    # -1.0f

    if-ge v0, v11, :cond_6

    mul-int/lit8 v8, v20, 0x3

    aget-object v13, v9, v0

    aget v14, v13, v17

    mul-float/2addr v14, v4

    aput v14, v7, v8

    add-int/lit8 v14, v8, 0x1

    aget v13, v13, v16

    mul-float/2addr v13, v4

    aput v13, v7, v14

    add-int/lit8 v13, v8, 0x2

    neg-float v15, v5

    div-float v15, v15, v21

    aput v15, v7, v13

    const/4 v15, 0x0

    aput v15, v10, v8

    aput v15, v10, v14

    aput v1, v10, v13

    mul-int/lit8 v1, v20, 0x2

    int-to-float v8, v0

    int-to-float v13, v2

    div-float/2addr v8, v13

    aput v8, v12, v1

    add-int/lit8 v1, v1, 0x1

    add-float v8, v4, v5

    add-float/2addr v8, v3

    div-float v8, v4, v8

    aput v8, v12, v1

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    move/from16 v0, v17

    :goto_7
    const/high16 v8, 0x3f800000    # 1.0f

    if-ge v0, v11, :cond_7

    mul-int/lit8 v13, v20, 0x3

    aget-object v14, v9, v0

    aget v15, v14, v17

    mul-float/2addr v15, v3

    aput v15, v7, v13

    add-int/lit8 v15, v13, 0x1

    aget v14, v14, v16

    mul-float/2addr v14, v3

    aput v14, v7, v15

    add-int/lit8 v14, v13, 0x2

    div-float v24, v5, v21

    aput v24, v7, v14

    const/16 v18, 0x0

    aput v18, v10, v13

    aput v18, v10, v15

    aput v8, v10, v14

    mul-int/lit8 v8, v20, 0x2

    int-to-float v13, v0

    int-to-float v14, v2

    div-float/2addr v13, v14

    aput v13, v12, v8

    add-int/lit8 v8, v8, 0x1

    add-float v13, v4, v5

    add-float v14, v13, v3

    div-float/2addr v13, v14

    aput v13, v12, v8

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_7
    mul-int/lit8 v0, v20, 0x3

    const/4 v3, 0x0

    aput v3, v7, v0

    add-int/lit8 v4, v0, 0x1

    aput v3, v7, v4

    add-int/lit8 v9, v0, 0x2

    neg-float v13, v5

    div-float v13, v13, v21

    aput v13, v7, v9

    aput v3, v10, v0

    aput v3, v10, v4

    aput v1, v10, v9

    mul-int/lit8 v0, v20, 0x2

    const/high16 v1, 0x3f000000    # 0.5f

    aput v1, v12, v0

    add-int/lit8 v0, v0, 0x1

    aput v3, v12, v0

    add-int/lit8 v20, v20, 0x1

    mul-int/lit8 v0, v20, 0x3

    aput v3, v7, v0

    add-int/lit8 v4, v0, 0x1

    aput v3, v7, v4

    add-int/lit8 v9, v0, 0x2

    div-float v5, v5, v21

    aput v5, v7, v9

    aput v3, v10, v0

    aput v3, v10, v4

    aput v8, v10, v9

    const/4 v0, 0x2

    mul-int/lit8 v20, v20, 0x2

    aput v1, v12, v20

    add-int/lit8 v20, v20, 0x1

    aput v8, v12, v20

    :cond_8
    const/4 v0, 0x3

    mul-int/lit8 v13, v25, 0x3

    new-array v0, v13, [S

    move/from16 v1, v17

    move v3, v1

    :goto_8
    add-int/lit8 v4, p1, -0x1

    if-ge v1, v4, :cond_a

    move/from16 v4, v17

    :goto_9
    if-ge v4, v2, :cond_9

    add-int/lit8 v5, v3, 0x1

    mul-int v8, v1, v11

    add-int/2addr v8, v4

    int-to-short v9, v8

    aput-short v9, v0, v3

    add-int/lit8 v9, v3, 0x2

    add-int/lit8 v8, v8, 0x1

    int-to-short v8, v8

    aput-short v8, v0, v5

    add-int/lit8 v5, v3, 0x3

    add-int/lit8 v14, v1, 0x1

    mul-int/2addr v14, v11

    add-int/2addr v14, v4

    int-to-short v15, v14

    aput-short v15, v0, v9

    add-int/lit8 v9, v3, 0x4

    aput-short v15, v0, v5

    add-int/lit8 v5, v3, 0x5

    aput-short v8, v0, v9

    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v14, v14, 0x1

    int-to-short v8, v14

    aput-short v8, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_8

    :cond_a
    if-eqz v6, :cond_b

    add-int/lit8 v14, v23, -0x2

    int-to-short v1, v14

    add-int/lit8 v14, v23, -0x1

    int-to-short v4, v14

    add-int/lit8 v5, p1, 0x1

    mul-int/2addr v5, v11

    move/from16 v6, v17

    :goto_a
    if-ge v6, v2, :cond_b

    add-int/lit8 v8, v3, 0x1

    add-int v9, v19, v6

    add-int/lit8 v11, v9, 0x1

    int-to-short v11, v11

    aput-short v11, v0, v3

    add-int/lit8 v11, v3, 0x2

    int-to-short v9, v9

    aput-short v9, v0, v8

    add-int/lit8 v8, v3, 0x3

    aput-short v1, v0, v11

    add-int/lit8 v9, v3, 0x4

    add-int v11, v5, v6

    int-to-short v14, v11

    aput-short v14, v0, v8

    add-int/lit8 v8, v3, 0x5

    add-int/lit8 v11, v11, 0x1

    int-to-short v11, v11

    aput-short v11, v0, v9

    add-int/lit8 v3, v3, 0x6

    aput-short v4, v0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_b
    if-eqz p7, :cond_d

    move/from16 v1, v17

    :goto_b
    div-int/lit8 v2, v13, 0x2

    if-ge v1, v2, :cond_c

    aget-short v2, v0, v1

    add-int/lit8 v3, v13, -0x1

    sub-int/2addr v3, v1

    aget-short v4, v0, v3

    aput-short v4, v0, v1

    aput-short v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_c
    move/from16 v1, v17

    move/from16 v14, v22

    :goto_c
    if-ge v1, v14, :cond_d

    aget v2, v10, v1

    neg-float v2, v2

    aput v2, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_d
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {v7}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v4, 0x3

    move-object/from16 v3, p0

    invoke-virtual {v3, v1, v4, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {v10}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v3, v1, v4, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {v12}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v3, v1, v5, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createShortBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v3, v1, v4, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void

    :cond_e
    move-object v3, v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cylinders must have at least 2 axis samples and 3 radial samples, and positive dimensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    iget v0, p0, Lcom/jme3/scene/shape/Cylinder;->axisSamples:I

    const-string v1, "axisSamples"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/scene/shape/Cylinder;->radialSamples:I

    const-string v1, "radialSamples"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/scene/shape/Cylinder;->radius:F

    const-string v1, "radius"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/scene/shape/Cylinder;->radius2:F

    const-string v1, "radius2"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/scene/shape/Cylinder;->height:F

    const-string v1, "height"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-boolean v0, p0, Lcom/jme3/scene/shape/Cylinder;->closed:Z

    const-string v1, "closed"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/jme3/scene/shape/Cylinder;->inverted:Z

    const-string v1, "inverted"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
