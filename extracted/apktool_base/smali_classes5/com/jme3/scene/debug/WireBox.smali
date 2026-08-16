.class public Lcom/jme3/scene/debug/WireBox;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-direct {p0, v0, v0, v0}, Lcom/jme3/scene/debug/WireBox;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/jme3/scene/debug/WireBox;->updatePositions(FFF)V

    .line 4
    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 p2, 0x2

    const/16 p3, 0x18

    new-array p3, p3, [S

    fill-array-data p3, :array_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V

    .line 5
    sget-object p1, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    .line 6
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x1s
        0x2s
        0x2s
        0x3s
        0x3s
        0x0s
        0x4s
        0x5s
        0x5s
        0x6s
        0x6s
        0x7s
        0x7s
        0x4s
        0x0s
        0x4s
        0x1s
        0x5s
        0x2s
        0x6s
        0x3s
        0x7s
    .end array-data
.end method

.method public static makeGeometry(Lcom/jme3/bounding/BoundingBox;)Lcom/jme3/scene/Geometry;
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingBox;->getXExtent()F

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingBox;->getYExtent()F

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result v2

    new-instance v3, Lcom/jme3/scene/debug/WireBox;

    invoke-direct {v3, v0, v1, v2}, Lcom/jme3/scene/debug/WireBox;-><init>(FFF)V

    new-instance v0, Lcom/jme3/scene/Geometry;

    const-string v1, "bounding box"

    invoke-direct {v0, v1, v3}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    return-object v0
.end method


# virtual methods
.method public updatePositions(FFF)V
    .locals 8

    const/4 v0, 0x3

    const/16 v1, 0x8

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/jme3/scene/VertexBuffer;

    invoke-direct {v3, v2}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Usage;->Dynamic:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v3, v4, v0, v5, v2}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    invoke-virtual {p0, v3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v2}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    :goto_0
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    neg-float v3, p1

    neg-float v4, p2

    neg-float v5, p3

    const/16 v6, 0x18

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v7, 0x1

    aput v4, v6, v7

    const/4 v7, 0x2

    aput p3, v6, v7

    aput p1, v6, v0

    const/4 v0, 0x4

    aput v4, v6, v0

    const/4 v0, 0x5

    aput p3, v6, v0

    const/4 v0, 0x6

    aput p1, v6, v0

    const/4 v0, 0x7

    aput p2, v6, v0

    aput p3, v6, v1

    const/16 v0, 0x9

    aput v3, v6, v0

    const/16 v0, 0xa

    aput p2, v6, v0

    const/16 v0, 0xb

    aput p3, v6, v0

    const/16 p3, 0xc

    aput v3, v6, p3

    const/16 p3, 0xd

    aput v4, v6, p3

    const/16 p3, 0xe

    aput v5, v6, p3

    const/16 p3, 0xf

    aput p1, v6, p3

    const/16 p3, 0x10

    aput v4, v6, p3

    const/16 p3, 0x11

    aput v5, v6, p3

    const/16 p3, 0x12

    aput p1, v6, p3

    const/16 p1, 0x13

    aput p2, v6, p1

    const/16 p1, 0x14

    aput v5, v6, p1

    const/16 p1, 0x15

    aput v3, v6, p1

    const/16 p1, 0x16

    aput p2, v6, p1

    const/16 p1, 0x17

    aput v5, v6, p1

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-void
.end method
