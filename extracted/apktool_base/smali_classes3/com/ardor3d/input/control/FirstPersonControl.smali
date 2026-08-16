.class public Lcom/ardor3d/input/control/FirstPersonControl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _keyRotateSpeed:D

.field private _keyTrigger:Lcom/ardor3d/input/logical/InputTrigger;

.field private _mouseRotateSpeed:D

.field private _mouseTrigger:Lcom/ardor3d/input/logical/InputTrigger;

.field private _moveSpeed:D

.field private final _upAxis:Lcom/ardor3d/math/Vector3;

.field private final _workerMatrix:Lcom/ardor3d/math/Matrix3;

.field private final _workerStoreA:Lcom/ardor3d/math/Vector3;


# direct methods
.method public constructor <init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_upAxis:Lcom/ardor3d/math/Vector3;

    const-wide v1, 0x3f747ae147ae147bL    # 0.005

    iput-wide v1, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_mouseRotateSpeed:D

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    iput-wide v1, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_moveSpeed:D

    const-wide/high16 v1, 0x4002000000000000L    # 2.25

    iput-wide v1, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_keyRotateSpeed:D

    new-instance v1, Lcom/ardor3d/math/Matrix3;

    invoke-direct {v1}, Lcom/ardor3d/math/Matrix3;-><init>()V

    iput-object v1, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_workerMatrix:Lcom/ardor3d/math/Matrix3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    invoke-direct {v1}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v1, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_workerStoreA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public static removeTriggers(Lcom/ardor3d/input/logical/LogicalLayer;Lcom/ardor3d/input/control/FirstPersonControl;)V
    .locals 1

    iget-object v0, p1, Lcom/ardor3d/input/control/FirstPersonControl;->_mouseTrigger:Lcom/ardor3d/input/logical/InputTrigger;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ardor3d/input/logical/LogicalLayer;->deregisterTrigger(Lcom/ardor3d/input/logical/InputTrigger;)V

    :cond_0
    iget-object p1, p1, Lcom/ardor3d/input/control/FirstPersonControl;->_keyTrigger:Lcom/ardor3d/input/logical/InputTrigger;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/ardor3d/input/logical/LogicalLayer;->deregisterTrigger(Lcom/ardor3d/input/logical/InputTrigger;)V

    :cond_1
    return-void
.end method

.method public static setupTriggers(Lcom/ardor3d/input/logical/LogicalLayer;Lcom/ardor3d/math/type/ReadOnlyVector3;Z)Lcom/ardor3d/input/control/FirstPersonControl;
    .locals 1

    new-instance v0, Lcom/ardor3d/input/control/FirstPersonControl;

    invoke-direct {v0, p1}, Lcom/ardor3d/input/control/FirstPersonControl;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    invoke-virtual {v0, p0}, Lcom/ardor3d/input/control/FirstPersonControl;->setupKeyboardTriggers(Lcom/ardor3d/input/logical/LogicalLayer;)Lw2/I;

    invoke-virtual {v0, p0, p2}, Lcom/ardor3d/input/control/FirstPersonControl;->setupMouseTriggers(Lcom/ardor3d/input/logical/LogicalLayer;Z)V

    return-object v0
.end method


# virtual methods
.method public getKeyRotateSpeed()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_keyRotateSpeed:D

    return-wide v0
.end method

.method public getKeyTrigger()Lcom/ardor3d/input/logical/InputTrigger;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_keyTrigger:Lcom/ardor3d/input/logical/InputTrigger;

    return-object v0
.end method

.method public getMouseRotateSpeed()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_mouseRotateSpeed:D

    return-wide v0
.end method

.method public getMouseTrigger()Lcom/ardor3d/input/logical/InputTrigger;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_mouseTrigger:Lcom/ardor3d/input/logical/InputTrigger;

    return-object v0
.end method

.method public getMoveSpeed()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_moveSpeed:D

    return-wide v0
.end method

