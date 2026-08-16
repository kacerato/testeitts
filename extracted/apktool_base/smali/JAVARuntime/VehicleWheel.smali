.class public final LJAVARuntime/VehicleWheel;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Physics",
        "Components"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/VehicleWheel$Type;
    }
.end annotation


# instance fields
.field public transient component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/VehicleWheel;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    iput-object p1, p0, LJAVARuntime/VehicleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->setRuntime(LJAVARuntime/Component;)V

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

    const-class v0, LJAVARuntime/VehicleWheel;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getCamber()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VehicleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->camber:F

    return v0
.end method

.method public getFrictionSlip()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VehicleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->frictionSlip:F

    return v0
.end method

.method public getModelPosition()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VehicleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->getModelPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getModelRotation()LJAVARuntime/Quaternion;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VehicleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->getModelRotation()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public getPosPhysicsFunctionEnabled()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    const/4 v0, 0x1

    return v0
.end method

.method public getRadius()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VehicleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->radius:F

    return v0
.end method

.method public getRotation()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VehicleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->getRotation()F

    move-result v0

    return v0
.end method

.method public getSkidding()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VehicleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->getSkidding()F

    move-result v0

    return v0
.end method

.method public getSuspensionRestLength()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VehicleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->suspensionRestLength:F

    return v0
.end method

.method public getSuspensionTravelPercentage()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VehicleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->getSuspensionTravelPercentage()F

    move-result v0

    return v0
.end method

.method public incrementRotation(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "increment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VehicleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->incrementRotation(F)V

    return-void
.end method

.method public isGrounded()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VehicleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->isGrounded()Z

    move-result v0

    return v0
.end method

.method public setBlockRotation(F)V
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
            "intensity"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/VehicleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    invoke-static {p1}, LIc/A;->b(F)F

    move-result p1

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->Y:F

    return-void
.end method

.method public setBrake(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "brake"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brake"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VehicleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    invoke-static {p1}, LIc/A;->b(F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->setBrake(F)V

    return-void
.end method

.method public setCamber(F)V
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

    iget-object v0, p0, LJAVARuntime/VehicleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    invoke-static {p1}, LIc/A;->b(F)F

    move-result p1

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->camber:F

    return-void
.end method

.method public setFrictionSlip(F)V
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

    iget-object v0, p0, LJAVARuntime/VehicleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    invoke-static {p1}, LIc/A;->b(F)F

    move-result p1

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->frictionSlip:F

    return-void
.end method

.method public setPosPhysicsFunctionEnabled(Z)V
    .locals 0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

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

    iget-object v0, p0, LJAVARuntime/VehicleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    invoke-static {p1}, LIc/A;->b(F)F

    move-result p1

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->radius:F

    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "rotation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VehicleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->setRotation(F)V

    return-void
.end method

.method public setSteer(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "steer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "steer"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VehicleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    invoke-static {p1}, LIc/A;->b(F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->setSteering(F)V

    return-void
.end method

.method public setSuspensionRestLength(F)V
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

    iget-object v0, p0, LJAVARuntime/VehicleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    invoke-static {p1}, LIc/A;->b(F)F

    move-result p1

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->suspensionRestLength:F

    return-void
.end method

.method public setTorque(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "torque"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "torque"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VehicleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    invoke-static {p1}, LIc/A;->b(F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->setTorque(F)V

    return-void
.end method
