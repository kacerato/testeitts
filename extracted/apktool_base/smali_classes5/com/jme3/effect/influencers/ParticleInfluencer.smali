.class public interface abstract Lcom/jme3/effect/influencers/ParticleInfluencer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Lcom/jme3/util/clone/JmeCloneable;


# virtual methods
.method public abstract clone()Lcom/jme3/effect/influencers/ParticleInfluencer;
.end method

.method public abstract getInitialVelocity()Lcom/jme3/math/Vector3f;
.end method

.method public abstract getVelocityVariation()F
.end method

.method public abstract influenceParticle(Lcom/jme3/effect/Particle;Lcom/jme3/effect/shapes/EmitterShape;)V
.end method

.method public abstract setInitialVelocity(Lcom/jme3/math/Vector3f;)V
.end method

.method public abstract setVelocityVariation(F)V
.end method
