.class public Lcom/jme3/animation/EffectTrack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/animation/ClonableTrack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/animation/EffectTrack$KillParticleControl;,
        Lcom/jme3/animation/EffectTrack$OnEndListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private emitted:Z

.field private emitter:Lcom/jme3/effect/ParticleEmitter;

.field private initialized:Z

.field private final killParticles:Lcom/jme3/animation/EffectTrack$KillParticleControl;

.field private length:F

.field private particlesPerSeconds:F

.field private startOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/animation/EffectTrack;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/animation/EffectTrack;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/jme3/animation/EffectTrack;->startOffset:F

    .line 3
    iput v0, p0, Lcom/jme3/animation/EffectTrack;->particlesPerSeconds:F

    .line 4
    iput v0, p0, Lcom/jme3/animation/EffectTrack;->length:F

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/jme3/animation/EffectTrack;->emitted:Z

    .line 6
    iput-boolean v0, p0, Lcom/jme3/animation/EffectTrack;->initialized:Z

    .line 7
    new-instance v0, Lcom/jme3/animation/EffectTrack$KillParticleControl;

    invoke-direct {v0}, Lcom/jme3/animation/EffectTrack$KillParticleControl;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/EffectTrack;->killParticles:Lcom/jme3/animation/EffectTrack$KillParticleControl;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/effect/ParticleEmitter;F)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/jme3/animation/EffectTrack;->startOffset:F

    .line 10
    iput v0, p0, Lcom/jme3/animation/EffectTrack;->particlesPerSeconds:F

    .line 11
    iput v0, p0, Lcom/jme3/animation/EffectTrack;->length:F

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/jme3/animation/EffectTrack;->emitted:Z

    .line 13
    iput-boolean v1, p0, Lcom/jme3/animation/EffectTrack;->initialized:Z

    .line 14
    new-instance v1, Lcom/jme3/animation/EffectTrack$KillParticleControl;

    invoke-direct {v1}, Lcom/jme3/animation/EffectTrack$KillParticleControl;-><init>()V

    iput-object v1, p0, Lcom/jme3/animation/EffectTrack;->killParticles:Lcom/jme3/animation/EffectTrack$KillParticleControl;

    .line 15
    iput-object p1, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    .line 16
    invoke-virtual {p1}, Lcom/jme3/effect/ParticleEmitter;->getParticlesPerSec()F

    move-result p1

    iput p1, p0, Lcom/jme3/animation/EffectTrack;->particlesPerSeconds:F

    .line 17
    iget-object p1, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-virtual {p1, v0}, Lcom/jme3/effect/ParticleEmitter;->setParticlesPerSec(F)V

    .line 18
    iput p2, p0, Lcom/jme3/animation/EffectTrack;->length:F

    .line 19
    invoke-direct {p0, p0}, Lcom/jme3/animation/EffectTrack;->setUserData(Lcom/jme3/animation/EffectTrack;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/effect/ParticleEmitter;FF)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/jme3/animation/EffectTrack;-><init>(Lcom/jme3/effect/ParticleEmitter;F)V

    .line 21
    iput p3, p0, Lcom/jme3/animation/EffectTrack;->startOffset:F

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/animation/EffectTrack;)V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/animation/EffectTrack;->stop()V

    return-void
.end method

.method private findEmitter(Lcom/jme3/scene/Spatial;)Lcom/jme3/effect/ParticleEmitter;
    .locals 2

    instance-of v0, p1, Lcom/jme3/effect/ParticleEmitter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/jme3/effect/ParticleEmitter;

    const-string v0, "TrackInfo"

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/TrackInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/animation/TrackInfo;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-direct {p0, v0}, Lcom/jme3/animation/EffectTrack;->findEmitter(Lcom/jme3/scene/Spatial;)Lcom/jme3/effect/ParticleEmitter;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_3
    return-object v1
.end method

.method private removeUserData(Lcom/jme3/animation/EffectTrack;)V
    .locals 2

    iget-object v0, p1, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    const-string v1, "TrackInfo"

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/TrackInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/animation/TrackInfo;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private setUserData(Lcom/jme3/animation/EffectTrack;)V
    .locals 3

    iget-object v0, p1, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    const-string v1, "TrackInfo"

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/TrackInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/animation/TrackInfo;

    invoke-direct {v0}, Lcom/jme3/animation/TrackInfo;-><init>()V

    iget-object v2, p1, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-virtual {v2, v1, v0}, Lcom/jme3/scene/Spatial;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/jme3/animation/TrackInfo;->addTrack(Lcom/jme3/animation/Track;)V

    return-void
