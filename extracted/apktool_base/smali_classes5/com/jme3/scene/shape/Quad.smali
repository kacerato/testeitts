.class public Lcom/jme3/scene/shape/Quad;
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
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/jme3/scene/shape/Quad;->updateGeometry(FF)V

    return-void
.end method

.method public constructor <init>(FFZ)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/jme3/scene/shape/Quad;->updateGeometry(FFZ)V

    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/Quad;->height:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/Quad;->width:F

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

    iput v0, p0, Lcom/jme3/scene/shape/Quad;->width:F

    const-string v0, "height"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/scene/shape/Quad;->height:F

    return-void
.end method

.method public updateGeometry(FF)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/scene/shape/Quad;->updateGeometry(FFZ)V

    return-void
.end method

.method public updateGeometry(FFZ)V
    .locals 8

    .line 2
    iput p1, p0, Lcom/jme3/scene/shape/Quad;->width:F

    .line 3
    iput p2, p0, Lcom/jme3/scene/shape/Quad;->height:F

    .line 4
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/16 v1, 0xc

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v4, 0x2

    aput v3, v2, v4

    const/4 v5, 0x3

    aput p1, v2, v5

    const/4 v6, 0x4

    aput v3, v2, v6

    const/4 v6, 0x5

    aput v3, v2, v6

    const/4 v6, 0x6

    aput p1, v2, v6

    const/4 p1, 0x7

    aput p2, v2, p1

    const/16 p1, 0x8

    aput v3, v2, p1

    const/16 v7, 0x9

    aput v3, v2, v7

    const/16 v7, 0xa

    aput p2, v2, v7

    const/16 v7, 0xb

    aput v3, v2, v7

    invoke-virtual {p0, v0, v5, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    if-eqz p3, :cond_0

    .line 5
    sget-object p3, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {p0, p3, v4, p1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p3, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    new-array p1, p1, [F

    fill-array-data p1, :array_1

    invoke-virtual {p0, p3, v4, p1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    .line 7
    :goto_0
    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    new-array p3, v1, [F

    fill-array-data p3, :array_2

    invoke-virtual {p0, p1, v5, p3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    cmpg-float p1, p2, v3

    if-gez p1, :cond_1

    .line 8
    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    new-array p2, v6, [S

    fill-array-data p2, :array_3

    invoke-virtual {p0, p1, v5, p2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V

    goto :goto_1

    .line 9
    :cond_1
    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    new-array p2, v6, [S

    fill-array-data p2, :array_4

    invoke-virtual {p0, p1, v5, p2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V

    .line 10
    :goto_1
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 11
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void

    nop

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
    .array-data 2
        0x0s
        0x2s
        0x1s
        0x0s
        0x3s
        0x2s
    .end array-data

    :array_4
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data
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

    iget v0, p0, Lcom/jme3/scene/shape/Quad;->width:F

    const-string v1, "width"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/scene/shape/Quad;->height:F

    const-string v1, "height"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
