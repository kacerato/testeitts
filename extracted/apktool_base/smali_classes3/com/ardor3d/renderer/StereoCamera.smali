.class public Lcom/ardor3d/renderer/StereoCamera;
.super Lcom/ardor3d/renderer/Camera;
.source "SourceFile"


# instance fields
.field private _aperture:D

.field private _eyeSeparation:D

.field private _focalDistance:D

.field private final _leftCamera:Lcom/ardor3d/renderer/Camera;

.field private final _rightCamera:Lcom/ardor3d/renderer/Camera;

.field private _sideBySideMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x64

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/ardor3d/renderer/StereoCamera;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ardor3d/renderer/Camera;-><init>(II)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_sideBySideMode:Z

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 4
    iput-wide v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_focalDistance:D

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr v0, v2

    .line 5
    iput-wide v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_eyeSeparation:D

    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 6
    iput-wide v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_aperture:D

    .line 7
    new-instance v0, Lcom/ardor3d/renderer/Camera;

    invoke-direct {v0, p1, p2}, Lcom/ardor3d/renderer/Camera;-><init>(II)V

    iput-object v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_leftCamera:Lcom/ardor3d/renderer/Camera;

    .line 8
    new-instance v0, Lcom/ardor3d/renderer/Camera;

    invoke-direct {v0, p1, p2}, Lcom/ardor3d/renderer/Camera;-><init>(II)V

    iput-object v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_rightCamera:Lcom/ardor3d/renderer/Camera;

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/renderer/Camera;)V
    .locals 4

    .line 9
    invoke-direct {p0, p1}, Lcom/ardor3d/renderer/Camera;-><init>(Lcom/ardor3d/renderer/Camera;)V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_sideBySideMode:Z

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 11
    iput-wide v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_focalDistance:D

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr v0, v2

    .line 12
    iput-wide v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_eyeSeparation:D

    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 13
    iput-wide v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_aperture:D

    .line 14
    new-instance v0, Lcom/ardor3d/renderer/Camera;

    invoke-direct {v0, p1}, Lcom/ardor3d/renderer/Camera;-><init>(Lcom/ardor3d/renderer/Camera;)V

    iput-object v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_leftCamera:Lcom/ardor3d/renderer/Camera;

    .line 15
    new-instance v0, Lcom/ardor3d/renderer/Camera;

    invoke-direct {v0, p1}, Lcom/ardor3d/renderer/Camera;-><init>(Lcom/ardor3d/renderer/Camera;)V

    iput-object v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_rightCamera:Lcom/ardor3d/renderer/Camera;

    return-void
.end method


# virtual methods
.method public getAperture()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_aperture:D

    return-wide v0
.end method

.method public getEyeSeparation()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_eyeSeparation:D

    return-wide v0
.end method

.method public getFocalDistance()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_focalDistance:D

    return-wide v0
.end method

.method public getLeftCamera()Lcom/ardor3d/renderer/Camera;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_leftCamera:Lcom/ardor3d/renderer/Camera;

    return-object v0
.end method

.method public getRightCamera()Lcom/ardor3d/renderer/Camera;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_rightCamera:Lcom/ardor3d/renderer/Camera;

    return-object v0
.end method

.method public isSideBySideMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_sideBySideMode:Z

    return v0
.end method

.method public resize(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/ardor3d/renderer/Camera;->resize(II)V

    iget-object v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_leftCamera:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v0, p1, p2}, Lcom/ardor3d/renderer/Camera;->resize(II)V

    iget-object v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_rightCamera:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v0, p1, p2}, Lcom/ardor3d/renderer/Camera;->resize(II)V

    return-void
.end method

