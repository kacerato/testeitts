.class public Lcom/jme3/animation/EffectTrack$KillParticleControl;
.super Lcom/jme3/scene/control/AbstractControl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/animation/EffectTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KillParticleControl"
.end annotation


# instance fields
.field emitter:Lcom/jme3/effect/ParticleEmitter;

.field remove:Z

.field stopRequested:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/animation/EffectTrack$KillParticleControl;->stopRequested:Z

    iput-boolean v0, p0, Lcom/jme3/animation/EffectTrack$KillParticleControl;->remove:Z

    return-void
.end method


# virtual methods
.method public controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    return-void
.end method

.method public controlUpdate(F)V
    .locals 1

    iget-boolean p1, p0, Lcom/jme3/animation/EffectTrack$KillParticleControl;->remove:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jme3/animation/EffectTrack$KillParticleControl;->emitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-virtual {p1, p0}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/jme3/animation/EffectTrack$KillParticleControl;->emitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-virtual {p1}, Lcom/jme3/effect/ParticleEmitter;->getNumVisibleParticles()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/jme3/animation/EffectTrack$KillParticleControl;->emitter:Lcom/jme3/effect/ParticleEmitter;

    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object p1, p0, Lcom/jme3/animation/EffectTrack$KillParticleControl;->emitter:Lcom/jme3/effect/ParticleEmitter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/effect/ParticleEmitter;->setEnabled(Z)V

    iget-object p1, p0, Lcom/jme3/animation/EffectTrack$KillParticleControl;->emitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-virtual {p1, p0}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    iput-boolean v0, p0, Lcom/jme3/animation/EffectTrack$KillParticleControl;->stopRequested:Z

    :cond_1
    return-void
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/jme3/animation/EffectTrack$KillParticleControl;

    invoke-direct {v0}, Lcom/jme3/animation/EffectTrack$KillParticleControl;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jme3/animation/EffectTrack$KillParticleControl;->remove:Z

    iget-object v1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    iput-object v1, v0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    return-object v0
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->setSpatial(Lcom/jme3/scene/Spatial;)V

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/jme3/effect/ParticleEmitter;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/effect/ParticleEmitter;

    iput-object p1, p0, Lcom/jme3/animation/EffectTrack$KillParticleControl;->emitter:Lcom/jme3/effect/ParticleEmitter;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "KillParticleEmitter can only ba attached to ParticleEmitter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
