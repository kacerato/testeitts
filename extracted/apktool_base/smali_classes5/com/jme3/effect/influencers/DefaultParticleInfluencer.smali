.class public Lcom/jme3/effect/influencers/DefaultParticleInfluencer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/effect/influencers/ParticleInfluencer;


# static fields
.field public static final SAVABLE_VERSION:I = 0x1


# instance fields
.field protected initialVelocity:Lcom/jme3/math/Vector3f;

.field protected transient temp:Lcom/jme3/math/Vector3f;

.field protected velocityVariation:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->temp:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->initialVelocity:Lcom/jme3/math/Vector3f;

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->velocityVariation:F

    return-void
.end method


# virtual methods
.method public applyVelocityVariation(Lcom/jme3/effect/Particle;)V
    .locals 4

    iget-object v0, p1, Lcom/jme3/effect/Particle;->velocity:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->initialVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

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

.method public clone()Lcom/jme3/effect/influencers/DefaultParticleInfluencer;
    .locals 1

    .line 3
    new-instance v0, Lcom/jme3/util/clone/Cloner;

    invoke-direct {v0}, Lcom/jme3/util/clone/Cloner;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/jme3/effect/influencers/ParticleInfluencer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->clone()Lcom/jme3/effect/influencers/DefaultParticleInfluencer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->clone()Lcom/jme3/effect/influencers/DefaultParticleInfluencer;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->initialVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->initialVelocity:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->temp:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->temp:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public getInitialVelocity()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->initialVelocity:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getVelocityVariation()F
    .locals 1

    iget v0, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->velocityVariation:F

    return v0
.end method

.method public influenceParticle(Lcom/jme3/effect/Particle;Lcom/jme3/effect/shapes/EmitterShape;)V
    .locals 1

    iget-object v0, p1, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    invoke-interface {p2, v0}, Lcom/jme3/effect/shapes/EmitterShape;->getRandomPoint(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0, p1}, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->applyVelocityVariation(Lcom/jme3/effect/Particle;)V

    return-void
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-class v0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;

    invoke-interface {p1, v0}, Lcom/jme3/export/InputCapsule;->getSavableVersion(Ljava/lang/Class;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    const-string v1, "startVelocity"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->initialVelocity:Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    const-string v1, "initialVelocity"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->initialVelocity:Lcom/jme3/math/Vector3f;

    :goto_0
    const-string v0, "variation"

    const v1, 0x3e4ccccd    # 0.2f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->velocityVariation:F

    return-void
.end method

.method public setInitialVelocity(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->initialVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setVelocityVariation(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->velocityVariation:F

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->initialVelocity:Lcom/jme3/math/Vector3f;

    const-string v1, "initialVelocity"

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;->velocityVariation:F

    const-string v1, "variation"

    const v2, 0x3e4ccccd    # 0.2f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
