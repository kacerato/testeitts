.class public final LJAVARuntime/OrbitalCameraFollow;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Prototyping",
        "Components"
    }
.end annotation


# instance fields
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Creates a new OrbitalCameraFollow instance."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Cria uma nova inst\u00e2ncia de OrbitalCameraFollow."
    .end annotation

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/OrbitalCameraFollow;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;)V

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Builds the OrbitalCameraFollow runtime class for the engine."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Constr\u00f3i a classe de runtime OrbitalCameraFollow para a engine."
    .end annotation

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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Creates a runtime bridge for the OrbitalCameraFollow instance."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Cria uma ponte de runtime para a inst\u00e2ncia OrbitalCameraFollow."
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
    iput-object p1, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setRuntime(LJAVARuntime/Component;)V

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

    const-class v0, LJAVARuntime/OrbitalCameraFollow;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getAxisName()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the input axis name."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o nome do eixo de entrada."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->getAxisName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDistance()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the camera follow distance."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a dist\u00e2ncia de follow da c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->getDistance()F

    move-result v0

    return v0
.end method

.method public getFovIntensity()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the FOV intensity."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a intensidade do FOV."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->fovIntensity:F

    return v0
.end method

.method public getHeight()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the camera height offset."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o offset de altura da c\u00e2mera."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->getHeight()F

    move-result v0

    return v0
.end method

.method public getInitialFov()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the initial FOV."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o FOV inicial."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->initialFov:F

    return v0
.end method

.method public getLookAhead()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the look-ahead offset."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o offset de look-ahead."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->getLookAhead()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getLookAheadSpeed()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the speed used to reach the look-ahead offset."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a velocidade usada para atingir o offset de look-ahead."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->getLookAheadSpeed()F

    move-result v0

    return v0
.end method

.method public getMaxHeightDistance()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the maximum allowed height distance."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a dist\u00e2ncia m\u00e1xima permitida na altura."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->getMaxHeightDistance()F

    move-result v0

    return v0
.end method

.method public getMaxPitch()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the maximum pitch."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o pitch m\u00e1ximo."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->getMaxPitch()F

    move-result v0

    return v0
.end method

.method public getMinPitch()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the minimum pitch."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o pitch m\u00ednimo."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->getMinPitch()F

    move-result v0

    return v0
.end method

.method public getMinimalFov()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the minimal FOV."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o FOV m\u00ednimo."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->minimalFov:F

    return v0
.end method

.method public getOrbitPositionDamping()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the orbital position damping."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o amortecimento de posi\u00e7\u00e3o orbital."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->getOrbitPositionDamping()F

    move-result v0

    return v0
.end method

.method public getOrbitRotationDamping()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the orbital rotation damping."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o amortecimento de rota\u00e7\u00e3o orbital."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->getOrbitRotationDamping()F

    move-result v0

    return v0
.end method

.method public getOrbitalReturnDelay()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the delay, in seconds, before orbital mode starts returning after slide input stops."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o atraso, em segundos, antes de o modo orbital come\u00e7ar a voltar depois que o slide para."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->getOrbitalReturnDelay()F

    move-result v0

    return v0
.end method

.method public getOrbitalReturnSpeedRange()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the speed range used for the orbital to follow transition."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o intervalo de velocidade usado para a transi\u00e7\u00e3o do modo orbital para o follow."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->getOrbitalReturnSpeedRange()F

    move-result v0

    return v0
.end method

.method public getOrbitalReturnSpeedThreshold()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the speed threshold used to start returning from orbital mode."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o limiar de velocidade usado para iniciar a volta do modo orbital."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->getOrbitalReturnSpeedThreshold()F

    move-result v0

    return v0
.end method

.method public getPositionDamping()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the position damping."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o amortecimento de posi\u00e7\u00e3o."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->getPositionDamping()F

    move-result v0

    return v0
.end method

.method public getRotationDamping()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the rotation damping."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o amortecimento de rota\u00e7\u00e3o."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->getRotationDamping()F

    move-result v0

    return v0
.end method

.method public getSensibility()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the current sensibility."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o sensibility atual."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->getSensibility()F

    move-result v0

    return v0
.end method

.method public getShakeIntensity()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the shake intensity."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a intensidade do shake."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->getShakeIntensity()F

    move-result v0

    return v0
.end method

.method public getShakeMagnitude()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the shake magnitude."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a magnitude do shake."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->getShakeMagnitude()F

    move-result v0

    return v0
.end method

.method public getTarget()LJAVARuntime/SpatialObject;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the target object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o objeto alvo."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->getTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetOffset()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the target offset."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o offset do alvo."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->getTargetOffset()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public isFov()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether FOV animation is enabled."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se a anima\u00e7\u00e3o de FOV est\u00e1 habilitada."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->fov:Z

    return v0
.end method

.method public isInvertX()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether X is inverted."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se o eixo X est\u00e1 invertido."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->isInvertX()Z

    move-result v0

    return v0
.end method

.method public isInvertY()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether Y is inverted."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se o eixo Y est\u00e1 invertido."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->isInvertY()Z

    move-result v0

    return v0
