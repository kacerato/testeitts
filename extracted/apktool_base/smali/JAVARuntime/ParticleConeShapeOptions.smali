.class public LJAVARuntime/ParticleConeShapeOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Particles"
    }
.end annotation


# instance fields
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/ParticleConeShapeOptions;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;)V

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .annotation runtime Lo8/c;
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/ParticleConeShapeOptions;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    .line 4
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->h(LJAVARuntime/ParticleConeShapeOptions;)V

    return-void
.end method


# virtual methods
.method public getMaxAngle()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ParticleConeShapeOptions;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->b()F

    move-result v0

    return v0
.end method

.method public getMinAngle()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ParticleConeShapeOptions;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->c()F

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ParticleConeShapeOptions;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->d()F

    move-result v0

    return v0
.end method

.method public setMaxAngle(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ParticleConeShapeOptions;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->e(F)V

    return-void
.end method

.method public setMinAngle(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ParticleConeShapeOptions;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->f(F)V

    return-void
.end method

.method public setRadius(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ParticleConeShapeOptions;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->g(F)V

    return-void
.end method
