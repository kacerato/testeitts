.class public LJAVARuntime/SSAO;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Post processing"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/SSAO$QualityLevel;
    }
.end annotation


# instance fields
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/SSAO;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;)V

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

    .line 4
    invoke-direct {p0}, LJAVARuntime/Component;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;)V
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
    iput-object p1, p0, LJAVARuntime/SSAO;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method

.method private static ENUMCONVERT(Lcom/google/android/filament/View$n;)LJAVARuntime/SSAO$QualityLevel;
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJAVARuntime/SSAO$QualityLevel;->valueOf(Ljava/lang/String;)LJAVARuntime/SSAO$QualityLevel;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(LJAVARuntime/SSAO$QualityLevel;)Lcom/google/android/filament/View$n;
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/filament/View$n;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/View$n;

    move-result-object p0

    return-object p0
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

    const-class v0, LJAVARuntime/SSAO;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getBias()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SSAO;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->getBias()F

    move-result v0

    return v0
.end method

.method public getBilateralThreshold()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SSAO;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->getBilateralThreshold()F

    move-result v0

    return v0
.end method

.method public getIntensity()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SSAO;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->getIntensity()F

    move-result v0

    return v0
.end method

.method public getLowPassFilter()LJAVARuntime/SSAO$QualityLevel;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SSAO;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->getLowPassFilter()Lcom/google/android/filament/View$n;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/SSAO;->ENUMCONVERT(Lcom/google/android/filament/View$n;)LJAVARuntime/SSAO$QualityLevel;

    move-result-object v0

    return-object v0
.end method

.method public getMinHorizonAngleRad()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SSAO;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->getMinHorizonAngleRad()F

    move-result v0

    return v0
.end method

.method public getPower()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SSAO;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->getPower()F

    move-result v0

    return v0
.end method

.method public getQuality()LJAVARuntime/SSAO$QualityLevel;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SSAO;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->getQuality()Lcom/google/android/filament/View$n;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/SSAO;->ENUMCONVERT(Lcom/google/android/filament/View$n;)LJAVARuntime/SSAO$QualityLevel;

    move-result-object v0

    return-object v0
.end method

.method public getRadius()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SSAO;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->getRadius()F

    move-result v0

    return v0
.end method

.method public getUpsampling()LJAVARuntime/SSAO$QualityLevel;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SSAO;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->getUpsampling()Lcom/google/android/filament/View$n;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/SSAO;->ENUMCONVERT(Lcom/google/android/filament/View$n;)LJAVARuntime/SSAO$QualityLevel;

    move-result-object v0

    return-object v0
.end method

.method public setBias(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "bias"
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

    iget-object v0, p0, LJAVARuntime/SSAO;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->setBias(F)V

    return-void
.end method

.method public setBilateralThreshold(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "bilateralThreshold"
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

    iget-object v0, p0, LJAVARuntime/SSAO;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->setBilateralThreshold(F)V

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

    iget-object v0, p0, LJAVARuntime/SSAO;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->setIntensity(F)V

    return-void
.end method

.method public setLowPassFilter(LJAVARuntime/SSAO$QualityLevel;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "lowPassFilter"
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

    iget-object v0, p0, LJAVARuntime/SSAO;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-static {p1}, LJAVARuntime/SSAO;->ENUMCONVERT(LJAVARuntime/SSAO$QualityLevel;)Lcom/google/android/filament/View$n;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->setLowPassFilter(Lcom/google/android/filament/View$n;)V

    return-void
.end method

.method public setMinHorizonAngleRad(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "minHorizonAngleRad"
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

    iget-object v0, p0, LJAVARuntime/SSAO;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->setMinHorizonAngleRad(F)V

    return-void
.end method

.method public setPower(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "power"
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

    iget-object v0, p0, LJAVARuntime/SSAO;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->setPower(F)V

    return-void
.end method

.method public setQuality(LJAVARuntime/SSAO$QualityLevel;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "quality"
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

    iget-object v0, p0, LJAVARuntime/SSAO;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-static {p1}, LJAVARuntime/SSAO;->ENUMCONVERT(LJAVARuntime/SSAO$QualityLevel;)Lcom/google/android/filament/View$n;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->setQuality(Lcom/google/android/filament/View$n;)V

    return-void
.end method

.method public setRadius(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "radius"
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

    iget-object v0, p0, LJAVARuntime/SSAO;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->setRadius(F)V

    return-void
.end method

.method public setUpsampling(LJAVARuntime/SSAO$QualityLevel;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "upsampling"
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

    iget-object v0, p0, LJAVARuntime/SSAO;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;

    invoke-static {p1}, LJAVARuntime/SSAO;->ENUMCONVERT(LJAVARuntime/SSAO$QualityLevel;)Lcom/google/android/filament/View$n;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/SSAO;->setUpsampling(Lcom/google/android/filament/View$n;)V

    return-void
.end method
