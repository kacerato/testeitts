.class public Lcom/jme3/scene/debug/Arrow;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# static fields
.field private static final positions:[F


# instance fields
.field private final tempQuat:Lcom/jme3/math/Quaternion;

.field private final tempVec:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jme3/scene/debug/Arrow;->positions:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3d4ccccd    # 0.05f
        0x0
        0x3f666666    # 0.9f
        -0x42b33333    # -0.05f
        0x0
        0x3f666666    # 0.9f
        0x0
        0x3d4ccccd    # 0.05f
        0x3f666666    # 0.9f
        0x0
        -0x42b33333    # -0.05f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/debug/Arrow;->tempQuat:Lcom/jme3/math/Quaternion;

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/debug/Arrow;->tempVec:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;)V
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 4
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 5
    new-instance v2, Lcom/jme3/math/Quaternion;

    invoke-direct {v2}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v2, p0, Lcom/jme3/scene/debug/Arrow;->tempQuat:Lcom/jme3/math/Quaternion;

    .line 6
    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v3, p0, Lcom/jme3/scene/debug/Arrow;->tempVec:Lcom/jme3/math/Vector3f;

    .line 7
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->length()F

    move-result v3

    .line 8
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object p1

    .line 9
    sget-object v4, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, p1, v4}, Lcom/jme3/math/Quaternion;->lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    .line 10
    invoke-virtual {v2}, Lcom/jme3/math/Quaternion;->normalizeLocal()Lcom/jme3/math/Quaternion;

    .line 11
    sget-object p1, Lcom/jme3/scene/debug/Arrow;->positions:[F

    array-length p1, p1

    new-array p1, p1, [F

    const/4 v2, 0x0

    .line 12
    :goto_0
    sget-object v4, Lcom/jme3/scene/debug/Arrow;->positions:[F

    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 13
    iget-object v5, p0, Lcom/jme3/scene/debug/Arrow;->tempVec:Lcom/jme3/math/Vector3f;

    aget v6, v4, v2

    add-int/lit8 v7, v2, 0x1

    aget v8, v4, v7

    add-int/lit8 v9, v2, 0x2

    aget v4, v4, v9

    invoke-virtual {v5, v6, v8, v4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-result-object v4

    .line 14
    invoke-virtual {v4, v3}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    .line 15
    iget-object v5, p0, Lcom/jme3/scene/debug/Arrow;->tempQuat:Lcom/jme3/math/Quaternion;

    invoke-virtual {v5, v4, v4}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 16
    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v5

    aput v5, p1, v2

    .line 17
    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v5

    aput v5, p1, v7

    .line 18
    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v4

    aput v4, p1, v9

    add-int/2addr v2, v0

    goto :goto_0

    .line 19
    :cond_0
    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2, v0, p1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    .line 20
    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    const/16 v0, 0xa

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    invoke-virtual {p0, p1, v1, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V

    .line 21
    sget-object p1, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    .line 22
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 23
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x1s
        0x2s
        0x1s
        0x3s
        0x1s
        0x4s
        0x1s
        0x5s
    .end array-data
.end method


# virtual methods
.method public setArrowExtent(Lcom/jme3/math/Vector3f;)V
    .locals 8

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->length()F

    move-result v0

    iget-object v1, p0, Lcom/jme3/scene/debug/Arrow;->tempQuat:Lcom/jme3/math/Quaternion;

    sget-object v2, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p1, v2}, Lcom/jme3/math/Quaternion;->lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    iget-object p1, p0, Lcom/jme3/scene/debug/Arrow;->tempQuat:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->normalizeLocal()Lcom/jme3/math/Quaternion;

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/jme3/scene/debug/Arrow;->positions:[F

    array-length v4, v3

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/jme3/scene/debug/Arrow;->tempVec:Lcom/jme3/math/Vector3f;

    aget v5, v3, v2

    add-int/lit8 v6, v2, 0x1

    aget v6, v3, v6

    add-int/lit8 v7, v2, 0x2

    aget v3, v3, v7

    invoke-virtual {v4, v5, v6, v3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/jme3/scene/debug/Arrow;->tempQuat:Lcom/jme3/math/Quaternion;

    invoke-virtual {v4, v3, v3}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v4, v3, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v4, v3, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    return-void
.end method
