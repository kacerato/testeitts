.class public Lcom/jme3/input/ChaseCamera;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/controls/ActionListener;
.implements Lcom/jme3/input/controls/AnalogListener;
.implements Lcom/jme3/scene/control/Control;
.implements Lcom/jme3/util/clone/JmeCloneable;


# static fields
.field public static final ChaseCamDown:Ljava/lang/String; = "ChaseCamDown"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ChaseCamMoveLeft:Ljava/lang/String; = "ChaseCamMoveLeft"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ChaseCamMoveRight:Ljava/lang/String; = "ChaseCamMoveRight"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ChaseCamToggleRotate:Ljava/lang/String; = "ChaseCamToggleRotate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ChaseCamUp:Ljava/lang/String; = "ChaseCamUp"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ChaseCamZoomIn:Ljava/lang/String; = "ChaseCamZoomIn"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ChaseCamZoomOut:Ljava/lang/String; = "ChaseCamZoomOut"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected cam:Lcom/jme3/renderer/Camera;

.field protected canRotate:Z

.field protected chasing:Z

.field protected chasingSensitivity:F

.field protected distance:F

.field protected distanceLerpFactor:F

.field protected dragToRotate:Z

.field protected enabled:Z

.field protected hideCursorOnRotate:Z

.field protected initialUpVec:Lcom/jme3/math/Vector3f;

.field protected inputManager:Lcom/jme3/input/InputManager;

.field protected invertXaxis:Z

.field protected invertYaxis:Z

.field protected leftClickRotate:Z

.field protected lookAtOffset:Lcom/jme3/math/Vector3f;

.field protected maxDistance:F

.field protected maxVerticalRotation:F

.field protected minDistance:F

.field protected minVerticalRotation:F

.field protected offsetDistance:F

.field protected final pos:Lcom/jme3/math/Vector3f;

.field protected prevPos:Lcom/jme3/math/Vector3f;

.field protected previousTargetRotation:F

.field protected rightClickRotate:Z

.field protected rotating:Z

.field protected rotation:F

.field protected rotationLerpFactor:F

.field protected rotationSensitivity:F

.field protected rotationSpeed:F

.field protected smoothMotion:Z

.field protected target:Lcom/jme3/scene/Spatial;

.field protected final targetDir:Lcom/jme3/math/Vector3f;

.field protected targetDistance:F

.field protected targetLocation:Lcom/jme3/math/Vector3f;

.field protected targetMoves:Z

.field protected targetRotation:F

.field protected targetVRotation:F

.field protected temp:Lcom/jme3/math/Vector3f;

.field protected trailing:Z

.field protected trailingEnabled:Z

.field protected trailingLerpFactor:F

.field protected trailingRotationInertia:F

.field protected trailingSensitivity:F

.field protected vRotating:Z

.field protected vRotation:F

.field protected vRotationLerpFactor:F

.field protected veryCloseRotation:Z

.field protected zoomSensitivity:F

.field protected zoomin:Z

.field protected zooming:Z


