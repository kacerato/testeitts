.class public LJAVARuntime/UIVHSFilter;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Post processing"
    }
.end annotation


# instance fields
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/UIVHSFilter;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;)V

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
    invoke-direct {p0}, LJAVARuntime/Component;-><init>()V

    .line 6
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;)V
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
    invoke-direct {p0, p1}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    .line 4
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method


# virtual methods
.method public componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;)Z
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const-class v0, LJAVARuntime/UIVHSFilter;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getColorBleed()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->getColorBleed()F

    move-result v0

    return v0
.end method

.method public getDesaturation()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->getDesaturation()F

    move-result v0

    return v0
.end method

.method public getDistortion()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->getDistortion()F

    move-result v0

    return v0
.end method

.method public getIntensity()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->getIntensity()F

    move-result v0

    return v0
.end method

.method public getNoiseStrength()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->getNoiseStrength()F

    move-result v0

    return v0
.end method

.method public getScanlineStrength()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->getScanlineStrength()F

    move-result v0

    return v0
.end method

.method public getTime()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->getTime()F

    move-result v0

    return v0
.end method

.method public getTrackingBandHeight()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->getTrackingBandHeight()F

    move-result v0

    return v0
.end method

.method public getTrackingNoise()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->getTrackingNoise()F

    move-result v0

    return v0
.end method

.method public getTrackingSpeed()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->getTrackingSpeed()F

    move-result v0

    return v0
.end method

.method public getTrackingStrength()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->getTrackingStrength()F

    move-result v0

    return v0
.end method

.method public setColorBleed(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "colorBleed"
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

    iget-object v0, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->setColorBleed(F)V

    return-void
.end method

.method public setDesaturation(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "desaturation"
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

    iget-object v0, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->setDesaturation(F)V

    return-void
.end method

.method public setDistortion(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "distortion"
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

    iget-object v0, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->setDistortion(F)V

    return-void
.end method

.method public setIntensity(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "intensity"
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

    iget-object v0, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->setIntensity(F)V

    return-void
.end method

.method public setNoiseStrength(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "noiseStrength"
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

    iget-object v0, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->setNoiseStrength(F)V

    return-void
.end method

.method public setScanlineStrength(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "scanlineStrength"
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

    iget-object v0, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->setScanlineStrength(F)V

    return-void
.end method

.method public setTime(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "time"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->setTime(F)V

    return-void
.end method

.method public setTrackingBandHeight(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "trackingBandHeight"
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

    iget-object v0, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->setTrackingBandHeight(F)V

    return-void
.end method

.method public setTrackingNoise(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "trackingNoise"
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

    iget-object v0, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->setTrackingNoise(F)V

    return-void
.end method

.method public setTrackingSpeed(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "trackingSpeed"
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

    iget-object v0, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->setTrackingSpeed(F)V

    return-void
.end method

.method public setTrackingStrength(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "trackingStrength"
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

    iget-object v0, p0, LJAVARuntime/UIVHSFilter;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->setTrackingStrength(F)V

    return-void
.end method
