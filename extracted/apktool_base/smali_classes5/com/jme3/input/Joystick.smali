.class public interface abstract Lcom/jme3/input/Joystick;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract assignAxis(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract assignButton(Ljava/lang/String;I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAxes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/input/JoystickAxis;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAxis(Ljava/lang/String;)Lcom/jme3/input/JoystickAxis;
.end method

.method public abstract getAxisCount()I
.end method

.method public abstract getButton(Ljava/lang/String;)Lcom/jme3/input/JoystickButton;
.end method

.method public abstract getButtonCount()I
.end method

.method public abstract getButtons()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/input/JoystickButton;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getJoyId()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPovXAxis()Lcom/jme3/input/JoystickAxis;
.end method

.method public abstract getPovYAxis()Lcom/jme3/input/JoystickAxis;
.end method

.method public abstract getXAxis()Lcom/jme3/input/JoystickAxis;
.end method

.method public abstract getXAxisIndex()I
.end method

.method public abstract getYAxis()Lcom/jme3/input/JoystickAxis;
.end method

.method public abstract getYAxisIndex()I
.end method

.method public abstract rumble(F)V
.end method