.method public getUpAxis()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_upAxis:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public move(Lcom/ardor3d/renderer/Camera;Lcom/ardor3d/input/KeyboardState;D)V
    .locals 13

    move-object v6, p0

    move-object v0, p2

    sget-object v1, Lcom/ardor3d/input/Key;->W:Lcom/ardor3d/input/Key;

    invoke-virtual {p2, v1}, Lcom/ardor3d/input/KeyboardState;->isDown(Lcom/ardor3d/input/Key;)Z

    move-result v1

    sget-object v2, Lcom/ardor3d/input/Key;->S:Lcom/ardor3d/input/Key;

    invoke-virtual {p2, v2}, Lcom/ardor3d/input/KeyboardState;->isDown(Lcom/ardor3d/input/Key;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    sget-object v2, Lcom/ardor3d/input/Key;->A:Lcom/ardor3d/input/Key;

    invoke-virtual {p2, v2}, Lcom/ardor3d/input/KeyboardState;->isDown(Lcom/ardor3d/input/Key;)Z

    move-result v2

    sget-object v3, Lcom/ardor3d/input/Key;->D:Lcom/ardor3d/input/Key;

    invoke-virtual {p2, v3}, Lcom/ardor3d/input/KeyboardState;->isDown(Lcom/ardor3d/input/Key;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    const/4 v3, -0x1

    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p1

    goto :goto_3

    :cond_3
    :goto_0
    iget-object v4, v6, Lcom/ardor3d/input/control/FirstPersonControl;->_workerStoreA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->zero()Lcom/ardor3d/math/Vector3;

    move-result-object v4

    const/4 v5, 0x1

    if-ne v1, v5, :cond_4

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    goto :goto_1

    :cond_4
    if-ne v1, v3, :cond_5

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    :cond_5
    :goto_1
    if-ne v2, v5, :cond_6

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getLeft()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    goto :goto_2

    :cond_6
    if-ne v2, v3, :cond_7

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getLeft()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    :cond_7
    :goto_2
    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    iget-wide v7, v6, Lcom/ardor3d/input/control/FirstPersonControl;->_moveSpeed:D

    mul-double v7, v7, p3

    invoke-virtual {v1, v7, v8}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-object v1, p1

    invoke-virtual {p1, v4}, Lcom/ardor3d/renderer/Camera;->setLocation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    :goto_3
    sget-object v2, Lcom/ardor3d/input/Key;->UP:Lcom/ardor3d/input/Key;

    invoke-virtual {p2, v2}, Lcom/ardor3d/input/KeyboardState;->isDown(Lcom/ardor3d/input/Key;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    sget-object v2, Lcom/ardor3d/input/Key;->DOWN:Lcom/ardor3d/input/Key;

    invoke-virtual {p2, v2}, Lcom/ardor3d/input/KeyboardState;->isDown(Lcom/ardor3d/input/Key;)Z

    move-result v2

    if-eqz v2, :cond_9

    add-int/lit8 v3, v3, 0x1

    :cond_9
    sget-object v2, Lcom/ardor3d/input/Key;->LEFT:Lcom/ardor3d/input/Key;

    invoke-virtual {p2, v2}, Lcom/ardor3d/input/KeyboardState;->isDown(Lcom/ardor3d/input/Key;)Z

    move-result v2

    sget-object v4, Lcom/ardor3d/input/Key;->RIGHT:Lcom/ardor3d/input/Key;

    invoke-virtual {p2, v4}, Lcom/ardor3d/input/KeyboardState;->isDown(Lcom/ardor3d/input/Key;)Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/lit8 v2, v2, -0x1

    :cond_a
    if-nez v2, :cond_b

    if-eqz v3, :cond_c

    :cond_b
    int-to-double v4, v2

    iget-wide v7, v6, Lcom/ardor3d/input/control/FirstPersonControl;->_keyRotateSpeed:D

    iget-wide v9, v6, Lcom/ardor3d/input/control/FirstPersonControl;->_mouseRotateSpeed:D

    div-double v11, v7, v9

    mul-double/2addr v4, v11

    mul-double v4, v4, p3

    int-to-double v2, v3

    div-double/2addr v7, v9

    mul-double/2addr v2, v7

    mul-double v7, v2, p3

    move-object v0, p0

    move-object v1, p1

    move-wide v2, v4

    move-wide v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/ardor3d/input/control/FirstPersonControl;->rotate(Lcom/ardor3d/renderer/Camera;DD)V

    :cond_c
    return-void
.end method

.method public rotate(Lcom/ardor3d/renderer/Camera;DD)V
    .locals 5

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_workerMatrix:Lcom/ardor3d/math/Matrix3;

    iget-wide v3, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_mouseRotateSpeed:D

    mul-double/2addr v3, p2

    iget-object p2, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_upAxis:Lcom/ardor3d/math/Vector3;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getUp()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p2

    :goto_0
    invoke-virtual {v2, v3, v4, p2}, Lcom/ardor3d/math/Matrix3;->fromAngleNormalAxis(DLcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Matrix3;

    iget-object p2, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_workerMatrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getLeft()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p3

    iget-object v2, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_workerStoreA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p2, p3, v2}, Lcom/ardor3d/math/Matrix3;->applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object p2, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_workerStoreA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/Camera;->setLeft(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object p2, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_workerMatrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p3

    iget-object v2, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_workerStoreA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p2, p3, v2}, Lcom/ardor3d/math/Matrix3;->applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object p2, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_workerStoreA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/Camera;->setDirection(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object p2, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_workerMatrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getUp()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p3

    iget-object v2, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_workerStoreA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p2, p3, v2}, Lcom/ardor3d/math/Matrix3;->applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object p2, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_workerStoreA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/Camera;->setUp(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    :cond_1
    cmpl-double p2, p4, v0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_workerMatrix:Lcom/ardor3d/math/Matrix3;

    iget-wide v0, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_mouseRotateSpeed:D

    mul-double/2addr v0, p4

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getLeft()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p3

    invoke-virtual {p2, v0, v1, p3}, Lcom/ardor3d/math/Matrix3;->fromAngleNormalAxis(DLcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Matrix3;

    iget-object p2, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_workerMatrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getLeft()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p3

    iget-object p4, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_workerStoreA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p2, p3, p4}, Lcom/ardor3d/math/Matrix3;->applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object p2, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_workerStoreA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/Camera;->setLeft(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object p2, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_workerMatrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p3

    iget-object p4, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_workerStoreA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p2, p3, p4}, Lcom/ardor3d/math/Matrix3;->applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object p2, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_workerStoreA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/Camera;->setDirection(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object p2, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_workerMatrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getUp()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p3

    iget-object p4, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_workerStoreA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p2, p3, p4}, Lcom/ardor3d/math/Matrix3;->applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object p2, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_workerStoreA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/Camera;->setUp(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    :cond_2
    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->normalize()V

    return-void
.end method

.method public setKeyRotateSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_keyRotateSpeed:D

    return-void
.end method

.method public setMouseRotateSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_mouseRotateSpeed:D

    return-void
.end method

.method public setMoveSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_moveSpeed:D

    return-void
.end method

.method public setUpAxis(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_upAxis:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public setupKeyboardTriggers(Lcom/ardor3d/input/logical/LogicalLayer;)Lw2/I;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/input/logical/LogicalLayer;",
            ")",
            "Lw2/I<",
            "Lcom/ardor3d/input/logical/TwoInputStates;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/ardor3d/input/control/FirstPersonControl$2;

    invoke-direct {v0, p0}, Lcom/ardor3d/input/control/FirstPersonControl$2;-><init>(Lcom/ardor3d/input/control/FirstPersonControl;)V

    new-instance v1, Lcom/ardor3d/input/control/FirstPersonControl$3;

    invoke-direct {v1, p0, p0}, Lcom/ardor3d/input/control/FirstPersonControl$3;-><init>(Lcom/ardor3d/input/control/FirstPersonControl;Lcom/ardor3d/input/control/FirstPersonControl;)V

    new-instance v2, Lcom/ardor3d/input/logical/InputTrigger;

    invoke-direct {v2, v0, v1}, Lcom/ardor3d/input/logical/InputTrigger;-><init>(Lw2/I;Lcom/ardor3d/input/logical/TriggerAction;)V

    iput-object v2, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_keyTrigger:Lcom/ardor3d/input/logical/InputTrigger;

    invoke-virtual {p1, v2}, Lcom/ardor3d/input/logical/LogicalLayer;->registerTrigger(Lcom/ardor3d/input/logical/InputTrigger;)V

    return-object v0
.end method

.method public setupMouseTriggers(Lcom/ardor3d/input/logical/LogicalLayer;Z)V
    .locals 3

    invoke-static {}, Lcom/ardor3d/input/logical/TriggerConditions;->leftButtonDown()Lcom/ardor3d/input/logical/MouseButtonCondition;

    move-result-object v0

    invoke-static {}, Lcom/ardor3d/input/logical/TriggerConditions;->rightButtonDown()Lcom/ardor3d/input/logical/MouseButtonCondition;

    move-result-object v1

    invoke-static {}, Lcom/ardor3d/input/logical/TriggerConditions;->middleButtonDown()Lcom/ardor3d/input/logical/MouseButtonCondition;

    move-result-object v2

    invoke-static {v1, v2}, Lw2/J;->t(Lw2/I;Lw2/I;)Lw2/I;

    move-result-object v1

    invoke-static {v0, v1}, Lw2/J;->t(Lw2/I;Lw2/I;)Lw2/I;

    move-result-object v0

    invoke-static {}, Lcom/ardor3d/input/logical/TriggerConditions;->mouseMoved()Lcom/ardor3d/input/logical/MouseMovedCondition;

    move-result-object v1

    invoke-static {v1, v0}, Lw2/J;->e(Lw2/I;Lw2/I;)Lw2/I;

    move-result-object v0

    new-instance v1, Lcom/ardor3d/input/control/FirstPersonControl$1;

    invoke-direct {v1, p0, p0}, Lcom/ardor3d/input/control/FirstPersonControl$1;-><init>(Lcom/ardor3d/input/control/FirstPersonControl;Lcom/ardor3d/input/control/FirstPersonControl;)V

    new-instance v2, Lcom/ardor3d/input/logical/InputTrigger;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ardor3d/input/logical/TriggerConditions;->mouseMoved()Lcom/ardor3d/input/logical/MouseMovedCondition;

    move-result-object v0

    :goto_0
    invoke-direct {v2, v0, v1}, Lcom/ardor3d/input/logical/InputTrigger;-><init>(Lw2/I;Lcom/ardor3d/input/logical/TriggerAction;)V

    iput-object v2, p0, Lcom/ardor3d/input/control/FirstPersonControl;->_mouseTrigger:Lcom/ardor3d/input/logical/InputTrigger;

    invoke-virtual {p1, v2}, Lcom/ardor3d/input/logical/LogicalLayer;->registerTrigger(Lcom/ardor3d/input/logical/InputTrigger;)V

    return-void
.end method