.end method

.method public isLimited()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether pitch limits are enabled."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se os limites de pitch est\u00e3o habilitados."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->isLimited()Z

    move-result v0

    return v0
.end method

.method public isShake()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether camera shake is enabled."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se o shake da c\u00e2mera est\u00e1 habilitado."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->isShake()Z

    move-result v0

    return v0
.end method

.method public setAxisName(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the input axis name."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o nome do eixo de entrada."
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

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setAxisName(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be empty or null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDistance(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the camera follow distance."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a dist\u00e2ncia de follow da c\u00e2mera."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setDistance(F)V

    return-void
.end method

.method public setFov(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether FOV animation is enabled."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se a anima\u00e7\u00e3o de FOV est\u00e1 habilitada."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->fov:Z

    return-void
.end method

.method public setFovIntensity(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the FOV intensity."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a intensidade do FOV."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->fovIntensity:F

    return-void
.end method

.method public setHeight(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the camera height offset."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o offset de altura da c\u00e2mera."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setHeight(F)V

    return-void
.end method

.method public setInitialFov(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the initial FOV."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o FOV inicial."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->initialFov:F

    return-void
.end method

.method public setInvertX(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether X is inverted."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se o eixo X est\u00e1 invertido."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setInvertX(Z)V

    return-void
.end method

.method public setInvertY(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether Y is inverted."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se o eixo Y est\u00e1 invertido."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setInvertY(Z)V

    return-void
.end method

.method public setLimited(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether pitch limits are enabled."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se os limites de pitch est\u00e3o habilitados."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setLimited(Z)V

    return-void
.end method

.method public setLookAhead(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the look-ahead offset."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o offset de look-ahead."
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

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setLookAhead(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :cond_0
    return-void
.end method

.method public setLookAheadSpeed(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the speed used to reach the look-ahead offset."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a velocidade usada para atingir o offset de look-ahead."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setLookAheadSpeed(F)V

    return-void
.end method

.method public setMaxHeightDistance(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the maximum allowed height distance."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a dist\u00e2ncia m\u00e1xima permitida na altura."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setMaxHeightDistance(F)V

    return-void
.end method

.method public setMaxPitch(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the maximum pitch."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o pitch m\u00e1ximo."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setMaxPitch(F)V

    return-void
.end method

.method public setMinPitch(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the minimum pitch."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o pitch m\u00ednimo."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setMinPitch(F)V

    return-void
.end method

.method public setMinimalFov(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the minimal FOV."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o FOV m\u00ednimo."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->minimalFov:F

    return-void
.end method

.method public setOrbitPositionDamping(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the orbital position damping."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o amortecimento de posi\u00e7\u00e3o orbital."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setOrbitPositionDamping(F)V

    return-void
.end method

.method public setOrbitRotationDamping(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the orbital rotation damping."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o amortecimento de rota\u00e7\u00e3o orbital."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setOrbitRotationDamping(F)V

    return-void
.end method

.method public setOrbitalReturnDelay(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the delay, in seconds, before orbital mode starts returning after slide input stops."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o atraso, em segundos, antes de o modo orbital come\u00e7ar a voltar depois que o slide para."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setOrbitalReturnDelay(F)V

    return-void
.end method

.method public setOrbitalReturnSpeedRange(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the speed range used for the orbital to follow transition."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o intervalo de velocidade usado para a transi\u00e7\u00e3o do modo orbital para o follow."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setOrbitalReturnSpeedRange(F)V

    return-void
.end method

.method public setOrbitalReturnSpeedThreshold(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the speed threshold used to start returning from orbital mode."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o limiar de velocidade usado para iniciar a volta do modo orbital."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setOrbitalReturnSpeedThreshold(F)V

    return-void
.end method

.method public setPositionDamping(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the position damping."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o amortecimento de posi\u00e7\u00e3o."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setPositionDamping(F)V

    return-void
.end method

.method public setRotationDamping(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the rotation damping."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o amortecimento de rota\u00e7\u00e3o."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setRotationDamping(F)V

    return-void
.end method

.method public setSensibility(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets or updates the sensibility."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define ou atualiza o sensibility."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setSensibility(F)V

    return-void
.end method

.method public setShake(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether camera shake is enabled."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se o shake da c\u00e2mera est\u00e1 habilitado."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setShake(Z)V

    return-void
.end method

.method public setShakeIntensity(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the shake intensity."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a intensidade do shake."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setShakeIntensity(F)V

    return-void
.end method

.method public setShakeMagnitude(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the shake magnitude."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a magnitude do shake."
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

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setShakeMagnitude(F)V

    return-void
.end method

.method public setTarget(LJAVARuntime/SpatialObject;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the target object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o objeto alvo."
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

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    iget-object p1, p1, LJAVARuntime/SpatialObject;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :goto_0
    return-void
.end method

.method public setTargetOffset(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the target offset."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o offset do alvo."
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

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/OrbitalCameraFollow;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->setTargetOffset(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :cond_0
    return-void
.end method
