.class public Lcom/jme3/scene/shape/Torus;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# instance fields
.field private circleSamples:I

.field private innerRadius:F

.field private outerRadius:F

.field private radialSamples:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(IIFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jme3/scene/shape/Torus;->updateGeometry(IIFF)V

    return-void
.end method

.method private setGeometryData()V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/jme3/scene/shape/Torus;->circleSamples:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, Lcom/jme3/scene/shape/Torus;->radialSamples:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v5, v4, v3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createVector2Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    iget v4, v0, Lcom/jme3/scene/shape/Torus;->circleSamples:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v4, v5, v4

    iget v6, v0, Lcom/jme3/scene/shape/Torus;->radialSamples:I

    int-to-float v6, v6

    div-float v6, v5, v6

    new-instance v7, Lcom/jme3/math/Vector3f;

    invoke-direct {v7}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v8, Lcom/jme3/math/Vector3f;

    invoke-direct {v8}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v9, Lcom/jme3/math/Vector3f;

    invoke-direct {v9}, Lcom/jme3/math/Vector3f;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    iget v13, v0, Lcom/jme3/scene/shape/Torus;->circleSamples:I

    if-ge v11, v13, :cond_1

    int-to-float v13, v11

    mul-float/2addr v13, v4

    const v14, 0x40c90fdb

    mul-float v15, v13, v14

    invoke-static {v15}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v10

    invoke-static {v15}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v15

    const/4 v5, 0x0

    invoke-virtual {v7, v10, v15, v5}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget v5, v0, Lcom/jme3/scene/shape/Torus;->outerRadius:F

    invoke-virtual {v7, v5, v8}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move v10, v12

    const/4 v5, 0x0

    :goto_1
    iget v15, v0, Lcom/jme3/scene/shape/Torus;->radialSamples:I

    if-ge v5, v15, :cond_0

    int-to-float v15, v5

    mul-float/2addr v15, v6

    mul-float v16, v15, v14

    invoke-static/range {v16 .. v16}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v14

    invoke-static/range {v16 .. v16}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v16

    move/from16 v17, v4

    invoke-virtual {v9, v7}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget v4, v9, Lcom/jme3/math/Vector3f;->z:F

    add-float v4, v4, v16

    iput v4, v9, Lcom/jme3/math/Vector3f;->z:F

    iget v4, v9, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v14, v9, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v4, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v14, v9, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v4, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v4, v0, Lcom/jme3/scene/shape/Torus;->innerRadius:F

    invoke-virtual {v9, v4}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v4, v9, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v14, v9, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v4, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v14, v9, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v4, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v17

    const v14, 0x40c90fdb

    goto :goto_1

    :cond_0
    move/from16 v17, v4

    invoke-static {v2, v12, v10}, Lcom/jme3/util/BufferUtils;->copyInternalVector3(Ljava/nio/FloatBuffer;II)V

    invoke-static {v3, v12, v10}, Lcom/jme3/util/BufferUtils;->copyInternalVector3(Ljava/nio/FloatBuffer;II)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v12, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v17

    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_2
    iget v4, v0, Lcom/jme3/scene/shape/Torus;->radialSamples:I

    if-gt v10, v4, :cond_2

    invoke-static {v2, v10, v12}, Lcom/jme3/util/BufferUtils;->copyInternalVector3(Ljava/nio/FloatBuffer;II)V

    invoke-static {v3, v10, v12}, Lcom/jme3/util/BufferUtils;->copyInternalVector3(Ljava/nio/FloatBuffer;II)V

    invoke-static {v1, v10, v12}, Lcom/jme3/util/BufferUtils;->copyInternalVector2(Ljava/nio/FloatBuffer;II)V

    mul-int/lit8 v4, v12, 0x2

    add-int/lit8 v4, v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private setIndexData()V
    .locals 11

    iget v0, p0, Lcom/jme3/scene/shape/Torus;->circleSamples:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/jme3/scene/shape/Torus;->radialSamples:I

    mul-int/2addr v0, v1

    const/4 v1, 0x3

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2, v1, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/jme3/scene/shape/Torus;->circleSamples:I

    if-ge v2, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    iget v5, p0, Lcom/jme3/scene/shape/Torus;->radialSamples:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v3

    add-int/lit8 v6, v5, 0x1

    move v7, v1

    move v8, v5

    :goto_1
    iget v9, p0, Lcom/jme3/scene/shape/Torus;->radialSamples:I

    if-ge v7, v9, :cond_0

    add-int/lit8 v9, v3, 0x1

    int-to-short v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    int-to-short v3, v8

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    int-to-short v10, v4

    invoke-virtual {v0, v10}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v10}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v6, 0x1

    int-to-short v6, v6

    invoke-virtual {v0, v6}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v7, v7, 0x1

    move v6, v3

    move v3, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getCircleSamples()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/Torus;->circleSamples:I

    return v0
.end method

.method public getInnerRadius()F
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/Torus;->innerRadius:F

    return v0
.end method

.method public getOuterRadius()F
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/Torus;->outerRadius:F

    return v0
.end method

.method public getRadialSamples()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/Torus;->radialSamples:I

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

    const-string v0, "circleSamples"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/Torus;->circleSamples:I

    const-string v0, "radialSamples"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/Torus;->radialSamples:I

    const-string v0, "innerRadius"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/Torus;->innerRadius:F

    const-string v0, "outerRadius"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/scene/shape/Torus;->outerRadius:F

    return-void
.end method

.method public updateGeometry(IIFF)V
    .locals 0

    iput p1, p0, Lcom/jme3/scene/shape/Torus;->circleSamples:I

    iput p2, p0, Lcom/jme3/scene/shape/Torus;->radialSamples:I

    iput p3, p0, Lcom/jme3/scene/shape/Torus;->innerRadius:F

    iput p4, p0, Lcom/jme3/scene/shape/Torus;->outerRadius:F

    invoke-direct {p0}, Lcom/jme3/scene/shape/Torus;->setGeometryData()V

    invoke-direct {p0}, Lcom/jme3/scene/shape/Torus;->setIndexData()V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

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

    iget v0, p0, Lcom/jme3/scene/shape/Torus;->circleSamples:I

    const-string v1, "circleSamples"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/scene/shape/Torus;->radialSamples:I

    const-string v1, "radialSamples"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/scene/shape/Torus;->innerRadius:F

    const-string v1, "innerRadius"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/scene/shape/Torus;->outerRadius:F

    const-string v1, "outerRadius"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
