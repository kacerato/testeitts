.class public Lcom/jme3/effect/ParticleTriMesh;
.super Lcom/jme3/effect/ParticleMesh;
.source "SourceFile"


# instance fields
.field private emitter:Lcom/jme3/effect/ParticleEmitter;

.field private imagesX:I

.field private imagesY:I

.field private uniqueTexCoords:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/effect/ParticleMesh;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/jme3/effect/ParticleTriMesh;->imagesX:I

    iput v0, p0, Lcom/jme3/effect/ParticleTriMesh;->imagesY:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/effect/ParticleTriMesh;->uniqueTexCoords:Z

    return-void
.end method


# virtual methods
.method public initParticleData(Lcom/jme3/effect/ParticleEmitter;I)V
    .locals 6

    sget-object v0, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    iput-object p1, p0, Lcom/jme3/effect/ParticleTriMesh;->emitter:Lcom/jme3/effect/ParticleEmitter;

    mul-int/lit8 p1, p2, 0x4

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/jme3/scene/VertexBuffer;

    invoke-direct {v2, v1}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    :goto_0
    mul-int/lit8 v0, p2, 0x10

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/jme3/scene/VertexBuffer;

    invoke-direct {v2, v1}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedByte:Lcom/jme3/scene/VertexBuffer$Format;

    const/4 v5, 0x4

    invoke-virtual {v2, v1, v5, v4, v0}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/jme3/scene/VertexBuffer;->setNormalized(Z)V

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    :goto_1
    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createVector2Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/effect/ParticleTriMesh;->uniqueTexCoords:Z

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    goto :goto_3

    :cond_3
    new-instance v2, Lcom/jme3/scene/VertexBuffer;

    invoke-direct {v2, v1}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    const/4 v5, 0x2

    invoke-virtual {v2, v1, v5, v4, p1}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    :goto_3
    mul-int/lit8 p1, p2, 0x6

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object p1

    :goto_4
    if-ge v0, p2, :cond_4

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object v4

    int-to-short v5, v1

    invoke-virtual {v4, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object v4

    add-int/lit8 v5, v1, 0x2

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object v2

    add-int/2addr v1, v3

    int-to-short v1, v1

    invoke-virtual {v2, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    sget-object p2, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    goto :goto_5

    :cond_5
    new-instance v0, Lcom/jme3/scene/VertexBuffer;

    invoke-direct {v0, p2}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object p2, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedShort:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v0, p2, v3, v1, p1}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    :goto_5
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    return-void
.end method

.method public setImagesXY(II)V
    .locals 1

    iput p1, p0, Lcom/jme3/effect/ParticleTriMesh;->imagesX:I

    iput p2, p0, Lcom/jme3/effect/ParticleTriMesh;->imagesY:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eq p2, v0, :cond_1

    :cond_0
    iput-boolean v0, p0, Lcom/jme3/effect/ParticleTriMesh;->uniqueTexCoords:Z

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    sget-object p2, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {p1, p2}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    :cond_1
    return-void
.end method

.method public updateParticleData([Lcom/jme3/effect/Particle;Lcom/jme3/renderer/Camera;Lcom/jme3/math/Matrix3f;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v3}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/FloatBuffer;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v5}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    sget-object v7, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v7}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/FloatBuffer;

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/renderer/Camera;->getUp()Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/renderer/Camera;->getLeft()Lcom/jme3/math/Vector3f;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/renderer/Camera;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v11

    invoke-virtual {v2, v9}, Lcom/jme3/math/Matrix3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v10}, Lcom/jme3/math/Matrix3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v11}, Lcom/jme3/math/Matrix3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v2, v0, Lcom/jme3/effect/ParticleTriMesh;->emitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-virtual {v2}, Lcom/jme3/effect/ParticleEmitter;->isFacingVelocity()Z

    move-result v2

    new-instance v12, Lcom/jme3/math/Vector3f;

    invoke-direct {v12}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v13, Lcom/jme3/math/Vector3f;

    invoke-direct {v13}, Lcom/jme3/math/Vector3f;-><init>()V

    if-nez v2, :cond_0

    invoke-virtual {v12, v9}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v13, v10}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_0
    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v8}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v14, v0, Lcom/jme3/effect/ParticleTriMesh;->emitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-virtual {v14}, Lcom/jme3/effect/ParticleEmitter;->getFaceNormal()Lcom/jme3/math/Vector3f;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v16, v5

    :goto_0
    array-length v5, v1

    if-ge v15, v5, :cond_7

    aget-object v5, v1, v15

    iget v1, v5, Lcom/jme3/effect/Particle;->life:F

    move-object/from16 v17, v3

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move/from16 p3, v2

    move-object/from16 v19, v9

    move-object/from16 v18, v11

    goto/16 :goto_3

    :cond_1
    if-eqz v2, :cond_3

    iget-object v1, v5, Lcom/jme3/effect/Particle;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v13, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v13, v12}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v1, v5, Lcom/jme3/effect/Particle;->size:F

    invoke-virtual {v12, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget v1, v5, Lcom/jme3/effect/Particle;->size:F

    invoke-virtual {v13, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    :cond_2
    move/from16 p3, v2

    move-object/from16 v18, v11

    goto/16 :goto_1

    :cond_3
    if-eqz v14, :cond_4

    invoke-virtual {v12, v14}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    sget-object v3, Lcom/jme3/math/Vector3f;->UNIT_X:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v3}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v14, v12, v13}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v1, v5, Lcom/jme3/effect/Particle;->size:F

    invoke-virtual {v12, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget v1, v5, Lcom/jme3/effect/Particle;->size:F

    invoke-virtual {v13, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget v1, v5, Lcom/jme3/effect/Particle;->angle:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v1

    iget-object v3, v1, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v14}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    iget-object v3, v1, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    move/from16 p3, v2

    iget v2, v5, Lcom/jme3/effect/Particle;->angle:F

    move-object/from16 v18, v11

    iget-object v11, v1, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v2, v11}, Lcom/jme3/math/Quaternion;->fromAngleNormalAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    iget-object v2, v1, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    invoke-virtual {v2, v13}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v2, v1, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    invoke-virtual {v2, v12}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/util/TempVars;->release()V

    goto :goto_1

    :cond_4
    move/from16 p3, v2

    move-object/from16 v18, v11

    iget v1, v5, Lcom/jme3/effect/Particle;->angle:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v1

    iget v2, v5, Lcom/jme3/effect/Particle;->size:F

    mul-float/2addr v1, v2

    iget v2, v5, Lcom/jme3/effect/Particle;->angle:F

    invoke-static {v2}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v2

    iget v3, v5, Lcom/jme3/effect/Particle;->size:F

    mul-float/2addr v2, v3

    iget v3, v10, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v3, v1

    iget v11, v9, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v11, v2

    add-float/2addr v3, v11

    iput v3, v13, Lcom/jme3/math/Vector3f;->x:F

    iget v3, v10, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v3, v1

    iget v11, v9, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v11, v2

    add-float/2addr v3, v11

    iput v3, v13, Lcom/jme3/math/Vector3f;->y:F

    iget v3, v10, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, v1

    iget v11, v9, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v11, v2

    add-float/2addr v3, v11

    iput v3, v13, Lcom/jme3/math/Vector3f;->z:F

    iget v3, v10, Lcom/jme3/math/Vector3f;->x:F

    neg-float v2, v2

    mul-float/2addr v3, v2

    iget v11, v9, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v11, v1

    add-float/2addr v3, v11

    iput v3, v12, Lcom/jme3/math/Vector3f;->x:F

    iget v3, v10, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v3, v2

    iget v11, v9, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v11, v1

    add-float/2addr v3, v11

    iput v3, v12, Lcom/jme3/math/Vector3f;->y:F

    iget v3, v10, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, v2

    iget v2, v9, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v2, v1

    add-float/2addr v3, v2

    iput v3, v12, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_1

    :cond_5
    invoke-virtual {v12, v9}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v13, v10}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v1, v5, Lcom/jme3/effect/Particle;->size:F

    invoke-virtual {v12, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget v1, v5, Lcom/jme3/effect/Particle;->size:F

    invoke-virtual {v13, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    :goto_1
    iget-object v1, v5, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v13, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v1, v2

    iget v2, v12, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v1, v2

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, v5, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v3, v13, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr v2, v3

    iget v3, v12, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, v5, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    iget v3, v13, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v2, v3

    iget v3, v12, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, v5, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v13, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v1, v2

    iget v2, v12, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v1, v2

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, v5, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v3, v13, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v2, v3

    iget v3, v12, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, v5, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    iget v3, v13, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v2, v3

    iget v3, v12, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, v5, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v13, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v1, v2

    iget v2, v12, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v1, v2

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, v5, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v3, v13, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr v2, v3

    iget v3, v12, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, v5, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    iget v3, v13, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v2, v3

    iget v3, v12, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, v5, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v13, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v1, v2

    iget v2, v12, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v1, v2

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, v5, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v3, v13, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v2, v3

    iget v3, v12, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, v5, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    iget v3, v13, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v2, v3

    iget v3, v12, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-boolean v1, v0, Lcom/jme3/effect/ParticleTriMesh;->uniqueTexCoords:Z

    if-eqz v1, :cond_6

    iget v1, v5, Lcom/jme3/effect/Particle;->imageIndex:I

    iget v2, v0, Lcom/jme3/effect/ParticleTriMesh;->imagesX:I

    rem-int v3, v1, v2

    div-int/2addr v1, v2

    int-to-float v3, v3

    int-to-float v11, v2

    div-float/2addr v3, v11

    int-to-float v1, v1

    iget v11, v0, Lcom/jme3/effect/ParticleTriMesh;->imagesY:I

    move-object/from16 v19, v9

    int-to-float v9, v11

    div-float/2addr v1, v9

    int-to-float v2, v2

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v2, v9, v2

    add-float/2addr v2, v3

    int-to-float v11, v11

    div-float/2addr v9, v11

    add-float/2addr v9, v1

    invoke-virtual {v8, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_2

    :cond_6
    move-object/from16 v19, v9

    :goto_2
    iget-object v1, v5, Lcom/jme3/effect/Particle;->color:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v1}, Lcom/jme3/math/ColorRGBA;->asIntABGR()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, v17

    move-object/from16 v11, v18

    move-object/from16 v9, v19

    goto/16 :goto_0

    :cond_7
    move-object/from16 v17, v3

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v8}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-boolean v1, v0, Lcom/jme3/effect/ParticleTriMesh;->uniqueTexCoords:Z

    if-eqz v1, :cond_8

    invoke-virtual {v7, v8}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    :cond_8
    move-object/from16 v1, v17

    invoke-virtual {v1, v4}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    move-object/from16 v1, v16

    invoke-virtual {v1, v6}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    return-void
.end method
