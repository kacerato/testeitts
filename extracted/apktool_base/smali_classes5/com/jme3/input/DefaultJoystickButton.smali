.class public Lcom/jme3/input/DefaultJoystickButton;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/JoystickButton;


# instance fields
.field private final buttonIndex:I

.field private final inputManager:Lcom/jme3/input/InputManager;

.field private final logicalId:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final parent:Lcom/jme3/input/Joystick;


# direct methods
.method public constructor <init>(Lcom/jme3/input/InputManager;Lcom/jme3/input/Joystick;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/input/DefaultJoystickButton;->inputManager:Lcom/jme3/input/InputManager;

    iput-object p2, p0, Lcom/jme3/input/DefaultJoystickButton;->parent:Lcom/jme3/input/Joystick;

    iput p3, p0, Lcom/jme3/input/DefaultJoystickButton;->buttonIndex:I

    iput-object p4, p0, Lcom/jme3/input/DefaultJoystickButton;->name:Ljava/lang/String;

    iput-object p5, p0, Lcom/jme3/input/DefaultJoystickButton;->logicalId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public assignButton(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/input/DefaultJoystickButton;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v1, Lcom/jme3/input/controls/JoyButtonTrigger;

    iget-object v2, p0, Lcom/jme3/input/DefaultJoystickButton;->parent:Lcom/jme3/input/Joystick;

    invoke-interface {v2}, Lcom/jme3/input/Joystick;->getJoyId()I

    move-result v2

    iget v3, p0, Lcom/jme3/input/DefaultJoystickButton;->buttonIndex:I

    invoke-direct {v1, v2, v3}, Lcom/jme3/input/controls/JoyButtonTrigger;-><init>(II)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/jme3/input/controls/Trigger;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, p1, v2}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    return-void
.end method

.method public getButtonId()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/DefaultJoystickButton;->buttonIndex:I

    return v0
.end method

.method public getJoystick()Lcom/jme3/input/Joystick;
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/DefaultJoystickButton;->parent:Lcom/jme3/input/Joystick;

    return-object v0
.end method

.method public getLogicalId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/DefaultJoystickButton;->logicalId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/DefaultJoystickButton;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JoystickButton[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/input/DefaultJoystickButton;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/input/DefaultJoystickButton;->parent:Lcom/jme3/input/Joystick;

    invoke-interface {v1}, Lcom/jme3/input/Joystick;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/input/DefaultJoystickButton;->getButtonId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", logicalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/input/DefaultJoystickButton;->getLogicalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
