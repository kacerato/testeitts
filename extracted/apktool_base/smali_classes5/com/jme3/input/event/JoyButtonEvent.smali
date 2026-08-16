.class public Lcom/jme3/input/event/JoyButtonEvent;
.super Lcom/jme3/input/event/InputEvent;
.source "SourceFile"


# instance fields
.field private final button:Lcom/jme3/input/JoystickButton;

.field private final pressed:Z


# direct methods
.method public constructor <init>(Lcom/jme3/input/JoystickButton;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/input/event/InputEvent;-><init>()V

    iput-object p1, p0, Lcom/jme3/input/event/JoyButtonEvent;->button:Lcom/jme3/input/JoystickButton;

    iput-boolean p2, p0, Lcom/jme3/input/event/JoyButtonEvent;->pressed:Z

    return-void
.end method


# virtual methods
.method public getButton()Lcom/jme3/input/JoystickButton;
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/event/JoyButtonEvent;->button:Lcom/jme3/input/JoystickButton;

    return-object v0
.end method

.method public getButtonIndex()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/event/JoyButtonEvent;->button:Lcom/jme3/input/JoystickButton;

    invoke-interface {v0}, Lcom/jme3/input/JoystickButton;->getButtonId()I

    move-result v0

    return v0
.end method

.method public getJoyIndex()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/event/JoyButtonEvent;->button:Lcom/jme3/input/JoystickButton;

    invoke-interface {v0}, Lcom/jme3/input/JoystickButton;->getJoystick()Lcom/jme3/input/Joystick;

    move-result-object v0

    invoke-interface {v0}, Lcom/jme3/input/Joystick;->getJoyId()I

    move-result v0

    return v0
.end method

.method public isPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/event/JoyButtonEvent;->pressed:Z

    return v0
.end method
