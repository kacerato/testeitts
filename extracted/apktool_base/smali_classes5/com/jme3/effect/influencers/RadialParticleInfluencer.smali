.class public Lcom/jme3/effect/influencers/RadialParticleInfluencer;
.super Lcom/jme3/effect/influencers/DefaultParticleInfluencer;
.source "SourceFile"


# instance fields
.field private horizontal:Z

.field private origin:Lcom/jme3/math/Vector3f;

.field private radialVelocity:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/effect/influencers/RadialParticleInfluencer;->radialVelocity:F

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1, v0, v0, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v1, p0, Lcom/jme3/effect/influencers/RadialParticleInfluencer;->origin:Lcom/jme3/math/Vector3f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/effect/influencers/RadialParticleInfluencer;->horizontal:Z

    return-void
.end method


# virtual methods
.method public applyVelocityVariation(Lcom/jme3/effect/Particle;)V
    .locals 4

    iget-object v0, p1, Lcom/jme3/effect/Particle;->velocity:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->initialVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->temp:Lcom/jme3/math/Vector3f;

    iget-object v1, p1, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/effect/influencers/RadialParticleInfluencer;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v1, p0, Lcom/jme3/effect/influencers/RadialParticleInfluencer;->radialVelocity:F

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget-boolean v0, p0, Lcom/jme3/effect/influencers/RadialParticleInfluencer;->horizontal:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->temp:Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    iput v1, v0, Lcom/jme3/math/Vector3f;->y:F

    :cond_0
    iget-object v0, p1, Lcom/jme3/effect/Particle;->velocity:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->temp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->temp:Lcom/jme3/math/Vector3f;

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v1

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v2

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->temp:Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->temp:Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;->subtractLocal(FFF)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->temp:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->initialVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->length()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget-object p1, p1, Lcom/jme3/effect/Particle;->velocity:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->temp:Lcom/jme3/math/Vector3f;

    iget v1, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->velocityVariation:F

    invoke-virtual {p1, v0, v1}, Lcom/jme3/math/Vector3f;->interpolateLocal(Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/effect/influencers/RadialParticleInfluencer;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/effect/influencers/RadialParticleInfluencer;->origin:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public getOrigin()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/effect/influencers/RadialParticleInfluencer;->origin:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getRadialVelocity()F
    .locals 1

    iget v0, p0, Lcom/jme3/effect/influencers/RadialParticleInfluencer;->radialVelocity:F

    return v0
.end method

.method public isHorizontal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/effect/influencers/RadialParticleInfluencer;->horizontal:Z

    return v0
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

    const-string v0, "radialVelocity"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/effect/influencers/RadialParticleInfluencer;->radialVelocity:F

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v1, "origin"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/effect/influencers/RadialParticleInfluencer;->origin:Lcom/jme3/math/Vector3f;

    const-string v0, "horizontal"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jme3/effect/influencers/RadialParticleInfluencer;->horizontal:Z

    return-void
.end method

.method public setHorizontal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/effect/influencers/RadialParticleInfluencer;->horizontal:Z

    return-void
.end method

.method public setOrigin(Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/effect/influencers/RadialParticleInfluencer;->origin:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setRadialVelocity(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/effect/influencers/RadialParticleInfluencer;->radialVelocity:F

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

    iget v0, p0, Lcom/jme3/effect/influencers/RadialParticleInfluencer;->radialVelocity:F

    const-string v1, "radialVelocity"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/effect/influencers/RadialParticleInfluencer;->origin:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v2, "origin"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-boolean v0, p0, Lcom/jme3/effect/influencers/RadialParticleInfluencer;->horizontal:Z

    const-string v1, "horizontal"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
