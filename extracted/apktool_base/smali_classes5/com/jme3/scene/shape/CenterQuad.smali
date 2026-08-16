.class public Lcom/jme3/scene/shape/CenterQuad;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# instance fields
.field private height:F

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/jme3/scene/shape/CenterQuad;->updateGeometry(FFZ)V

    return-void
.end method

.method public constructor <init>(FFZ)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/scene/shape/CenterQuad;->updateGeometry(FFZ)V

    return-void
.end method

.method private updateGeometry(FFZ)V
    .locals 11

    iput p1, p0, Lcom/jme3/scene/shape/CenterQuad;->width:F

    iput p2, p0, Lcom/jme3/scene/shape/CenterQuad;->height:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p1, v0

    div-float v0, p2, v0

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    neg-float v3, v1

    neg-float v4, v0

    const/16 v5, 0xc

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v7, 0x1

    aput v4, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x2

    aput v7, v6, v8

    const/4 v9, 0x3

    aput v1, v6, v9

    const/4 v10, 0x4

    aput v4, v6, v10

    const/4 v4, 0x5

    aput v7, v6, v4

    const/4 v4, 0x6

    aput v1, v6, v4

    const/4 v1, 0x7

    aput v0, v6, v1

    const/16 v1, 0x8

    aput v7, v6, v1

    const/16 v10, 0x9

    aput v3, v6, v10

    const/16 v3, 0xa

    aput v0, v6, v3

    const/16 v0, 0xb

    aput v7, v6, v0

    invoke-virtual {p0, v2, v9, v6}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    if-eqz p3, :cond_0

    sget-object p3, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, p3, v8, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    invoke-virtual {p0, p3, v8, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    :goto_0
    sget-object p3, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    new-array v0, v5, [F

    fill-array-data v0, :array_2

    invoke-virtual {p0, p3, v9, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    mul-float/2addr p1, p2

    cmpg-float p1, p1, v7

    if-gez p1, :cond_1

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    new-array p2, v4, [B

    fill-array-data p2, :array_3

    invoke-virtual {p0, p1, v9, p2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[B)V

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    new-array p2, v4, [B

    fill-array-data p2, :array_4

    invoke-virtual {p0, p1, v9, p2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[B)V

    :goto_1
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x2t
        0x1t
        0x0t
        0x3t
        0x2t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x0t
        0x2t
        0x3t
    .end array-data
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/CenterQuad;->height:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/CenterQuad;->width:F

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

    const-string v0, "width"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/CenterQuad;->width:F

    const-string v0, "height"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/scene/shape/CenterQuad;->height:F

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

    iget v0, p0, Lcom/jme3/scene/shape/CenterQuad;->width:F

    const-string v1, "width"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/scene/shape/CenterQuad;->height:F

    const-string v1, "height"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
