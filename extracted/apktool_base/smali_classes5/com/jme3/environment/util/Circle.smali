.class public Lcom/jme3/environment/util/Circle;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# instance fields
.field protected radialSamples:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lcom/jme3/environment/util/Circle;->radialSamples:I

    invoke-direct {p0}, Lcom/jme3/environment/util/Circle;->setGeometryData()V

    invoke-direct {p0}, Lcom/jme3/environment/util/Circle;->setIndexData()V

    return-void
.end method

.method public static createShape(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)Lcom/jme3/scene/Geometry;
    .locals 2

    new-instance v0, Lcom/jme3/environment/util/Circle;

    invoke-direct {v0}, Lcom/jme3/environment/util/Circle;-><init>()V

    new-instance v1, Lcom/jme3/scene/Geometry;

    invoke-direct {v1, p1, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    sget-object p1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Transparent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v1, p1}, Lcom/jme3/scene/Spatial;->setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    new-instance p1, Lcom/jme3/material/Material;

    const-string v0, "Common/MatDefs/Misc/Dashed.j3md"

    invoke-direct {p1, p0, v0}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jme3/material/RenderState;->setWireframe(Z)V

    invoke-virtual {p1}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p0

    sget-object v0, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {p0, v0}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    invoke-virtual {p1}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/material/RenderState;->setDepthWrite(Z)V

    invoke-virtual {p1}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    invoke-virtual {p1}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lcom/jme3/material/RenderState;->setLineWidth(F)V

    const-string p0, "Color"

    sget-object v0, Lcom/jme3/math/ColorRGBA;->Orange:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p1, p0, v0}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    const-string p0, "DashSize"

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, p0, v0}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    invoke-virtual {v1, p1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    return-object v1
.end method

.method private setGeometryData()V
    .locals 10

    iget v0, p0, Lcom/jme3/environment/util/Circle;->radialSamples:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x4

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createVector2Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    iget v4, p0, Lcom/jme3/environment/util/Circle;->radialSamples:I

    int-to-float v4, v4

    const v5, 0x40c90fdb

    div-float/2addr v5, v4

    sget-object v4, Lcom/jme3/math/ColorRGBA;->Orange:Lcom/jme3/math/ColorRGBA;

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_0

    int-to-float v7, v6

    mul-float v8, v5, v7

    invoke-static {v8}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v9

    invoke-static {v8}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v8

    invoke-virtual {v1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v8, v4, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-virtual {v2, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v8

    iget v9, v4, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v8

    iget v9, v4, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v8

    iget v9, v4, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/high16 v8, 0x40000000    # 2.0f

    rem-float/2addr v7, v8

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v4, 0x3

    invoke-virtual {p0, v0, v4, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object v0, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void
.end method

.method private setIndexData()V
    .locals 3

    iget v0, p0, Lcom/jme3/environment/util/Circle;->radialSamples:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2, v1, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/jme3/environment/util/Circle;->radialSamples:I

    if-ge v1, v2, :cond_0

    int-to-short v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v1, v1, 0x1

    int-to-short v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
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

    const-string v0, "radialSamples"

    const/16 v1, 0x100

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/jme3/environment/util/Circle;->radialSamples:I

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

    iget v0, p0, Lcom/jme3/environment/util/Circle;->radialSamples:I

    const-string v1, "radialSamples"

    const/16 v2, 0x100

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method
