.class public final Lcom/threed/jpct/Interact2D;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final VIEWPLANE_Z_VALUE:F = 1.0f

.field private static workMat:Lcom/threed/jpct/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    sput-object v0, Lcom/threed/jpct/Interact2D;->workMat:Lcom/threed/jpct/Matrix;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static project3D2D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0, v0}, Lcom/threed/jpct/Interact2D;->project3D2DInternal(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/Matrix;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized project3D2D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 2

    const-class v0, Lcom/threed/jpct/Interact2D;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {p0, p1, p2, v1, p3}, Lcom/threed/jpct/Interact2D;->project3D2DInternal(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/Matrix;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static project3D2DInternal(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/Matrix;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 11

    iget-object v0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    if-eqz p4, :cond_0

    sget-object v1, Lcom/threed/jpct/Interact2D;->workMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->setIdentity()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/threed/jpct/Matrix;

    invoke-direct {v1}, Lcom/threed/jpct/Matrix;-><init>()V

    invoke-static {}, Lcom/threed/jpct/SimpleVector;->create()Lcom/threed/jpct/SimpleVector;

    move-result-object p4

    :goto_0
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

    if-eqz p3, :cond_1

    invoke-virtual {p3, v1}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    goto :goto_1

    :cond_1
    move-object p3, v1

    :goto_1
    invoke-virtual {p3, v0}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    iget-object p3, p3, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, p3, v7

    aget v1, v0, v7

    aget-object v2, p3, v6

    aget v4, v2, v7

    aget-object v8, p3, v5

    aget v9, v8, v7

    aget-object p3, p3, v3

    aget v3, p3, v7

    iget v7, p2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v10, p2, Lcom/threed/jpct/SimpleVector;->y:F

    iget p2, p2, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v9, v7

    mul-float/2addr v4, v10

    add-float/2addr v9, v4

    mul-float/2addr v1, p2

    add-float/2addr v9, v1

    add-float/2addr v9, v3

    const/4 v1, 0x0

    cmpl-float v3, v9, v1

    if-lez v3, :cond_2

    aget v1, v8, v5

    aget v3, v2, v5

    aget v2, v2, v6

    aget v4, v0, v6

    aget v0, v0, v5

    aget v8, v8, v6

    aget v5, p3, v5

    aget p3, p3, v6

    mul-float/2addr v1, v7

    mul-float/2addr v3, v10

    add-float/2addr v1, v3

    mul-float/2addr v0, p2

    add-float/2addr v1, v0

    add-float/2addr v1, v5

    mul-float/2addr v7, v8

    mul-float/2addr v10, v2

    add-float/2addr v7, v10

    mul-float/2addr p2, v4

    add-float/2addr v7, p2

    add-float/2addr v7, p3

    iget p2, p1, Lcom/threed/jpct/FrameBuffer;->middleX:F

    const/high16 p3, 0x40000000    # 2.0f

    mul-float v0, p2, p3

    sget v2, Lcom/threed/jpct/Config;->viewportOffsetX:F

    mul-float/2addr v0, v2

    add-float/2addr p2, v0

    iget v0, p1, Lcom/threed/jpct/FrameBuffer;->middleY:F

    mul-float/2addr p3, v0

    sget v2, Lcom/threed/jpct/Config;->viewportOffsetY:F

    mul-float/2addr p3, v2

    add-float/2addr v0, p3

    iget p3, p1, Lcom/threed/jpct/FrameBuffer;->width:I

    iget p1, p1, Lcom/threed/jpct/FrameBuffer;->height:I

    invoke-virtual {p0, p3, p1}, Lcom/threed/jpct/Camera;->calcFOV(II)V

    const/high16 p1, 0x3f800000    # 1.0f

    div-float/2addr p1, v9

    iget p3, p0, Lcom/threed/jpct/Camera;->scaleX:F

    mul-float/2addr v1, p1

    mul-float/2addr p3, v1

    add-float/2addr p3, p2

    iget p0, p0, Lcom/threed/jpct/Camera;->scaleY:F

    mul-float/2addr v7, p1

    mul-float/2addr p0, v7

    add-float/2addr p0, v0

    invoke-virtual {p4, p3, p0, p1}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    return-object p4

    :cond_2
    invoke-virtual {p4, v1, v1, v1}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static projectCenter3D2D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/SimpleVector;
    .locals 2

    if-nez p0, :cond_0

    .line 2
    iget-object v0, p2, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    if-nez v0, :cond_0

    .line 3
    const-string p0, "Object doesn\'t belong to a world!"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 4
    new-instance p0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {p0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    .line 5
    iget-object p0, p2, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    iget-object p0, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/threed/jpct/Object3D;->getCenter()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    invoke-virtual {p2}, Lcom/threed/jpct/Object3D;->getWorldTransformation()Lcom/threed/jpct/Matrix;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/threed/jpct/Interact2D;->project3D2DInternal(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/Matrix;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p0

    return-object p0
.end method

.method public static projectCenter3D2D(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/SimpleVector;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1}, Lcom/threed/jpct/Interact2D;->projectCenter3D2D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/SimpleVector;

    move-result-object p0

    return-object p0
.end method

.method public static reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;II)Lcom/threed/jpct/SimpleVector;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIF)Lcom/threed/jpct/SimpleVector;

    move-result-object p0

    return-object p0
.end method

.method public static reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIF)Lcom/threed/jpct/SimpleVector;
    .locals 6

    .line 3
    invoke-static {}, Lcom/threed/jpct/SimpleVector;->create()Lcom/threed/jpct/SimpleVector;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p0

    return-object p0
.end method

.method public static reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 4

    .line 4
    iget v0, p1, Lcom/threed/jpct/FrameBuffer;->width:I

    iget v1, p1, Lcom/threed/jpct/FrameBuffer;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/threed/jpct/Camera;->calcFOV(II)V

    .line 5
    iget v0, p1, Lcom/threed/jpct/FrameBuffer;->middleX:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    sget v3, Lcom/threed/jpct/Config;->viewportOffsetX:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 6
    iget p1, p1, Lcom/threed/jpct/FrameBuffer;->middleY:F

    mul-float/2addr v1, p1

    sget v2, Lcom/threed/jpct/Config;->viewportOffsetY:F

    mul-float/2addr v1, v2

    add-float/2addr p1, v1

    int-to-float p2, p2

    sub-float/2addr p2, v0

    mul-float/2addr p2, p4

    .line 7
    iget v0, p0, Lcom/threed/jpct/Camera;->scaleX:F

    div-float/2addr p2, v0

    int-to-float p3, p3

    sub-float/2addr p3, p1

    mul-float/2addr p3, p4

    .line 8
    iget p0, p0, Lcom/threed/jpct/Camera;->scaleY:F

    div-float/2addr p3, p0

    .line 9
    invoke-virtual {p5, p2, p3, p4}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    return-object p5
.end method

.method public static reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 6

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p0

    return-object p0
.end method

.method public static reproject2D3DBlit(FFLcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1

    if-nez p6, :cond_0

    new-instance p6, Lcom/threed/jpct/SimpleVector;

    invoke-direct {p6}, Lcom/threed/jpct/SimpleVector;-><init>()V

    :cond_0
    int-to-float p3, p3

    iget v0, p2, Lcom/threed/jpct/FrameBuffer;->middleX:F

    sub-float/2addr p3, v0

    mul-float/2addr p3, p5

    div-float/2addr p3, p0

    int-to-float p0, p4

    iget p2, p2, Lcom/threed/jpct/FrameBuffer;->middleY:F

    sub-float/2addr p0, p2

    mul-float/2addr p0, p5

    div-float/2addr p0, p1

    iput p3, p6, Lcom/threed/jpct/SimpleVector;->x:F

    iput p0, p6, Lcom/threed/jpct/SimpleVector;->y:F

    iput p5, p6, Lcom/threed/jpct/SimpleVector;->z:F

    return-object p6
.end method

.method public static reproject2D3DWS(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;II)Lcom/threed/jpct/SimpleVector;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIF)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/threed/jpct/Interact2D;->workMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {p2}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 3
    iget-object p0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    sget-object p2, Lcom/threed/jpct/Interact2D;->workMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {p0, p2}, Lcom/threed/jpct/Matrix;->invert3x3(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    return-object p1
.end method

.method public static reproject2D3DWS(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 6

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 4
    invoke-static/range {v0 .. v5}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    .line 5
    sget-object p2, Lcom/threed/jpct/Interact2D;->workMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {p2}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 6
    iget-object p0, p0, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    sget-object p2, Lcom/threed/jpct/Interact2D;->workMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {p0, p2}, Lcom/threed/jpct/Matrix;->invert3x3(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    return-object p1
.end method
