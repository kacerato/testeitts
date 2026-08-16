.class public interface abstract Lcom/jme3/input/JoystickAxis;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AXIS_XBOX_LEFT_THUMB_STICK_X:Ljava/lang/String; = "x"

.field public static final AXIS_XBOX_LEFT_THUMB_STICK_Y:Ljava/lang/String; = "y"

.field public static final AXIS_XBOX_LEFT_TRIGGER:Ljava/lang/String; = "rx"

.field public static final AXIS_XBOX_RIGHT_THUMB_STICK_X:Ljava/lang/String; = "z"

.field public static final AXIS_XBOX_RIGHT_THUMB_STICK_Y:Ljava/lang/String; = "rz"

.field public static final AXIS_XBOX_RIGHT_TRIGGER:Ljava/lang/String; = "ry"

.field public static final LEFT_TRIGGER:Ljava/lang/String; = "rx"

.field public static final POV_X:Ljava/lang/String; = "pov_x"

.field public static final POV_Y:Ljava/lang/String; = "pov_y"

.field public static final RIGHT_TRIGGER:Ljava/lang/String; = "ry"

.field public static final X_AXIS:Ljava/lang/String; = "x"

.field public static final Y_AXIS:Ljava/lang/String; = "y"

.field public static final Z_AXIS:Ljava/lang/String; = "z"

.field public static final Z_ROTATION:Ljava/lang/String; = "rz"


# virtual methods
.method public abstract assignAxis(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getAxisId()I
.end method

.method public abstract getDeadZone()F
.end method

.method public getJitterThreshold()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getJoystick()Lcom/jme3/input/Joystick;
.end method

.method public abstract getLogicalId()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isAnalog()Z
.end method

.method public abstract isRelative()Z
.end method