# direct methods
.method public constructor <init>(Lcom/jme3/renderer/Camera;)V
    .locals 6

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/jme3/input/ChaseCamera;->target:Lcom/jme3/scene/Spatial;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/jme3/input/ChaseCamera;->minVerticalRotation:F

    const v2, 0x3fc90fdb

    .line 6
    iput v2, p0, Lcom/jme3/input/ChaseCamera;->maxVerticalRotation:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    iput v2, p0, Lcom/jme3/input/ChaseCamera;->minDistance:F

    const/high16 v3, 0x42200000    # 40.0f

    .line 8
    iput v3, p0, Lcom/jme3/input/ChaseCamera;->maxDistance:F

    const/high16 v3, 0x41a00000    # 20.0f

    .line 9
    iput v3, p0, Lcom/jme3/input/ChaseCamera;->distance:F

    .line 10
    iput v2, p0, Lcom/jme3/input/ChaseCamera;->rotationSpeed:F

    .line 11
    iput v1, p0, Lcom/jme3/input/ChaseCamera;->rotation:F

    const v2, 0x3d4ccccd    # 0.05f

    .line 12
    iput v2, p0, Lcom/jme3/input/ChaseCamera;->trailingRotationInertia:F

    const/high16 v2, 0x40000000    # 2.0f

    .line 13
    iput v2, p0, Lcom/jme3/input/ChaseCamera;->zoomSensitivity:F

    const/high16 v2, 0x40a00000    # 5.0f

    .line 14
    iput v2, p0, Lcom/jme3/input/ChaseCamera;->rotationSensitivity:F

    .line 15
    iput v2, p0, Lcom/jme3/input/ChaseCamera;->chasingSensitivity:F

    const/high16 v2, 0x3f000000    # 0.5f

    .line 16
    iput v2, p0, Lcom/jme3/input/ChaseCamera;->trailingSensitivity:F

    const v2, 0x3f060a92

    .line 17
    iput v2, p0, Lcom/jme3/input/ChaseCamera;->vRotation:F

    const/4 v4, 0x0

    .line 18
    iput-boolean v4, p0, Lcom/jme3/input/ChaseCamera;->smoothMotion:Z

    const/4 v5, 0x1

    .line 19
    iput-boolean v5, p0, Lcom/jme3/input/ChaseCamera;->trailingEnabled:Z

    .line 20
    iput v1, p0, Lcom/jme3/input/ChaseCamera;->rotationLerpFactor:F

    .line 21
    iput v1, p0, Lcom/jme3/input/ChaseCamera;->trailingLerpFactor:F

    .line 22
    iput-boolean v4, p0, Lcom/jme3/input/ChaseCamera;->rotating:Z

    .line 23
    iput-boolean v4, p0, Lcom/jme3/input/ChaseCamera;->vRotating:Z

    .line 24
    iput v1, p0, Lcom/jme3/input/ChaseCamera;->targetRotation:F

    .line 25
    iput v2, p0, Lcom/jme3/input/ChaseCamera;->targetVRotation:F

    .line 26
    iput v1, p0, Lcom/jme3/input/ChaseCamera;->vRotationLerpFactor:F

    .line 27
    iput v3, p0, Lcom/jme3/input/ChaseCamera;->targetDistance:F

    .line 28
    iput v1, p0, Lcom/jme3/input/ChaseCamera;->distanceLerpFactor:F

    .line 29
    iput-boolean v4, p0, Lcom/jme3/input/ChaseCamera;->zooming:Z

    .line 30
    iput-boolean v4, p0, Lcom/jme3/input/ChaseCamera;->trailing:Z

    .line 31
    iput-boolean v4, p0, Lcom/jme3/input/ChaseCamera;->chasing:Z

    .line 32
    iput-boolean v5, p0, Lcom/jme3/input/ChaseCamera;->veryCloseRotation:Z

    const v2, 0x3b03126f    # 0.002f

    .line 33
    iput v2, p0, Lcom/jme3/input/ChaseCamera;->offsetDistance:F

    .line 34
    iput-boolean v4, p0, Lcom/jme3/input/ChaseCamera;->targetMoves:Z

    .line 35
    iput-boolean v5, p0, Lcom/jme3/input/ChaseCamera;->enabled:Z

    .line 36
    iput-object v0, p0, Lcom/jme3/input/ChaseCamera;->cam:Lcom/jme3/renderer/Camera;

    .line 37
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/ChaseCamera;->targetDir:Lcom/jme3/math/Vector3f;

    .line 38
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/ChaseCamera;->pos:Lcom/jme3/math/Vector3f;

    .line 39
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/input/ChaseCamera;->targetLocation:Lcom/jme3/math/Vector3f;

    .line 40
    iput-boolean v5, p0, Lcom/jme3/input/ChaseCamera;->dragToRotate:Z

    .line 41
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/input/ChaseCamera;->lookAtOffset:Lcom/jme3/math/Vector3f;

    .line 42
    iput-boolean v5, p0, Lcom/jme3/input/ChaseCamera;->leftClickRotate:Z

    .line 43
    iput-boolean v5, p0, Lcom/jme3/input/ChaseCamera;->rightClickRotate:Z

    .line 44
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/input/ChaseCamera;->temp:Lcom/jme3/math/Vector3f;

    .line 45
    iput-boolean v4, p0, Lcom/jme3/input/ChaseCamera;->invertYaxis:Z

    .line 46
    iput-boolean v4, p0, Lcom/jme3/input/ChaseCamera;->invertXaxis:Z

    .line 47
    iput-boolean v5, p0, Lcom/jme3/input/ChaseCamera;->hideCursorOnRotate:Z

    .line 48
    iput-object p1, p0, Lcom/jme3/input/ChaseCamera;->cam:Lcom/jme3/renderer/Camera;

    .line 49
    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getUp()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/input/ChaseCamera;->initialUpVec:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/renderer/Camera;Lcom/jme3/input/InputManager;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/jme3/input/ChaseCamera;-><init>(Lcom/jme3/renderer/Camera;)V

    .line 51
    invoke-virtual {p0, p2}, Lcom/jme3/input/ChaseCamera;->registerWithInput(Lcom/jme3/input/InputManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/renderer/Camera;Lcom/jme3/scene/Spatial;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jme3/input/ChaseCamera;-><init>(Lcom/jme3/renderer/Camera;)V

    .line 2
    invoke-virtual {p2, p0}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/renderer/Camera;Lcom/jme3/scene/Spatial;Lcom/jme3/input/InputManager;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/jme3/input/ChaseCamera;-><init>(Lcom/jme3/renderer/Camera;Lcom/jme3/scene/Spatial;)V

    .line 53
    invoke-virtual {p0, p3}, Lcom/jme3/input/ChaseCamera;->registerWithInput(Lcom/jme3/input/InputManager;)V

    return-void
.end method


# virtual methods
.method public cleanupWithInput(Lcom/jme3/input/InputManager;)V
    .locals 1

    const-string v0, "ChaseCamToggleRotate"

    invoke-virtual {p1, v0}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    const-string v0, "ChaseCamDown"

    invoke-virtual {p1, v0}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    const-string v0, "ChaseCamUp"

    invoke-virtual {p1, v0}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    const-string v0, "ChaseCamMoveLeft"

    invoke-virtual {p1, v0}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    const-string v0, "ChaseCamMoveRight"

    invoke-virtual {p1, v0}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    const-string v0, "ChaseCamZoomIn"

    invoke-virtual {p1, v0}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    const-string v0, "ChaseCamZoomOut"

    invoke-virtual {p1, v0}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/jme3/input/InputManager;->removeListener(Lcom/jme3/input/controls/InputListener;)V

    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/input/ChaseCamera;->target:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    iput-object p1, p0, Lcom/jme3/input/ChaseCamera;->target:Lcom/jme3/scene/Spatial;

    invoke-virtual {p0}, Lcom/jme3/input/ChaseCamera;->computePosition()V

    new-instance p1, Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/input/ChaseCamera;->target:Lcom/jme3/scene/Spatial;

    invoke-virtual {p2}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    iput-object p1, p0, Lcom/jme3/input/ChaseCamera;->prevPos:Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/input/ChaseCamera;->cam:Lcom/jme3/renderer/Camera;

    iget-object p2, p0, Lcom/jme3/input/ChaseCamera;->pos:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/renderer/Camera;->setLocation(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public cloneForSpatial(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/control/Control;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public computePosition()V
    .locals 5

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->distance:F

    const v1, 0x3fc90fdb

    iget v2, p0, Lcom/jme3/input/ChaseCamera;->vRotation:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/jme3/input/ChaseCamera;->pos:Lcom/jme3/math/Vector3f;

    iget v2, p0, Lcom/jme3/input/ChaseCamera;->rotation:F

    invoke-static {v2}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v2

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/jme3/input/ChaseCamera;->distance:F

    iget v4, p0, Lcom/jme3/input/ChaseCamera;->vRotation:F

    invoke-static {v4}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/input/ChaseCamera;->rotation:F

    invoke-static {v4}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v4

    mul-float/2addr v0, v4

    invoke-virtual {v1, v2, v3, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->pos:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/input/ChaseCamera;->target:Lcom/jme3/scene/Spatial;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public getChasingSensitivity()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->chasingSensitivity:F

    return v0
.end method

.method public getDistanceToTarget()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->distance:F

    return v0
.end method

.method public getDownRotateOnCloseViewOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->veryCloseRotation:Z

    return v0
.end method

.method public getHorizontalRotation()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->rotation:F

    return v0
.end method

.method public getLookAtOffset()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->lookAtOffset:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getMaxDistance()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->maxDistance:F

    return v0
.end method

.method public getMaxVerticalRotation()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->maxVerticalRotation:F

    return v0
.end method

.method public getMinDistance()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->minDistance:F

    return v0
.end method

.method public getMinVerticalRotation()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->minVerticalRotation:F

    return v0
.end method

.method public getRotationSensitivity()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->rotationSensitivity:F

    return v0
.end method

.method public getRotationSpeed()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->rotationSpeed:F

    return v0
.end method

.method public getTrailingRotationInertia()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->trailingRotationInertia:F

    return v0
.end method

.method public getTrailingSensitivity()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->trailingSensitivity:F

    return v0
.end method

.method public getUpVector()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->initialUpVec:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getVerticalRotation()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->vRotation:F

    return v0
.end method

.method public getZoomSensitivity()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->zoomSensitivity:F

    return v0
.end method

.method public isDragToRotate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->dragToRotate:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->enabled:Z

    return v0
.end method

.method public isHideCursorOnRotate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->hideCursorOnRotate:Z

    return v0
.end method

.method public isSmoothMotion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->smoothMotion:Z

    return v0
.end method

.method public isTrailingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->trailingEnabled:Z

    return v0
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/jme3/input/ChaseCamera;

    iget-object v1, p0, Lcom/jme3/input/ChaseCamera;->cam:Lcom/jme3/renderer/Camera;

    iget-object v2, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/ChaseCamera;-><init>(Lcom/jme3/renderer/Camera;Lcom/jme3/input/InputManager;)V

    iget-object v1, p0, Lcom/jme3/input/ChaseCamera;->target:Lcom/jme3/scene/Spatial;

    iput-object v1, v0, Lcom/jme3/input/ChaseCamera;->target:Lcom/jme3/scene/Spatial;

    invoke-virtual {p0}, Lcom/jme3/input/ChaseCamera;->getMaxDistance()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/input/ChaseCamera;->setMaxDistance(F)V

    invoke-virtual {p0}, Lcom/jme3/input/ChaseCamera;->getMinDistance()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/input/ChaseCamera;->setMinDistance(F)V

    return-object v0
.end method

.method public onAction(Ljava/lang/String;ZF)V
    .locals 0

    iget-boolean p3, p0, Lcom/jme3/input/ChaseCamera;->dragToRotate:Z

    if-eqz p3, :cond_1

    const-string p3, "ChaseCamToggleRotate"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/jme3/input/ChaseCamera;->enabled:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    iput-boolean p3, p0, Lcom/jme3/input/ChaseCamera;->canRotate:Z

    iget-boolean p2, p0, Lcom/jme3/input/ChaseCamera;->hideCursorOnRotate:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    invoke-virtual {p2, p1}, Lcom/jme3/input/InputManager;->setCursorVisible(Z)V

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/jme3/input/ChaseCamera;->canRotate:Z

    iget-boolean p1, p0, Lcom/jme3/input/ChaseCamera;->hideCursorOnRotate:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    invoke-virtual {p1, p3}, Lcom/jme3/input/InputManager;->setCursorVisible(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnalog(Ljava/lang/String;FF)V
    .locals 2

    const-string p3, "ChaseCamMoveLeft"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    neg-float p1, p2

    invoke-virtual {p0, p1}, Lcom/jme3/input/ChaseCamera;->rotateCamera(F)V

    goto :goto_0

    :cond_0
    const-string p3, "ChaseCamMoveRight"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0, p2}, Lcom/jme3/input/ChaseCamera;->rotateCamera(F)V

    goto :goto_0

    :cond_1
    const-string p3, "ChaseCamUp"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p2}, Lcom/jme3/input/ChaseCamera;->vRotateCamera(F)V

    goto :goto_0

    :cond_2
    const-string p3, "ChaseCamDown"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    neg-float p1, p2

    invoke-virtual {p0, p1}, Lcom/jme3/input/ChaseCamera;->vRotateCamera(F)V

    goto :goto_0

    :cond_3
    const-string p3, "ChaseCamZoomIn"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_5

    neg-float p1, p2

    invoke-virtual {p0, p1}, Lcom/jme3/input/ChaseCamera;->zoomCamera(F)V

    iget-boolean p1, p0, Lcom/jme3/input/ChaseCamera;->zoomin:Z

    if-nez p1, :cond_4

    iput v1, p0, Lcom/jme3/input/ChaseCamera;->distanceLerpFactor:F

    :cond_4
    iput-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->zoomin:Z

    goto :goto_0

    :cond_5
    const-string p3, "ChaseCamZoomOut"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, p2}, Lcom/jme3/input/ChaseCamera;->zoomCamera(F)V

    iget-boolean p1, p0, Lcom/jme3/input/ChaseCamera;->zoomin:Z

    if-ne p1, v0, :cond_6

    iput v1, p0, Lcom/jme3/input/ChaseCamera;->distanceLerpFactor:F

    :cond_6
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/input/ChaseCamera;->zoomin:Z

    :cond_7
    :goto_0
    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "maxDistance"

    const/high16 v1, 0x42200000    # 40.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/input/ChaseCamera;->maxDistance:F

    const-string v0, "minDistance"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->minDistance:F

    return-void
.end method

.method public final registerWithInput(Lcom/jme3/input/InputManager;)V
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

    iput-object p1, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    iget-boolean v1, p0, Lcom/jme3/input/ChaseCamera;->invertYaxis:Z

    const-string v2, "ChaseCamUp"

    const-string v3, "ChaseCamDown"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_0

    new-instance v1, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v1, v5, v5}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v6, v5, [Lcom/jme3/input/controls/Trigger;

    aput-object v1, v6, v4

    invoke-virtual {p1, v3, v6}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    new-instance v1, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v1, v5, v4}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v3, v5, [Lcom/jme3/input/controls/Trigger;

    aput-object v1, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v1, v5, v4}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v6, v5, [Lcom/jme3/input/controls/Trigger;

    aput-object v1, v6, v4

    invoke-virtual {p1, v3, v6}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    new-instance v1, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v1, v5, v5}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v3, v5, [Lcom/jme3/input/controls/Trigger;

    aput-object v1, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    :goto_0
    new-instance v1, Lcom/jme3/input/controls/MouseAxisTrigger;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v4}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v3, v5, [Lcom/jme3/input/controls/Trigger;

    aput-object v1, v3, v4

    const-string v1, "ChaseCamZoomIn"

    invoke-virtual {p1, v1, v3}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    new-instance v1, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v1, v2, v5}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v2, v5, [Lcom/jme3/input/controls/Trigger;

    aput-object v1, v2, v4

    const-string v1, "ChaseCamZoomOut"

    invoke-virtual {p1, v1, v2}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-boolean v1, p0, Lcom/jme3/input/ChaseCamera;->invertXaxis:Z

    const-string v2, "ChaseCamMoveRight"

    const-string v3, "ChaseCamMoveLeft"

    if-nez v1, :cond_1

    new-instance v1, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v1, v4, v5}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v6, v5, [Lcom/jme3/input/controls/Trigger;

    aput-object v1, v6, v4

    invoke-virtual {p1, v3, v6}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    new-instance v1, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v1, v4, v4}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v3, v5, [Lcom/jme3/input/controls/Trigger;

    aput-object v1, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v1, v4, v4}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v6, v5, [Lcom/jme3/input/controls/Trigger;

    aput-object v1, v6, v4

    invoke-virtual {p1, v3, v6}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    new-instance v1, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v1, v4, v5}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v3, v5, [Lcom/jme3/input/controls/Trigger;

    aput-object v1, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    :goto_1
    new-instance v1, Lcom/jme3/input/controls/MouseButtonTrigger;

    invoke-direct {v1, v4}, Lcom/jme3/input/controls/MouseButtonTrigger;-><init>(I)V

    new-array v2, v5, [Lcom/jme3/input/controls/Trigger;

    aput-object v1, v2, v4

    const-string v1, "ChaseCamToggleRotate"

    invoke-virtual {p1, v1, v2}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    new-instance v2, Lcom/jme3/input/controls/MouseButtonTrigger;

    invoke-direct {v2, v5}, Lcom/jme3/input/controls/MouseButtonTrigger;-><init>(I)V

    new-array v3, v5, [Lcom/jme3/input/controls/Trigger;

    aput-object v2, v3, v4

    invoke-virtual {p1, v1, v3}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    invoke-virtual {p1, p0, v0}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    return-void
.end method

.method public rotateCamera(F)V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->canRotate:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->enabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->rotating:Z

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->targetRotation:F

    iget v1, p0, Lcom/jme3/input/ChaseCamera;->rotationSpeed:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/input/ChaseCamera;->targetRotation:F

    :cond_1
    :goto_0
    return-void
.end method

.method public setChasingSensitivity(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->chasingSensitivity:F

    return-void
.end method

.method public setDefaultDistance(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->distance:F

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->targetDistance:F

    return-void
.end method

.method public setDefaultHorizontalRotation(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->rotation:F

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->targetRotation:F

    return-void
.end method

.method public setDefaultVerticalRotation(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->vRotation:F

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->targetVRotation:F

    return-void
.end method

.method public setDownRotateOnCloseViewOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/input/ChaseCamera;->veryCloseRotation:Z

    return-void
.end method

.method public setDragToRotate(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/jme3/input/ChaseCamera;->dragToRotate:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->canRotate:Z

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    invoke-virtual {v0, p1}, Lcom/jme3/input/InputManager;->setCursorVisible(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/input/ChaseCamera;->enabled:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/jme3/input/ChaseCamera;->dragToRotate:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/input/ChaseCamera;->canRotate:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/input/ChaseCamera;->canRotate:Z

    :goto_0
    return-void
.end method

.method public setHideCursorOnRotate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/input/ChaseCamera;->hideCursorOnRotate:Z

    return-void
.end method

.method public setInvertHorizontalAxis(Z)V
    .locals 6

    iput-boolean p1, p0, Lcom/jme3/input/ChaseCamera;->invertXaxis:Z

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    const-string v1, "ChaseCamMoveLeft"

    invoke-virtual {v0, v1}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    const-string v2, "ChaseCamMoveRight"

    invoke-virtual {v0, v2}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v4, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v4, v3, v0}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v5, v0, [Lcom/jme3/input/controls/Trigger;

    aput-object v4, v5, v3

    invoke-virtual {p1, v1, v5}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object p1, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v4, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v4, v3, v3}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v0, v0, [Lcom/jme3/input/controls/Trigger;

    aput-object v4, v0, v3

    invoke-virtual {p1, v2, v0}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v4, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v4, v3, v3}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v5, v0, [Lcom/jme3/input/controls/Trigger;

    aput-object v4, v5, v3

    invoke-virtual {p1, v1, v5}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object p1, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v4, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v4, v3, v0}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v0, v0, [Lcom/jme3/input/controls/Trigger;

    aput-object v4, v0, v3

    invoke-virtual {p1, v2, v0}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    :goto_0
    iget-object p1, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    return-void
.end method

.method public setInvertVerticalAxis(Z)V
    .locals 6

    iput-boolean p1, p0, Lcom/jme3/input/ChaseCamera;->invertYaxis:Z

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    const-string v1, "ChaseCamDown"

    invoke-virtual {v0, v1}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    const-string v2, "ChaseCamUp"

    invoke-virtual {v0, v2}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v4, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v4, v3, v3}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v5, v3, [Lcom/jme3/input/controls/Trigger;

    aput-object v4, v5, v0

    invoke-virtual {p1, v1, v5}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object p1, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v4, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v4, v3, v0}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v3, v3, [Lcom/jme3/input/controls/Trigger;

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v4, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v4, v3, v0}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v5, v3, [Lcom/jme3/input/controls/Trigger;

    aput-object v4, v5, v0

    invoke-virtual {p1, v1, v5}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object p1, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v4, Lcom/jme3/input/controls/MouseAxisTrigger;

    invoke-direct {v4, v3, v3}, Lcom/jme3/input/controls/MouseAxisTrigger;-><init>(IZ)V

    new-array v3, v3, [Lcom/jme3/input/controls/Trigger;

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    :goto_0
    iget-object p1, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    return-void
.end method

.method public setLookAtOffset(Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/input/ChaseCamera;->lookAtOffset:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setMaxDistance(F)V
    .locals 2

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->maxDistance:F

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->distance:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/jme3/input/ChaseCamera;->zoomCamera(F)V

    :cond_0
    return-void
.end method

.method public setMaxVerticalRotation(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->maxVerticalRotation:F

    return-void
.end method

.method public setMinDistance(F)V
    .locals 2

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->minDistance:F

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->distance:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/input/ChaseCamera;->zoomCamera(F)V

    :cond_0
    return-void
.end method

.method public setMinVerticalRotation(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->minVerticalRotation:F

    return-void
.end method

.method public setRotationSensitivity(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->rotationSensitivity:F

    return-void
.end method

.method public setRotationSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->rotationSpeed:F

    return-void
.end method

.method public setSmoothMotion(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/input/ChaseCamera;->smoothMotion:Z

    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 1

    iput-object p1, p0, Lcom/jme3/input/ChaseCamera;->target:Lcom/jme3/scene/Spatial;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/input/ChaseCamera;->computePosition()V

    new-instance p1, Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->target:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    iput-object p1, p0, Lcom/jme3/input/ChaseCamera;->prevPos:Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/input/ChaseCamera;->cam:Lcom/jme3/renderer/Camera;

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->pos:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/Camera;->setLocation(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public varargs setToggleRotationTrigger([Lcom/jme3/input/controls/Trigger;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    const-string v1, "ChaseCamToggleRotate"

    invoke-virtual {v0, v1}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    invoke-virtual {v0, v1, p1}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object p1, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    return-void
.end method

.method public setTrailingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/input/ChaseCamera;->trailingEnabled:Z

    return-void
.end method

.method public setTrailingRotationInertia(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->trailingRotationInertia:F

    return-void
.end method

.method public setTrailingSensitivity(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->trailingSensitivity:F

    return-void
.end method

.method public setUpVector(Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/input/ChaseCamera;->initialUpVec:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public varargs setZoomInTrigger([Lcom/jme3/input/controls/Trigger;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    const-string v1, "ChaseCamZoomIn"

    invoke-virtual {v0, v1}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    invoke-virtual {v0, v1, p1}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object p1, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs setZoomOutTrigger([Lcom/jme3/input/controls/Trigger;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    const-string v1, "ChaseCamZoomOut"

    invoke-virtual {v0, v1}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    invoke-virtual {v0, v1, p1}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object p1, p0, Lcom/jme3/input/ChaseCamera;->inputManager:Lcom/jme3/input/InputManager;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    return-void
.end method

.method public setZoomSensitivity(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->zoomSensitivity:F

    return-void
.end method

.method public update(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/input/ChaseCamera;->updateCamera(F)V

    return-void
.end method

.method public updateCamera(F)V
    .locals 9

    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->enabled:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->targetLocation:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/input/ChaseCamera;->target:Lcom/jme3/scene/Spatial;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/input/ChaseCamera;->lookAtOffset:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->smoothMotion:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->targetDir:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/input/ChaseCamera;->targetLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/input/ChaseCamera;->prevPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->targetDir:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->length()F

    move-result v0

    iget v1, p0, Lcom/jme3/input/ChaseCamera;->offsetDistance:F

    cmpg-float v0, v1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->chasing:Z

    iget-boolean v2, p0, Lcom/jme3/input/ChaseCamera;->trailingEnabled:Z

    if-eqz v2, :cond_0

    iput-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->trailing:Z

    :cond_0
    iput-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->targetMoves:Z

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->targetMoves:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->canRotate:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->targetRotation:F

    iget v2, p0, Lcom/jme3/input/ChaseCamera;->rotation:F

    sub-float v3, v0, v2

    iget v4, p0, Lcom/jme3/input/ChaseCamera;->trailingRotationInertia:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    add-float/2addr v2, v4

    iput v2, p0, Lcom/jme3/input/ChaseCamera;->targetRotation:F

    goto :goto_0

    :cond_2
    sub-float/2addr v0, v2

    neg-float v3, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    sub-float/2addr v2, v4

    iput v2, p0, Lcom/jme3/input/ChaseCamera;->targetRotation:F

    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/jme3/input/ChaseCamera;->targetMoves:Z

    :goto_1
    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->canRotate:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iput v2, p0, Lcom/jme3/input/ChaseCamera;->trailingLerpFactor:F

    iput-boolean v1, p0, Lcom/jme3/input/ChaseCamera;->trailing:Z

    :cond_4
    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->trailingEnabled:Z

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3c23d70a    # 0.01f

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->trailing:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->targetMoves:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->targetDir:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->negate()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object v0

    sget-object v5, Lcom/jme3/math/Vector3f;->UNIT_X:Lcom/jme3/math/Vector3f;

    iput v2, v0, Lcom/jme3/math/Vector3f;->y:F

    iget-object v6, p0, Lcom/jme3/input/ChaseCamera;->targetDir:Lcom/jme3/math/Vector3f;

    iget v6, v6, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v6, v6, v2

    const v7, 0x40c90fdb

    if-lez v6, :cond_5

    invoke-virtual {v0, v5}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->acos(F)F

    move-result v0

    sub-float v0, v7, v0

    iput v0, p0, Lcom/jme3/input/ChaseCamera;->targetRotation:F

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v5}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->acos(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/input/ChaseCamera;->targetRotation:F

    :goto_2
    iget v0, p0, Lcom/jme3/input/ChaseCamera;->targetRotation:F

    iget v5, p0, Lcom/jme3/input/ChaseCamera;->rotation:F

    sub-float v6, v0, v5

    const v8, 0x40490fdb    # (float)Math.PI

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_6

    sub-float v5, v0, v5

    const v6, -0x3fb6f025

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    :cond_6
    sub-float/2addr v0, v7

    iput v0, p0, Lcom/jme3/input/ChaseCamera;->targetRotation:F

    :cond_7
    iget v0, p0, Lcom/jme3/input/ChaseCamera;->targetRotation:F

    iget v5, p0, Lcom/jme3/input/ChaseCamera;->previousTargetRotation:F

    cmpl-float v6, v0, v5

    if-eqz v6, :cond_8

    sub-float/2addr v0, v5

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    const v5, 0x3ec90fdb

    cmpl-float v0, v0, v5

    if-lez v0, :cond_8

    iput v2, p0, Lcom/jme3/input/ChaseCamera;->trailingLerpFactor:F

    :cond_8
    iget v0, p0, Lcom/jme3/input/ChaseCamera;->targetRotation:F

    iput v0, p0, Lcom/jme3/input/ChaseCamera;->previousTargetRotation:F

    :cond_9
    iget v0, p0, Lcom/jme3/input/ChaseCamera;->trailingLerpFactor:F

    mul-float v5, p1, p1

    iget v6, p0, Lcom/jme3/input/ChaseCamera;->trailingSensitivity:F

    mul-float/2addr v5, v6

    add-float/2addr v0, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/jme3/input/ChaseCamera;->trailingLerpFactor:F

    iget v5, p0, Lcom/jme3/input/ChaseCamera;->rotation:F

    iget v6, p0, Lcom/jme3/input/ChaseCamera;->targetRotation:F

    invoke-static {v0, v5, v6}, Lcom/jme3/math/FastMath;->interpolateLinear(FFF)F

    move-result v0

    iput v0, p0, Lcom/jme3/input/ChaseCamera;->rotation:F

    iget v5, p0, Lcom/jme3/input/ChaseCamera;->targetRotation:F

    add-float v6, v5, v4

    cmpl-float v6, v6, v0

    if-ltz v6, :cond_a

    sub-float/2addr v5, v4

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_a

    iput-boolean v1, p0, Lcom/jme3/input/ChaseCamera;->trailing:Z

    iput v2, p0, Lcom/jme3/input/ChaseCamera;->trailingLerpFactor:F

    :cond_a
    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->chasing:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->temp:Lcom/jme3/math/Vector3f;

    iget-object v5, p0, Lcom/jme3/input/ChaseCamera;->targetLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v5}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v5, p0, Lcom/jme3/input/ChaseCamera;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v5}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->length()F

    move-result v0

    iput v0, p0, Lcom/jme3/input/ChaseCamera;->distance:F

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->distanceLerpFactor:F

    mul-float v5, p1, p1

    iget v6, p0, Lcom/jme3/input/ChaseCamera;->chasingSensitivity:F

    mul-float/2addr v5, v6

    const v6, 0x3d4ccccd    # 0.05f

    mul-float/2addr v5, v6

    add-float/2addr v0, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/jme3/input/ChaseCamera;->distanceLerpFactor:F

    iget v5, p0, Lcom/jme3/input/ChaseCamera;->distance:F

    iget v6, p0, Lcom/jme3/input/ChaseCamera;->targetDistance:F

    invoke-static {v0, v5, v6}, Lcom/jme3/math/FastMath;->interpolateLinear(FFF)F

    move-result v0

    iput v0, p0, Lcom/jme3/input/ChaseCamera;->distance:F

    iget v5, p0, Lcom/jme3/input/ChaseCamera;->targetDistance:F

    add-float v6, v5, v4

    cmpl-float v6, v6, v0

    if-ltz v6, :cond_b

    sub-float/2addr v5, v4

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_b

    iput v2, p0, Lcom/jme3/input/ChaseCamera;->distanceLerpFactor:F

    iput-boolean v1, p0, Lcom/jme3/input/ChaseCamera;->chasing:Z

    :cond_b
    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->zooming:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->distanceLerpFactor:F

    mul-float v5, p1, p1

    iget v6, p0, Lcom/jme3/input/ChaseCamera;->zoomSensitivity:F

    mul-float/2addr v5, v6

    add-float/2addr v0, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/jme3/input/ChaseCamera;->distanceLerpFactor:F

    iget v5, p0, Lcom/jme3/input/ChaseCamera;->distance:F

    iget v6, p0, Lcom/jme3/input/ChaseCamera;->targetDistance:F

    invoke-static {v0, v5, v6}, Lcom/jme3/math/FastMath;->interpolateLinear(FFF)F

    move-result v0

    iput v0, p0, Lcom/jme3/input/ChaseCamera;->distance:F

    iget v5, p0, Lcom/jme3/input/ChaseCamera;->targetDistance:F

    const v6, 0x3dcccccd    # 0.1f

    add-float v7, v5, v6

    cmpl-float v7, v7, v0

    if-ltz v7, :cond_c

    sub-float/2addr v5, v6

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_c

    iput-boolean v1, p0, Lcom/jme3/input/ChaseCamera;->zooming:Z

    iput v2, p0, Lcom/jme3/input/ChaseCamera;->distanceLerpFactor:F

    :cond_c
    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->rotating:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->rotationLerpFactor:F

    mul-float v5, p1, p1

    iget v6, p0, Lcom/jme3/input/ChaseCamera;->rotationSensitivity:F

    mul-float/2addr v5, v6

    add-float/2addr v0, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/jme3/input/ChaseCamera;->rotationLerpFactor:F

    iget v5, p0, Lcom/jme3/input/ChaseCamera;->rotation:F

    iget v6, p0, Lcom/jme3/input/ChaseCamera;->targetRotation:F

    invoke-static {v0, v5, v6}, Lcom/jme3/math/FastMath;->interpolateLinear(FFF)F

    move-result v0

    iput v0, p0, Lcom/jme3/input/ChaseCamera;->rotation:F

    iget v5, p0, Lcom/jme3/input/ChaseCamera;->targetRotation:F

    add-float v6, v5, v4

    cmpl-float v6, v6, v0

    if-ltz v6, :cond_d

    sub-float/2addr v5, v4

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_d

    iput-boolean v1, p0, Lcom/jme3/input/ChaseCamera;->rotating:Z

    iput v2, p0, Lcom/jme3/input/ChaseCamera;->rotationLerpFactor:F

    :cond_d
    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->vRotating:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->vRotationLerpFactor:F

    mul-float/2addr p1, p1

    iget v5, p0, Lcom/jme3/input/ChaseCamera;->rotationSensitivity:F

    mul-float/2addr p1, v5

    add-float/2addr v0, p1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->vRotationLerpFactor:F

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->vRotation:F

    iget v3, p0, Lcom/jme3/input/ChaseCamera;->targetVRotation:F

    invoke-static {p1, v0, v3}, Lcom/jme3/math/FastMath;->interpolateLinear(FFF)F

    move-result p1

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->vRotation:F

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->targetVRotation:F

    add-float v3, v0, v4

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_e

    sub-float/2addr v0, v4

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_e

    iput-boolean v1, p0, Lcom/jme3/input/ChaseCamera;->vRotating:Z

    iput v2, p0, Lcom/jme3/input/ChaseCamera;->vRotationLerpFactor:F

    :cond_e
    invoke-virtual {p0}, Lcom/jme3/input/ChaseCamera;->computePosition()V

    iget-object p1, p0, Lcom/jme3/input/ChaseCamera;->cam:Lcom/jme3/renderer/Camera;

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->pos:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/input/ChaseCamera;->lookAtOffset:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/Camera;->setLocation(Lcom/jme3/math/Vector3f;)V

    goto :goto_3

    :cond_f
    iget p1, p0, Lcom/jme3/input/ChaseCamera;->targetVRotation:F

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->vRotation:F

    iget p1, p0, Lcom/jme3/input/ChaseCamera;->targetRotation:F

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->rotation:F

    iget p1, p0, Lcom/jme3/input/ChaseCamera;->targetDistance:F

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->distance:F

    invoke-virtual {p0}, Lcom/jme3/input/ChaseCamera;->computePosition()V

    iget-object p1, p0, Lcom/jme3/input/ChaseCamera;->cam:Lcom/jme3/renderer/Camera;

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->pos:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/input/ChaseCamera;->lookAtOffset:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/Camera;->setLocation(Lcom/jme3/math/Vector3f;)V

    :goto_3
    iget-object p1, p0, Lcom/jme3/input/ChaseCamera;->prevPos:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->targetLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/input/ChaseCamera;->cam:Lcom/jme3/renderer/Camera;

    iget-object v0, p0, Lcom/jme3/input/ChaseCamera;->targetLocation:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/input/ChaseCamera;->initialUpVec:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/renderer/Camera;->lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    :cond_10
    return-void
.end method

.method public vRotateCamera(F)V
    .locals 5

    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->canRotate:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->enabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->vRotating:Z

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->targetVRotation:F

    iget v1, p0, Lcom/jme3/input/ChaseCamera;->rotationSpeed:F

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->targetVRotation:F

    iget v1, p0, Lcom/jme3/input/ChaseCamera;->maxVerticalRotation:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    iput v0, p0, Lcom/jme3/input/ChaseCamera;->targetVRotation:F

    :cond_1
    iget-boolean p1, p0, Lcom/jme3/input/ChaseCamera;->veryCloseRotation:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/jme3/input/ChaseCamera;->targetVRotation:F

    iget v1, p0, Lcom/jme3/input/ChaseCamera;->minVerticalRotation:F

    cmpg-float v2, p1, v1

    if-gez v2, :cond_2

    iget v2, p0, Lcom/jme3/input/ChaseCamera;->targetDistance:F

    iget v3, p0, Lcom/jme3/input/ChaseCamera;->minDistance:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iput v1, p0, Lcom/jme3/input/ChaseCamera;->targetVRotation:F

    goto :goto_0

    :cond_2
    const v1, -0x4036f025

    cmpg-float p1, p1, v1

    if-gez p1, :cond_4

    iput v0, p0, Lcom/jme3/input/ChaseCamera;->targetVRotation:F

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/jme3/input/ChaseCamera;->targetVRotation:F

    iget v1, p0, Lcom/jme3/input/ChaseCamera;->minVerticalRotation:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_4

    iput v0, p0, Lcom/jme3/input/ChaseCamera;->targetVRotation:F

    :cond_4
    :goto_0
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "remove ChaseCamera before saving"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zoomCamera(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/input/ChaseCamera;->zooming:Z

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->targetDistance:F

    iget v1, p0, Lcom/jme3/input/ChaseCamera;->zoomSensitivity:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/input/ChaseCamera;->targetDistance:F

    iget p1, p0, Lcom/jme3/input/ChaseCamera;->maxDistance:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1

    iput p1, p0, Lcom/jme3/input/ChaseCamera;->targetDistance:F

    :cond_1
    iget p1, p0, Lcom/jme3/input/ChaseCamera;->targetDistance:F

    iget v0, p0, Lcom/jme3/input/ChaseCamera;->minDistance:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    iput v0, p0, Lcom/jme3/input/ChaseCamera;->targetDistance:F

    :cond_2
    iget-boolean p1, p0, Lcom/jme3/input/ChaseCamera;->veryCloseRotation:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/jme3/input/ChaseCamera;->targetVRotation:F

    iget v1, p0, Lcom/jme3/input/ChaseCamera;->minVerticalRotation:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    iget p1, p0, Lcom/jme3/input/ChaseCamera;->targetDistance:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    iput v1, p0, Lcom/jme3/input/ChaseCamera;->targetVRotation:F

    :cond_3
    return-void
.end method