.method public setAperture(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/renderer/StereoCamera;->_aperture:D

    return-void
.end method

.method public setEyeSeparation(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/renderer/StereoCamera;->_eyeSeparation:D

    return-void
.end method

.method public setFocalDistance(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/renderer/StereoCamera;->_focalDistance:D

    return-void
.end method

.method public setSideBySideMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/StereoCamera;->_sideBySideMode:Z

    invoke-virtual {p0}, Lcom/ardor3d/renderer/StereoCamera;->setupLeftRightCameras()V

    return-void
.end method

.method public setupLeftRightCameras()V
    .locals 25

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ardor3d/renderer/StereoCamera;->_sideBySideMode:Z

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/ardor3d/renderer/StereoCamera;->_leftCamera:Lcom/ardor3d/renderer/Camera;

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    invoke-virtual/range {v2 .. v10}, Lcom/ardor3d/renderer/Camera;->setViewPort(DDDD)V

    iget-object v11, v0, Lcom/ardor3d/renderer/StereoCamera;->_rightCamera:Lcom/ardor3d/renderer/Camera;

    const-wide/16 v16, 0x0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v11 .. v19}, Lcom/ardor3d/renderer/Camera;->setViewPort(DDDD)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/ardor3d/renderer/StereoCamera;->_leftCamera:Lcom/ardor3d/renderer/Camera;

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v1 .. v9}, Lcom/ardor3d/renderer/Camera;->setViewPort(DDDD)V

    iget-object v10, v0, Lcom/ardor3d/renderer/StereoCamera;->_rightCamera:Lcom/ardor3d/renderer/Camera;

    const-wide/16 v15, 0x0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const-wide/16 v11, 0x0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v10 .. v18}, Lcom/ardor3d/renderer/Camera;->setViewPort(DDDD)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getHeight()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    iget-boolean v3, v0, Lcom/ardor3d/renderer/StereoCamera;->_sideBySideMode:Z

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    if-eqz v3, :cond_1

    move-wide v6, v4

    goto :goto_1

    :cond_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    :goto_1
    div-double/2addr v1, v6

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getFrustumNear()D

    move-result-wide v6

    iget-wide v8, v0, Lcom/ardor3d/renderer/StereoCamera;->_aperture:D

    div-double/2addr v8, v4

    invoke-static {v8, v9}, Lcom/ardor3d/math/MathUtils;->tan(D)D

    move-result-wide v3

    mul-double/2addr v3, v6

    neg-double v5, v3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    iget-wide v9, v0, Lcom/ardor3d/renderer/StereoCamera;->_eyeSeparation:D

    mul-double/2addr v9, v7

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getFrustumNear()D

    move-result-wide v7

    mul-double/2addr v9, v7

    iget-wide v7, v0, Lcom/ardor3d/renderer/StereoCamera;->_focalDistance:D

    div-double v21, v9, v7

    neg-double v7, v1

    mul-double v23, v7, v3

    add-double v13, v23, v21

    mul-double/2addr v1, v3

    add-double v15, v1, v21

    iget-object v8, v0, Lcom/ardor3d/renderer/StereoCamera;->_leftCamera:Lcom/ardor3d/renderer/Camera;

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getFrustumNear()D

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getFrustumFar()D

    move-result-wide v11

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    invoke-virtual/range {v8 .. v20}, Lcom/ardor3d/renderer/Camera;->setFrustum(DDDDDD)V

    sub-double v13, v23, v21

    sub-double v15, v1, v21

    iget-object v8, v0, Lcom/ardor3d/renderer/StereoCamera;->_rightCamera:Lcom/ardor3d/renderer/Camera;

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getFrustumNear()D

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getFrustumFar()D

    move-result-wide v11

    invoke-virtual/range {v8 .. v20}, Lcom/ardor3d/renderer/Camera;->setFrustum(DDDDDD)V

    return-void
.end method

.method public switchToLeftCamera(Lcom/ardor3d/renderer/Renderer;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_leftCamera:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/Camera;->update()V

    iget-object v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_leftCamera:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v0, p1}, Lcom/ardor3d/renderer/Camera;->apply(Lcom/ardor3d/renderer/Renderer;)V

    return-void
.end method

.method public switchToRightCamera(Lcom/ardor3d/renderer/Renderer;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_rightCamera:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/Camera;->update()V

    iget-object v0, p0, Lcom/ardor3d/renderer/StereoCamera;->_rightCamera:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v0, p1}, Lcom/ardor3d/renderer/Camera;->apply(Lcom/ardor3d/renderer/Renderer;)V

    return-void
.end method

.method public updateLeftRightCameraFrames()V
    .locals 7

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getUp()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ardor3d/math/Vector3;->crossLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    iget-wide v3, p0, Lcom/ardor3d/renderer/StereoCamera;->_eyeSeparation:D

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/renderer/StereoCamera;->_leftCamera:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getLeft()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getUp()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/ardor3d/renderer/Camera;->setFrame(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object v2, p0, Lcom/ardor3d/renderer/StereoCamera;->_rightCamera:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->add(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getLeft()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getUp()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/ardor3d/renderer/Camera;->setFrame(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-void
.end method
