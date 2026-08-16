.class public Lcom/jme3/input/DefaultJoystickAxis;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/JoystickAxis;


# instance fields
.field private final axisIndex:I

.field private deadZone:F

.field private final inputManager:Lcom/jme3/input/InputManager;

.field private final isAnalog:Z

.field private final isRelative:Z

.field private jitterThreshold:F

.field private final logicalId:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final parent:Lcom/jme3/input/Joystick;


# direct methods
.method public constructor <init>(Lcom/jme3/input/InputManager;Lcom/jme3/input/Joystick;ILjava/lang/String;Ljava/lang/String;ZZF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/input/DefaultJoystickAxis;->jitterThreshold:F

    iput-object p1, p0, Lcom/jme3/input/DefaultJoystickAxis;->inputManager:Lcom/jme3/input/InputManager;

    iput-object p2, p0, Lcom/jme3/input/DefaultJoystickAxis;->parent:Lcom/jme3/input/Joystick;

    iput p3, p0, Lcom/jme3/input/DefaultJoystickAxis;->axisIndex:I

    iput-object p4, p0, Lcom/jme3/input/DefaultJoystickAxis;->name:Ljava/lang/String;

    iput-object p5, p0, Lcom/jme3/input/DefaultJoystickAxis;->logicalId:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/jme3/input/DefaultJoystickAxis;->isAnalog:Z

    iput-boolean p7, p0, Lcom/jme3/input/DefaultJoystickAxis;->isRelative:Z

    iput p8, p0, Lcom/jme3/input/DefaultJoystickAxis;->deadZone:F

    return-void
.end method


# virtual methods
.method public assignAxis(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/jme3/input/DefaultJoystickAxis;->axisIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/jme3/input/DefaultJoystickAxis;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v3, Lcom/jme3/input/controls/JoyAxisTrigger;

    iget-object v4, p0, Lcom/jme3/input/DefaultJoystickAxis;->parent:Lcom/jme3/input/Joystick;

    invoke-interface {v4}, Lcom/jme3/input/Joystick;->getJoyId()I

    move-result v4

    iget v5, p0, Lcom/jme3/input/DefaultJoystickAxis;->axisIndex:I

    invoke-direct {v3, v4, v5, v1}, Lcom/jme3/input/controls/JoyAxisTrigger;-><init>(IIZ)V

    new-array v4, v0, [Lcom/jme3/input/controls/Trigger;

    aput-object v3, v4, v1

    invoke-virtual {v2, p1, v4}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object p1, p0, Lcom/jme3/input/DefaultJoystickAxis;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v2, Lcom/jme3/input/controls/JoyAxisTrigger;

    iget-object v3, p0, Lcom/jme3/input/DefaultJoystickAxis;->parent:Lcom/jme3/input/Joystick;

    invoke-interface {v3}, Lcom/jme3/input/Joystick;->getJoyId()I

    move-result v3

    iget v4, p0, Lcom/jme3/input/DefaultJoystickAxis;->axisIndex:I

    invoke-direct {v2, v3, v4, v0}, Lcom/jme3/input/controls/JoyAxisTrigger;-><init>(IIZ)V

    new-array v0, v0, [Lcom/jme3/input/controls/Trigger;

    aput-object v2, v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    :cond_0
    return-void
.end method

.method public getAxisId()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/DefaultJoystickAxis;->axisIndex:I

    return v0
.end method

.method public getDeadZone()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/DefaultJoystickAxis;->deadZone:F

    return v0
.end method

.method public getJitterThreshold()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/DefaultJoystickAxis;->jitterThreshold:F

    return v0
.end method

.method public getJoystick()Lcom/jme3/input/Joystick;
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/DefaultJoystickAxis;->parent:Lcom/jme3/input/Joystick;

    return-object v0
.end method

.method public getLogicalId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/DefaultJoystickAxis;->logicalId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/DefaultJoystickAxis;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isAnalog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/DefaultJoystickAxis;->isAnalog:Z

    return v0
.end method

.method public isRelative()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/DefaultJoystickAxis;->isRelative:Z

    return v0
.end method

.method public setDeadZone(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/input/DefaultJoystickAxis;->deadZone:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JoystickAxis[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/input/DefaultJoystickAxis;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/input/DefaultJoystickAxis;->parent:Lcom/jme3/input/Joystick;

    invoke-interface {v1}, Lcom/jme3/input/Joystick;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/DefaultJoystickAxis;->axisIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", logicalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/input/DefaultJoystickAxis;->logicalId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isAnalog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/input/DefaultJoystickAxis;->isAnalog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRelative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/input/DefaultJoystickAxis;->isRelative:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", deadZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/DefaultJoystickAxis;->deadZone:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", jitterThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/DefaultJoystickAxis;->jitterThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
