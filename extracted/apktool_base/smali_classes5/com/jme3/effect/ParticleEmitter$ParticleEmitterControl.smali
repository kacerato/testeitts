.class public Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/scene/control/Control;
.implements Lcom/jme3/util/clone/JmeCloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/effect/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParticleEmitterControl"
.end annotation


# instance fields
.field parentEmitter:Lcom/jme3/effect/ParticleEmitter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/effect/ParticleEmitter;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;->parentEmitter:Lcom/jme3/effect/ParticleEmitter;

    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;->parentEmitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/effect/ParticleEmitter;

    iput-object p1, p0, Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;->parentEmitter:Lcom/jme3/effect/ParticleEmitter;

    return-void
.end method

.method public cloneForSpatial(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/control/Control;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;->parentEmitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-virtual {v0}, Lcom/jme3/effect/ParticleEmitter;->isEnabled()Z

    move-result v0

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;->parentEmitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-static {v0, p1, p2}, Lcom/jme3/effect/ParticleEmitter;->access$000(Lcom/jme3/effect/ParticleEmitter;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;->parentEmitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-virtual {v0, p1}, Lcom/jme3/effect/ParticleEmitter;->setEnabled(Z)V

    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 0

    return-void
.end method

.method public update(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;->parentEmitter:Lcom/jme3/effect/ParticleEmitter;

    invoke-virtual {v0, p1}, Lcom/jme3/effect/ParticleEmitter;->updateFromControl(F)V

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
