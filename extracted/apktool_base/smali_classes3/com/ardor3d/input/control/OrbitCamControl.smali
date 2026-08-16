.class public Lcom/ardor3d/input/control/OrbitCamControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/input/control/OrbitCamControl$TargetType;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_MAXASCENT:D = 1.5699236621688994


# instance fields
.field protected _baseDistance:D

.field protected _camPosition:Lcom/ardor3d/math/Vector3;

.field protected _camera:Lcom/ardor3d/renderer/Camera;

.field protected _dirty:Z

.field protected _invertedWheel:Z

.field protected _invertedX:Z

.field protected _invertedY:Z

.field protected _lookAtPoint:Lcom/ardor3d/math/Vector3;

.field protected _lookAtSpatial:Lcom/ardor3d/scenegraph/Spatial;

.field protected _maxAscent:D

.field protected _maxZoomDistance:D

.field protected _minAscent:D

.field protected _minZoomDistance:D

.field protected _mouseTrigger:Lcom/ardor3d/input/logical/InputTrigger;

.field protected _sphereCoords:Lcom/ardor3d/math/Vector3;

.field protected _targetType:Lcom/ardor3d/input/control/OrbitCamControl$TargetType;

.field protected _worldUpVec:Lcom/ardor3d/math/Vector3;

.field protected _xSpeed:D

.field protected _ySpeed:D

.field protected _zoomSpeed:D


