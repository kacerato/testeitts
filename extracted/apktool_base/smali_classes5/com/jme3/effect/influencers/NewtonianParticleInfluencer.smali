.class public Lcom/jme3/effect/influencers/NewtonianParticleInfluencer;
.super Lcom/jme3/effect/influencers/DefaultParticleInfluencer;
.source "SourceFile"


# instance fields
.field protected normalVelocity:F

.field protected surfaceTangentFactor:F

.field protected surfaceTangentRotation:F

.field protected tempMat3:Lcom/jme3/math/Matrix3f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;-><init>()V

    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/effect/influencers/NewtonianParticleInfluencer;->tempMat3:Lcom/jme3/math/Matrix3f;

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->velocityVariation:F

    return-void
.end method


# virtual methods
.method public applyVelocityVariation(Lcom/jme3/effect/Particle;)V
    .locals 5

    iget-object v0, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->temp:Lcom/jme3/math/Vector3f;

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v1

    iget v2, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->velocityVariation:F

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v2

    iget v3, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->velocityVariation:F

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v3

    iget v4, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->velocityVariation:F

    mul-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object p1, p1, Lcom/jme3/effect/Particle;->velocity:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->temp:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public getNormalVelocity()F
    .locals 1

    iget v0, p0, Lcom/jme3/effect/influencers/NewtonianParticleInfluencer;->normalVelocity:F

    return v0
.end method

.method public getSurfaceTangentFactor()F
    .locals 1

    iget v0, p0, Lcom/jme3/effect/influencers/NewtonianParticleInfluencer;->surfaceTangentFactor:F

    return v0
.end method

.method public getSurfaceTangentRotation()F
    .locals 1

    iget v0, p0, Lcom/jme3/effect/influencers/NewtonianParticleInfluencer;->surfaceTangentRotation:F

    return v0
.end method

.method public influenceParticle(Lcom/jme3/effect/Particle;Lcom/jme3/effect/shapes/EmitterShape;)V
    .locals 5

    iget-object v0, p1, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    iget-object v1, p1, Lcom/jme3/effect/Particle;->velocity:Lcom/jme3/math/Vector3f;

    invoke-interface {p2, v0, v1}, Lcom/jme3/effect/shapes/EmitterShape;->getRandomPointAndNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    iget p2, p0, Lcom/jme3/effect/influencers/NewtonianParticleInfluencer;->surfaceTangentFactor:F

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    iget-object p2, p1, Lcom/jme3/effect/Particle;->velocity:Lcom/jme3/math/Vector3f;

    iget v1, p0, Lcom/jme3/effect/influencers/NewtonianParticleInfluencer;->normalVelocity:F

    invoke-virtual {p2, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->temp:Lcom/jme3/math/Vector3f;

    iget-object v2, p1, Lcom/jme3/effect/Particle;->velocity:Lcom/jme3/math/Vector3f;

    iget v3, v2, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, p2

    iget v4, v2, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v4, p2

    iget v2, v2, Lcom/jme3/math/Vector3f;->x:F

    neg-float v2, v2

    mul-float/2addr v2, p2

    invoke-virtual {v1, v3, v4, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget p2, p0, Lcom/jme3/effect/influencers/NewtonianParticleInfluencer;->surfaceTangentRotation:F

    cmpl-float v1, p2, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jme3/effect/influencers/NewtonianParticleInfluencer;->tempMat3:Lcom/jme3/math/Matrix3f;

    const v2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p2, v2

    iget-object v2, p1, Lcom/jme3/effect/Particle;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p2, v2}, Lcom/jme3/math/Matrix3f;->fromAngleNormalAxis(FLcom/jme3/math/Vector3f;)V

    iget-object p2, p0, Lcom/jme3/effect/influencers/NewtonianParticleInfluencer;->tempMat3:Lcom/jme3/math/Matrix3f;

    iget-object v1, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->temp:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v1}, Lcom/jme3/math/Matrix3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->temp:Lcom/jme3/math/Vector3f;

    :cond_1
    iget-object p2, p1, Lcom/jme3/effect/Particle;->velocity:Lcom/jme3/math/Vector3f;

    iget v1, p0, Lcom/jme3/effect/influencers/NewtonianParticleInfluencer;->normalVelocity:F

    invoke-virtual {p2, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget-object p2, p1, Lcom/jme3/effect/Particle;->velocity:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->temp:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_0
    iget-object p2, p1, Lcom/jme3/effect/Particle;->velocity:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->initialVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget p2, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->velocityVariation:F

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/jme3/effect/influencers/NewtonianParticleInfluencer;->applyVelocityVariation(Lcom/jme3/effect/Particle;)V

    :cond_2
    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "normalVelocity"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/effect/influencers/NewtonianParticleInfluencer;->normalVelocity:F

    const-string v0, "surfaceTangentFactor"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/effect/influencers/NewtonianParticleInfluencer;->surfaceTangentFactor:F

    const-string v0, "surfaceTangentRotation"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/effect/influencers/NewtonianParticleInfluencer;->surfaceTangentRotation:F

    return-void
.end method

.method public setNormalVelocity(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/effect/influencers/NewtonianParticleInfluencer;->normalVelocity:F

    return-void
.end method

.method public setSurfaceTangentFactor(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/effect/influencers/NewtonianParticleInfluencer;->surfaceTangentFactor:F

    return-void
.end method

.method public setSurfaceTangentRotation(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/effect/influencers/NewtonianParticleInfluencer;->surfaceTangentRotation:F

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/effect/influencers/NewtonianParticleInfluencer;->normalVelocity:F

    const-string v1, "normalVelocity"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/effect/influencers/NewtonianParticleInfluencer;->surfaceTangentFactor:F

    const-string v1, "surfaceTangentFactor"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/effect/influencers/NewtonianParticleInfluencer;->surfaceTangentRotation:F

    const-string v1, "surfaceTangentRotation"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
