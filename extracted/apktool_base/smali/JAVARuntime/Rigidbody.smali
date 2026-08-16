.class public final LJAVARuntime/Rigidbody;
.super LJAVARuntime/PhysicsComponent;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Physics"
    }
.end annotation


# instance fields
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/PhysicsComponent;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 4
    iget-object v0, p0, LJAVARuntime/Component;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iput-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;)V
    .locals 0
    .annotation runtime LH6/g;
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
    iput-object p1, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    return-void
.end method


# virtual methods
.method public addForce(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Applies a force to the Rigidbody with the specified x, y and z values."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Aplica uma for\u00e7a ao Rigidbody com os valores x, y e z especificados."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 4
    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->addForce(FFF)V

    return-void
.end method

.method public addForce(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Applies a force to the Rigidbody in the specified direction."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Aplica uma for\u00e7a ao Rigidbody na dire\u00e7\u00e3o especificada."
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
            "vector3"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->addForce(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public addForce(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Applies a force to the Rigidbody at a specific relative position."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Aplica uma for\u00e7a ao Rigidbody em uma posi\u00e7\u00e3o relativa espec\u00edfica."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "force",
            "relativePosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "force",
            "relativePosition"
        }
    .end annotation

    .line 5
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 6
    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->addForce(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "relativePosition can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "force can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addVelocity(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds velocity to the Rigidbody with the specified x, y and z values."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Adiciona velocidade ao Rigidbody com os valores x, y e z especificados."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 4
    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->addVelocity(FFF)V

    return-void
.end method

.method public addVelocity(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds velocity to the Rigidbody in the specified direction."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Adiciona velocidade ao Rigidbody na dire\u00e7\u00e3o especificada."
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
            "vector3"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->addVelocity(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public addVelocityBySecond(FFF)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds velocity per second to the Rigidbody with the specified x, y and z values."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Adiciona velocidade por segundo ao Rigidbody com os valores x, y e z especificados."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 4
    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    invoke-static {}, LJAVARuntime/Time;->deltaTime()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {}, LJAVARuntime/Time;->deltaTime()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {}, LJAVARuntime/Time;->deltaTime()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->addVelocity(FFF)V

    return-void
.end method

.method public addVelocityBySecond(LJAVARuntime/Vector3;)V
    .locals 4
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds velocity per second to the Rigidbody in the specified direction."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Adiciona velocidade por segundo ao Rigidbody na dire\u00e7\u00e3o especificada."
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
            "vector3"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object v1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-static {}, LJAVARuntime/Time;->deltaTime()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-static {}, LJAVARuntime/Time;->deltaTime()F

    move-result v3

    mul-float/2addr v2, v3

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-static {}, LJAVARuntime/Time;->deltaTime()F

    move-result v3

    mul-float/2addr p1, v3

    invoke-virtual {v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->addVelocity(FFF)V

    return-void
.end method

.method public getAngularDamping()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the angular damping of the Rigidbody."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o amortecimento angular do Rigidbody."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->angularDamping:F

    return v0
.end method

.method public getAngularVelocity()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the current angular velocity of the Rigidbody."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a velocidade angular atual do Rigidbody."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->getAngularVelocity()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getBounciness()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the bounciness of the Rigidbody."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a elasticidade do Rigidbody."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->getBounciness()F

    move-result v0

    return v0
.end method

.method public getFriction()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the friction of the Rigidbody."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o atrito/fric\u00e7\u00e3o do Rigidbody."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->friction:F

    return v0
.end method

.method public getGravityMultiplier()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the gravity multiplier of the Rigidbody."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o multiplicador de gravidade do Rigidbody."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->getGravityMultiplier()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getLinearDamping()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the linear damping of the Rigidbody."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o amortecimento linear do Rigidbody."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->linearDamping:F

    return v0
.end method

.method public getMass()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the mass of the Rigidbody."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a massa do Rigidbody."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->mass:F

    return v0
.end method

.method public getPhysicsLayer()LJAVARuntime/PhysicsLayer;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the PhysicsLayer of the Rigidbody."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a PhysicsLayer do Rigidbody."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->e()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->e()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->u()LJAVARuntime/PhysicsLayer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVelocity()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the current velocity of the Rigidbody."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a velocidade atual do Rigidbody."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->getVelocity()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public isFreezePX()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether movement on the X axis is frozen."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se o movimento no eixo X est\u00e1 travado."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PX:Z

    return v0
.end method

.method public isFreezePY()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether movement on the Y axis is frozen."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se o movimento no eixo Y est\u00e1 travado."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PY:Z

    return v0
.end method

.method public isFreezePZ()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether movement on the Z axis is frozen."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se o movimento no eixo Z est\u00e1 travado."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PZ:Z

    return v0
.end method

.method public isFreezeRX()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether rotation on the X axis is frozen."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se a rota\u00e7\u00e3o no eixo X est\u00e1 travada."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RX:Z

    return v0
.end method

.method public isFreezeRY()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether rotation on the Y axis is frozen."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se a rota\u00e7\u00e3o no eixo Y est\u00e1 travada."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RY:Z

    return v0
.end method

.method public isFreezeRZ()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether rotation on the Z axis is frozen."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se a rota\u00e7\u00e3o no eixo Z est\u00e1 travada."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RZ:Z

    return v0
.end method

.method public isGravityEnabled()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether gravity is enabled for the Rigidbody."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se a gravidade est\u00e1 ativada para o Rigidbody."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->useGravity:Z

    return v0
.end method

.method public setAngularDamping(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the angular damping of the Rigidbody."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o amortecimento angular do Rigidbody."
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

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->angularDamping:F

    return-void
.end method

.method public setAngularVelocity(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the current angular velocity of the Rigidbody."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a velocidade angular atual do Rigidbody."
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
            "vector"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->setAngularVelocity(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public setBounciness(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the bounciness of the Rigidbody."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a elasticidade do Rigidbody."
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

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->setBounciness(F)V

    return-void
.end method

.method public setFreezePX(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether movement on the X axis is frozen."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se o movimento no eixo X est\u00e1 travado."
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

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PX:Z

    return-void
.end method

.method public setFreezePY(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether movement on the Y axis is frozen."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se o movimento no eixo Y est\u00e1 travado."
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

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PY:Z

    return-void
.end method

.method public setFreezePZ(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether movement on the Z axis is frozen."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se o movimento no eixo Z est\u00e1 travado."
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

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PZ:Z

    return-void
.end method

.method public setFreezeRX(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether rotation on the X axis is frozen."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se a rota\u00e7\u00e3o no eixo X est\u00e1 travada."
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

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RX:Z

    return-void
.end method

.method public setFreezeRY(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether rotation on the Y axis is frozen."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se a rota\u00e7\u00e3o no eixo Y est\u00e1 travada."
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

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RY:Z

    return-void
.end method

.method public setFreezeRZ(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether rotation on the Z axis is frozen."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se a rota\u00e7\u00e3o no eixo Z est\u00e1 travada."
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

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RZ:Z

    return-void
.end method

.method public setFriction(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the friction of the Rigidbody."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o atrito/fric\u00e7\u00e3o do Rigidbody."
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

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->friction:F

    return-void
.end method

.method public setGravityEnabled(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether gravity is enabled for the Rigidbody."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se a gravidade est\u00e1 ativada para o Rigidbody."
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

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->useGravity:Z

    return-void
.end method

.method public setGravityMultiplier(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the gravity multiplier of the Rigidbody."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o multiplicador de gravidade do Rigidbody."
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

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->setGravityMultiplier(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLinearDamping(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the linear damping of the Rigidbody."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o amortecimento linear do Rigidbody."
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

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->linearDamping:F

    return-void
.end method

.method public setMass(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the mass of the Rigidbody."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a massa do Rigidbody."
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

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->mass:F

    return-void
.end method

.method public setPhysicsLayer(LJAVARuntime/PhysicsLayer;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the PhysicsLayer of the Rigidbody to the specified layer."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a PhysicsLayer do Rigidbody para o layer especificado."
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

    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    iget-object p1, p1, LJAVARuntime/PhysicsLayer;->layer:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->guid:LAc/b;

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->layerGUID:LAc/b;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->layerGUID:LAc/b;

    :goto_0
    return-void
.end method

.method public setVelocity(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the current velocity of the Rigidbody."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a velocidade atual do Rigidbody."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 4
    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->getVelocity()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public setVelocity(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the current velocity of the Rigidbody."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a velocidade atual do Rigidbody."
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
            "vector"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Rigidbody;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->setVelocity(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method
