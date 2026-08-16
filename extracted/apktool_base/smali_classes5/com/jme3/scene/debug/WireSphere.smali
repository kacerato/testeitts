.class public Lcom/jme3/scene/debug/WireSphere;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# static fields
.field private static final samples:I = 0x1e

.field private static final zSamples:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-direct {p0, v0}, Lcom/jme3/scene/debug/WireSphere;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/jme3/scene/debug/WireSphere;->updatePositions(F)V

    const/16 p1, 0x2d0

    .line 4
    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, p1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xc

    if-ge v0, v2, :cond_1

    move v2, v1

    :goto_1
    add-int/lit8 v3, v1, 0x1e

    add-int/lit8 v4, v1, 0x1d

    if-ge v2, v4, :cond_0

    int-to-short v3, v2

    .line 6
    invoke-virtual {p1, v3}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    int-to-short v4, v2

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    goto :goto_1

    :cond_0
    int-to-short v2, v4

    .line 7
    invoke-virtual {p1, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object v2

    int-to-short v1, v1

    invoke-virtual {v2, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0

    .line 8
    :cond_1
    sget-object p1, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    .line 9
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 10
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    return-void
.end method

.method public static makeGeometry(Lcom/jme3/bounding/BoundingSphere;)Lcom/jme3/scene/Geometry;
    .locals 3

    new-instance v0, Lcom/jme3/scene/debug/WireSphere;

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/jme3/scene/debug/WireSphere;-><init>(F)V

    new-instance v1, Lcom/jme3/scene/Geometry;

    const-string v2, "bounding sphere"

    invoke-direct {v1, v2, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    return-object v1
.end method


# virtual methods
.method public fromBoundingSphere(Lcom/jme3/bounding/BoundingSphere;)V
    .locals 0

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/scene/debug/WireSphere;->updatePositions(F)V

    return-void
.end method

.method public updatePositions(F)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/jme3/scene/VertexBuffer;

    invoke-direct {v3, v2}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    const/16 v2, 0x168

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Usage;->Dynamic:Lcom/jme3/scene/VertexBuffer$Usage;

    const/4 v5, 0x3

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    invoke-virtual {v0, v3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    :goto_0
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v4, 0x0

    move v6, v4

    const/4 v5, 0x0

    :goto_1
    const/16 v7, 0x1e

    const v8, 0x3e567750

    if-ge v5, v7, :cond_1

    invoke-static {v6}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v7

    mul-float/2addr v7, v1

    invoke-static {v6}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v9

    mul-float/2addr v9, v1

    invoke-virtual {v2, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-float/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v6, v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_2

    invoke-static {v6}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v9

    mul-float/2addr v9, v1

    invoke-static {v6}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v10

    mul-float/2addr v10, v1

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-float/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v1, v5

    const/high16 v9, 0x41200000    # 10.0f

    div-float/2addr v6, v9

    neg-float v9, v1

    div-float v10, v6, v5

    add-float/2addr v9, v10

    const v10, 0x3d4ccccd    # 0.05f

    const/4 v11, 0x0

    :goto_3
    const/16 v12, 0xa

    if-ge v11, v12, :cond_4

    mul-float v12, v10, v10

    sub-float v12, v10, v12

    invoke-static {v12}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v12

    mul-float/2addr v12, v5

    move v14, v4

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v7, :cond_3

    invoke-static {v14}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v15

    mul-float/2addr v15, v1

    invoke-static {v14}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v16

    mul-float v16, v16, v1

    mul-float/2addr v15, v12

    invoke-virtual {v2, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v15

    mul-float v3, v16, v12

    invoke-virtual {v15, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-float/2addr v14, v8

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_3
    add-float/2addr v9, v6

    const v3, 0x3dcccccd    # 0.1f

    add-float/2addr v10, v3

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method
