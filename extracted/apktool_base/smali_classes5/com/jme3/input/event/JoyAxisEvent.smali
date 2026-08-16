.class public Lcom/jme3/input/event/JoyAxisEvent;
.super Lcom/jme3/input/event/InputEvent;
.source "SourceFile"


# instance fields
.field private axis:Lcom/jme3/input/JoystickAxis;

.field private rawValue:F

.field private value:F


# direct methods
.method public constructor <init>(Lcom/jme3/input/JoystickAxis;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p2}, Lcom/jme3/input/event/JoyAxisEvent;-><init>(Lcom/jme3/input/JoystickAxis;FF)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/input/JoystickAxis;FF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jme3/input/event/InputEvent;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jme3/input/event/JoyAxisEvent;->axis:Lcom/jme3/input/JoystickAxis;

    .line 4
    iput p2, p0, Lcom/jme3/input/event/JoyAxisEvent;->value:F

    .line 5
    iput p3, p0, Lcom/jme3/input/event/JoyAxisEvent;->rawValue:F

    return-void
.end method


# virtual methods
.method public getAxis()Lcom/jme3/input/JoystickAxis;
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/event/JoyAxisEvent;->axis:Lcom/jme3/input/JoystickAxis;

    return-object v0
.end method

.method public getAxisIndex()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/event/JoyAxisEvent;->axis:Lcom/jme3/input/JoystickAxis;

    invoke-interface {v0}, Lcom/jme3/input/JoystickAxis;->getAxisId()I

    move-result v0

    return v0
.end method

.method public getJoyIndex()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/event/JoyAxisEvent;->axis:Lcom/jme3/input/JoystickAxis;

    invoke-interface {v0}, Lcom/jme3/input/JoystickAxis;->getJoystick()Lcom/jme3/input/Joystick;

    move-result-object v0

    invoke-interface {v0}, Lcom/jme3/input/Joystick;->getJoyId()I

    move-result v0

    return v0
.end method

.method public getRawValue()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/event/JoyAxisEvent;->rawValue:F

    return v0
.end method

.method public getValue()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/event/JoyAxisEvent;->value:F

    return v0
.end method
