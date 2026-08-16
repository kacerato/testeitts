.class public Lcom/threed/jpct/Camera;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CAMERA_DONT_MOVE:I = 0x7

.field public static final CAMERA_MOVEDOWN:I = 0x3

.field public static final CAMERA_MOVEIN:I = 0x1

.field public static final CAMERA_MOVELEFT:I = 0x6

.field public static final CAMERA_MOVEOUT:I = 0x2

.field public static final CAMERA_MOVERIGHT:I = 0x5

.field public static final CAMERA_MOVEUP:I = 0x4

.field public static final DONT_SLIDE:Z = false

.field public static final ELLIPSOID_ALIGNED:I = 0x0

.field public static final ELLIPSOID_TRANSFORMED:I = 0x1

.field public static final SLIDE:Z = true

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected backBx:F

.field protected backBy:F

.field protected backBz:F

.field protected backMatrix:Lcom/threed/jpct/Matrix;

.field private cameraFOV:F

.field divx:F

.field divy:F

.field private ellipsoidMode:I

.field private higherLimit:F

.field protected lookAtTmp:Lcom/threed/jpct/Matrix;

.field private lowerLimit:F

.field private projectionMatrix:Lcom/threed/jpct/Matrix;

.field scaleX:F

.field scaleY:F

.field private workMatrix:[F

.field private yFOV:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Camera;->lookAtTmp:Lcom/threed/jpct/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/Camera;->ellipsoidMode:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/Camera;->workMatrix:[F

    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Camera;->projectionMatrix:Lcom/threed/jpct/Matrix;

    sget v0, Lcom/threed/jpct/Config;->defaultCameraFOV:F

    iput v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/threed/jpct/Camera;->yFOV:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/threed/jpct/Camera;->scaleX:F

    iput v0, p0, Lcom/threed/jpct/Camera;->scaleY:F

    iput v0, p0, Lcom/threed/jpct/Camera;->divx:F

    iput v0, p0, Lcom/threed/jpct/Camera;->divy:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/threed/jpct/Camera;->lowerLimit:F

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/threed/jpct/Camera;->higherLimit:F

    return-void
.end method

.method private frustum([FFFFFFF)V
    .locals 6

    sub-float v0, p3, p2

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    sub-float v2, p5, p4

    div-float v2, v1, v2

    sub-float v3, p6, p7

    div-float/2addr v1, v3

    mul-float v3, p6, v0

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    mul-float v5, p6, v2

    mul-float/2addr v5, v4

    add-float/2addr p3, p2

    mul-float/2addr p3, v0

    mul-float/2addr p3, v4

    add-float/2addr p5, p4

    mul-float/2addr p5, v2

    add-float p2, p7, p6

    mul-float/2addr p2, v1

    mul-float/2addr p7, p6

    mul-float/2addr p7, v1

    mul-float/2addr p7, v4

    const/4 p4, 0x0

    aput v3, p1, p4

    const/4 p4, 0x1

    const/4 p6, 0x0

    aput p6, p1, p4

    const/4 p4, 0x2

    aput p6, p1, p4

    const/4 p4, 0x3

    aput p6, p1, p4

    const/4 p4, 0x4

    aput p6, p1, p4

    const/4 p4, 0x5

    aput v5, p1, p4

    const/4 p4, 0x6

    aput p6, p1, p4

    const/4 p4, 0x7

    aput p6, p1, p4

    const/16 p4, 0x8

    aput p3, p1, p4

    const/16 p3, 0x9

    aput p5, p1, p3

    const/16 p3, 0xa

    aput p2, p1, p3

    const/16 p2, 0xb

    const/high16 p3, -0x40800000    # -1.0f

    aput p3, p1, p2

    const/16 p2, 0xc

    aput p6, p1, p2

    const/16 p2, 0xd

    aput p6, p1, p2

    const/16 p2, 0xe

    aput p7, p1, p2

    const/16 p2, 0xf

    aput p6, p1, p2

    return-void
.end method

.method private getVector(I)Lcom/threed/jpct/SimpleVector;
    .locals 1

    .line 1
    invoke-static {}, Lcom/threed/jpct/SimpleVector;->create()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/threed/jpct/Camera;->getVector(ILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method private getVector(ILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v1, 0x0

    aget-object v1, v0, v1

    aget v1, v1, p1

    const/4 v2, 0x1

    .line 3
    aget-object v2, v0, v2

    aget v2, v2, p1

    const/4 v3, 0x2

    .line 4
    aget-object v0, v0, v3

    aget p1, v0, p1

    mul-float v0, v1, v1

    mul-float v3, v2, v2

    add-float/2addr v0, v3

    mul-float v3, p1, p1

    add-float/2addr v0, v3

    .line 5
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v0

    mul-float/2addr v1, v3

    mul-float/2addr v2, v3

    mul-float/2addr p1, v3

    .line 6
    invoke-virtual {p2, v1, v2, p1}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    return-object p2
.end method


# virtual methods
.method public align(Lcom/threed/jpct/Object3D;)V
    .locals 2

    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getRotationMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getScale()F

    move-result p1

    div-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Matrix;->scalarMul(F)V

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->invert3x3()Lcom/threed/jpct/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    return-void
.end method

.method public calcFOV(II)V
    .locals 4

    iget v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sget-boolean v2, Lcom/threed/jpct/Config;->autoMaintainAspectRatio:Z

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/threed/jpct/Camera;->yFOV:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/threed/jpct/Camera;->divx:F

    int-to-float v2, p2

    int-to-float v3, p1

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/threed/jpct/Camera;->divy:F

    goto :goto_1

    :cond_1
    :goto_0
    iput v0, p0, Lcom/threed/jpct/Camera;->divx:F

    iput v0, p0, Lcom/threed/jpct/Camera;->divy:F

    iget v0, p0, Lcom/threed/jpct/Camera;->yFOV:F

    cmpl-float v2, v0, v3

    if-eqz v2, :cond_2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/Camera;->divy:F

    :cond_2
    :goto_1
    int-to-float p1, p1

    iget v0, p0, Lcom/threed/jpct/Camera;->divx:F

    mul-float v2, v0, v1

    div-float/2addr p1, v2

    iput p1, p0, Lcom/threed/jpct/Camera;->scaleX:F

    int-to-float p1, p2

    iget p2, p0, Lcom/threed/jpct/Camera;->divy:F

    mul-float/2addr v1, p2

    div-float/2addr p1, v1

    iput p1, p0, Lcom/threed/jpct/Camera;->scaleY:F

    sget-boolean p1, Lcom/threed/jpct/Config;->glIgnoreNearPlane:Z

    if-nez p1, :cond_3

    sget p1, Lcom/threed/jpct/Config;->nearPlane:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/Camera;->divx:F

    div-float/2addr p2, p1

    iput p2, p0, Lcom/threed/jpct/Camera;->divy:F

    :cond_3
    return-void
.end method

.method public convertDEGAngleIntoFOV(F)F
    .locals 4

    float-to-double v0, p1

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method

.method public convertRADAngleIntoFOV(F)F
    .locals 4

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method

.method public decreaseFOV(F)V
    .locals 2

    iget v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    iget p1, p0, Lcom/threed/jpct/Camera;->higherLimit:F

    cmpl-float v1, v0, p1

    if-lez v1, :cond_0

    iput p1, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/threed/jpct/Camera;->lowerLimit:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_1

    iput p1, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    :cond_1
    :goto_0
    return-void
.end method

.method public getBack()Lcom/threed/jpct/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    return-object v0
.end method

.method public getDirection()Lcom/threed/jpct/SimpleVector;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/threed/jpct/Camera;->getVector(I)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getDirection(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/threed/jpct/Camera;->getVector(ILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public getEllipsoidMode()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/Camera;->ellipsoidMode:I

    return v0
.end method

.method public getFOV()F
    .locals 1

    iget v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    return v0
.end method

.method public getMaxFOV()F
    .locals 1

    iget v0, p0, Lcom/threed/jpct/Camera;->higherLimit:F

    return v0
.end method

.method public getMinFOV()F
    .locals 1

    iget v0, p0, Lcom/threed/jpct/Camera;->lowerLimit:F

    return v0
.end method

.method public getPosition()Lcom/threed/jpct/SimpleVector;
    .locals 3

    .line 1
    iget v0, p0, Lcom/threed/jpct/Camera;->backBx:F

    iget v1, p0, Lcom/threed/jpct/Camera;->backBy:F

    iget v2, p0, Lcom/threed/jpct/Camera;->backBz:F

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 3

    .line 2
    iget v0, p0, Lcom/threed/jpct/Camera;->backBx:F

    iget v1, p0, Lcom/threed/jpct/Camera;->backBy:F

    iget v2, p0, Lcom/threed/jpct/Camera;->backBz:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    return-object p1
.end method

.method public getProjectionMatrix(Lcom/threed/jpct/FrameBuffer;)Lcom/threed/jpct/Matrix;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/threed/jpct/Config;->glIgnoreNearPlane:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    sget v0, Lcom/threed/jpct/Config;->nearPlane:F

    :goto_0
    sget v1, Lcom/threed/jpct/Config;->farPlane:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/threed/jpct/Camera;->getProjectionMatrix(Lcom/threed/jpct/FrameBuffer;FF)Lcom/threed/jpct/Matrix;

    move-result-object p1

    return-object p1
.end method

.method public getProjectionMatrix(Lcom/threed/jpct/FrameBuffer;FF)Lcom/threed/jpct/Matrix;
    .locals 10

    .line 2
    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 3
    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 4
    iget-object v2, p1, Lcom/threed/jpct/FrameBuffer;->renderTarget:Lcom/threed/jpct/Texture;

    if-eqz v2, :cond_1

    .line 5
    iget v0, p1, Lcom/threed/jpct/FrameBuffer;->virtualHeight:I

    if-lez v0, :cond_0

    iget p1, p1, Lcom/threed/jpct/FrameBuffer;->virtualWidth:I

    if-lez p1, :cond_0

    int-to-float v0, v0

    :goto_0
    int-to-float v1, p1

    goto :goto_1

    .line 6
    :cond_0
    iget p1, v2, Lcom/threed/jpct/Texture;->height:I

    int-to-float v0, p1

    .line 7
    iget p1, v2, Lcom/threed/jpct/Texture;->width:I

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/threed/jpct/Camera;->getFOV()F

    move-result p1

    .line 9
    sget-boolean v2, Lcom/threed/jpct/Config;->autoMaintainAspectRatio:Z

    if-eqz v2, :cond_2

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    goto :goto_2

    :cond_2
    move v0, p1

    .line 10
    :goto_2
    invoke-virtual {p0}, Lcom/threed/jpct/Camera;->getYFOV()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/threed/jpct/Camera;->getYFOV()F

    move-result v0

    :cond_3
    mul-float/2addr p1, p2

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v7, v0, v1

    neg-float v0, v0

    mul-float v6, v0, v1

    neg-float v0, p1

    mul-float v4, v0, v1

    mul-float v5, p1, v1

    .line 12
    iget-object v3, p0, Lcom/threed/jpct/Camera;->workMatrix:[F

    move-object v2, p0

    move v8, p2

    move v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/threed/jpct/Camera;->frustum([FFFFFFF)V

    .line 13
    iget-object p1, p0, Lcom/threed/jpct/Camera;->projectionMatrix:Lcom/threed/jpct/Matrix;

    iget-object p2, p0, Lcom/threed/jpct/Camera;->workMatrix:[F

    invoke-virtual {p1, p2}, Lcom/threed/jpct/Matrix;->setDump([F)V

    .line 14
    iget-object p1, p0, Lcom/threed/jpct/Camera;->projectionMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {p1}, Lcom/threed/jpct/Matrix;->transformToGL()V

    .line 15
    iget-object p1, p0, Lcom/threed/jpct/Camera;->projectionMatrix:Lcom/threed/jpct/Matrix;

    return-object p1
.end method

.method public getSideVector()Lcom/threed/jpct/SimpleVector;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/threed/jpct/Camera;->getVector(I)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getUpVector()Lcom/threed/jpct/SimpleVector;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/threed/jpct/Camera;->getVector(I)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    return-object v0
.end method

.method public getXAxis()Lcom/threed/jpct/SimpleVector;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->getXAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getYAxis()Lcom/threed/jpct/SimpleVector;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->getYAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getYFOV()F
    .locals 1

    iget v0, p0, Lcom/threed/jpct/Camera;->yFOV:F

    return v0
.end method

.method public getZAxis()Lcom/threed/jpct/SimpleVector;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->getZAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public increaseFOV(F)V
    .locals 2

    iget v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    iget p1, p0, Lcom/threed/jpct/Camera;->higherLimit:F

    cmpl-float v1, v0, p1

    if-lez v1, :cond_0

    iput p1, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/threed/jpct/Camera;->lowerLimit:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_1

    iput p1, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    :cond_1
    :goto_0
    return-void
.end method

.method public lookAt(Lcom/threed/jpct/SimpleVector;)V
    .locals 13

    iget-object v0, p0, Lcom/threed/jpct/Camera;->lookAtTmp:Lcom/threed/jpct/Matrix;

    if-nez v0, :cond_0

    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Camera;->lookAtTmp:Lcom/threed/jpct/Matrix;

    :cond_0
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p0, Lcom/threed/jpct/Camera;->backBx:F

    sub-float/2addr v0, v1

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v2, p0, Lcom/threed/jpct/Camera;->backBy:F

    sub-float/2addr v1, v2

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    iget v2, p0, Lcom/threed/jpct/Camera;->backBz:F

    sub-float/2addr p1, v2

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-nez v3, :cond_1

    cmpl-float v3, p1, v2

    if-nez v3, :cond_1

    const v3, 0x1e3ce508    # 1.0E-20f

    add-float/2addr v0, v3

    :cond_1
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, p1, p1

    add-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_2

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    div-float/2addr p1, v3

    :cond_2
    iget-object v3, p0, Lcom/threed/jpct/Camera;->lookAtTmp:Lcom/threed/jpct/Matrix;

    invoke-virtual {v3}, Lcom/threed/jpct/Matrix;->setIdentity()V

    iget-object v4, v3, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v5, 0x0

    aget-object v6, v4, v5

    const/4 v7, 0x1

    aput v2, v6, v7

    aget-object v8, v4, v7

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v8, v7

    const/4 v10, 0x2

    aget-object v11, v4, v10

    aput v2, v11, v7

    aput v0, v6, v10

    aput v1, v8, v10

    aput p1, v11, v10

    mul-float v6, p1, v9

    mul-float v8, v1, v2

    sub-float/2addr v6, v8

    mul-float v11, v0, v2

    mul-float v12, p1, v2

    sub-float/2addr v11, v12

    mul-float/2addr v9, v0

    sub-float/2addr v8, v9

    mul-float v9, v6, v6

    mul-float v12, v11, v11

    add-float/2addr v9, v12

    mul-float v12, v8, v8

    add-float/2addr v9, v12

    invoke-static {v9}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v9

    cmpl-float v12, v9, v2

    if-eqz v12, :cond_3

    div-float/2addr v6, v9

    div-float/2addr v11, v9

    div-float/2addr v8, v9

    :cond_3
    mul-float v9, v1, v8

    mul-float v12, p1, v11

    sub-float/2addr v9, v12

    mul-float/2addr p1, v6

    mul-float v12, v0, v8

    sub-float/2addr p1, v12

    mul-float/2addr v0, v11

    mul-float/2addr v1, v6

    sub-float/2addr v0, v1

    mul-float v1, v9, v9

    mul-float v12, p1, p1

    add-float/2addr v1, v12

    mul-float v12, v0, v0

    add-float/2addr v1, v12

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_4

    div-float/2addr v9, v1

    div-float/2addr p1, v1

    div-float/2addr v0, v1

    :cond_4
    aget-object v1, v4, v5

    aput v6, v1, v5

    aget-object v2, v4, v7

    aput v11, v2, v5

    aget-object v4, v4, v10

    aput v8, v4, v5

    aput v9, v1, v7

    aput p1, v2, v7

    aput v0, v4, v7

    invoke-virtual {v3}, Lcom/threed/jpct/Matrix;->orthonormalize()V

    iget-object p1, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {p1, v3}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    return-void
.end method

.method public moveCamera(IF)V
    .locals 5

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    mul-float/2addr v0, p2

    add-int/2addr p1, v1

    const/4 p2, 0x2

    .line 1
    div-int/2addr p1, p2

    sub-int/2addr p1, v1

    rsub-int/lit8 p1, p1, 0x2

    .line 2
    iget v2, p0, Lcom/threed/jpct/Camera;->backBx:F

    iget-object v3, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    iget-object v3, v3, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v4, 0x0

    aget-object v4, v3, v4

    aget v4, v4, p1

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    iput v2, p0, Lcom/threed/jpct/Camera;->backBx:F

    .line 3
    iget v2, p0, Lcom/threed/jpct/Camera;->backBy:F

    aget-object v1, v3, v1

    aget v1, v1, p1

    mul-float/2addr v1, v0

    add-float/2addr v2, v1

    iput v2, p0, Lcom/threed/jpct/Camera;->backBy:F

    .line 4
    iget v1, p0, Lcom/threed/jpct/Camera;->backBz:F

    aget-object p2, v3, p2

    aget p1, p2, p1

    mul-float/2addr p1, v0

    add-float/2addr v1, p1

    iput v1, p0, Lcom/threed/jpct/Camera;->backBz:F

    return-void
.end method

.method public moveCamera(Lcom/threed/jpct/SimpleVector;F)V
    .locals 2

    .line 5
    iget v0, p0, Lcom/threed/jpct/Camera;->backBx:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/Camera;->backBx:F

    .line 6
    iget v0, p0, Lcom/threed/jpct/Camera;->backBy:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/threed/jpct/Camera;->backBy:F

    .line 7
    iget v0, p0, Lcom/threed/jpct/Camera;->backBz:F

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/Camera;->backBz:F

    return-void
.end method

.method public rotateAxis(Lcom/threed/jpct/SimpleVector;F)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Matrix;->rotateAxis(Lcom/threed/jpct/SimpleVector;F)V

    return-void
.end method

.method public rotateCameraAxis(Lcom/threed/jpct/SimpleVector;F)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    neg-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Matrix;->rotateAxis(Lcom/threed/jpct/SimpleVector;F)V

    return-void
.end method

.method public rotateCameraX(F)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    neg-float p1, p1

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->rotateX(F)V

    return-void
.end method

.method public rotateCameraY(F)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    neg-float p1, p1

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->rotateY(F)V

    return-void
.end method

.method public rotateCameraZ(F)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    neg-float p1, p1

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->rotateZ(F)V

    return-void
.end method

.method public rotateX(F)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->rotateX(F)V

    return-void
.end method

.method public rotateY(F)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->rotateY(F)V

    return-void
.end method

.method public rotateZ(F)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->rotateZ(F)V

    return-void
.end method

.method public setBack(Lcom/threed/jpct/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    return-void
.end method

.method public setEllipsoidMode(I)V
    .locals 0

    iput p1, p0, Lcom/threed/jpct/Camera;->ellipsoidMode:I

    return-void
.end method

.method public setFOV(F)V
    .locals 2

    iget v0, p0, Lcom/threed/jpct/Camera;->higherLimit:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/threed/jpct/Camera;->lowerLimit:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput p1, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    return-void
.end method

.method public setFOVLimits(FF)V
    .locals 0

    iput p1, p0, Lcom/threed/jpct/Camera;->lowerLimit:F

    iput p2, p0, Lcom/threed/jpct/Camera;->higherLimit:F

    return-void
.end method

.method public setFOVtoDefault()V
    .locals 1

    sget v0, Lcom/threed/jpct/Config;->defaultCameraFOV:F

    iput v0, p0, Lcom/threed/jpct/Camera;->cameraFOV:F

    return-void
.end method

.method public setOrientation(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p2, v0}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    iget-object v1, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/threed/jpct/Matrix;->setOrientation(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Z)V

    invoke-virtual {p2, v0}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    return-void
.end method

.method public setPosition(FFF)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/threed/jpct/Camera;->backBx:F

    .line 5
    iput p2, p0, Lcom/threed/jpct/Camera;->backBy:F

    .line 6
    iput p3, p0, Lcom/threed/jpct/Camera;->backBz:F

    return-void
.end method

.method public setPosition(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iput v0, p0, Lcom/threed/jpct/Camera;->backBx:F

    .line 2
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iput v0, p0, Lcom/threed/jpct/Camera;->backBy:F

    .line 3
    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    iput p1, p0, Lcom/threed/jpct/Camera;->backBz:F

    return-void
.end method

.method public setPositionToCenter(Lcom/threed/jpct/Object3D;)V
    .locals 1

    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getTransformedCenter()Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iput v0, p0, Lcom/threed/jpct/Camera;->backBx:F

    iget v0, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iput v0, p0, Lcom/threed/jpct/Camera;->backBy:F

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    iput p1, p0, Lcom/threed/jpct/Camera;->backBz:F

    return-void
.end method

.method public setYFOV(F)V
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/threed/jpct/Camera;->higherLimit:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/threed/jpct/Camera;->lowerLimit:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput p1, p0, Lcom/threed/jpct/Camera;->yFOV:F

    return-void
.end method

.method public transform(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 14

    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    new-instance v1, Lcom/threed/jpct/Matrix;

    invoke-direct {v1}, Lcom/threed/jpct/Matrix;-><init>()V

    iget-object v2, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iget v4, p0, Lcom/threed/jpct/Camera;->backBx:F

    neg-float v4, v4

    const/4 v5, 0x0

    aput v4, v2, v5

    iget v4, p0, Lcom/threed/jpct/Camera;->backBy:F

    neg-float v4, v4

    const/4 v6, 0x1

    aput v4, v2, v6

    iget v4, p0, Lcom/threed/jpct/Camera;->backBz:F

    neg-float v4, v4

    const/4 v7, 0x2

    aput v4, v2, v7

    invoke-virtual {v1, v0}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    iget-object v0, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v1, v0, v7

    aget v2, v1, v7

    aget-object v4, v0, v6

    aget v8, v4, v7

    aget-object v9, v0, v5

    aget v10, v9, v7

    aget v11, v9, v5

    aget v12, v4, v5

    aget v4, v4, v6

    aget v13, v1, v6

    aget v1, v1, v5

    aget v9, v9, v6

    aget-object v0, v0, v3

    aget v3, v0, v5

    aget v5, v0, v6

    aget v0, v0, v7

    iget v6, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v7, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v11, v6

    mul-float/2addr v12, v7

    add-float/2addr v11, v12

    mul-float/2addr v1, p1

    add-float/2addr v11, v1

    add-float/2addr v11, v3

    mul-float/2addr v9, v6

    mul-float/2addr v4, v7

    add-float/2addr v9, v4

    mul-float/2addr v13, p1

    add-float/2addr v9, v13

    add-float/2addr v9, v5

    mul-float/2addr v6, v10

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float/2addr p1, v2

    add-float/2addr v6, p1

    add-float/2addr v6, v0

    invoke-static {v11, v9, v6}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method
