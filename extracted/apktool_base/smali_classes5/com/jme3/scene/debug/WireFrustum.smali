.class public Lcom/jme3/scene/debug/WireFrustum;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>([Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/jme3/scene/debug/WireFrustum;->setGeometryData([Lcom/jme3/math/Vector3f;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Frustum points array must not be null and must contain 8 points."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static makeFrustum([Lcom/jme3/math/Vector3f;)Lcom/jme3/scene/Mesh;
    .locals 1

    new-instance v0, Lcom/jme3/scene/debug/WireFrustum;

    invoke-direct {v0, p0}, Lcom/jme3/scene/debug/WireFrustum;-><init>([Lcom/jme3/math/Vector3f;)V

    return-object v0
.end method

.method public static makeGeometry(Lcom/jme3/renderer/Camera;)Lcom/jme3/scene/Geometry;
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [Lcom/jme3/math/Vector3f;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->clone()Lcom/jme3/renderer/Camera;

    move-result-object p0

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p0, v0}, Lcom/jme3/renderer/Camera;->setLocation(Lcom/jme3/math/Vector3f;)V

    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    sget-object v2, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0, v2}, Lcom/jme3/renderer/Camera;->lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-static {p0, v1}, Lcom/jme3/shadow/ShadowUtil;->updateFrustumPoints2(Lcom/jme3/renderer/Camera;[Lcom/jme3/math/Vector3f;)V

    new-instance p0, Lcom/jme3/scene/debug/WireFrustum;

    invoke-direct {p0, v1}, Lcom/jme3/scene/debug/WireFrustum;-><init>([Lcom/jme3/math/Vector3f;)V

    new-instance v0, Lcom/jme3/scene/Geometry;

    const-string v1, "Viewing Frustum"

    invoke-direct {v0, v1, p0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    return-object v0
.end method

.method private setGeometryData([Lcom/jme3/math/Vector3f;)V
    .locals 2

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([Lcom/jme3/math/Vector3f;)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v0, 0x2

    const/16 v1, 0x18

    new-array v1, v1, [S

    fill-array-data v1, :array_0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    sget-object p1, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-void

    nop

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


# virtual methods
.method public update([Lcom/jme3/math/Vector3f;)V
    .locals 2

    if-eqz p1, :cond_1

    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/jme3/scene/debug/WireFrustum;->setGeometryData([Lcom/jme3/math/Vector3f;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([Lcom/jme3/math/Vector3f;)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Frustum points array must not be null and must contain 8 points."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
