.class public Lcom/jme3/scene/debug/custom/ArmatureInterJointsWire;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# instance fields
.field private final tempVec:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureInterJointsWire;->tempVec:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 4
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureInterJointsWire;->tempVec:Lcom/jme3/math/Vector3f;

    .line 5
    sget-object v0, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/jme3/scene/debug/custom/ArmatureInterJointsWire;->updateGeometry(Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Vector3f;)V

    return-void
.end method


# virtual methods
.method public updateGeometry(Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Vector3f;)V
    .locals 10

    array-length v0, p2

    const/4 v1, 0x3

    mul-int/2addr v0, v1

    add-int/2addr v0, v1

    new-array v0, v0, [F

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    const/4 v3, 0x0

    aput v2, v0, v3

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    const/4 v4, 0x1

    aput v2, v0, v4

    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    const/4 v5, 0x2

    aput v2, v0, v5

    move v2, v3

    :goto_0
    array-length v6, p2

    if-ge v2, v6, :cond_0

    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v7, v6, 0x3

    aget-object v8, p2, v2

    iget v9, v8, Lcom/jme3/math/Vector3f;->x:F

    aput v9, v0, v7

    add-int/lit8 v7, v6, 0x4

    iget v9, v8, Lcom/jme3/math/Vector3f;->y:F

    aput v9, v0, v7

    add-int/lit8 v6, v6, 0x5

    iget v7, v8, Lcom/jme3/math/Vector3f;->z:F

    aput v7, v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2, v1, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    array-length v0, p2

    mul-int/2addr v0, v5

    add-int/2addr v0, v5

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v2, v0, v3

    aput v2, v0, v4

    move v2, v3

    :goto_1
    array-length v6, p2

    mul-int/2addr v6, v5

    if-ge v2, v6, :cond_1

    add-int/lit8 v6, v2, 0x2

    iget-object v7, p0, Lcom/jme3/scene/debug/custom/ArmatureInterJointsWire;->tempVec:Lcom/jme3/math/Vector3f;

    invoke-virtual {v7, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    div-int/lit8 v8, v2, 0x2

    aget-object v8, p2, v8

    invoke-virtual {v7, v8}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jme3/math/Vector3f;->length()F

    move-result v7

    aput v7, v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2, v5, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    array-length v0, p2

    mul-int/2addr v0, v1

    add-int/2addr v0, v1

    new-array v0, v0, [F

    move v2, v3

    :goto_2
    array-length v6, p2

    mul-int/2addr v6, v1

    add-int/2addr v6, v1

    if-ge v2, v6, :cond_2

    iget v6, p1, Lcom/jme3/math/Vector3f;->x:F

    aput v6, v0, v2

    add-int/lit8 v6, v2, 0x1

    iget v7, p1, Lcom/jme3/math/Vector3f;->y:F

    aput v7, v0, v6

    add-int/lit8 v6, v2, 0x2

    iget v7, p1, Lcom/jme3/math/Vector3f;->z:F

    aput v7, v0, v6

    add-int/lit8 v2, v2, 0x3

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p1, v1, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    array-length p1, p2

    mul-int/2addr p1, v5

    new-array p1, p1, [S

    move v0, v3

    move v1, v4

    :goto_3
    array-length v2, p2

    mul-int/2addr v2, v5

    if-ge v0, v2, :cond_3

    aput-short v3, p1, v0

    add-int/lit8 v2, v0, 0x1

    int-to-short v6, v1

    aput-short v6, p1, v2

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_3
    sget-object p2, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p2, v5, p1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-void
.end method

.method public updatePoints(Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Vector3f;)V
    .locals 5

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v3, p1, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v3, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_0

    aget-object v4, p2, v3

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    aget-object v4, p2, v3

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    aget-object v4, p2, v3

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    :goto_1
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_1

    iget v3, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v3, p1, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v3, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    return-void
.end method
