.class public Ljpct/ae/wrapper/JCamera;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctCamera"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/Camera;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static CAMERA_DONT_MOVE()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public static CAMERA_MOVEDOWN()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public static CAMERA_MOVEIN()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static CAMERA_MOVELEFT()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public static CAMERA_MOVEOUT()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static CAMERA_MOVERIGHT()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public static CAMERA_MOVEUP()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static DONT_SLIDE()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static ELLIPSOID_ALIGNED()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static ELLIPSOID_TRANSFORMED()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static SLIDE()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public Initialize()V
    .locals 1

    new-instance v0, Lcom/threed/jpct/Camera;

    invoke-direct {v0}, Lcom/threed/jpct/Camera;-><init>()V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JCamera;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public align(Lcom/threed/jpct/Object3D;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Camera;->align(Lcom/threed/jpct/Object3D;)V

    return-void
.end method

.method public convertDEGAngleIntoFOV(F)F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Camera;->convertDEGAngleIntoFOV(F)F

    move-result p1

    return p1
.end method

.method public convertRADAngleIntoFOV(F)F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Camera;->convertRADAngleIntoFOV(F)F

    move-result p1

    return p1
.end method

.method public decreaseFOV(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Camera;->decreaseFOV(F)V

    return-void
.end method

.method public getBack()Lcom/threed/jpct/Matrix;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0}, Lcom/threed/jpct/Camera;->getBack()Lcom/threed/jpct/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0}, Lcom/threed/jpct/Camera;->getDirection()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getDirection2(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Camera;->getDirection(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public getEllipsoidMode()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0}, Lcom/threed/jpct/Camera;->getEllipsoidMode()I

    move-result v0

    return v0
.end method

.method public getFOV()F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0}, Lcom/threed/jpct/Camera;->getFOV()F

    move-result v0

    return v0
.end method

.method public getMaxFOV()F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0}, Lcom/threed/jpct/Camera;->getMaxFOV()F

    move-result v0

    return v0
.end method

.method public getMinFOV()F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0}, Lcom/threed/jpct/Camera;->getMinFOV()F

    move-result v0

    return v0
.end method

.method public getPosition()Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0}, Lcom/threed/jpct/Camera;->getPosition()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getPosition2(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Camera;->getPosition(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public getProjectionMatrix(Lcom/threed/jpct/FrameBuffer;)Lcom/threed/jpct/Matrix;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Camera;->getProjectionMatrix(Lcom/threed/jpct/FrameBuffer;)Lcom/threed/jpct/Matrix;

    move-result-object p1

    return-object p1
.end method

.method public getProjectionMatrix(Lcom/threed/jpct/FrameBuffer;FF)Lcom/threed/jpct/Matrix;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/Camera;->getProjectionMatrix(Lcom/threed/jpct/FrameBuffer;FF)Lcom/threed/jpct/Matrix;

    move-result-object p1

    return-object p1
.end method

.method public getSideVector()Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0}, Lcom/threed/jpct/Camera;->getSideVector()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getUpVector()Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0}, Lcom/threed/jpct/Camera;->getUpVector()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getXAxis()Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0}, Lcom/threed/jpct/Camera;->getXAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getYAxis()Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0}, Lcom/threed/jpct/Camera;->getYAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getYFOV()F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0}, Lcom/threed/jpct/Camera;->getYFOV()F

    move-result v0

    return v0
.end method

.method public getZAxis()Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0}, Lcom/threed/jpct/Camera;->getZAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public increaseFOV(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Camera;->increaseFOV(F)V

    return-void
.end method

.method public lookAt(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Camera;->lookAt(Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public moveCamera(IF)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Camera;->moveCamera(IF)V

    return-void
.end method

.method public moveCamera2(Lcom/threed/jpct/SimpleVector;F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Camera;->moveCamera(Lcom/threed/jpct/SimpleVector;F)V

    return-void
.end method

.method public rotateAxis(Lcom/threed/jpct/SimpleVector;F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Camera;->rotateAxis(Lcom/threed/jpct/SimpleVector;F)V

    return-void
.end method

.method public rotateCameraAxis(Lcom/threed/jpct/SimpleVector;F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Camera;->rotateCameraAxis(Lcom/threed/jpct/SimpleVector;F)V

    return-void
.end method

.method public rotateCameraX(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Camera;->rotateCameraX(F)V

    return-void
.end method

.method public rotateCameraY(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Camera;->rotateCameraY(F)V

    return-void
.end method

.method public rotateCameraZ(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Camera;->rotateCameraZ(F)V

    return-void
.end method

.method public rotateX(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Camera;->rotateX(F)V

    return-void
.end method

.method public rotateY(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Camera;->rotateY(F)V

    return-void
.end method

.method public rotateZ(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Camera;->rotateZ(F)V

    return-void
.end method

.method public setBack(Lcom/threed/jpct/Matrix;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Camera;->setBack(Lcom/threed/jpct/Matrix;)V

    return-void
.end method

.method public setEllipsoidMode(I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Camera;->setEllipsoidMode(I)V

    return-void
.end method

.method public setFOV(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Camera;->setFOV(F)V

    return-void
.end method

.method public setFOVLimits(FF)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Camera;->setFOVLimits(FF)V

    return-void
.end method

.method public setFOVtoDefault()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0}, Lcom/threed/jpct/Camera;->setFOVtoDefault()V

    return-void
.end method

.method public setOrientation(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Camera;->setOrientation(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public setPosition(FFF)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/Camera;->setPosition(FFF)V

    return-void
.end method

.method public setPosition(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Camera;->setPosition(Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public setPositionToCenter(Lcom/threed/jpct/Object3D;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Camera;->setPositionToCenter(Lcom/threed/jpct/Object3D;)V

    return-void
.end method

.method public setYFOV2(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Camera;->setYFOV(F)V

    return-void
.end method

.method public transform(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCamera;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Camera;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Camera;->transform(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method
