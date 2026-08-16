.class public abstract Lcom/jme3/input/AbstractJoystick;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/Joystick;


# instance fields
.field private final axes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/input/JoystickAxis;",
            ">;"
        }
    .end annotation
.end field

.field private final buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/input/JoystickButton;",
            ">;"
        }
    .end annotation
.end field

.field private final inputManager:Lcom/jme3/input/InputManager;

.field private final joyId:I

.field private final joyInput:Lcom/jme3/input/JoyInput;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jme3/input/InputManager;Lcom/jme3/input/JoyInput;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/AbstractJoystick;->axes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/AbstractJoystick;->buttons:Ljava/util/List;

    iput-object p1, p0, Lcom/jme3/input/AbstractJoystick;->inputManager:Lcom/jme3/input/InputManager;

    iput-object p2, p0, Lcom/jme3/input/AbstractJoystick;->joyInput:Lcom/jme3/input/JoyInput;

    iput p3, p0, Lcom/jme3/input/AbstractJoystick;->joyId:I

    iput-object p4, p0, Lcom/jme3/input/AbstractJoystick;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addAxis(Lcom/jme3/input/JoystickAxis;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/AbstractJoystick;->axes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addButton(Lcom/jme3/input/JoystickButton;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/AbstractJoystick;->buttons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public assignAxis(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xfe

    if-ne p3, v2, :cond_0

    invoke-interface {p0}, Lcom/jme3/input/Joystick;->getPovXAxis()Lcom/jme3/input/JoystickAxis;

    move-result-object p3

    invoke-interface {p3}, Lcom/jme3/input/JoystickAxis;->getAxisId()I

    move-result p3

    goto :goto_0

    :cond_0
    const/16 v2, 0xff

    if-ne p3, v2, :cond_1

    invoke-interface {p0}, Lcom/jme3/input/Joystick;->getPovYAxis()Lcom/jme3/input/JoystickAxis;

    move-result-object p3

    invoke-interface {p3}, Lcom/jme3/input/JoystickAxis;->getAxisId()I

    move-result p3

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/jme3/input/AbstractJoystick;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v3, Lcom/jme3/input/controls/JoyAxisTrigger;

    iget v4, p0, Lcom/jme3/input/AbstractJoystick;->joyId:I

    invoke-direct {v3, v4, p3, v1}, Lcom/jme3/input/controls/JoyAxisTrigger;-><init>(IIZ)V

    new-array v4, v0, [Lcom/jme3/input/controls/Trigger;

    aput-object v3, v4, v1

    invoke-virtual {v2, p1, v4}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object p1, p0, Lcom/jme3/input/AbstractJoystick;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v2, Lcom/jme3/input/controls/JoyAxisTrigger;

    iget v3, p0, Lcom/jme3/input/AbstractJoystick;->joyId:I

    invoke-direct {v2, v3, p3, v0}, Lcom/jme3/input/controls/JoyAxisTrigger;-><init>(IIZ)V

    new-array p3, v0, [Lcom/jme3/input/controls/Trigger;

    aput-object v2, p3, v1

    invoke-virtual {p1, p2, p3}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    return-void
.end method

.method public assignButton(Ljava/lang/String;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/jme3/input/AbstractJoystick;->getButtonCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/jme3/input/AbstractJoystick;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v1, Lcom/jme3/input/controls/JoyButtonTrigger;

    iget v2, p0, Lcom/jme3/input/AbstractJoystick;->joyId:I

    invoke-direct {v1, v2, p2}, Lcom/jme3/input/controls/JoyButtonTrigger;-><init>(II)V

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/jme3/input/controls/Trigger;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    invoke-virtual {v0, p1, p2}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getAxes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/input/JoystickAxis;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/input/AbstractJoystick;->axes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAxis(Ljava/lang/String;)Lcom/jme3/input/JoystickAxis;
    .locals 3

    iget-object v0, p0, Lcom/jme3/input/AbstractJoystick;->axes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/input/JoystickAxis;

    invoke-interface {v1}, Lcom/jme3/input/JoystickAxis;->getLogicalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAxisCount()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/AbstractJoystick;->axes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getButton(Ljava/lang/String;)Lcom/jme3/input/JoystickButton;
    .locals 3

    iget-object v0, p0, Lcom/jme3/input/AbstractJoystick;->buttons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/input/JoystickButton;

    invoke-interface {v1}, Lcom/jme3/input/JoystickButton;->getLogicalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getButtonCount()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/AbstractJoystick;->buttons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getButtons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/input/JoystickButton;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/input/AbstractJoystick;->buttons:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputManager()Lcom/jme3/input/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/AbstractJoystick;->inputManager:Lcom/jme3/input/InputManager;

    return-object v0
.end method

.method public getJoyId()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/AbstractJoystick;->joyId:I

    return v0
.end method

.method public getJoyInput()Lcom/jme3/input/JoyInput;
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/AbstractJoystick;->joyInput:Lcom/jme3/input/JoyInput;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/AbstractJoystick;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getXAxisIndex()I
    .locals 1

    invoke-interface {p0}, Lcom/jme3/input/Joystick;->getXAxis()Lcom/jme3/input/JoystickAxis;

    move-result-object v0

    invoke-interface {v0}, Lcom/jme3/input/JoystickAxis;->getAxisId()I

    move-result v0

    return v0
.end method

.method public getYAxisIndex()I
    .locals 1

    invoke-interface {p0}, Lcom/jme3/input/Joystick;->getYAxis()Lcom/jme3/input/JoystickAxis;

    move-result-object v0

    invoke-interface {v0}, Lcom/jme3/input/JoystickAxis;->getAxisId()I

    move-result v0

    return v0
.end method

.method public rumble(F)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/input/AbstractJoystick;->joyInput:Lcom/jme3/input/JoyInput;

    iget v1, p0, Lcom/jme3/input/AbstractJoystick;->joyId:I

    invoke-interface {v0, v1, p1}, Lcom/jme3/input/JoyInput;->setJoyRumble(IF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Joystick[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/input/AbstractJoystick;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/AbstractJoystick;->joyId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", buttons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/input/AbstractJoystick;->getButtonCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", axes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/input/AbstractJoystick;->getAxisCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
