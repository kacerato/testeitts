.class public Lcom/jme3/app/ChaseCameraAppState;
.super Lcom/jme3/app/state/AbstractAppState;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/controls/ActionListener;
.implements Lcom/jme3/input/controls/AnalogListener;


# instance fields
.field protected camNode:Lcom/jme3/scene/CameraNode;

.field protected canRotate:Z

.field protected distance:F

.field protected dragToRotate:Z

.field protected hideCursorOnRotate:Z

.field protected horizontalRotation:F

.field protected inputManager:Lcom/jme3/input/InputManager;

.field protected invertXaxis:Z

.field protected invertYaxis:Z

.field protected leftVector:Lcom/jme3/math/Vector3f;

.field protected maxDistance:F

.field protected maxVerticalRotation:F

.field protected minDistance:F

.field protected minVerticalRotation:F

.field protected rotationSpeed:F

.field protected spatial:Lcom/jme3/scene/Spatial;

.field protected target:Lcom/jme3/scene/Node;

.field protected toggleRotateTrigger:[Lcom/jme3/input/controls/Trigger;

.field protected upVector:Lcom/jme3/math/Vector3f;

.field protected verticalRotation:F

.field protected zoomInTrigger:[Lcom/jme3/input/controls/Trigger;

.field protected zoomOutTrigger:[Lcom/jme3/input/controls/Trigger;

.field protected zoomSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/jme3/app/state/AbstractAppState;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/app/ChaseCameraAppState;->invertYaxis:Z

    iput-boolean v0, p0, Lcom/jme3/app/ChaseCameraAppState;->invertXaxis:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jme3/app/ChaseCameraAppState;->hideCursorOnRotate:Z

    iput-boolean v1, p0, Lcom/jme3/app/ChaseCameraAppState;->dragToRotate:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/jme3/app/ChaseCameraAppState;->rotationSpeed:F

    const/high16 v3, 0x40000000    # 2.0f

    iput v3, p0, Lcom/jme3/app/ChaseCameraAppState;->zoomSpeed:F

    iput v2, p0, Lcom/jme3/app/ChaseCameraAppState;->minDistance:F

    const/high16 v2, 0x42200000    # 40.0f

    iput v2, p0, Lcom/jme3/app/ChaseCameraAppState;->maxDistance:F

    const/high16 v2, 0x41a00000    # 20.0f

    iput v2, p0, Lcom/jme3/app/ChaseCameraAppState;->distance:F

    const v2, 0x3fb33333    # 1.4f

    iput v2, p0, Lcom/jme3/app/ChaseCameraAppState;->maxVerticalRotation:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/jme3/app/ChaseCameraAppState;->verticalRotation:F

    iput v2, p0, Lcom/jme3/app/ChaseCameraAppState;->minVerticalRotation:F

    iput v2, p0, Lcom/jme3/app/ChaseCameraAppState;->horizontalRotation:F

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v2, p0, Lcom/jme3/app/ChaseCameraAppState;->upVector:Lcom/jme3/math/Vector3f;

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v2, p0, Lcom/jme3/app/ChaseCameraAppState;->leftVector:Lcom/jme3/math/Vector3f;

    new-instance v2, Lcom/jme3/input/controls/MouseAxisTrigger;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v4, v1, [Lcom/jme3/input/controls/Trigger;

    aput-object v2, v4, v0

    iput-object v4, p0, Lcom/jme3/app/ChaseCameraAppState;->zoomOutTrigger:[Lcom/jme3/input/controls/Trigger;

    new-instance v2, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v2, v3, v0}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v4, v1, [Lcom/jme3/input/controls/Trigger;

    aput-object v2, v4, v0

    iput-object v4, p0, Lcom/jme3/app/ChaseCameraAppState;->zoomInTrigger:[Lcom/jme3/input/controls/Trigger;

    new-instance v2, Lcom/jme3/input/controls/MouseButtonTrigger;

    invoke-direct {v2, v0}, Lcom/jme3/input/controls/MouseButtonTrigger;-><init>(I)V

    new-instance v4, Lcom/jme3/input/controls/MouseButtonTrigger;

    invoke-direct {v4, v1}, Lcom/jme3/input/controls/MouseButtonTrigger;-><init>(I)V

    new-array v3, v3, [Lcom/jme3/input/controls/Trigger;

    aput-object v2, v3, v0

    aput-object v4, v3, v1

    iput-object v3, p0, Lcom/jme3/app/ChaseCameraAppState;->toggleRotateTrigger:[Lcom/jme3/input/controls/Trigger;

    new-instance v0, Lcom/jme3/scene/CameraNode;

    new-instance v1, Lcom/jme3/scene/control/CameraControl;

    invoke-direct {v1}, Lcom/jme3/scene/control/CameraControl;-><init>()V

    const-string v2, "ChaseCameraNode"

    invoke-direct {v0, v2, v1}, Lcom/jme3/scene/CameraNode;-><init>(Ljava/lang/String;Lcom/jme3/scene/control/CameraControl;)V

    iput-object v0, p0, Lcom/jme3/app/ChaseCameraAppState;->camNode:Lcom/jme3/scene/CameraNode;

    return-void
.end method

.method private initHorizontalAxisInput()V
    .locals 7

    iget-boolean v0, p0, Lcom/jme3/app/ChaseCameraAppState;->invertXaxis:Z

    const-string v1, "ChaseCamMoveRight"

    const/4 v2, 0x1

    const-string v3, "ChaseCamMoveLeft"

    const/4 v4, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v5, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v5, v4, v2}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v6, v2, [Lcom/jme3/input/controls/Trigger;

    aput-object v5, v6, v4

    invoke-virtual {v0, v3, v6}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object v0, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v3, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v3, v4, v4}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v2, v2, [Lcom/jme3/input/controls/Trigger;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v5, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v5, v4, v4}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v6, v2, [Lcom/jme3/input/controls/Trigger;

    aput-object v5, v6, v4

    invoke-virtual {v0, v3, v6}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object v0, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v3, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v3, v4, v2}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v2, v2, [Lcom/jme3/input/controls/Trigger;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    :goto_0
    return-void
.end method

.method private initToggleRotateInput()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    const-string v1, "ChaseCamToggleRotate"

    iget-object v2, p0, Lcom/jme3/app/ChaseCameraAppState;->toggleRotateTrigger:[Lcom/jme3/input/controls/Trigger;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    return-void
.end method

.method private initVerticalAxisInputs()V
    .locals 7

    iget-boolean v0, p0, Lcom/jme3/app/ChaseCameraAppState;->invertYaxis:Z

    const/4 v1, 0x0

    const-string v2, "ChaseCamUp"

    const-string v3, "ChaseCamDown"

    const/4 v4, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v5, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v5, v4, v4}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v6, v4, [Lcom/jme3/input/controls/Trigger;

    aput-object v5, v6, v1

    invoke-virtual {v0, v3, v6}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object v0, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v3, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v3, v4, v1}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v4, v4, [Lcom/jme3/input/controls/Trigger;

    aput-object v3, v4, v1

    invoke-virtual {v0, v2, v4}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v5, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v5, v4, v1}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v6, v4, [Lcom/jme3/input/controls/Trigger;

    aput-object v5, v6, v1

    invoke-virtual {v0, v3, v6}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object v0, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v3, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v3, v4, v4}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v4, v4, [Lcom/jme3/input/controls/Trigger;

    aput-object v3, v4, v1

    invoke-virtual {v0, v2, v4}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    :goto_0
    return-void
.end method

.method private initZoomInput()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    const-string v1, "ChaseCamZoomIn"

    iget-object v2, p0, Lcom/jme3/app/ChaseCameraAppState;->zoomInTrigger:[Lcom/jme3/input/controls/Trigger;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object v0, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    const-string v1, "ChaseCamZoomOut"

    iget-object v2, p0, Lcom/jme3/app/ChaseCameraAppState;->zoomOutTrigger:[Lcom/jme3/input/controls/Trigger;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    return-void
.end method


# virtual methods
.method public getMaxDistance()F
    .locals 1

    iget v0, p0, Lcom/jme3/app/ChaseCameraAppState;->maxDistance:F

    return v0
.end method

.method public getMaxVerticalRotation()F
    .locals 1

    iget v0, p0, Lcom/jme3/app/ChaseCameraAppState;->maxVerticalRotation:F

    return v0
.end method

.method public getMinDistance()F
    .locals 1

    iget v0, p0, Lcom/jme3/app/ChaseCameraAppState;->minDistance:F

    return v0
.end method

.method public getMinVerticalRotation()F
    .locals 1

    iget v0, p0, Lcom/jme3/app/ChaseCameraAppState;->minVerticalRotation:F

    return v0
.end method

.method public getRotationSpeed()F
    .locals 1

    iget v0, p0, Lcom/jme3/app/ChaseCameraAppState;->rotationSpeed:F

    return v0
.end method

.method public getZoomSpeed()F
    .locals 1

    iget v0, p0, Lcom/jme3/app/ChaseCameraAppState;->zoomSpeed:F

    return v0
.end method

.method public initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/jme3/app/state/AbstractAppState;->initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V

    invoke-interface {p2}, Lcom/jme3/app/Application;->getInputManager()Lcom/jme3/input/InputManager;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    new-instance p1, Lcom/jme3/scene/Node;

    const-string v0, "ChaseCamTarget"

    invoke-direct {p1, v0}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->target:Lcom/jme3/scene/Node;

    iget-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->camNode:Lcom/jme3/scene/CameraNode;

    invoke-interface {p2}, Lcom/jme3/app/Application;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/scene/CameraNode;->setCamera(Lcom/jme3/renderer/Camera;)V

    iget-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->camNode:Lcom/jme3/scene/CameraNode;

    sget-object v0, Lcom/jme3/scene/control/CameraControl$ControlDirection;->SpatialToCamera:Lcom/jme3/scene/control/CameraControl$ControlDirection;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/CameraNode;->setControlDir(Lcom/jme3/scene/control/CameraControl$ControlDirection;)V

    iget-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->target:Lcom/jme3/scene/Node;

    iget-object v0, p0, Lcom/jme3/app/ChaseCameraAppState;->camNode:Lcom/jme3/scene/CameraNode;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->camNode:Lcom/jme3/scene/CameraNode;

    const/4 v0, 0x0

    iget v1, p0, Lcom/jme3/app/ChaseCameraAppState;->distance:F

    invoke-virtual {p1, v0, v0, v1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    invoke-interface {p2}, Lcom/jme3/app/Application;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getUp()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->upVector:Lcom/jme3/math/Vector3f;

    invoke-interface {p2}, Lcom/jme3/app/Application;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getLeft()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->leftVector:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/app/ChaseCameraAppState;->registerWithInput()V

    invoke-virtual {p0}, Lcom/jme3/app/ChaseCameraAppState;->rotateCamera()V

    return-void
.end method

.method public isDragToRotate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/app/ChaseCameraAppState;->dragToRotate:Z

    return v0
.end method

.method public onAction(Ljava/lang/String;ZF)V
    .locals 0

    invoke-virtual {p0}, Lcom/jme3/app/state/AbstractAppState;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcom/jme3/app/ChaseCameraAppState;->dragToRotate:Z

    if-eqz p3, :cond_1

    const-string p3, "ChaseCamToggleRotate"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/jme3/app/state/AbstractAppState;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    iput-boolean p3, p0, Lcom/jme3/app/ChaseCameraAppState;->canRotate:Z

    iget-boolean p2, p0, Lcom/jme3/app/ChaseCameraAppState;->hideCursorOnRotate:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    invoke-virtual {p2, p1}, Lcom/jme3/input/InputManager;->setCursorVisible(Z)V

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/jme3/app/ChaseCameraAppState;->canRotate:Z

    iget-boolean p1, p0, Lcom/jme3/app/ChaseCameraAppState;->hideCursorOnRotate:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    invoke-virtual {p1, p3}, Lcom/jme3/input/InputManager;->setCursorVisible(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnalog(Ljava/lang/String;FF)V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/app/state/AbstractAppState;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_5

    iget-boolean p3, p0, Lcom/jme3/app/ChaseCameraAppState;->canRotate:Z

    if-eqz p3, :cond_3

    const-string p3, "ChaseCamMoveLeft"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/jme3/app/ChaseCameraAppState;->horizontalRotation:F

    iget v0, p0, Lcom/jme3/app/ChaseCameraAppState;->rotationSpeed:F

    mul-float/2addr v0, p2

    sub-float/2addr p3, v0

    iput p3, p0, Lcom/jme3/app/ChaseCameraAppState;->horizontalRotation:F

    invoke-virtual {p0}, Lcom/jme3/app/ChaseCameraAppState;->rotateCamera()V

    goto :goto_0

    :cond_0
    const-string p3, "ChaseCamMoveRight"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget p3, p0, Lcom/jme3/app/ChaseCameraAppState;->horizontalRotation:F

    iget v0, p0, Lcom/jme3/app/ChaseCameraAppState;->rotationSpeed:F

    mul-float/2addr v0, p2

    add-float/2addr p3, v0

    iput p3, p0, Lcom/jme3/app/ChaseCameraAppState;->horizontalRotation:F

    invoke-virtual {p0}, Lcom/jme3/app/ChaseCameraAppState;->rotateCamera()V

    goto :goto_0

    :cond_1
    const-string p3, "ChaseCamUp"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget p3, p0, Lcom/jme3/app/ChaseCameraAppState;->verticalRotation:F

    iget v0, p0, Lcom/jme3/app/ChaseCameraAppState;->rotationSpeed:F

    mul-float/2addr v0, p2

    add-float/2addr p3, v0

    iput p3, p0, Lcom/jme3/app/ChaseCameraAppState;->verticalRotation:F

    invoke-virtual {p0}, Lcom/jme3/app/ChaseCameraAppState;->rotateCamera()V

    goto :goto_0

    :cond_2
    const-string p3, "ChaseCamDown"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget p3, p0, Lcom/jme3/app/ChaseCameraAppState;->verticalRotation:F

    iget v0, p0, Lcom/jme3/app/ChaseCameraAppState;->rotationSpeed:F

    mul-float/2addr v0, p2

    sub-float/2addr p3, v0

    iput p3, p0, Lcom/jme3/app/ChaseCameraAppState;->verticalRotation:F

    invoke-virtual {p0}, Lcom/jme3/app/ChaseCameraAppState;->rotateCamera()V

    :cond_3
    :goto_0
    const-string p3, "ChaseCamZoomIn"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    neg-float p1, p2

    iget p2, p0, Lcom/jme3/app/ChaseCameraAppState;->zoomSpeed:F

    mul-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/jme3/app/ChaseCameraAppState;->zoomCamera(F)V

    goto :goto_1

    :cond_4
    const-string p3, "ChaseCamZoomOut"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/jme3/app/ChaseCameraAppState;->zoomSpeed:F

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/jme3/app/ChaseCameraAppState;->zoomCamera(F)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final registerWithInput()V
    .locals 7

    const-string v5, "ChaseCamZoomIn"

    const-string v6, "ChaseCamZoomOut"

    const-string v0, "ChaseCamToggleRotate"

    const-string v1, "ChaseCamDown"

    const-string v2, "ChaseCamUp"

    const-string v3, "ChaseCamMoveLeft"

    const-string v4, "ChaseCamMoveRight"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/jme3/app/ChaseCameraAppState;->initVerticalAxisInputs()V

    invoke-direct {p0}, Lcom/jme3/app/ChaseCameraAppState;->initZoomInput()V

    invoke-direct {p0}, Lcom/jme3/app/ChaseCameraAppState;->initHorizontalAxisInput()V

    invoke-direct {p0}, Lcom/jme3/app/ChaseCameraAppState;->initToggleRotateInput()V

    iget-object v1, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    invoke-virtual {v1, p0, v0}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    iget-boolean v1, p0, Lcom/jme3/app/ChaseCameraAppState;->dragToRotate:Z

    invoke-virtual {v0, v1}, Lcom/jme3/input/InputManager;->setCursorVisible(Z)V

    return-void
.end method

.method public rotateCamera()V
    .locals 5

    iget v0, p0, Lcom/jme3/app/ChaseCameraAppState;->verticalRotation:F

    iget v1, p0, Lcom/jme3/app/ChaseCameraAppState;->minVerticalRotation:F

    iget v2, p0, Lcom/jme3/app/ChaseCameraAppState;->maxVerticalRotation:F

    invoke-static {v0, v1, v2}, Lcom/jme3/math/FastMath;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/jme3/app/ChaseCameraAppState;->verticalRotation:F

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->quat2:Lcom/jme3/math/Quaternion;

    iget v3, p0, Lcom/jme3/app/ChaseCameraAppState;->verticalRotation:F

    iget-object v4, p0, Lcom/jme3/app/ChaseCameraAppState;->leftVector:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v3, v4}, Lcom/jme3/math/Quaternion;->fromAngleNormalAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    iget v3, p0, Lcom/jme3/app/ChaseCameraAppState;->horizontalRotation:F

    iget-object v4, p0, Lcom/jme3/app/ChaseCameraAppState;->upVector:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3, v4}, Lcom/jme3/math/Quaternion;->fromAngleNormalAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    invoke-virtual {v2, v1}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/app/ChaseCameraAppState;->target:Lcom/jme3/scene/Node;

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method public setDefaultDistance(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/app/ChaseCameraAppState;->distance:F

    return-void
.end method

.method public setDefaultHorizontalRotation(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/app/ChaseCameraAppState;->horizontalRotation:F

    return-void
.end method

.method public setDefaultVerticalRotation(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/app/ChaseCameraAppState;->verticalRotation:F

    return-void
.end method

.method public setDragToRotate(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/jme3/app/ChaseCameraAppState;->dragToRotate:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/jme3/app/ChaseCameraAppState;->canRotate:Z

    iget-object v0, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/jme3/input/InputManager;->setCursorVisible(Z)V

    :cond_0
    return-void
.end method

.method public setInvertHorizontalAxis(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/jme3/app/ChaseCameraAppState;->invertXaxis:Z

    iget-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    if-eqz p1, :cond_0

    const-string v0, "ChaseCamMoveLeft"

    invoke-virtual {p1, v0}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    const-string v1, "ChaseCamMoveRight"

    invoke-virtual {p1, v1}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/jme3/app/ChaseCameraAppState;->initHorizontalAxisInput()V

    iget-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setInvertVerticalAxis(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/jme3/app/ChaseCameraAppState;->invertYaxis:Z

    iget-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    if-eqz p1, :cond_0

    const-string v0, "ChaseCamDown"

    invoke-virtual {p1, v0}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    const-string v1, "ChaseCamUp"

    invoke-virtual {p1, v1}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/jme3/app/ChaseCameraAppState;->initVerticalAxisInputs()V

    iget-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMaxDistance(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/app/ChaseCameraAppState;->maxDistance:F

    iget-boolean p1, p0, Lcom/jme3/app/state/AbstractAppState;->initialized:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/jme3/app/ChaseCameraAppState;->distance:F

    invoke-virtual {p0, p1}, Lcom/jme3/app/ChaseCameraAppState;->zoomCamera(F)V

    :cond_0
    return-void
.end method

.method public setMaxVerticalRotation(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/app/ChaseCameraAppState;->maxVerticalRotation:F

    iget-boolean p1, p0, Lcom/jme3/app/state/AbstractAppState;->initialized:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/app/ChaseCameraAppState;->rotateCamera()V

    :cond_0
    return-void
.end method

.method public setMinDistance(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/app/ChaseCameraAppState;->minDistance:F

    iget-boolean p1, p0, Lcom/jme3/app/state/AbstractAppState;->initialized:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/jme3/app/ChaseCameraAppState;->distance:F

    invoke-virtual {p0, p1}, Lcom/jme3/app/ChaseCameraAppState;->zoomCamera(F)V

    :cond_0
    return-void
.end method

.method public setMinVerticalRotation(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/app/ChaseCameraAppState;->minVerticalRotation:F

    iget-boolean p1, p0, Lcom/jme3/app/state/AbstractAppState;->initialized:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/app/ChaseCameraAppState;->rotateCamera()V

    :cond_0
    return-void
.end method

.method public setRotationSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/app/ChaseCameraAppState;->rotationSpeed:F

    return-void
.end method

.method public setTarget(Lcom/jme3/scene/Spatial;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->spatial:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public varargs setToggleRotationTrigger([Lcom/jme3/input/controls/Trigger;)V
    .locals 1

    iput-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->toggleRotateTrigger:[Lcom/jme3/input/controls/Trigger;

    iget-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    if-eqz p1, :cond_0

    const-string v0, "ChaseCamToggleRotate"

    invoke-virtual {p1, v0}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/jme3/app/ChaseCameraAppState;->initToggleRotateInput()V

    iget-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs setZoomInTrigger([Lcom/jme3/input/controls/Trigger;)V
    .locals 2

    iput-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->zoomInTrigger:[Lcom/jme3/input/controls/Trigger;

    iget-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    if-eqz p1, :cond_0

    const-string v0, "ChaseCamZoomIn"

    invoke-virtual {p1, v0}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    iget-object v1, p0, Lcom/jme3/app/ChaseCameraAppState;->zoomInTrigger:[Lcom/jme3/input/controls/Trigger;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs setZoomOutTrigger([Lcom/jme3/input/controls/Trigger;)V
    .locals 2

    iput-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->zoomOutTrigger:[Lcom/jme3/input/controls/Trigger;

    iget-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    if-eqz p1, :cond_0

    const-string v0, "ChaseCamZoomOut"

    invoke-virtual {p1, v0}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    iget-object v1, p0, Lcom/jme3/app/ChaseCameraAppState;->zoomOutTrigger:[Lcom/jme3/input/controls/Trigger;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->inputManager:Lcom/jme3/input/InputManager;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setZoomSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/app/ChaseCameraAppState;->zoomSpeed:F

    return-void
.end method

.method public update(F)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/app/ChaseCameraAppState;->spatial:Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/app/ChaseCameraAppState;->target:Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/app/ChaseCameraAppState;->camNode:Lcom/jme3/scene/CameraNode;

    iget-object v1, p0, Lcom/jme3/app/ChaseCameraAppState;->target:Lcom/jme3/scene/Node;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/app/ChaseCameraAppState;->upVector:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/scene/Spatial;->lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/app/ChaseCameraAppState;->target:Lcom/jme3/scene/Node;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Node;->updateLogicalState(F)V

    iget-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->target:Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->updateGeometricState()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The spatial to follow is null, please use the setTarget method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zoomCamera(F)V
    .locals 3

    iget v0, p0, Lcom/jme3/app/ChaseCameraAppState;->distance:F

    add-float/2addr v0, p1

    iget p1, p0, Lcom/jme3/app/ChaseCameraAppState;->minDistance:F

    iget v1, p0, Lcom/jme3/app/ChaseCameraAppState;->maxDistance:F

    invoke-static {v0, p1, v1}, Lcom/jme3/math/FastMath;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lcom/jme3/app/ChaseCameraAppState;->distance:F

    iget-object p1, p0, Lcom/jme3/app/ChaseCameraAppState;->camNode:Lcom/jme3/scene/CameraNode;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    iget v2, p0, Lcom/jme3/app/ChaseCameraAppState;->distance:F

    invoke-direct {v0, v1, v1, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    return-void
.end method
