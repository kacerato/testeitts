.class public Lcom/jme3/effect/ParticlePointMesh;
.super Lcom/jme3/effect/ParticleMesh;
.source "SourceFile"


# instance fields
.field private emitter:Lcom/jme3/effect/ParticleEmitter;

.field private imagesX:I

.field private imagesY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/effect/ParticleMesh;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/jme3/effect/ParticlePointMesh;->imagesX:I

    iput v0, p0, Lcom/jme3/effect/ParticlePointMesh;->imagesY:I

    return-void
.end method


# virtual methods
.method public initParticleData(Lcom/jme3/effect/ParticleEmitter;I)V
    .locals 6

    sget-object v0, Lcom/jme3/scene/Mesh$Mode;->Points:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    iput-object p1, p0, Lcom/jme3/effect/ParticlePointMesh;->emitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/jme3/scene/VertexBuffer;

    invoke-direct {v1, v0}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    const/4 v2, 0x3

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    :goto_0
    mul-int/lit8 p1, p2, 0x4

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/jme3/scene/VertexBuffer;

    invoke-direct {v2, v1}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedByte:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v2, v1, v4, v5, v0}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    invoke-virtual {v2, v3}, Lcom/jme3/scene/VertexBuffer;->setNormalized(Z)V

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    :goto_1
    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p2

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Size:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/jme3/scene/VertexBuffer;

    invoke-direct {v1, v0}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1, v0, v3, v2, p2}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    :goto_2
    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    sget-object p2, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    goto :goto_3

    :cond_3
    new-instance v0, Lcom/jme3/scene/VertexBuffer;

    invoke-direct {v0, p2}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object p2, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v0, p2, v4, v1, p1}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    :goto_3
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    return-void
.end method

.method public setImagesXY(II)V
    .locals 0

    iput p1, p0, Lcom/jme3/effect/ParticlePointMesh;->imagesX:I

    iput p2, p0, Lcom/jme3/effect/ParticlePointMesh;->imagesY:I

    return-void
.end method

.method public updateParticleData([Lcom/jme3/effect/Particle;Lcom/jme3/renderer/Camera;Lcom/jme3/math/Matrix3f;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/FloatBuffer;

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v4}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->Size:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v6}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/FloatBuffer;

    sget-object v8, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v8}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/FloatBuffer;

    iget-object v10, v0, Lcom/jme3/effect/ParticlePointMesh;->emitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-virtual {v10}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v10

    iget v10, v10, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v11, 0x0

    :goto_0
    array-length v12, v1

    if-ge v11, v12, :cond_0

    aget-object v12, v1, v11

    iget-object v13, v12, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    iget v13, v13, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v3, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v13

    iget-object v14, v12, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    iget v14, v14, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v13, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v13

    iget-object v14, v12, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    iget v14, v14, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v13, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v13, v12, Lcom/jme3/effect/Particle;->size:F

    mul-float/2addr v13, v10

    invoke-virtual {v7, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v13, v12, Lcom/jme3/effect/Particle;->color:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v13}, Lcom/jme3/math/ColorRGBA;->asIntABGR()I

    move-result v13

    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v12, v12, Lcom/jme3/effect/Particle;->imageIndex:I

    iget v13, v0, Lcom/jme3/effect/ParticlePointMesh;->imagesX:I

    rem-int v14, v12, v13

    div-int/2addr v12, v13

    int-to-float v14, v14

    int-to-float v15, v13

    div-float/2addr v14, v15

    int-to-float v12, v12

    iget v15, v0, Lcom/jme3/effect/ParticlePointMesh;->imagesY:I

    int-to-float v0, v15

    div-float/2addr v12, v0

    int-to-float v0, v13

    const/high16 v13, 0x3f800000    # 1.0f

    div-float v0, v13, v0

    add-float/2addr v0, v14

    int-to-float v15, v15

    div-float/2addr v13, v15

    add-float/2addr v13, v12

    invoke-virtual {v9, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2, v3}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    invoke-virtual {v4, v5}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    invoke-virtual {v6, v7}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    invoke-virtual {v8, v9}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    return-void
.end method
