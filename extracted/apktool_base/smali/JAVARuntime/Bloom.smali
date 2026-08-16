.class public LJAVARuntime/Bloom;
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
        LJAVARuntime/Bloom$QualityLevel;
    }
.end annotation


# instance fields
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/Bloom;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;)V

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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;)V
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
    iput-object p1, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method

.method private static ENUMCONVERT(Lcom/google/android/filament/View$n;)LJAVARuntime/Bloom$QualityLevel;
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

    invoke-static {p0}, LJAVARuntime/Bloom$QualityLevel;->valueOf(Ljava/lang/String;)LJAVARuntime/Bloom$QualityLevel;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(LJAVARuntime/Bloom$QualityLevel;)Lcom/google/android/filament/View$n;
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

    const-class v0, LJAVARuntime/Bloom;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getChromaticAberration()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->getChromaticAberration()F

    move-result v0

    return v0
.end method

.method public getGhostCount()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->getGhostCount()I

    move-result v0

    return v0
.end method

.method public getGhostSpacing()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->getGhostSpacing()F

    move-result v0

    return v0
.end method

.method public getGhostThreshold()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->getGhostThreshold()F

    move-result v0

    return v0
.end method

.method public getHaloRadius()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->getHaloRadius()F

    move-result v0

    return v0
.end method

.method public getHaloThickness()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->getHaloThickness()F

    move-result v0

    return v0
.end method

.method public getHaloThreshold()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->getHaloThreshold()F

    move-result v0

    return v0
.end method

.method public getHighlight()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->getHighlight()F

    move-result v0

    return v0
.end method

.method public getLevels()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->getLevels()I

    move-result v0

    return v0
.end method

.method public getQuality()LJAVARuntime/Bloom$QualityLevel;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->getQuality()Lcom/google/android/filament/View$n;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/Bloom;->ENUMCONVERT(Lcom/google/android/filament/View$n;)LJAVARuntime/Bloom$QualityLevel;

    move-result-object v0

    return-object v0
.end method

.method public getResolutionID()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->getResolutionID()I

    move-result v0

    return v0
.end method

.method public getStrength()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->getStrength()F

    move-result v0

    return v0
.end method

.method public isLensFlare()Z
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->isLensFlare()Z

    move-result v0

    return v0
.end method

.method public isStarburst()Z
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->isStarburst()Z

    move-result v0

    return v0
.end method

.method public setChromaticAberration(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "chromaticAberration"
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

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->setChromaticAberration(F)V

    return-void
.end method

.method public setGhostCount(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "ghostCount"
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

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->setGhostCount(I)V

    return-void
.end method

.method public setGhostSpacing(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "ghostSpacing"
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

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->setGhostSpacing(F)V

    return-void
.end method

.method public setGhostThreshold(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "ghostThreshold"
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

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->setGhostThreshold(F)V

    return-void
.end method

.method public setHaloRadius(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "haloRadius"
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

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->setHaloRadius(F)V

    return-void
.end method

.method public setHaloThickness(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "haloThickness"
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

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->setHaloThickness(F)V

    return-void
.end method

.method public setHaloThreshold(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "haloThreshold"
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

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->setHaloThreshold(F)V

    return-void
.end method

.method public setHighlight(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "highlight"
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

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->setHighlight(F)V

    return-void
.end method

.method public setLensFlare(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "lensFlare"
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

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->setLensFlare(Z)V

    return-void
.end method

.method public setLevels(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "levels"
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

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->setLevels(I)V

    return-void
.end method

.method public setQuality(LJAVARuntime/Bloom$QualityLevel;)V
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

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-static {p1}, LJAVARuntime/Bloom;->ENUMCONVERT(LJAVARuntime/Bloom$QualityLevel;)Lcom/google/android/filament/View$n;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->setQuality(Lcom/google/android/filament/View$n;)V

    return-void
.end method

.method public setResolutionID(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "resolutionID"
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

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->setResolutionID(I)V

    return-void
.end method

.method public setStarburst(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "starburst"
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

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->setStarburst(Z)V

    return-void
.end method

.method public setStrength(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "strength"
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

    iget-object v0, p0, LJAVARuntime/Bloom;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Bloom;->setStrength(F)V

    return-void
.end method
