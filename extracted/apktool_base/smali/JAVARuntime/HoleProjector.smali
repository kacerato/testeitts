.class public LJAVARuntime/HoleProjector;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "VFX",
        "Components"
    }
.end annotation


# instance fields
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Creates a Hole Projector component."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Cria um componente Hole Projector."
    .end annotation

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/HoleProjector;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;)V

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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;)V
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
    iput-object p1, p0, LJAVARuntime/HoleProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->setRuntime(LJAVARuntime/Component;)V

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

    const-class v0, LJAVARuntime/HoleProjector;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getAngleLimit()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the hole projector angle limit. 1 means no limit and 0 keeps only surfaces facing the projector."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o limite de \u00e2ngulo do hole projector. 1 significa sem limite e 0 mant\u00e9m apenas superf\u00edcies apontadas para o projetor."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/HoleProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->getAngleLimit()F

    move-result v0

    return v0
.end method

.method public getBackfaceLimit()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the backface limit used for pixels whose surface normal faces the projector."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o limite de backface usado para pixels cuja normal aponta para o projetor."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/HoleProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->getBackfaceLimit()F

    move-result v0

    return v0
.end method

.method public getProjectionWidth()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the width of the hole projection volume."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a largura do volume de proje\u00e7\u00e3o do hole."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/HoleProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->getProjectionWidth()F

    move-result v0

    return v0
.end method

.method public getReach()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the depth reach of the hole projection volume."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o alcance em profundidade do volume de proje\u00e7\u00e3o do hole."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/HoleProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->getReach()F

    move-result v0

    return v0
.end method

.method public setAngleLimit(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the hole projector angle limit. 1 means no limit and 0 keeps only surfaces facing the projector."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o limite de \u00e2ngulo do hole projector. 1 significa sem limite e 0 mant\u00e9m apenas superf\u00edcies apontadas para o projetor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "angleLimit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angleLimit"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/HoleProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->setAngleLimit(F)V

    return-void
.end method

.method public setBackfaceLimit(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the backface limit used for pixels whose surface normal faces the projector. 0 culls them and 1 allows them."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o limite de backface usado para pixels cuja normal aponta para o projetor. 0 remove e 1 permite."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "backfaceLimit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backfaceLimit"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/HoleProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->setBackfaceLimit(F)V

    return-void
.end method

.method public setProjectionWidth(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the width of the hole projection volume."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a largura do volume de proje\u00e7\u00e3o do hole."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "projectionWidth"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "projectionWidth"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/HoleProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->setProjectionWidth(F)V

    return-void
.end method

.method public setReach(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the depth reach of the hole projection volume."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o alcance em profundidade do volume de proje\u00e7\u00e3o do hole."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "reach"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reach"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/HoleProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->setReach(F)V

    return-void
.end method
