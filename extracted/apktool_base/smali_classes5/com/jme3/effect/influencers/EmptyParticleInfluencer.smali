.class public Lcom/jme3/effect/influencers/EmptyParticleInfluencer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/effect/influencers/ParticleInfluencer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/effect/influencers/EmptyParticleInfluencer;
    .locals 1

    .line 3
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/effect/influencers/EmptyParticleInfluencer;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Lcom/jme3/effect/influencers/ParticleInfluencer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/effect/influencers/EmptyParticleInfluencer;->clone()Lcom/jme3/effect/influencers/EmptyParticleInfluencer;

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
    invoke-virtual {p0}, Lcom/jme3/effect/influencers/EmptyParticleInfluencer;->clone()Lcom/jme3/effect/influencers/EmptyParticleInfluencer;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public getInitialVelocity()Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVelocityVariation()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public influenceParticle(Lcom/jme3/effect/Particle;Lcom/jme3/effect/shapes/EmitterShape;)V
    .locals 0

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public setInitialVelocity(Lcom/jme3/math/Vector3f;)V
    .locals 0

    return-void
.end method

.method public setVelocityVariation(F)V
    .locals 0

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
