.class public abstract Lcom/jme3/effect/ParticleMesh;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/effect/ParticleMesh$Type;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract initParticleData(Lcom/jme3/effect/ParticleEmitter;I)V
.end method

.method public abstract setImagesXY(II)V
.end method

.method public abstract updateParticleData([Lcom/jme3/effect/Particle;Lcom/jme3/renderer/Camera;Lcom/jme3/math/Matrix3f;)V
.end method
