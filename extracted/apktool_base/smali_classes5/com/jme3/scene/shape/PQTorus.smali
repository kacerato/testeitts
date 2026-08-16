.class public Lcom/jme3/scene/shape/PQTorus;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# instance fields
.field private p:F

.field private q:F

.field private radialSamples:I

.field private radius:F

.field private steps:I

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFFII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 3
    invoke-virtual/range {p0 .. p6}, Lcom/jme3/scene/shape/PQTorus;->updateGeometry(FFFFII)V

    return-void
.end method


# virtual methods
.method public getP()F
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/PQTorus;->p:F

    return v0
.end method

.method public getQ()F
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/PQTorus;->q:F

    return v0
.end method

.method public getRadialSamples()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/PQTorus;->radialSamples:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/PQTorus;->radius:F

    return v0
.end method

.method public getSteps()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/PQTorus;->steps:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/PQTorus;->width:F

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

    const-string v0, "p"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/PQTorus;->p:F

    const-string v0, "q"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/PQTorus;->q:F

    const-string v0, "radius"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/PQTorus;->radius:F

    const-string v0, "width"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/PQTorus;->width:F

    const-string v0, "steps"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/PQTorus;->steps:I

    const-string v0, "radialSamples"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/jme3/scene/shape/PQTorus;->radialSamples:I

    return-void
.end method

