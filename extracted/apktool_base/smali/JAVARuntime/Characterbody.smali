.class public final LJAVARuntime/Characterbody;
.super LJAVARuntime/PhysicsComponent;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Physics"
    }
.end annotation


# instance fields
.field public transient component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/PhysicsComponent;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 4
    iget-object v0, p0, LJAVARuntime/Component;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    iput-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "physicsController"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "physicsController"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/PhysicsComponent;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    iput-object p1, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    return-void
.end method


# virtual methods
.method public canJump()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether the character is on the ground."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se o personagem est\u00e1 sobre o ch\u00e3o."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->isGrounded()Z

    move-result v0

    return v0
.end method

.method public getForwardSpeed()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the forward movement speed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a velocidade de movimento para frente."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->getForwardSpeed()F

    move-result v0

    return v0
.end method

.method public getGravityMultiplier()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the gravity multiplier of the character."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o multiplicador de gravidade do personagem."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->getGravityMultiplier()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the character\'s height."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a altura do personagem."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->getHeight()F

    move-result v0

    return v0
.end method

.method public getHorizontalPhysicsVelocity()LJAVARuntime/Vector2;
    .locals 3
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the character\'s horizontal velocity."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a velocidade horizontal do personagem."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    new-instance v0, LJAVARuntime/Vector2;

    iget-object v1, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->getOnPhysicsVelocity()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    iget-object v2, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->getOnPhysicsVelocity()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    invoke-direct {v0, v1, v2}, LJAVARuntime/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public getJumpSpeed()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the jump speed of the character."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a velocidade do pulo do personagem."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->getJumpSpeed()F

    move-result v0

    return v0
.end method

.method public getPhysicsLayer()LJAVARuntime/PhysicsLayer;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the PhysicsLayer of the Characterbody."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a PhysicsLayer do Characterbody."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->e()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->e()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->u()LJAVARuntime/PhysicsLayer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicsVelocity()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the character\'s velocity."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a velocidade do personagem."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->getOnPhysicsVelocity()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getSideSpeed()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the lateral movement speed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a velocidade de movimento lateral."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->getSideSpeed()F

    move-result v0

    return v0
.end method

.method public getStepHeight()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the maximum step height the character can climb."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a altura m\u00e1xima de degrau que o personagem pode subir."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->getStepHeight()F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the character\'s width."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a largura do personagem."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->getWidth()F

    move-result v0

    return v0
.end method

.method public isGlobalDirections()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether the movement direction is global."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se a dire\u00e7\u00e3o de movimenta\u00e7\u00e3o \u00e9 global."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->isGlobalDirections()Z

    move-result v0

    return v0
.end method

.method public isGravityEnabled()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether the character\'s gravity is enabled."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se a gravidade do personagem est\u00e1 ativada."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->useGravity:Z

    return v0
.end method

.method public isGrounded()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether the character is grounded."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se o personagem est\u00e1 no ch\u00e3o."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->isGrounded()Z

    move-result v0

    return v0
.end method

.method public jump()V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Makes the character jump."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz o personagem pular."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->jump()V

    return-void
.end method

.method public onGround()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether the character is on the ground."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se o personagem est\u00e1 sobre o ch\u00e3o."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->isGrounded()Z

    move-result v0

    return v0
.end method

.method public setForwardSpeed(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the forward movement speed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a velocidade de movimento para frente."
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

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->setForwardSpeed(F)V

    return-void
.end method

.method public setGlobalDirections(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether movement direction is global or local."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se a dire\u00e7\u00e3o de movimento \u00e9 global ou local."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "enabled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->setGlobalDirections(Z)V

    return-void
.end method

.method public setGravityEnabled(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether character gravity is enabled."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se a gravidade do personagem est\u00e1 ativada."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "enabled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->useGravity:Z

    return-void
.end method

.method public setGravityMultiplier(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the gravity multiplier of the character."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o multiplicador de gravidade do personagem."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    iget-object v0, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->fixNan()V

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->setGravityMultiplier(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHeight(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the character\'s height."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a altura do personagem."
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

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->setHeight(F)V

    return-void
.end method

.method public setJumpSpeed(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the jump speed of the character."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a velocidade do pulo do personagem."
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

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->setJumpSpeed(F)V

    return-void
.end method

.method public setPhysicsLayer(LJAVARuntime/PhysicsLayer;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the PhysicsLayer of the Characterbody to the specified layer."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a PhysicsLayer do Characterbody para o layer especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "layer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    iget-object p1, p1, LJAVARuntime/PhysicsLayer;->layer:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->guid:LAc/b;

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->layerGUID:LAc/b;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->layerGUID:LAc/b;

    :goto_0
    return-void
.end method

.method public setSideSpeed(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the lateral movement speed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a velocidade de movimento lateral."
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

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->setSideSpeed(F)V

    return-void
.end method

.method public setSpeed(FF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the lateral (X) and forward (Z) movement speed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a velocidade lateral (X) e para frente (Z)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->setSideSpeed(F)V

    iget-object p1, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->setForwardSpeed(F)V

    return-void
.end method

.method public setStepHeight(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the maximum step height the character can climb."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a altura m\u00e1xima de degrau que o personagem pode subir."
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

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->setStepHeight(F)V

    return-void
.end method

.method public setWidth(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the character\'s width."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a largura do personagem."
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

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->setWidth(F)V

    return-void
.end method

.method public zeroSpeed()V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Resets lateral and forward speed to zero."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Reseta as velocidades lateral e para frente para zero."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->setForwardSpeed(F)V

    iget-object v0, p0, LJAVARuntime/Characterbody;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->setSideSpeed(F)V

    return-void
.end method