# direct methods
.method public constructor <init>(Lcom/ardor3d/renderer/Camera;Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ardor3d/math/Vector3;

    sget-object v1, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iput-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_worldUpVec:Lcom/ardor3d/math/Vector3;

    .line 3
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_sphereCoords:Lcom/ardor3d/math/Vector3;

    .line 4
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_camPosition:Lcom/ardor3d/math/Vector3;

    .line 5
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_lookAtPoint:Lcom/ardor3d/math/Vector3;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_lookAtSpatial:Lcom/ardor3d/scenegraph/Spatial;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_invertedX:Z

    .line 8
    iput-boolean v1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_invertedY:Z

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_invertedWheel:Z

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    .line 10
    iput-wide v2, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_zoomSpeed:D

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    .line 11
    iput-wide v4, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_baseDistance:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 12
    iput-wide v4, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_minZoomDistance:D

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 13
    iput-wide v4, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_maxZoomDistance:D

    const-wide v4, -0x4006e197b9dc49d4L    # -1.5699236621688994

    .line 14
    iput-wide v4, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_minAscent:D

    const-wide v4, 0x3ff91e684623b62cL    # 1.5699236621688994

    .line 15
    iput-wide v4, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_maxAscent:D

    .line 16
    iput-wide v2, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_xSpeed:D

    .line 17
    iput-wide v2, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_ySpeed:D

    .line 18
    iput-boolean v1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_dirty:Z

    .line 19
    iput-object p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_camera:Lcom/ardor3d/renderer/Camera;

    .line 20
    sget-object p1, Lcom/ardor3d/input/control/OrbitCamControl$TargetType;->Point:Lcom/ardor3d/input/control/OrbitCamControl$TargetType;

    iput-object p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_targetType:Lcom/ardor3d/input/control/OrbitCamControl$TargetType;

    .line 21
    invoke-virtual {v0, p2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/renderer/Camera;Lcom/ardor3d/scenegraph/Spatial;)V
    .locals 5

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/ardor3d/math/Vector3;

    sget-object v1, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iput-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_worldUpVec:Lcom/ardor3d/math/Vector3;

    .line 24
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_sphereCoords:Lcom/ardor3d/math/Vector3;

    .line 25
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_camPosition:Lcom/ardor3d/math/Vector3;

    .line 26
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_lookAtPoint:Lcom/ardor3d/math/Vector3;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_lookAtSpatial:Lcom/ardor3d/scenegraph/Spatial;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_invertedX:Z

    .line 29
    iput-boolean v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_invertedY:Z

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_invertedWheel:Z

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    .line 31
    iput-wide v1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_zoomSpeed:D

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    .line 32
    iput-wide v3, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_baseDistance:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 33
    iput-wide v3, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_minZoomDistance:D

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 34
    iput-wide v3, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_maxZoomDistance:D

    const-wide v3, -0x4006e197b9dc49d4L    # -1.5699236621688994

    .line 35
    iput-wide v3, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_minAscent:D

    const-wide v3, 0x3ff91e684623b62cL    # 1.5699236621688994

    .line 36
    iput-wide v3, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_maxAscent:D

    .line 37
    iput-wide v1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_xSpeed:D

    .line 38
    iput-wide v1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_ySpeed:D

    .line 39
    iput-boolean v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_dirty:Z

    .line 40
    iput-object p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_camera:Lcom/ardor3d/renderer/Camera;

    .line 41
    sget-object p1, Lcom/ardor3d/input/control/OrbitCamControl$TargetType;->Spatial:Lcom/ardor3d/input/control/OrbitCamControl$TargetType;

    iput-object p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_targetType:Lcom/ardor3d/input/control/OrbitCamControl$TargetType;

    .line 42
    iput-object p2, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_lookAtSpatial:Lcom/ardor3d/scenegraph/Spatial;

    return-void
.end method


# virtual methods
.method public getBaseDistance()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_baseDistance:D

    return-wide v0
.end method

.method public getCamera()Lcom/ardor3d/renderer/Camera;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_camera:Lcom/ardor3d/renderer/Camera;

    return-object v0
.end method

.method public getLookAtPoint()Lcom/ardor3d/math/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_lookAtPoint:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getLookAtSpatial()Lcom/ardor3d/scenegraph/Spatial;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_lookAtSpatial:Lcom/ardor3d/scenegraph/Spatial;

    return-object v0
.end method

.method public getMaxAscent()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_maxAscent:D

    return-wide v0
.end method

.method public getMaxZoomDistance()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_maxZoomDistance:D

    return-wide v0
.end method

.method public getMinAscent()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_minAscent:D

    return-wide v0
.end method

.method public getMinZoomDistance()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_minZoomDistance:D

    return-wide v0
.end method

.method public getTargetType()Lcom/ardor3d/input/control/OrbitCamControl$TargetType;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_targetType:Lcom/ardor3d/input/control/OrbitCamControl$TargetType;

    return-object v0
.end method

.method public getWorldUpVec()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_worldUpVec:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getXSpeed()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_xSpeed:D

    return-wide v0
.end method

.method public getYSpeed()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_ySpeed:D

    return-wide v0
.end method

.method public getZoomSpeed()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_zoomSpeed:D

    return-wide v0
.end method

.method public isInvertedWheel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_invertedWheel:Z

    return v0
.end method

.method public isInvertedX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_invertedX:Z

    return v0
.end method

.method public isInvertedY()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_invertedY:Z

    return v0
.end method

.method public makeDirty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_dirty:Z

    return-void
.end method

.method public move(DD)V
    .locals 8

    iget-boolean v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_invertedX:Z

    if-eqz v0, :cond_0

    neg-double p1, p1

    :cond_0
    iget-boolean v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_invertedY:Z

    if-eqz v0, :cond_1

    neg-double p3, p3

    :cond_1
    iget-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_sphereCoords:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    sub-double/2addr v1, p1

    const-wide p1, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v1, v2, p1, p2}, Lcom/ardor3d/math/MathUtils;->moduloPositive(DD)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/ardor3d/math/Vector3;->setY(D)V

    iget-object p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_sphereCoords:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v0

    add-double v2, v0, p3

    iget-wide v4, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_minAscent:D

    iget-wide v6, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_maxAscent:D

    invoke-static/range {v2 .. v7}, Lcom/ardor3d/math/MathUtils;->clamp(DDD)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    invoke-virtual {p0}, Lcom/ardor3d/input/control/OrbitCamControl;->makeDirty()V

    return-void
.end method