.method public updateGeometry(FFFFII)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    iput v1, v0, Lcom/jme3/scene/shape/PQTorus;->p:F

    iput v2, v0, Lcom/jme3/scene/shape/PQTorus;->q:F

    iput v3, v0, Lcom/jme3/scene/shape/PQTorus;->radius:F

    iput v4, v0, Lcom/jme3/scene/shape/PQTorus;->width:F

    iput v5, v0, Lcom/jme3/scene/shape/PQTorus;->steps:I

    iput v6, v0, Lcom/jme3/scene/shape/PQTorus;->radialSamples:I

    int-to-float v11, v5

    const v12, 0x40c90fdb

    div-float v13, v12, v11

    int-to-float v14, v6

    div-float/2addr v12, v14

    new-array v15, v5, [Lcom/jme3/math/Vector3f;

    mul-int v7, v6, v5

    invoke-static {v7}, Lcom/jme3/util/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-static {v7}, Lcom/jme3/util/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-static {v7}, Lcom/jme3/util/BufferUtils;->createVector2Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v10

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v18, v7

    move/from16 v19, v16

    move/from16 v7, v17

    :goto_0
    if-ge v7, v5, :cond_1

    add-float v19, v19, v13

    int-to-float v5, v7

    div-float/2addr v5, v11

    mul-float v20, v2, v19

    invoke-static/range {v20 .. v20}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v21

    const/high16 v22, 0x40000000    # 2.0f

    add-float v21, v21, v22

    const/high16 v23, 0x3f000000    # 0.5f

    mul-float v21, v21, v23

    mul-float v21, v21, v3

    mul-float v24, v1, v19

    invoke-static/range {v24 .. v24}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v25

    mul-float v25, v25, v21

    move/from16 v26, v11

    mul-float v11, v25, v3

    invoke-static/range {v24 .. v24}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v24

    mul-float v24, v24, v21

    move/from16 v25, v13

    mul-float v13, v24, v3

    invoke-static/range {v20 .. v20}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v20

    mul-float v21, v21, v20

    move/from16 v20, v5

    mul-float v5, v21, v3

    move-object/from16 v21, v10

    new-instance v10, Lcom/jme3/math/Vector3f;

    invoke-direct {v10, v11, v13, v5}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    aput-object v10, v15, v7

    const v5, 0x3c23d70a    # 0.01f

    add-float v5, v19, v5

    mul-float v10, v2, v5

    invoke-static {v10}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v11

    add-float v11, v11, v22

    mul-float v11, v11, v23

    mul-float/2addr v11, v3

    mul-float/2addr v5, v1

    invoke-static {v5}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v13

    mul-float/2addr v13, v11

    mul-float/2addr v13, v3

    invoke-static {v5}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v5

    mul-float/2addr v5, v11

    mul-float/2addr v5, v3

    invoke-static {v10}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v10

    mul-float/2addr v11, v10

    mul-float/2addr v11, v3

    new-instance v10, Lcom/jme3/math/Vector3f;

    invoke-direct {v10, v13, v5, v11}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    aget-object v5, v15, v7

    invoke-virtual {v10, v5}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    aget-object v11, v15, v7

    invoke-virtual {v11, v10}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v10}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object v10

    move/from16 v13, v16

    move/from16 v11, v17

    :goto_1
    if-ge v11, v6, :cond_0

    add-float/2addr v13, v12

    invoke-static {v13}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v22

    mul-float v22, v22, v4

    invoke-static {v13}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v23

    mul-float v23, v23, v4

    int-to-float v1, v11

    div-float/2addr v1, v14

    iget v2, v5, Lcom/jme3/math/Vector3f;->x:F

    mul-float v2, v2, v22

    iget v3, v10, Lcom/jme3/math/Vector3f;->x:F

    mul-float v3, v3, v23

    add-float/2addr v2, v3

    iput v2, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v3, v5, Lcom/jme3/math/Vector3f;->y:F

    mul-float v3, v3, v22

    iget v4, v10, Lcom/jme3/math/Vector3f;->y:F

    mul-float v4, v4, v23

    add-float/2addr v3, v4

    iput v3, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v3, v5, Lcom/jme3/math/Vector3f;->z:F

    mul-float v22, v22, v3

    iget v3, v10, Lcom/jme3/math/Vector3f;->z:F

    mul-float v23, v23, v3

    add-float v3, v22, v23

    iput v3, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v9, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v3, v0, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v3, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    aget-object v2, v15, v7

    invoke-virtual {v0, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v2, v0, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v8, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v3, v0, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v3, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v2, v21

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    move/from16 v3, v20

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    add-int/2addr v11, v1

    move/from16 v1, p1

    move/from16 v4, p4

    move/from16 v2, p2

    move/from16 v3, p3

    goto :goto_1

    :cond_0
    move-object/from16 v2, v21

    const/4 v1, 0x1

    add-int/2addr v7, v1

    move/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v10, v2

    move/from16 v13, v25

    move/from16 v11, v26

    move/from16 v2, p2

    goto/16 :goto_0

    :cond_1
    move-object v2, v10

    const/4 v1, 0x1

    const/4 v3, 0x6

    mul-int/lit8 v7, v18, 0x6

    invoke-static {v7}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    move/from16 v5, v17

    move/from16 v4, v18

    :goto_2
    if-ge v5, v4, :cond_2

    int-to-short v7, v5

    sub-int v10, v5, v6

    int-to-short v11, v10

    add-int/2addr v5, v1

    int-to-short v12, v5

    add-int/2addr v10, v1

    int-to-short v10, v10

    new-array v13, v3, [S

    aput-short v7, v13, v17

    aput-short v11, v13, v1

    const/4 v1, 0x2

    aput-short v12, v13, v1

    const/4 v1, 0x3

    aput-short v12, v13, v1

    const/4 v1, 0x4

    aput-short v11, v13, v1

    const/4 v1, 0x5

    aput-short v10, v13, v1

    invoke-virtual {v0, v13}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    move/from16 v3, v17

    :goto_3
    if-ge v3, v1, :cond_5

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v5

    if-gez v5, :cond_4

    add-int/2addr v5, v4

    int-to-short v5, v5

    invoke-virtual {v0, v3, v5}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    :cond_3
    :goto_4
    const/4 v5, 0x1

    goto :goto_5

    :cond_4
    if-lt v5, v4, :cond_3

    sub-int/2addr v5, v4

    int-to-short v5, v5

    invoke-virtual {v0, v3, v5}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    goto :goto_4

    :goto_5
    add-int/2addr v3, v5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v4, 0x3

    move-object/from16 v3, p0

    invoke-virtual {v3, v1, v4, v8}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v3, v1, v4, v9}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v5, 0x2

    invoke-virtual {v3, v1, v5, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v3, v1, v4, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V

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

    iget v0, p0, Lcom/jme3/scene/shape/PQTorus;->p:F

    const-string v1, "p"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/scene/shape/PQTorus;->q:F

    const-string v1, "q"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/scene/shape/PQTorus;->radius:F

    const-string v1, "radius"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/scene/shape/PQTorus;->width:F

    const-string v1, "width"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/scene/shape/PQTorus;->steps:I

    const-string v1, "steps"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/scene/shape/PQTorus;->radialSamples:I

    const-string v1, "radialSamples"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method