.end method

.method private stop()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/effect/ParticleEmitter;->setParticlesPerSec(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/animation/EffectTrack;->emitted:Z

    iget-object v0, p0, Lcom/jme3/animation/EffectTrack;->killParticles:Lcom/jme3/animation/EffectTrack$KillParticleControl;

    iget-boolean v1, v0, Lcom/jme3/animation/EffectTrack$KillParticleControl;->stopRequested:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    iget-object v0, p0, Lcom/jme3/animation/EffectTrack;->killParticles:Lcom/jme3/animation/EffectTrack$KillParticleControl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jme3/animation/EffectTrack$KillParticleControl;->stopRequested:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    const-string v1, "TrackInfo"

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/TrackInfo;

    invoke-virtual {v0}, Lcom/jme3/animation/TrackInfo;->getTracks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/jme3/animation/TrackInfo;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jme3/scene/Spatial;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public clone()Lcom/jme3/animation/EffectTrack;
    .locals 4

    .line 3
    new-instance v0, Lcom/jme3/animation/EffectTrack;

    iget-object v1, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    iget v2, p0, Lcom/jme3/animation/EffectTrack;->length:F

    iget v3, p0, Lcom/jme3/animation/EffectTrack;->startOffset:F

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/animation/EffectTrack;-><init>(Lcom/jme3/effect/ParticleEmitter;FF)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/jme3/animation/Track;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/animation/EffectTrack;->clone()Lcom/jme3/animation/EffectTrack;

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
    invoke-virtual {p0}, Lcom/jme3/animation/EffectTrack;->clone()Lcom/jme3/animation/EffectTrack;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/effect/ParticleEmitter;

    iput-object p1, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    return-void
.end method

.method public cloneForSpatial(Lcom/jme3/scene/Spatial;)Lcom/jme3/animation/Track;
    .locals 4

    new-instance v0, Lcom/jme3/animation/EffectTrack;

    invoke-direct {v0}, Lcom/jme3/animation/EffectTrack;-><init>()V

    iget v1, p0, Lcom/jme3/animation/EffectTrack;->particlesPerSeconds:F

    iput v1, v0, Lcom/jme3/animation/EffectTrack;->particlesPerSeconds:F

    iget v1, p0, Lcom/jme3/animation/EffectTrack;->length:F

    iput v1, v0, Lcom/jme3/animation/EffectTrack;->length:F

    iget v1, p0, Lcom/jme3/animation/EffectTrack;->startOffset:F

    iput v1, v0, Lcom/jme3/animation/EffectTrack;->startOffset:F

    invoke-direct {p0, p1}, Lcom/jme3/animation/EffectTrack;->findEmitter(Lcom/jme3/scene/Spatial;)Lcom/jme3/effect/ParticleEmitter;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    if-nez v1, :cond_0

    sget-object v1, Lcom/jme3/animation/EffectTrack;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iget-object v3, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-virtual {v3}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "{0} was not found in {1} or is not bound to this track"

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    iput-object p1, v0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    :cond_0
    invoke-direct {p0, p0}, Lcom/jme3/animation/EffectTrack;->removeUserData(Lcom/jme3/animation/EffectTrack;)V

    invoke-direct {p0, v0}, Lcom/jme3/animation/EffectTrack;->setUserData(Lcom/jme3/animation/EffectTrack;)V

    iget-object p1, v0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/jme3/effect/ParticleEmitter;->setParticlesPerSec(F)V

    return-object v0
.end method

.method public getEmitter()Lcom/jme3/effect/ParticleEmitter;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    return-object v0
.end method

.method public getKeyFrameTimes()[F
    .locals 3

    iget v0, p0, Lcom/jme3/animation/EffectTrack;->startOffset:F

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    return-object v1
.end method

.method public getLength()F
    .locals 1

    iget v0, p0, Lcom/jme3/animation/EffectTrack;->length:F

    return v0
.end method

.method public getStartOffset()F
    .locals 1

    iget v0, p0, Lcom/jme3/animation/EffectTrack;->startOffset:F

    return v0
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error cloning"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "particlesPerSeconds"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/animation/EffectTrack;->particlesPerSeconds:F

    const-string v0, "emitter"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/effect/ParticleEmitter;

    iput-object v0, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-virtual {v0, v1}, Lcom/jme3/effect/ParticleEmitter;->setParticlesPerSec(F)V

    const-string v0, "length"

    iget v2, p0, Lcom/jme3/animation/EffectTrack;->length:F

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/animation/EffectTrack;->length:F

    const-string v0, "startOffset"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/animation/EffectTrack;->startOffset:F

    return-void
.end method

.method public setEmitter(Lcom/jme3/effect/ParticleEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    if-eqz v0, :cond_0

    const-string v0, "TrackInfo"

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/TrackInfo;

    invoke-virtual {v0}, Lcom/jme3/animation/TrackInfo;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iput-object p1, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-virtual {p1}, Lcom/jme3/effect/ParticleEmitter;->getParticlesPerSec()F

    move-result p1

    iput p1, p0, Lcom/jme3/animation/EffectTrack;->particlesPerSeconds:F

    iget-object p1, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/effect/ParticleEmitter;->setParticlesPerSec(F)V

    invoke-direct {p0, p0}, Lcom/jme3/animation/EffectTrack;->setUserData(Lcom/jme3/animation/EffectTrack;)V

    return-void
.end method

.method public setStartOffset(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/animation/EffectTrack;->startOffset:F

    return-void
.end method

.method public setTime(FFLcom/jme3/animation/AnimControl;Lcom/jme3/animation/AnimChannel;Lcom/jme3/util/TempVars;)V
    .locals 0

    iget p2, p0, Lcom/jme3/animation/EffectTrack;->length:F

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    return-void

    :cond_0
    iget-boolean p2, p0, Lcom/jme3/animation/EffectTrack;->initialized:Z

    const/4 p4, 0x1

    if-nez p2, :cond_1

    new-instance p2, Lcom/jme3/animation/EffectTrack$OnEndListener;

    const/4 p5, 0x0

    invoke-direct {p2, p0, p5}, Lcom/jme3/animation/EffectTrack$OnEndListener;-><init>(Lcom/jme3/animation/EffectTrack;Lcom/jme3/animation/EffectTrack$1;)V

    invoke-virtual {p3, p2}, Lcom/jme3/animation/AnimControl;->addListener(Lcom/jme3/animation/AnimEventListener;)V

    iput-boolean p4, p0, Lcom/jme3/animation/EffectTrack;->initialized:Z

    :cond_1
    iget-boolean p2, p0, Lcom/jme3/animation/EffectTrack;->emitted:Z

    if-nez p2, :cond_3

    iget p2, p0, Lcom/jme3/animation/EffectTrack;->startOffset:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_3

    iput-boolean p4, p0, Lcom/jme3/animation/EffectTrack;->emitted:Z

    iget-object p1, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    sget-object p2, Lcom/jme3/scene/Spatial$CullHint;->Dynamic:Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {p1, p2}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object p1, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-virtual {p1, p4}, Lcom/jme3/effect/ParticleEmitter;->setEnabled(Z)V

    iget p1, p0, Lcom/jme3/animation/EffectTrack;->particlesPerSeconds:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-virtual {p1}, Lcom/jme3/effect/ParticleEmitter;->emitAllParticles()V

    iget-object p1, p0, Lcom/jme3/animation/EffectTrack;->killParticles:Lcom/jme3/animation/EffectTrack$KillParticleControl;

    iget-boolean p2, p1, Lcom/jme3/animation/EffectTrack$KillParticleControl;->stopRequested:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-virtual {p2, p1}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    iget-object p1, p0, Lcom/jme3/animation/EffectTrack;->killParticles:Lcom/jme3/animation/EffectTrack$KillParticleControl;

    iput-boolean p4, p1, Lcom/jme3/animation/EffectTrack$KillParticleControl;->stopRequested:Z

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-virtual {p2, p1}, Lcom/jme3/effect/ParticleEmitter;->setParticlesPerSec(F)V

    :cond_3
    :goto_0
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

    iget-object v0, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    iget v1, p0, Lcom/jme3/animation/EffectTrack;->particlesPerSeconds:F

    invoke-virtual {v0, v1}, Lcom/jme3/effect/ParticleEmitter;->setParticlesPerSec(F)V

    iget-object v0, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    const-string v1, "emitter"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/animation/EffectTrack;->particlesPerSeconds:F

    const-string v1, "particlesPerSeconds"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/animation/EffectTrack;->length:F

    const-string v1, "length"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/animation/EffectTrack;->startOffset:F

    const-string v1, "startOffset"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object p1, p0, Lcom/jme3/animation/EffectTrack;->emitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-virtual {p1, v2}, Lcom/jme3/effect/ParticleEmitter;->setParticlesPerSec(F)V

    return-void
.end method
