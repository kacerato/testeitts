.class public Lcom/jme3/input/FlyByCamera;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/controls/AnalogListener;
.implements Lcom/jme3/input/controls/ActionListener;


# static fields
.field private static final mappings:[Ljava/lang/String;


# instance fields
.field protected cam:Lcom/jme3/renderer/Camera;

.field protected canRotate:Z

.field protected dragToRotate:Z

.field protected enabled:Z

.field protected initialUpVec:Lcom/jme3/math/Vector3f;

.field protected inputManager:Lcom/jme3/input/InputManager;

.field protected invertY:Z

.field protected motionAllowed:Lcom/jme3/collision/MotionAllowedListener;

.field protected moveSpeed:F

.field protected rotationSpeed:F

.field private final tempDir:Lcom/jme3/math/Vector3f;

.field private final tempLeft:Lcom/jme3/math/Vector3f;

.field private final tempMat:Lcom/jme3/math/Matrix3f;

.field private final tempPos:Lcom/jme3/math/Vector3f;

.field private final tempQuat:Lcom/jme3/math/Quaternion;

.field private final tempUp:Lcom/jme3/math/Vector3f;

.field private final tempVel:Lcom/jme3/math/Vector3f;

.field protected zoomSpeed:F


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v12, "FLYCAM_Lower"

    const-string v13, "FLYCAM_InvertY"

    const-string v0, "FLYCAM_Left"

    const-string v1, "FLYCAM_Right"

    const-string v2, "FLYCAM_Up"

    const-string v3, "FLYCAM_Down"

    const-string v4, "FLYCAM_StrafeLeft"

    const-string v5, "FLYCAM_StrafeRight"

    const-string v6, "FLYCAM_Forward"

    const-string v7, "FLYCAM_Backward"

    const-string v8, "FLYCAM_ZoomIn"

    const-string v9, "FLYCAM_ZoomOut"

    const-string v10, "FLYCAM_RotateDrag"

    const-string v11, "FLYCAM_Rise"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jme3/input/FlyByCamera;->mappings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/renderer/Camera;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/FlyByCamera;->initialUpVec:Lcom/jme3/math/Vector3f;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jme3/input/FlyByCamera;->rotationSpeed:F

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/jme3/input/FlyByCamera;->moveSpeed:F

    iput v0, p0, Lcom/jme3/input/FlyByCamera;->zoomSpeed:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/input/FlyByCamera;->motionAllowed:Lcom/jme3/collision/MotionAllowedListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/input/FlyByCamera;->enabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/input/FlyByCamera;->dragToRotate:Z

    iput-boolean v0, p0, Lcom/jme3/input/FlyByCamera;->canRotate:Z

    iput-boolean v0, p0, Lcom/jme3/input/FlyByCamera;->invertY:Z

    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/FlyByCamera;->tempMat:Lcom/jme3/math/Matrix3f;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/FlyByCamera;->tempQuat:Lcom/jme3/math/Quaternion;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/FlyByCamera;->tempUp:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/FlyByCamera;->tempLeft:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/FlyByCamera;->tempDir:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/FlyByCamera;->tempVel:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/FlyByCamera;->tempPos:Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->initialUpVec:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/Camera;->getUp(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method


# virtual methods
.method public getMoveSpeed()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/FlyByCamera;->moveSpeed:F

    return v0
.end method

.method public getRotationSpeed()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/FlyByCamera;->rotationSpeed:F

    return v0
.end method

.method public getZoomSpeed()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/FlyByCamera;->zoomSpeed:F

    return v0
.end method

.method public isDragToRotate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/FlyByCamera;->dragToRotate:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/FlyByCamera;->enabled:Z

    return v0
.end method

.method public mapJoystick(Lcom/jme3/input/Joystick;)V
    .locals 11

    const-string v0, "rz"

    invoke-interface {p1, v0}, Lcom/jme3/input/Joystick;->getAxis(Ljava/lang/String;)Lcom/jme3/input/JoystickAxis;

    move-result-object v1

    const-string v2, "FLYCAM_Left"

    const-string v3, "FLYCAM_Right"

    const-string v4, "FLYCAM_Up"

    const-string v5, "FLYCAM_Down"

    const-string v6, "FLYCAM_Forward"

    const-string v7, "FLYCAM_Backward"

    const-string v8, "FLYCAM_StrafeLeft"

    const-string v9, "FLYCAM_StrafeRight"

    if-eqz v1, :cond_0

    const-string v1, "z"

    invoke-interface {p1, v1}, Lcom/jme3/input/Joystick;->getAxis(Ljava/lang/String;)Lcom/jme3/input/JoystickAxis;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {p1}, Lcom/jme3/input/Joystick;->getXAxis()Lcom/jme3/input/JoystickAxis;

    move-result-object v10

    invoke-interface {v10, v9, v8}, Lcom/jme3/input/JoystickAxis;->assignAxis(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/jme3/input/Joystick;->getYAxis()Lcom/jme3/input/JoystickAxis;

    move-result-object v8

    invoke-interface {v8, v7, v6}, Lcom/jme3/input/JoystickAxis;->assignAxis(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/jme3/input/Joystick;->getAxis(Ljava/lang/String;)Lcom/jme3/input/JoystickAxis;

    move-result-object v0

    invoke-interface {v0, v5, v4}, Lcom/jme3/input/JoystickAxis;->assignAxis(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/jme3/input/Joystick;->getAxis(Ljava/lang/String;)Lcom/jme3/input/JoystickAxis;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Lcom/jme3/input/JoystickAxis;->assignAxis(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/jme3/input/Joystick;->getPovYAxis()Lcom/jme3/input/JoystickAxis;

    move-result-object v0

    const-string v1, "FLYCAM_Rise"

    const-string v2, "FLYCAM_Lower"

    invoke-interface {v0, v1, v2}, Lcom/jme3/input/JoystickAxis;->assignAxis(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Button 8"

    invoke-interface {p1, v0}, Lcom/jme3/input/Joystick;->getButton(Ljava/lang/String;)Lcom/jme3/input/JoystickButton;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Lcom/jme3/input/Joystick;->getButton(Ljava/lang/String;)Lcom/jme3/input/JoystickButton;

    move-result-object p1

    const-string v0, "FLYCAM_InvertY"

    invoke-interface {p1, v0}, Lcom/jme3/input/JoystickButton;->assignButton(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/jme3/input/Joystick;->getPovXAxis()Lcom/jme3/input/JoystickAxis;

    move-result-object v0

    invoke-interface {v0, v9, v8}, Lcom/jme3/input/JoystickAxis;->assignAxis(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/jme3/input/Joystick;->getPovYAxis()Lcom/jme3/input/JoystickAxis;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lcom/jme3/input/JoystickAxis;->assignAxis(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/jme3/input/Joystick;->getXAxis()Lcom/jme3/input/JoystickAxis;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Lcom/jme3/input/JoystickAxis;->assignAxis(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/jme3/input/Joystick;->getYAxis()Lcom/jme3/input/JoystickAxis;

    move-result-object p1

    invoke-interface {p1, v5, v4}, Lcom/jme3/input/JoystickAxis;->assignAxis(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public moveCamera(FZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->tempVel:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v0}, Lcom/jme3/renderer/Camera;->getLeft(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->tempVel:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v0}, Lcom/jme3/renderer/Camera;->getDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_0
    iget-object p2, p0, Lcom/jme3/input/FlyByCamera;->tempVel:Lcom/jme3/math/Vector3f;

    iget v0, p0, Lcom/jme3/input/FlyByCamera;->moveSpeed:F

    mul-float/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->tempPos:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {p2}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->motionAllowed:Lcom/jme3/collision/MotionAllowedListener;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/jme3/input/FlyByCamera;->tempPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p2

    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->tempVel:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/jme3/collision/MotionAllowedListener;->checkMotionAllowed(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->tempPos:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/input/FlyByCamera;->tempVel:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_1
    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    iget-object p2, p0, Lcom/jme3/input/FlyByCamera;->tempPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/renderer/Camera;->setLocation(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public onAction(Ljava/lang/String;ZF)V
    .locals 0

    iget-boolean p3, p0, Lcom/jme3/input/FlyByCamera;->enabled:Z

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string p3, "FLYCAM_RotateDrag"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcom/jme3/input/FlyByCamera;->dragToRotate:Z

    if-eqz p3, :cond_1

    iput-boolean p2, p0, Lcom/jme3/input/FlyByCamera;->canRotate:Z

    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->inputManager:Lcom/jme3/input/InputManager;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/jme3/input/InputManager;->setCursorVisible(Z)V

    goto :goto_0

    :cond_1
    const-string p3, "FLYCAM_InvertY"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    iget-boolean p1, p0, Lcom/jme3/input/FlyByCamera;->invertY:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/input/FlyByCamera;->invertY:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onAnalog(Ljava/lang/String;FF)V
    .locals 2

    iget-boolean p3, p0, Lcom/jme3/input/FlyByCamera;->enabled:Z

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string p3, "FLYCAM_Left"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->initialUpVec:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p2, p1}, Lcom/jme3/input/FlyByCamera;->rotateCamera(FLcom/jme3/math/Vector3f;)V

    goto/16 :goto_2

    :cond_1
    const-string p3, "FLYCAM_Right"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    neg-float p1, p2

    iget-object p2, p0, Lcom/jme3/input/FlyByCamera;->initialUpVec:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/input/FlyByCamera;->rotateCamera(FLcom/jme3/math/Vector3f;)V

    goto/16 :goto_2

    :cond_2
    const-string p3, "FLYCAM_Up"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p3, :cond_4

    neg-float p1, p2

    iget-boolean p2, p0, Lcom/jme3/input/FlyByCamera;->invertY:Z

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    int-to-float p2, v0

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    iget-object p3, p0, Lcom/jme3/input/FlyByCamera;->tempLeft:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, p3}, Lcom/jme3/renderer/Camera;->getLeft(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/jme3/input/FlyByCamera;->rotateCamera(FLcom/jme3/math/Vector3f;)V

    goto/16 :goto_2

    :cond_4
    const-string p3, "FLYCAM_Down"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    iget-boolean p1, p0, Lcom/jme3/input/FlyByCamera;->invertY:Z

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    int-to-float p1, v0

    mul-float/2addr p2, p1

    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    iget-object p3, p0, Lcom/jme3/input/FlyByCamera;->tempLeft:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p3}, Lcom/jme3/renderer/Camera;->getLeft(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/jme3/input/FlyByCamera;->rotateCamera(FLcom/jme3/math/Vector3f;)V

    goto :goto_2

    :cond_6
    const-string p3, "FLYCAM_Forward"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_7

    invoke-virtual {p0, p2, v0}, Lcom/jme3/input/FlyByCamera;->moveCamera(FZ)V

    goto :goto_2

    :cond_7
    const-string p3, "FLYCAM_Backward"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    neg-float p1, p2

    invoke-virtual {p0, p1, v0}, Lcom/jme3/input/FlyByCamera;->moveCamera(FZ)V

    goto :goto_2

    :cond_8
    const-string p3, "FLYCAM_StrafeLeft"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-virtual {p0, p2, v1}, Lcom/jme3/input/FlyByCamera;->moveCamera(FZ)V

    goto :goto_2

    :cond_9
    const-string p3, "FLYCAM_StrafeRight"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    neg-float p1, p2

    invoke-virtual {p0, p1, v1}, Lcom/jme3/input/FlyByCamera;->moveCamera(FZ)V

    goto :goto_2

    :cond_a
    const-string p3, "FLYCAM_Rise"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-virtual {p0, p2}, Lcom/jme3/input/FlyByCamera;->riseCamera(F)V

    goto :goto_2

    :cond_b
    const-string p3, "FLYCAM_Lower"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    neg-float p1, p2

    invoke-virtual {p0, p1}, Lcom/jme3/input/FlyByCamera;->riseCamera(F)V

    goto :goto_2

    :cond_c
    const-string p3, "FLYCAM_ZoomIn"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-virtual {p0, p2}, Lcom/jme3/input/FlyByCamera;->zoomCamera(F)V

    goto :goto_2

    :cond_d
    const-string p3, "FLYCAM_ZoomOut"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    neg-float p1, p2

    invoke-virtual {p0, p1}, Lcom/jme3/input/FlyByCamera;->zoomCamera(F)V

    :cond_e
    :goto_2
    return-void
.end method

.method public registerWithInput(Lcom/jme3/input/InputManager;)V
    .locals 6

    iput-object p1, p0, Lcom/jme3/input/FlyByCamera;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v0, Lcom/jme3/input/controls/MouseAxisTrigger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-instance v3, Lcom/jme3/input/controls/KeyTrigger;

    const/16 v4, 0xcb

    invoke-direct {v3, v4}, Lcom/jme3/input/controls/KeyTrigger;-><init>(I)V

    const/4 v4, 0x2

    new-array v5, v4, [Lcom/jme3/input/controls/Trigger;

    aput-object v0, v5, v1

    aput-object v3, v5, v2

    const-string v0, "FLYCAM_Left"

    invoke-virtual {p1, v0, v5}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    new-instance v0, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v0, v1, v1}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-instance v3, Lcom/jme3/input/controls/KeyTrigger;

    const/16 v5, 0xcd

    invoke-direct {v3, v5}, Lcom/jme3/input/controls/KeyTrigger;-><init>(I)V

    new-array v5, v4, [Lcom/jme3/input/controls/Trigger;

    aput-object v0, v5, v1

    aput-object v3, v5, v2

    const-string v0, "FLYCAM_Right"

    invoke-virtual {p1, v0, v5}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    new-instance v0, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v0, v2, v1}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-instance v3, Lcom/jme3/input/controls/KeyTrigger;

    const/16 v5, 0xc8

    invoke-direct {v3, v5}, Lcom/jme3/input/controls/KeyTrigger;-><init>(I)V

    new-array v5, v4, [Lcom/jme3/input/controls/Trigger;

    aput-object v0, v5, v1

    aput-object v3, v5, v2

    const-string v0, "FLYCAM_Up"

    invoke-virtual {p1, v0, v5}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    new-instance v0, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v0, v2, v2}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-instance v3, Lcom/jme3/input/controls/KeyTrigger;

    const/16 v5, 0xd0

    invoke-direct {v3, v5}, Lcom/jme3/input/controls/KeyTrigger;-><init>(I)V

    new-array v5, v4, [Lcom/jme3/input/controls/Trigger;

    aput-object v0, v5, v1

    aput-object v3, v5, v2

    const-string v0, "FLYCAM_Down"

    invoke-virtual {p1, v0, v5}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    new-instance v0, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v0, v4, v1}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v3, v2, [Lcom/jme3/input/controls/Trigger;

    aput-object v0, v3, v1

    const-string v0, "FLYCAM_ZoomIn"

    invoke-virtual {p1, v0, v3}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    new-instance v0, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v0, v4, v2}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v3, v2, [Lcom/jme3/input/controls/Trigger;

    aput-object v0, v3, v1

    const-string v0, "FLYCAM_ZoomOut"

    invoke-virtual {p1, v0, v3}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    new-instance v0, Lcom/jme3/input/controls/MouseButtonTrigger;

    invoke-direct {v0, v1}, Lcom/jme3/input/controls/MouseButtonTrigger;-><init>(I)V

    new-array v3, v2, [Lcom/jme3/input/controls/Trigger;

    aput-object v0, v3, v1

    const-string v0, "FLYCAM_RotateDrag"

    invoke-virtual {p1, v0, v3}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    new-instance v0, Lcom/jme3/input/controls/KeyTrigger;

    const/16 v3, 0x1e

    invoke-direct {v0, v3}, Lcom/jme3/input/controls/KeyTrigger;-><init>(I)V

    new-array v3, v2, [Lcom/jme3/input/controls/Trigger;

    aput-object v0, v3, v1

    const-string v0, "FLYCAM_StrafeLeft"

    invoke-virtual {p1, v0, v3}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    new-instance v0, Lcom/jme3/input/controls/KeyTrigger;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Lcom/jme3/input/controls/KeyTrigger;-><init>(I)V

    new-array v3, v2, [Lcom/jme3/input/controls/Trigger;

    aput-object v0, v3, v1

    const-string v0, "FLYCAM_StrafeRight"

    invoke-virtual {p1, v0, v3}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    new-instance v0, Lcom/jme3/input/controls/KeyTrigger;

    const/16 v3, 0x11

    invoke-direct {v0, v3}, Lcom/jme3/input/controls/KeyTrigger;-><init>(I)V

    new-array v3, v2, [Lcom/jme3/input/controls/Trigger;

    aput-object v0, v3, v1

    const-string v0, "FLYCAM_Forward"

    invoke-virtual {p1, v0, v3}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    new-instance v0, Lcom/jme3/input/controls/KeyTrigger;

    const/16 v3, 0x1f

    invoke-direct {v0, v3}, Lcom/jme3/input/controls/KeyTrigger;-><init>(I)V

    new-array v3, v2, [Lcom/jme3/input/controls/Trigger;

    aput-object v0, v3, v1

    const-string v0, "FLYCAM_Backward"

    invoke-virtual {p1, v0, v3}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    new-instance v0, Lcom/jme3/input/controls/KeyTrigger;

    const/16 v3, 0x10

    invoke-direct {v0, v3}, Lcom/jme3/input/controls/KeyTrigger;-><init>(I)V

    new-array v3, v2, [Lcom/jme3/input/controls/Trigger;

    aput-object v0, v3, v1

    const-string v0, "FLYCAM_Rise"

    invoke-virtual {p1, v0, v3}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    new-instance v0, Lcom/jme3/input/controls/KeyTrigger;

    const/16 v3, 0x2c

    invoke-direct {v0, v3}, Lcom/jme3/input/controls/KeyTrigger;-><init>(I)V

    new-array v3, v2, [Lcom/jme3/input/controls/Trigger;

    aput-object v0, v3, v1

    const-string v0, "FLYCAM_Lower"

    invoke-virtual {p1, v0, v3}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    sget-object v0, Lcom/jme3/input/FlyByCamera;->mappings:[Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/jme3/input/FlyByCamera;->dragToRotate:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/input/FlyByCamera;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Lcom/jme3/input/InputManager;->setCursorVisible(Z)V

    invoke-virtual {p1}, Lcom/jme3/input/InputManager;->getJoysticks()[Lcom/jme3/input/Joystick;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/jme3/input/FlyByCamera;->mapJoystick(Lcom/jme3/input/Joystick;)V

    add-int/2addr v1, v2

    goto :goto_2

    :cond_2
    return-void
.end method

.method public riseCamera(F)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->tempVel:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/input/FlyByCamera;->initialUpVec:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v1, p0, Lcom/jme3/input/FlyByCamera;->moveSpeed:F

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->tempPos:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->motionAllowed:Lcom/jme3/collision/MotionAllowedListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->tempPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/input/FlyByCamera;->tempVel:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/jme3/collision/MotionAllowedListener;->checkMotionAllowed(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->tempPos:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->tempVel:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_0
    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->tempPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/Camera;->setLocation(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public rotateCamera(FLcom/jme3/math/Vector3f;)V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/input/FlyByCamera;->dragToRotate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jme3/input/FlyByCamera;->canRotate:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->tempMat:Lcom/jme3/math/Matrix3f;

    iget v1, p0, Lcom/jme3/input/FlyByCamera;->rotationSpeed:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lcom/jme3/math/Matrix3f;->fromAngleNormalAxis(FLcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    iget-object p2, p0, Lcom/jme3/input/FlyByCamera;->tempUp:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/renderer/Camera;->getUp(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    iget-object p2, p0, Lcom/jme3/input/FlyByCamera;->tempLeft:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/renderer/Camera;->getLeft(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    iget-object p2, p0, Lcom/jme3/input/FlyByCamera;->tempDir:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/renderer/Camera;->getDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->tempMat:Lcom/jme3/math/Matrix3f;

    iget-object p2, p0, Lcom/jme3/input/FlyByCamera;->tempUp:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2, p2}, Lcom/jme3/math/Matrix3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->tempMat:Lcom/jme3/math/Matrix3f;

    iget-object p2, p0, Lcom/jme3/input/FlyByCamera;->tempLeft:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2, p2}, Lcom/jme3/math/Matrix3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->tempMat:Lcom/jme3/math/Matrix3f;

    iget-object p2, p0, Lcom/jme3/input/FlyByCamera;->tempDir:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2, p2}, Lcom/jme3/math/Matrix3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->tempQuat:Lcom/jme3/math/Quaternion;

    iget-object p2, p0, Lcom/jme3/input/FlyByCamera;->tempLeft:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->tempUp:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/input/FlyByCamera;->tempDir:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2, v0, v1}, Lcom/jme3/math/Quaternion;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->tempQuat:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->normalizeLocal()Lcom/jme3/math/Quaternion;

    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    iget-object p2, p0, Lcom/jme3/input/FlyByCamera;->tempQuat:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, p2}, Lcom/jme3/renderer/Camera;->setAxes(Lcom/jme3/math/Quaternion;)V

    return-void
.end method

.method public setDragToRotate(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/jme3/input/FlyByCamera;->dragToRotate:Z

    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->inputManager:Lcom/jme3/input/InputManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/jme3/input/InputManager;->setCursorVisible(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/input/FlyByCamera;->enabled:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->inputManager:Lcom/jme3/input/InputManager;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/jme3/input/FlyByCamera;->dragToRotate:Z

    if-eqz v1, :cond_0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/jme3/input/FlyByCamera;->canRotate:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jme3/input/InputManager;->setCursorVisible(Z)V

    :cond_1
    iput-boolean p1, p0, Lcom/jme3/input/FlyByCamera;->enabled:Z

    return-void
.end method

.method public setMotionAllowedListener(Lcom/jme3/collision/MotionAllowedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/input/FlyByCamera;->motionAllowed:Lcom/jme3/collision/MotionAllowedListener;

    return-void
.end method

.method public setMoveSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/input/FlyByCamera;->moveSpeed:F

    return-void
.end method

.method public setRotationSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/input/FlyByCamera;->rotationSpeed:F

    return-void
.end method

.method public setUpVector(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->initialUpVec:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setZoomSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/input/FlyByCamera;->zoomSpeed:F

    return-void
.end method

.method public unregisterInput()V
    .locals 5

    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->inputManager:Lcom/jme3/input/InputManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/jme3/input/FlyByCamera;->mappings:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/jme3/input/FlyByCamera;->inputManager:Lcom/jme3/input/InputManager;

    invoke-virtual {v4, v3}, Lcom/jme3/input/InputManager;->hasMapping(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jme3/input/FlyByCamera;->inputManager:Lcom/jme3/input/InputManager;

    invoke-virtual {v4, v3}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->inputManager:Lcom/jme3/input/InputManager;

    invoke-virtual {v0, p0}, Lcom/jme3/input/InputManager;->removeListener(Lcom/jme3/input/controls/InputListener;)V

    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->inputManager:Lcom/jme3/input/InputManager;

    iget-boolean v1, p0, Lcom/jme3/input/FlyByCamera;->dragToRotate:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jme3/input/InputManager;->setCursorVisible(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/input/FlyByCamera;->inputManager:Lcom/jme3/input/InputManager;

    return-void
.end method

.method public zoomCamera(F)V
    .locals 8

    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->isParallelProjection()Z

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    if-eqz v0, :cond_0

    mul-float/2addr p1, v1

    iget v0, p0, Lcom/jme3/input/FlyByCamera;->zoomSpeed:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getFrustumLeft()F

    move-result v0

    mul-float v4, p1, v0

    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getFrustumRight()F

    move-result v0

    mul-float v5, p1, v0

    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getFrustumTop()F

    move-result v0

    mul-float v6, p1, v0

    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getFrustumBottom()F

    move-result v0

    mul-float v7, p1, v0

    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getFrustumNear()F

    move-result v2

    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getFrustumFar()F

    move-result v3

    iget-object v1, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual/range {v1 .. v7}, Lcom/jme3/renderer/Camera;->setFrustum(FFFFFF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getFov()F

    move-result v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v2

    iget v2, p0, Lcom/jme3/input/FlyByCamera;->zoomSpeed:F

    mul-float/2addr p1, v2

    add-float/2addr v0, p1

    cmpl-float p1, v0, v1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/jme3/input/FlyByCamera;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/Camera;->setFov(F)V

    :cond_1
    :goto_0
    return-void
.end method