.method public setBaseDistance(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_baseDistance:D

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/input/control/OrbitCamControl;->zoom(D)V

    return-void
.end method

.method public setCamera(Lcom/ardor3d/renderer/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_camera:Lcom/ardor3d/renderer/Camera;

    return-void
.end method

.method public setInvertedWheel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_invertedWheel:Z

    return-void
.end method

.method public setInvertedX(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_invertedX:Z

    return-void
.end method

.method public setInvertedY(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_invertedY:Z

    return-void
.end method

.method public setLookAtPoint(Lcom/ardor3d/math/Vector3;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_lookAtPoint:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_dirty:Z

    iput-object p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_lookAtPoint:Lcom/ardor3d/math/Vector3;

    sget-object p1, Lcom/ardor3d/input/control/OrbitCamControl$TargetType;->Point:Lcom/ardor3d/input/control/OrbitCamControl$TargetType;

    iput-object p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_targetType:Lcom/ardor3d/input/control/OrbitCamControl$TargetType;

    return-void
.end method

.method public setLookAtSpatial(Lcom/ardor3d/scenegraph/Spatial;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_lookAtSpatial:Lcom/ardor3d/scenegraph/Spatial;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_dirty:Z

    iput-object p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_lookAtSpatial:Lcom/ardor3d/scenegraph/Spatial;

    sget-object p1, Lcom/ardor3d/input/control/OrbitCamControl$TargetType;->Spatial:Lcom/ardor3d/input/control/OrbitCamControl$TargetType;

    iput-object p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_targetType:Lcom/ardor3d/input/control/OrbitCamControl$TargetType;

    return-void
.end method

.method public setMaxAscent(D)V
    .locals 2

    const-wide v0, 0x3ff91e684623b62cL    # 1.5699236621688994

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_maxAscent:D

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/ardor3d/input/control/OrbitCamControl;->move(DD)V

    return-void
.end method

.method public setMaxZoomDistance(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_maxZoomDistance:D

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/input/control/OrbitCamControl;->zoom(D)V

    return-void
.end method

.method public setMinAscent(D)V
    .locals 2

    const-wide v0, -0x4006e197b9dc49d4L    # -1.5699236621688994

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_minAscent:D

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/ardor3d/input/control/OrbitCamControl;->move(DD)V

    return-void
.end method

.method public setMinZoomDistance(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_minZoomDistance:D

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/input/control/OrbitCamControl;->zoom(D)V

    return-void
.end method

.method public setSphereCoords(DDD)V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_sphereCoords:Lcom/ardor3d/math/Vector3;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    .line 4
    invoke-virtual {p0}, Lcom/ardor3d/input/control/OrbitCamControl;->makeDirty()V

    return-void
.end method

.method public setSphereCoords(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_sphereCoords:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/input/control/OrbitCamControl;->makeDirty()V

    return-void
.end method

.method public setWorldUpVec(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_worldUpVec:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_dirty:Z

    return-void
.end method

.method public setXSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_xSpeed:D

    return-void
.end method

.method public setYSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_ySpeed:D

    return-void
.end method

.method public setZoomSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_zoomSpeed:D

    return-void
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

    new-instance v1, Lcom/ardor3d/input/logical/MouseWheelMovedCondition;

    invoke-direct {v1}, Lcom/ardor3d/input/logical/MouseWheelMovedCondition;-><init>()V

    invoke-static {}, Lcom/ardor3d/input/logical/TriggerConditions;->mouseMoved()Lcom/ardor3d/input/logical/MouseMovedCondition;

    move-result-object v2

    invoke-static {v2, v0}, Lw2/J;->e(Lw2/I;Lw2/I;)Lw2/I;

    move-result-object v0

    new-instance v2, Lcom/ardor3d/input/control/OrbitCamControl$1;

    invoke-direct {v2, p0}, Lcom/ardor3d/input/control/OrbitCamControl$1;-><init>(Lcom/ardor3d/input/control/OrbitCamControl;)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ardor3d/input/logical/TriggerConditions;->mouseMoved()Lcom/ardor3d/input/logical/MouseMovedCondition;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lw2/J;->t(Lw2/I;Lw2/I;)Lw2/I;

    move-result-object p2

    new-instance v0, Lcom/ardor3d/input/logical/InputTrigger;

    invoke-direct {v0, p2, v2}, Lcom/ardor3d/input/logical/InputTrigger;-><init>(Lw2/I;Lcom/ardor3d/input/logical/TriggerAction;)V

    iput-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_mouseTrigger:Lcom/ardor3d/input/logical/InputTrigger;

    invoke-virtual {p1, v0}, Lcom/ardor3d/input/logical/LogicalLayer;->registerTrigger(Lcom/ardor3d/input/logical/InputTrigger;)V

    return-void
.end method

.method public update(D)V
    .locals 2

    invoke-virtual {p0}, Lcom/ardor3d/input/control/OrbitCamControl;->updateTargetPos()V

    iget-boolean p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_dirty:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_worldUpVec:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_sphereCoords:Lcom/ardor3d/math/Vector3;

    iget-object p2, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_camPosition:Lcom/ardor3d/math/Vector3;

    invoke-static {p1, p2}, Lcom/ardor3d/math/MathUtils;->sphericalToCartesian(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_worldUpVec:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide p1

    cmpl-double p1, p1, v0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_sphereCoords:Lcom/ardor3d/math/Vector3;

    iget-object p2, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_camPosition:Lcom/ardor3d/math/Vector3;

    invoke-static {p1, p2}, Lcom/ardor3d/math/MathUtils;->sphericalToCartesianZ(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_camera:Lcom/ardor3d/renderer/Camera;

    iget-object p2, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_camPosition:Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_lookAtPoint:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p2, v0}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/Camera;->setLocation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_camera:Lcom/ardor3d/renderer/Camera;

    iget-object p2, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_lookAtPoint:Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_worldUpVec:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, p2, v0}, Lcom/ardor3d/renderer/Camera;->lookAt(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_dirty:Z

    return-void
.end method

.method public updateTargetPos()V
    .locals 9

    iget-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_targetType:Lcom/ardor3d/input/control/OrbitCamControl$TargetType;

    sget-object v1, Lcom/ardor3d/input/control/OrbitCamControl$TargetType;->Spatial:Lcom/ardor3d/input/control/OrbitCamControl$TargetType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_lookAtPoint:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_lookAtPoint:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_lookAtPoint:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v4

    iget-object v6, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_lookAtSpatial:Lcom/ardor3d/scenegraph/Spatial;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/Spatial;->getWorldTransform()Lcom/ardor3d/math/type/ReadOnlyTransform;

    move-result-object v6

    sget-object v7, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    iget-object v8, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_lookAtPoint:Lcom/ardor3d/math/Vector3;

    invoke-interface {v6, v7, v8}, Lcom/ardor3d/math/type/ReadOnlyTransform;->applyForward(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object v6, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_lookAtPoint:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v6

    cmpl-double v0, v0, v6

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_lookAtPoint:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v0

    cmpl-double v0, v2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_lookAtPoint:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v0

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/input/control/OrbitCamControl;->makeDirty()V

    :cond_1
    return-void
.end method

.method public zoom(D)V
    .locals 10

    iget-boolean v0, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_invertedWheel:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-double v0, v0

    mul-double/2addr v0, p1

    iget-wide p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_baseDistance:D

    mul-double/2addr v0, p1

    iget-object p1, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_sphereCoords:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    add-double v4, v2, v0

    iget-wide v6, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_minZoomDistance:D

    iget-wide v8, p0, Lcom/ardor3d/input/control/OrbitCamControl;->_maxZoomDistance:D

    invoke-static/range {v4 .. v9}, Lcom/ardor3d/math/MathUtils;->clamp(DDD)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->setX(D)V

    invoke-virtual {p0}, Lcom/ardor3d/input/control/OrbitCamControl;->makeDirty()V

    return-void
.end method
