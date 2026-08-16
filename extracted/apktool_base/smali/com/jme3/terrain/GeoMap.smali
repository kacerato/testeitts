.class public Lcom/jme3/terrain/GeoMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected hdata:[F

.field protected height:I

.field protected maxval:I

.field protected width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([FIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jme3/terrain/GeoMap;->hdata:[F

    .line 4
    iput p2, p0, Lcom/jme3/terrain/GeoMap;->width:I

    .line 5
    iput p3, p0, Lcom/jme3/terrain/GeoMap;->height:I

    .line 6
    iput p4, p0, Lcom/jme3/terrain/GeoMap;->maxval:I

    return-void
.end method


# virtual methods
.method public createMesh(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector2f;Z)Lcom/jme3/scene/Mesh;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p3}, Lcom/jme3/terrain/GeoMap;->writeVertexArray(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Z)Ljava/nio/FloatBuffer;

    move-result-object p3

    sget-object v1, Lcom/jme3/math/Vector2f;->ZERO:Lcom/jme3/math/Vector2f;

    invoke-virtual {p0, v0, v1, p2}, Lcom/jme3/terrain/GeoMap;->writeTexCoordArray(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-virtual {p0, v0, p1}, Lcom/jme3/terrain/GeoMap;->writeNormalArray(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/jme3/terrain/GeoMap;->writeIndexArray(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v0

    new-instance v1, Lcom/jme3/scene/Mesh;

    invoke-direct {v1}, Lcom/jme3/scene/Mesh;-><init>()V

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, p3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object p3, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, p3, v3, p1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 p3, 0x2

    invoke-virtual {v1, p1, p3, p2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, p1, v3, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/IntBuffer;)V

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh;->setStatic()V

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-object v1
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/GeoMap;->height:I

    return v0
.end method

.method public getHeightArray()[F
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jme3/terrain/GeoMap;->hdata:[F

    return-object v0
.end method

.method public getMaximumValue()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/GeoMap;->maxval:I

    return v0
.end method

.method public getUV(IILcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;
    .locals 1

    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    .line 3
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 4
    invoke-virtual {p3, p1, p2}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    return-object p3
.end method

.method public getUV(ILcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;
    .locals 0

    .line 1
    return-object p2
.end method

.method public getValue(I)F
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/terrain/GeoMap;->hdata:[F

    aget p1, v0, p1

    return p1
.end method

.method public getValue(II)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/terrain/GeoMap;->hdata:[F

    iget v1, p0, Lcom/jme3/terrain/GeoMap;->width:I

    mul-int/2addr p2, v1

    add-int/2addr p2, p1

    aget p1, v0, p2

    return p1
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/GeoMap;->width:I

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "hdataarray"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/terrain/GeoMap;->hdata:[F

    if-nez v0, :cond_0

    const-string v0, "hdata"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloatBuffer(Ljava/lang/String;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/jme3/terrain/GeoMap;->hdata:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    :cond_0
    const-string v0, "width"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/terrain/GeoMap;->width:I

    const-string v0, "height"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/terrain/GeoMap;->height:I

    const-string v0, "maxval"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/jme3/terrain/GeoMap;->maxval:I

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/terrain/GeoMap;->hdata:[F

    const-string v1, "hdataarray"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    iget v0, p0, Lcom/jme3/terrain/GeoMap;->width:I

    const-string v1, "width"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/terrain/GeoMap;->height:I

    const-string v1, "height"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/terrain/GeoMap;->maxval:I

    const-string v1, "maxval"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method

.method public writeIndexArray(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .locals 6

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    mul-int/lit8 v0, v0, 0x6

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/nio/BufferUnderflowException;

    invoke-direct {p1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p1

    :cond_1
    mul-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_1
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_4

    move v3, v0

    :goto_2
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3

    invoke-virtual {p1, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ne v3, v4, :cond_2

    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_2
    move v2, v5

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    return-object p1
.end method

.method public writeNormalArray(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;)Ljava/nio/FloatBuffer;
    .locals 12

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/nio/BufferUnderflowException;

    invoke-direct {p1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v0

    mul-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_1
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v7

    if-ge v5, v7, :cond_6

    move v7, v4

    :goto_2
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v8

    if-ge v7, v8, :cond_5

    int-to-float v8, v7

    invoke-virtual {p0, v7, v5}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v9

    int-to-float v10, v5

    invoke-virtual {v2, v8, v9, v10}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v5, v9, :cond_3

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v7, v9, :cond_2

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {p0, v7, v9}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v11

    int-to-float v9, v9

    invoke-virtual {v1, v8, v11, v9}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v8, v7, -0x1

    int-to-float v9, v8

    invoke-virtual {p0, v8, v5}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v8

    invoke-virtual {v0, v9, v8, v10}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v7, 0x1

    int-to-float v11, v9

    invoke-virtual {p0, v9, v5}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v9

    invoke-virtual {v1, v11, v9, v10}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {p0, v7, v9}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v10

    int-to-float v9, v9

    invoke-virtual {v0, v8, v10, v9}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v7, v9, :cond_4

    add-int/lit8 v9, v7, -0x1

    int-to-float v11, v9

    invoke-virtual {p0, v9, v5}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v9

    invoke-virtual {v1, v11, v9, v10}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v7, v9}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v10

    int-to-float v9, v9

    invoke-virtual {v0, v8, v10, v9}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_3

    :cond_4
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v7, v9}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v11

    int-to-float v9, v9

    invoke-virtual {v1, v8, v11, v9}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v8, v7, 0x1

    int-to-float v9, v8

    invoke-virtual {p0, v8, v5}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v8

    invoke-virtual {v0, v9, v8, v10}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    :goto_3
    invoke-virtual {v3, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual {v0, v2}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, p2}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-static {v3, p1, v6}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_6
    return-object p1
.end method

.method public writeTexCoordArray(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)Ljava/nio/FloatBuffer;
    .locals 7

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/nio/BufferUnderflowException;

    invoke-direct {p1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v0

    mul-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    :goto_0
    if-nez p2, :cond_2

    new-instance p2, Lcom/jme3/math/Vector2f;

    invoke-direct {p2}, Lcom/jme3/math/Vector2f;-><init>()V

    :cond_2
    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0}, Lcom/jme3/math/Vector2f;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_4

    move v3, v1

    :goto_2
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v3, v2, v0}, Lcom/jme3/terrain/GeoMap;->getUV(IILcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    iget v4, p2, Lcom/jme3/math/Vector2f;->x:F

    iget v5, v0, Lcom/jme3/math/Vector2f;->x:F

    iget v6, p3, Lcom/jme3/math/Vector2f;->x:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v4, p2, Lcom/jme3/math/Vector2f;->y:F

    iget v5, v0, Lcom/jme3/math/Vector2f;->y:F

    iget v6, p3, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method public writeVertexArray(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Z)Ljava/nio/FloatBuffer;
    .locals 6

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/jme3/terrain/GeoMap;->width:I

    iget v2, p0, Lcom/jme3/terrain/GeoMap;->height:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/nio/BufferUnderflowException;

    invoke-direct {p1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p1

    :cond_1
    iget p1, p0, Lcom/jme3/terrain/GeoMap;->width:I

    iget v0, p0, Lcom/jme3/terrain/GeoMap;->height:I

    mul-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    :goto_0
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p2, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p2, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    if-nez p3, :cond_2

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->zero()Lcom/jme3/math/Vector3f;

    :cond_2
    const/4 p3, 0x0

    move v1, p3

    move v2, v1

    :goto_1
    iget v3, p0, Lcom/jme3/terrain/GeoMap;->height:I

    if-ge v1, v3, :cond_4

    move v3, p3

    :goto_2
    iget v4, p0, Lcom/jme3/terrain/GeoMap;->width:I

    if-ge v3, v4, :cond_3

    int-to-float v4, v3

    iget v5, p2, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v4, v5

    iget v5, v0, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/jme3/terrain/GeoMap;->hdata:[F

    add-int/lit8 v5, v2, 0x1

    aget v2, v4, v2

    iget v4, p2, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v2, v4

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    int-to-float v2, v1

    iget v4, p2, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v2, v4

    iget v4, v0, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v2, v4

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object p1
.end method
