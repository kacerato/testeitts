.class public Lcom/threed/jpct/World;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FOGGING_DISABLED:I = 0x0

.field public static final FOGGING_ENABLED:I = 0x1

.field static final RGB_SCALE_2X:I = 0x2

.field static final RGB_SCALE_4X:I = 0x4

.field static final RGB_SCALE_DEFAULT:I = 0x1

.field static defaultThread:Ljava/lang/Thread; = null

.field private static final serialVersionUID:J = 0x3L


# instance fields
.field ambientBlue:I

.field ambientGreen:I

.field ambientRed:I

.field private calledRender:Z

.field camera:Lcom/threed/jpct/Camera;

.field private compiler:Lcom/threed/jpct/Object3DCompiler;

.field private disposed:Z

.field drawCnt:J

.field private farPlane:F

.field private farPlaneOld:F

.field fogColorB:F

.field fogColorG:F

.field fogColorR:F

.field fogDistance:F

.field fogModeChanged:I

.field fogStart:F

.field transient globalShader:Lcom/threed/jpct/GLSLShader;

.field lights:Lcom/threed/jpct/Lights;

.field private lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/threed/jpct/Polyline;",
            ">;"
        }
    .end annotation
.end field

.field private nearPlane:F

.field private nearPlaneOld:F

.field objectList:Lcom/threed/jpct/Object3DList;

.field private slidePlaneTmp:Lcom/threed/jpct/Plane;

.field private transient targets:Lcom/threed/jpct/Object3DList;

.field private tmpMat:Lcom/threed/jpct/Matrix;

.field private tmpMatCol:Lcom/threed/jpct/Matrix;

.field useFogging:Z

.field visList:Lcom/threed/jpct/VisList;

.field private transient vlManager:Lcom/threed/jpct/VisListManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/threed/jpct/Object3DCompiler;

    invoke-direct {v0}, Lcom/threed/jpct/Object3DCompiler;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/World;->compiler:Lcom/threed/jpct/Object3DCompiler;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/threed/jpct/World;->drawCnt:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/World;->useFogging:Z

    iput v0, p0, Lcom/threed/jpct/World;->fogModeChanged:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/threed/jpct/World;->fogStart:F

    const/high16 v1, 0x43160000    # 150.0f

    iput v1, p0, Lcom/threed/jpct/World;->fogDistance:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/threed/jpct/World;->fogColorR:F

    iput v1, p0, Lcom/threed/jpct/World;->fogColorG:F

    iput v1, p0, Lcom/threed/jpct/World;->fogColorB:F

    const/16 v1, 0x64

    iput v1, p0, Lcom/threed/jpct/World;->ambientRed:I

    iput v1, p0, Lcom/threed/jpct/World;->ambientGreen:I

    iput v1, p0, Lcom/threed/jpct/World;->ambientBlue:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/threed/jpct/World;->globalShader:Lcom/threed/jpct/GLSLShader;

    new-instance v2, Lcom/threed/jpct/VisListManager;

    invoke-direct {v2}, Lcom/threed/jpct/VisListManager;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/World;->vlManager:Lcom/threed/jpct/VisListManager;

    iput-object v1, p0, Lcom/threed/jpct/World;->targets:Lcom/threed/jpct/Object3DList;

    iput-boolean v0, p0, Lcom/threed/jpct/World;->disposed:Z

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/threed/jpct/World;->nearPlane:F

    iput v2, p0, Lcom/threed/jpct/World;->farPlane:F

    sget v2, Lcom/threed/jpct/Config;->nearPlane:F

    iput v2, p0, Lcom/threed/jpct/World;->nearPlaneOld:F

    sget v2, Lcom/threed/jpct/Config;->farPlane:F

    iput v2, p0, Lcom/threed/jpct/World;->farPlaneOld:F

    new-instance v2, Lcom/threed/jpct/Matrix;

    invoke-direct {v2}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/World;->tmpMat:Lcom/threed/jpct/Matrix;

    new-instance v2, Lcom/threed/jpct/Matrix;

    invoke-direct {v2}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/World;->tmpMatCol:Lcom/threed/jpct/Matrix;

    new-instance v2, Lcom/threed/jpct/Plane;

    invoke-direct {v2}, Lcom/threed/jpct/Plane;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/World;->slidePlaneTmp:Lcom/threed/jpct/Plane;

    iput-object v1, p0, Lcom/threed/jpct/World;->lines:Ljava/util/List;

    iput-boolean v0, p0, Lcom/threed/jpct/World;->calledRender:Z

    new-instance v0, Lcom/threed/jpct/Object3DList;

    invoke-direct {v0}, Lcom/threed/jpct/Object3DList;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    new-instance v0, Lcom/threed/jpct/VisList;

    sget v1, Lcom/threed/jpct/Config;->maxPolysVisible:I

    invoke-direct {v0, v1}, Lcom/threed/jpct/VisList;-><init>(I)V

    iput-object v0, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    invoke-static {}, Lcom/threed/jpct/Object3D;->createDummyObj()Lcom/threed/jpct/Object3D;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/threed/jpct/World;->addObject(Lcom/threed/jpct/Object3D;)I

    invoke-static {}, Lcom/threed/jpct/Object3D;->createDummyObj()Lcom/threed/jpct/Object3D;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/threed/jpct/World;->addObject(Lcom/threed/jpct/Object3D;)I

    new-instance v0, Lcom/threed/jpct/Camera;

    invoke-direct {v0}, Lcom/threed/jpct/Camera;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    new-instance v0, Lcom/threed/jpct/Lights;

    sget v1, Lcom/threed/jpct/Config;->maxLights:I

    invoke-direct {v0, v1}, Lcom/threed/jpct/Lights;-><init>(I)V

    iput-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    return-void
.end method

.method private final checkCameraCollision(Lcom/threed/jpct/SimpleVector;IFFZ)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x7

    const/4 v6, 0x1

    move/from16 v7, p2

    if-ne v7, v5, :cond_0

    move v7, v6

    .line 5
    :cond_0
    new-array v5, v4, [F

    .line 6
    new-array v8, v4, [F

    .line 7
    new-array v9, v4, [F

    .line 8
    iget-object v10, v0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget v11, v10, Lcom/threed/jpct/Camera;->backBx:F

    .line 9
    iget v12, v10, Lcom/threed/jpct/Camera;->backBy:F

    .line 10
    iget v13, v10, Lcom/threed/jpct/Camera;->backBz:F

    .line 11
    new-array v14, v4, [F

    aput v11, v14, v3

    aput v12, v14, v6

    aput v13, v14, v2

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    if-nez v1, :cond_2

    and-int/lit8 v1, v7, 0x1

    if-eq v1, v6, :cond_1

    move v1, v11

    goto :goto_0

    :cond_1
    move v1, v12

    :goto_0
    add-int/2addr v7, v6

    .line 12
    div-int/2addr v7, v2

    sub-int/2addr v7, v6

    rsub-int/lit8 v7, v7, 0x2

    .line 13
    iget-object v10, v10, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    iget-object v10, v10, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v13, v10, v3

    aget v13, v13, v7

    .line 14
    aget-object v15, v10, v6

    aget v15, v15, v7

    .line 15
    aget-object v10, v10, v2

    aget v7, v10, v7

    mul-float v10, v13, v1

    mul-float v16, v15, v1

    mul-float v17, v7, v1

    goto :goto_1

    .line 16
    :cond_2
    iget v13, v1, Lcom/threed/jpct/SimpleVector;->x:F

    .line 17
    iget v15, v1, Lcom/threed/jpct/SimpleVector;->y:F

    .line 18
    iget v7, v1, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v17, v7

    move v1, v12

    move v10, v13

    move/from16 v16, v15

    .line 19
    :goto_1
    new-array v4, v4, [F

    aput v10, v4, v3

    aput v16, v4, v6

    aput v17, v4, v2

    .line 20
    aput v10, v5, v3

    const/4 v10, 0x0

    .line 21
    aput v10, v5, v6

    .line 22
    aput v10, v5, v2

    .line 23
    aput v10, v8, v3

    .line 24
    aput v16, v8, v6

    .line 25
    aput v10, v8, v2

    .line 26
    aput v10, v9, v3

    .line 27
    aput v10, v9, v6

    .line 28
    aput v17, v9, v2

    .line 29
    aget v16, v5, v3

    cmpg-float v16, v16, v10

    if-gez v16, :cond_3

    .line 30
    aput v11, v5, v3

    goto :goto_2

    .line 31
    :cond_3
    aput v12, v5, v3

    .line 32
    :goto_2
    aget v16, v8, v6

    cmpg-float v16, v16, v10

    if-gez v16, :cond_4

    .line 33
    aput v11, v8, v6

    goto :goto_3

    .line 34
    :cond_4
    aput v12, v8, v6

    :goto_3
    cmpg-float v16, v17, v10

    if-gez v16, :cond_5

    .line 35
    aput v11, v9, v2

    goto :goto_4

    .line 36
    :cond_5
    aput v12, v9, v2

    :goto_4
    const v11, 0x7f7fffff    # Float.MAX_VALUE

    move/from16 v16, v11

    move/from16 v17, v16

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/16 v19, 0x0

    .line 37
    :goto_5
    iget-object v6, v0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v6}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v6

    if-lt v2, v6, :cond_17

    const v2, 0x3f666666    # 0.9f

    mul-float v2, v2, p4

    cmpg-float v4, v11, p4

    if-gez v4, :cond_6

    cmpl-float v4, v11, v2

    if-lez v4, :cond_6

    move/from16 v11, p4

    :cond_6
    cmpg-float v4, v16, p4

    if-gez v4, :cond_7

    cmpl-float v4, v16, v2

    if-lez v4, :cond_7

    move/from16 v16, p4

    :cond_7
    cmpg-float v4, v17, p4

    if-gez v4, :cond_8

    cmpl-float v2, v17, v2

    if-lez v2, :cond_8

    move/from16 v17, p4

    :cond_8
    mul-float v13, v13, p3

    mul-float/2addr v13, v1

    .line 38
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v11, v2

    cmpg-float v2, v2, p4

    if-gtz v2, :cond_b

    cmpl-float v2, v13, v10

    if-ltz v2, :cond_9

    sub-float v11, v11, p4

    move v13, v11

    goto :goto_6

    :cond_9
    sub-float v11, v11, p4

    neg-float v2, v11

    move v13, v2

    :goto_6
    if-eqz v3, :cond_a

    const/4 v2, 0x1

    .line 39
    iput-boolean v2, v3, Lcom/threed/jpct/Object3D;->wasCollider:Z

    :cond_a
    const/4 v2, 0x1

    const/4 v4, 0x1

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_7
    mul-float v15, v15, p3

    mul-float/2addr v15, v1

    .line 40
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v16, v5

    cmpg-float v5, v5, p4

    if-gtz v5, :cond_e

    cmpl-float v4, v15, v10

    if-ltz v4, :cond_c

    sub-float v16, v16, p4

    move/from16 v15, v16

    goto :goto_8

    :cond_c
    sub-float v4, v16, p4

    neg-float v4, v4

    move v15, v4

    :goto_8
    if-eqz v12, :cond_d

    const/4 v4, 0x1

    .line 41
    iput-boolean v4, v12, Lcom/threed/jpct/Object3D;->wasCollider:Z

    :cond_d
    const/4 v4, 0x1

    const/4 v5, 0x1

    goto :goto_9

    :cond_e
    move v5, v4

    const/4 v4, 0x0

    :goto_9
    mul-float v7, v7, p3

    mul-float/2addr v7, v1

    .line 42
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v17, v1

    cmpg-float v1, v1, p4

    if-gtz v1, :cond_11

    cmpl-float v1, v7, v10

    if-ltz v1, :cond_f

    sub-float v17, v17, p4

    move/from16 v7, v17

    :goto_a
    move-object/from16 v6, v19

    goto :goto_b

    :cond_f
    sub-float v1, v17, p4

    neg-float v1, v1

    move v7, v1

    goto :goto_a

    :goto_b
    if-eqz v6, :cond_10

    const/4 v1, 0x1

    .line 43
    iput-boolean v1, v6, Lcom/threed/jpct/Object3D;->wasCollider:Z

    :cond_10
    const/4 v5, 0x1

    const/16 v20, 0x1

    goto :goto_c

    :cond_11
    move-object/from16 v6, v19

    const/16 v20, 0x0

    :goto_c
    if-eqz v3, :cond_12

    .line 44
    iget-boolean v1, v3, Lcom/threed/jpct/Object3D;->wasCollider:Z

    if-eqz v1, :cond_12

    .line 45
    filled-new-array {v3}, [Lcom/threed/jpct/Object3D;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v9, v1, v8}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    goto :goto_d

    :cond_12
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_d
    if-eqz v12, :cond_13

    .line 46
    iget-boolean v1, v12, Lcom/threed/jpct/Object3D;->wasCollider:Z

    if-eqz v1, :cond_13

    invoke-virtual {v12, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 47
    filled-new-array {v12}, [Lcom/threed/jpct/Object3D;

    move-result-object v1

    invoke-virtual {v12, v9, v9, v1, v8}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    :cond_13
    if-eqz v6, :cond_14

    .line 48
    iget-boolean v1, v6, Lcom/threed/jpct/Object3D;->wasCollider:Z

    if-eqz v1, :cond_14

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v6, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 49
    filled-new-array {v6}, [Lcom/threed/jpct/Object3D;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v8, v1, v3}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    :cond_14
    if-nez p5, :cond_15

    if-nez v5, :cond_16

    .line 50
    :cond_15
    iget-object v1, v0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget v3, v1, Lcom/threed/jpct/Camera;->backBx:F

    add-float/2addr v3, v13

    iput v3, v1, Lcom/threed/jpct/Camera;->backBx:F

    .line 51
    iget v3, v1, Lcom/threed/jpct/Camera;->backBy:F

    add-float/2addr v3, v15

    iput v3, v1, Lcom/threed/jpct/Camera;->backBy:F

    .line 52
    iget v3, v1, Lcom/threed/jpct/Camera;->backBz:F

    add-float/2addr v3, v7

    iput v3, v1, Lcom/threed/jpct/Camera;->backBz:F

    :cond_16
    or-int v1, v2, v4

    or-int v1, v1, v20

    return v1

    :cond_17
    move-object/from16 v6, v19

    const/16 v19, 0x0

    .line 53
    iget-object v10, v0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v10, v2}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v10

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, v10, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 55
    invoke-virtual {v10}, Lcom/threed/jpct/Object3D;->resetPolygonIDCount()V

    .line 56
    iget-boolean v0, v10, Lcom/threed/jpct/Object3D;->isPotentialCollider:Z

    if-eqz v0, :cond_18

    iget-boolean v0, v10, Lcom/threed/jpct/Object3D;->isVisible:Z

    if-eqz v0, :cond_18

    .line 57
    iget-boolean v0, v10, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    invoke-virtual {v10, v14, v4, v0}, Lcom/threed/jpct/Object3D;->rayIntersectsAABB([F[FZ)F

    move-result v18

    sget v21, Lcom/threed/jpct/Config;->collideOffset:F

    cmpg-float v18, v18, v21

    if-gez v18, :cond_18

    goto :goto_e

    :cond_18
    move/from16 p2, v1

    goto :goto_f

    .line 58
    :cond_19
    :goto_e
    sget v0, Lcom/threed/jpct/Config;->collideSectorOffset:F

    move/from16 p2, v1

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v10, v14, v5, v1, v0}, Lcom/threed/jpct/Object3D;->collide([F[FFF)F

    move-result v0

    cmpg-float v21, v0, v11

    if-gez v21, :cond_1a

    move v11, v0

    move-object v3, v10

    .line 59
    :cond_1a
    sget v0, Lcom/threed/jpct/Config;->collideSectorOffset:F

    invoke-virtual {v10, v14, v8, v1, v0}, Lcom/threed/jpct/Object3D;->collide([F[FFF)F

    move-result v0

    cmpg-float v21, v0, v16

    if-gez v21, :cond_1b

    move/from16 v16, v0

    move-object v12, v10

    .line 60
    :cond_1b
    sget v0, Lcom/threed/jpct/Config;->collideSectorOffset:F

    invoke-virtual {v10, v14, v9, v1, v0}, Lcom/threed/jpct/Object3D;->collide([F[FFF)F

    move-result v0

    cmpg-float v1, v0, v17

    if-gez v1, :cond_1c

    move/from16 v17, v0

    move-object v6, v10

    :cond_1c
    :goto_f
    const/4 v0, 0x1

    add-int/2addr v2, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v19, v6

    goto/16 :goto_5
.end method

.method private final checkCameraCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;ILcom/threed/jpct/SimpleVector;FI)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_2

    const/4 p1, 0x7

    if-eq p2, p1, :cond_1

    and-int/lit8 p1, p2, 0x1

    if-ne p1, v2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    :goto_0
    mul-float/2addr p1, p4

    add-int/2addr p2, v2

    .line 3
    div-int/2addr p2, v1

    sub-int/2addr p2, v2

    rsub-int/lit8 p2, p2, 0x2

    .line 4
    iget-object p4, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget-object p4, p4, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    iget-object p4, p4, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, p4, v0

    aget v3, v3, p2

    mul-float/2addr v3, p1

    .line 5
    aget-object v4, p4, v2

    aget v4, v4, p2

    mul-float/2addr v4, p1

    .line 6
    aget-object p4, p4, v1

    aget p2, p4, p2

    mul-float/2addr p2, p1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    move p2, v3

    move v4, p2

    goto :goto_1

    .line 7
    :cond_2
    iget p2, p1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v3, p2, p4

    .line 8
    iget p2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v4, p2, p4

    .line 9
    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float p2, p1, p4

    .line 10
    :goto_1
    new-instance p1, Lcom/threed/jpct/CollisionInfo;

    invoke-direct {p1}, Lcom/threed/jpct/CollisionInfo;-><init>()V

    .line 11
    iput-object p3, p1, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    .line 12
    new-instance p3, Lcom/threed/jpct/SimpleVector;

    iget-object p4, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget v5, p4, Lcom/threed/jpct/Camera;->backBx:F

    iget v6, p4, Lcom/threed/jpct/Camera;->backBy:F

    iget p4, p4, Lcom/threed/jpct/Camera;->backBz:F

    invoke-direct {p3, v5, v6, p4}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    iput-object p3, p1, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    .line 13
    new-instance p3, Lcom/threed/jpct/SimpleVector;

    invoke-direct {p3, v3, v4, p2}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    iput-object p3, p1, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    .line 14
    invoke-virtual {p1}, Lcom/threed/jpct/CollisionInfo;->calculateInverseAndDest()V

    .line 15
    iget-object p2, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    invoke-virtual {p2}, Lcom/threed/jpct/Camera;->getEllipsoidMode()I

    move-result p2

    if-ne p2, v2, :cond_3

    .line 16
    new-instance p2, Lcom/threed/jpct/Matrix;

    invoke-direct {p2}, Lcom/threed/jpct/Matrix;-><init>()V

    .line 17
    iget-object p3, p2, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 p4, 0x3

    aget-object p3, p3, p4

    iget-object p4, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget v3, p4, Lcom/threed/jpct/Camera;->backBx:F

    aput v3, p3, v0

    .line 18
    iget v3, p4, Lcom/threed/jpct/Camera;->backBy:F

    aput v3, p3, v2

    .line 19
    iget v2, p4, Lcom/threed/jpct/Camera;->backBz:F

    aput v2, p3, v1

    .line 20
    iget-object p3, p4, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {p3}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object p3

    .line 21
    invoke-virtual {p3, p2}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 22
    iput-object p3, p1, Lcom/threed/jpct/CollisionInfo;->addTransMat:Lcom/threed/jpct/Matrix;

    .line 23
    iget-object p2, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget-object p2, p2, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {p2}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object p2

    iput-object p2, p1, Lcom/threed/jpct/CollisionInfo;->addRotMat:Lcom/threed/jpct/Matrix;

    :cond_3
    const/4 p2, 0x0

    .line 24
    invoke-direct {p0, p1, v0, p2, p5}, Lcom/threed/jpct/World;->doWorldCollisionEllipsoid(Lcom/threed/jpct/CollisionInfo;ILcom/threed/jpct/Object3D;I)V

    .line 25
    iget-object p2, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget-object p3, p1, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    iget p4, p3, Lcom/threed/jpct/SimpleVector;->x:F

    iput p4, p2, Lcom/threed/jpct/Camera;->backBx:F

    .line 26
    iget p4, p3, Lcom/threed/jpct/SimpleVector;->y:F

    iput p4, p2, Lcom/threed/jpct/Camera;->backBy:F

    .line 27
    iget p3, p3, Lcom/threed/jpct/SimpleVector;->z:F

    iput p3, p2, Lcom/threed/jpct/Camera;->backBz:F

    .line 28
    iget-boolean p1, p1, Lcom/threed/jpct/CollisionInfo;->collision:Z

    return p1
.end method

.method private final checkCameraCollisionSpherical(Lcom/threed/jpct/SimpleVector;IFFZ)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x3

    .line 3
    new-array v3, v3, [F

    iget-object v4, v0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget v5, v4, Lcom/threed/jpct/Camera;->backBx:F

    const/4 v6, 0x0

    aput v5, v3, v6

    iget v7, v4, Lcom/threed/jpct/Camera;->backBy:F

    const/4 v8, 0x1

    aput v7, v3, v8

    iget v9, v4, Lcom/threed/jpct/Camera;->backBz:F

    const/4 v10, 0x2

    aput v9, v3, v10

    if-nez v1, :cond_1

    const/4 v1, 0x7

    if-eq v2, v1, :cond_2

    and-int/lit8 v1, v2, 0x1

    if-ne v1, v8, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    mul-float v1, v1, p4

    add-int/2addr v2, v8

    .line 4
    div-int/2addr v2, v10

    sub-int/2addr v2, v8

    rsub-int/lit8 v2, v2, 0x2

    .line 5
    iget-object v4, v4, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    iget-object v4, v4, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v11, v4, v6

    aget v11, v11, v2

    mul-float/2addr v11, v1

    add-float/2addr v5, v11

    aput v5, v3, v6

    .line 6
    aget-object v5, v4, v8

    aget v5, v5, v2

    mul-float/2addr v5, v1

    add-float/2addr v7, v5

    aput v7, v3, v8

    .line 7
    aget-object v4, v4, v10

    aget v2, v4, v2

    mul-float/2addr v2, v1

    add-float/2addr v9, v2

    aput v9, v3, v10

    goto :goto_1

    .line 8
    :cond_1
    iget v2, v1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v2, v2, p4

    add-float/2addr v5, v2

    aput v5, v3, v6

    .line 9
    iget v2, v1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v2, v2, p4

    add-float/2addr v7, v2

    aput v7, v3, v8

    .line 10
    iget v1, v1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v1, v1, p4

    add-float/2addr v9, v1

    aput v9, v3, v10

    .line 11
    :cond_2
    :goto_1
    new-array v1, v8, [Z

    move-object v12, v3

    move v2, v10

    .line 12
    :goto_2
    iget-object v3, v0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v3}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v3

    if-lt v2, v3, :cond_6

    .line 13
    aget-boolean v1, v1, v6

    if-nez p5, :cond_3

    if-nez v1, :cond_4

    .line 14
    :cond_3
    iget-object v2, v0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    aget v3, v12, v6

    iput v3, v2, Lcom/threed/jpct/Camera;->backBx:F

    .line 15
    aget v3, v12, v8

    iput v3, v2, Lcom/threed/jpct/Camera;->backBy:F

    .line 16
    aget v3, v12, v10

    iput v3, v2, Lcom/threed/jpct/Camera;->backBz:F

    :cond_4
    if-eqz v1, :cond_5

    .line 17
    new-instance v2, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v2, v12}, Lcom/threed/jpct/SimpleVector;-><init>([F)V

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v8, v2}, Lcom/threed/jpct/World;->notifyAll(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/CollisionInfo;ILcom/threed/jpct/SimpleVector;)V

    :cond_5
    return v1

    .line 18
    :cond_6
    iget-object v3, v0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v3, v2}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v3

    .line 19
    iput-boolean v6, v3, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 20
    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->resetPolygonIDCount()V

    .line 21
    iget-boolean v4, v3, Lcom/threed/jpct/Object3D;->isPotentialCollider:Z

    if-eqz v4, :cond_9

    iget-boolean v4, v3, Lcom/threed/jpct/Object3D;->isVisible:Z

    if-eqz v4, :cond_9

    .line 22
    iget-boolean v4, v3, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    if-eqz v4, :cond_7

    move/from16 v4, p3

    invoke-virtual {v3, v12, v4}, Lcom/threed/jpct/Object3D;->sphereIntersectsAABB([FF)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_3

    :cond_7
    move/from16 v4, p3

    .line 23
    :goto_3
    aget-boolean v5, v1, v6

    .line 24
    aput-boolean v6, v1, v6

    .line 25
    sget v14, Lcom/threed/jpct/Config;->collideSectorOffset:F

    const/16 v16, 0x1

    move-object v11, v3

    move/from16 v13, p3

    move-object v15, v1

    invoke-virtual/range {v11 .. v16}, Lcom/threed/jpct/Object3D;->collideSpherical([FFF[ZZ)[F

    move-result-object v7

    .line 26
    aget-boolean v9, v1, v6

    if-eqz v9, :cond_8

    .line 27
    iput-boolean v8, v3, Lcom/threed/jpct/Object3D;->wasCollider:Z

    :cond_8
    or-int v3, v9, v5

    .line 28
    aput-boolean v3, v1, v6

    move-object v12, v7

    goto :goto_4

    :cond_9
    move/from16 v4, p3

    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private final checkSomeCollision([F[FFLcom/threed/jpct/Object3D;)I
    .locals 9

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x2

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v4}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt v3, v4, :cond_7

    cmpg-float p3, v1, p3

    if-gez p3, :cond_6

    if-eqz v0, :cond_6

    iput-boolean v6, v0, Lcom/threed/jpct/Object3D;->wasCollider:Z

    move p3, v2

    :goto_1
    iget-object v3, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v3}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v3

    if-lt p3, v3, :cond_4

    if-eqz p4, :cond_0

    iget-object p3, p4, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    if-eqz p3, :cond_0

    iget-boolean p3, p4, Lcom/threed/jpct/Object3D;->disableListeners:Z

    if-eqz p3, :cond_1

    :cond_0
    iget-object p3, v0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    if-eqz p3, :cond_3

    iget-boolean p3, v0, Lcom/threed/jpct/Object3D;->disableListeners:Z

    if-nez p3, :cond_3

    :cond_1
    filled-new-array {v0}, [Lcom/threed/jpct/Object3D;

    move-result-object v7

    aget p3, p2, v5

    aget v3, p2, v6

    aget p2, p2, v2

    invoke-static {p3, v3, p2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    iget p2, v8, Lcom/threed/jpct/SimpleVector;->x:F

    aget p3, p1, v5

    add-float/2addr p2, p3

    iput p2, v8, Lcom/threed/jpct/SimpleVector;->x:F

    iget p2, v8, Lcom/threed/jpct/SimpleVector;->y:F

    aget p3, p1, v6

    add-float/2addr p2, p3

    iput p2, v8, Lcom/threed/jpct/SimpleVector;->y:F

    iget p2, v8, Lcom/threed/jpct/SimpleVector;->z:F

    aget p1, p1, v2

    add-float/2addr p2, p1

    iput p2, v8, Lcom/threed/jpct/SimpleVector;->z:F

    if-eqz p4, :cond_2

    invoke-virtual {p4, v6, v5, v7, v8}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    move-object v4, p4

    invoke-virtual/range {v3 .. v8}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(Lcom/threed/jpct/Object3D;II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    :cond_3
    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getID()I

    move-result p1

    return p1

    :cond_4
    iget-object v3, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v3, p3}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v3

    if-eq v3, v0, :cond_5

    iput-boolean v5, v3, Lcom/threed/jpct/Object3D;->wasCollider:Z

    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->resetPolygonIDCount()V

    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_6
    const/16 p1, -0x64

    return p1

    :cond_7
    iget-object v4, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v4, v3}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v4

    iput-boolean v5, v4, Lcom/threed/jpct/Object3D;->wasCollider:Z

    invoke-virtual {v4}, Lcom/threed/jpct/Object3D;->resetPolygonIDCount()V

    iget-boolean v5, v4, Lcom/threed/jpct/Object3D;->isPotentialCollider:Z

    if-eqz v5, :cond_b

    if-eqz p4, :cond_8

    if-eq v4, p4, :cond_b

    :cond_8
    iget-boolean v5, v4, Lcom/threed/jpct/Object3D;->isVisible:Z

    if-eqz v5, :cond_b

    iget-boolean v5, v4, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    if-eqz v5, :cond_9

    invoke-virtual {v4, p1, p2, v6}, Lcom/threed/jpct/Object3D;->rayIntersectsAABB([F[FZ)F

    move-result v5

    sget v6, Lcom/threed/jpct/Config;->collideOffset:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_b

    :cond_9
    sget v5, Lcom/threed/jpct/Config;->collideSectorOffset:F

    invoke-virtual {v4, p1, p2, p3, v5}, Lcom/threed/jpct/Object3D;->collide([F[FFF)F

    move-result v5

    cmpg-float v6, v5, v1

    if-gez v6, :cond_b

    cmpg-float v1, v5, p3

    if-gez v1, :cond_a

    move-object v0, v4

    :cond_a
    move v1, v5

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private final checkSomeCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/Object3D;I)Lcom/threed/jpct/SimpleVector;
    .locals 5

    new-instance v0, Lcom/threed/jpct/CollisionInfo;

    invoke-direct {v0}, Lcom/threed/jpct/CollisionInfo;-><init>()V

    iput-object p3, v0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    invoke-static {p1}, Lcom/threed/jpct/SimpleVector;->create(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p3

    iput-object p3, v0, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    invoke-static {p2}, Lcom/threed/jpct/SimpleVector;->create(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p3

    iput-object p3, v0, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0}, Lcom/threed/jpct/CollisionInfo;->calculateInverseAndDest()V

    const/4 p3, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/threed/jpct/Object3D;->getEllipsoidMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p4}, Lcom/threed/jpct/Object3D;->getWorldTransformation()Lcom/threed/jpct/Matrix;

    move-result-object v1

    iput-object v1, v0, Lcom/threed/jpct/CollisionInfo;->addTransMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v1

    iget-object v3, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput v4, v3, p3

    aput v4, v3, v2

    const/4 v2, 0x2

    aput v4, v3, v2

    iput-object v1, v0, Lcom/threed/jpct/CollisionInfo;->addRotMat:Lcom/threed/jpct/Matrix;

    :cond_0
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/threed/jpct/World;->doWorldCollisionEllipsoid(Lcom/threed/jpct/CollisionInfo;ILcom/threed/jpct/Object3D;I)V

    iget-object p3, v0, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    iget-boolean p4, v0, Lcom/threed/jpct/CollisionInfo;->collision:Z

    if-eqz p4, :cond_1

    iget p2, p3, Lcom/threed/jpct/SimpleVector;->x:F

    iget p4, p1, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float/2addr p2, p4

    iput p2, p3, Lcom/threed/jpct/SimpleVector;->x:F

    iget p2, p3, Lcom/threed/jpct/SimpleVector;->y:F

    iget p4, p1, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float/2addr p2, p4

    iput p2, p3, Lcom/threed/jpct/SimpleVector;->y:F

    iget p2, p3, Lcom/threed/jpct/SimpleVector;->z:F

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    sub-float/2addr p2, p1

    iput p2, p3, Lcom/threed/jpct/SimpleVector;->z:F

    return-object p3

    :cond_1
    return-object p2
.end method

.method private final checkSomeCollisionSpherical([F[FFLcom/threed/jpct/Object3D;)Lcom/threed/jpct/SimpleVector;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v3, 0x0

    aget v4, p1, v3

    aget v5, p2, v3

    add-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v4, 0x1

    aget v5, p1, v4

    aget v6, p2, v4

    add-float/2addr v5, v6

    aput v5, v2, v4

    const/4 v5, 0x2

    aget v6, p1, v5

    aget v7, p2, v5

    add-float/2addr v6, v7

    aput v6, v2, v5

    new-array v6, v4, [Z

    move-object v8, v2

    move v2, v5

    :goto_0
    iget-object v7, v0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v7}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v7

    if-lt v2, v7, :cond_1

    aget-boolean v2, v6, v3

    if-eqz v2, :cond_0

    aget v2, v8, v3

    aget v6, v8, v4

    aget v7, v8, v5

    invoke-static {v2, v6, v7}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    iget v6, v2, Lcom/threed/jpct/SimpleVector;->x:F

    aget v3, p1, v3

    sub-float/2addr v6, v3

    iput v6, v2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v3, v2, Lcom/threed/jpct/SimpleVector;->y:F

    aget v6, p1, v4

    sub-float/2addr v3, v6

    iput v3, v2, Lcom/threed/jpct/SimpleVector;->y:F

    iget v3, v2, Lcom/threed/jpct/SimpleVector;->z:F

    aget v5, p1, v5

    sub-float/2addr v3, v5

    iput v3, v2, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v4, v8}, Lcom/threed/jpct/World;->notifyAll(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/CollisionInfo;I[F)V

    return-object v2

    :cond_0
    aget v1, p2, v3

    aget v2, p2, v4

    aget v3, p2, v5

    invoke-static {v1, v2, v3}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v7, v0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v7, v2}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v13

    iput-boolean v3, v13, Lcom/threed/jpct/Object3D;->wasCollider:Z

    invoke-virtual {v13}, Lcom/threed/jpct/Object3D;->resetPolygonIDCount()V

    iget-boolean v7, v13, Lcom/threed/jpct/Object3D;->isPotentialCollider:Z

    if-eqz v7, :cond_2

    if-eqz v1, :cond_3

    if-eq v13, v1, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v14, p3

    goto :goto_2

    :cond_3
    :goto_1
    iget-boolean v7, v13, Lcom/threed/jpct/Object3D;->isVisible:Z

    if-eqz v7, :cond_2

    iget-boolean v7, v13, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    move/from16 v14, p3

    if-eqz v7, :cond_4

    invoke-virtual {v13, v8, v14}, Lcom/threed/jpct/Object3D;->sphereIntersectsAABB([FF)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_4
    aget-boolean v15, v6, v3

    aput-boolean v3, v6, v3

    sget v10, Lcom/threed/jpct/Config;->collideSectorOffset:F

    const/4 v12, 0x0

    move-object v7, v13

    move/from16 v9, p3

    move-object v11, v6

    invoke-virtual/range {v7 .. v12}, Lcom/threed/jpct/Object3D;->collideSpherical([FFF[ZZ)[F

    move-result-object v7

    aget-boolean v8, v6, v3

    if-eqz v8, :cond_5

    iput-boolean v4, v13, Lcom/threed/jpct/Object3D;->wasCollider:Z

    :cond_5
    or-int/2addr v8, v15

    aput-boolean v8, v6, v3

    move-object v8, v7

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private compile(Lcom/threed/jpct/Object3D;)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/World;->compiler:Lcom/threed/jpct/Object3DCompiler;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3DCompiler;->compile(Lcom/threed/jpct/Object3D;)V

    iget-boolean v0, p1, Lcom/threed/jpct/Object3D;->toStrip:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->reallyStrip()V

    :cond_0
    return-void
.end method

.method private final doWorldCollisionEllipsoid(Lcom/threed/jpct/CollisionInfo;ILcom/threed/jpct/Object3D;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    sget v5, Lcom/threed/jpct/Config;->collideEllipsoidThreshold:F

    mul-float v6, v5, v5

    if-lt v2, v4, :cond_0

    return-void

    :cond_0
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/threed/jpct/CollisionInfo;->foundCollision:Z

    new-instance v8, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v8}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v8, v1, Lcom/threed/jpct/CollisionInfo;->intersectionPoint:Lcom/threed/jpct/SimpleVector;

    const v8, 0x51ba43b7    # 1.0E11f

    iput v8, v1, Lcom/threed/jpct/CollisionInfo;->nearestDistance:F

    if-nez v2, :cond_1

    iput-boolean v7, v1, Lcom/threed/jpct/CollisionInfo;->collision:Z

    :cond_1
    iget-object v8, v1, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    iget v9, v8, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v9, v9

    iget v10, v8, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v10, v10

    add-float/2addr v9, v10

    iget v10, v8, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v10, v10

    add-float/2addr v9, v10

    iget-object v10, v1, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    iget v11, v10, Lcom/threed/jpct/SimpleVector;->x:F

    iget v12, v10, Lcom/threed/jpct/SimpleVector;->y:F

    cmpl-float v13, v11, v12

    if-lez v13, :cond_2

    move v11, v12

    :cond_2
    iget v10, v10, Lcom/threed/jpct/SimpleVector;->z:F

    cmpl-float v12, v11, v10

    if-lez v12, :cond_3

    move v11, v10

    :cond_3
    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v11, v10

    mul-float/2addr v11, v11

    cmpl-float v9, v9, v11

    if-lez v9, :cond_4

    invoke-static {v8}, Lcom/threed/jpct/SimpleVector;->create(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v8

    iget v9, v8, Lcom/threed/jpct/SimpleVector;->x:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iput v9, v8, Lcom/threed/jpct/SimpleVector;->x:F

    iget v9, v8, Lcom/threed/jpct/SimpleVector;->y:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iput v9, v8, Lcom/threed/jpct/SimpleVector;->y:F

    iget v9, v8, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iput v9, v8, Lcom/threed/jpct/SimpleVector;->z:F

    iget-object v9, v1, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v8, v9}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    iget-object v9, v1, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    invoke-static {v9}, Lcom/threed/jpct/SimpleVector;->create(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v9

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v9, v11}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    iget-object v11, v1, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v9, v11}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    :goto_0
    const/4 v11, 0x2

    move v13, v7

    move v12, v11

    :goto_1
    iget-object v14, v0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v14}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v14

    if-lt v12, v14, :cond_c

    if-nez v13, :cond_5

    iget-object v2, v1, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    iget-object v1, v1, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v2, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    return-void

    :cond_5
    iget-object v8, v1, Lcom/threed/jpct/CollisionInfo;->eSpaceBasePoint:Lcom/threed/jpct/SimpleVector;

    invoke-static {v8}, Lcom/threed/jpct/SimpleVector;->create(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v8

    iget-object v9, v1, Lcom/threed/jpct/CollisionInfo;->eSpaceVelocity:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v8, v9}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    iget-object v9, v1, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    invoke-static {v9}, Lcom/threed/jpct/SimpleVector;->create(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v9

    iget-object v12, v1, Lcom/threed/jpct/CollisionInfo;->eSpaceBasePoint:Lcom/threed/jpct/SimpleVector;

    invoke-static {v12}, Lcom/threed/jpct/SimpleVector;->create(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v12

    iget v13, v1, Lcom/threed/jpct/CollisionInfo;->nearestDistance:F

    cmpl-float v14, v13, v5

    if-gez v14, :cond_6

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_7

    :cond_6
    iget-object v13, v1, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    invoke-static {v13}, Lcom/threed/jpct/SimpleVector;->create(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v13

    iget v14, v1, Lcom/threed/jpct/CollisionInfo;->nearestDistance:F

    sub-float/2addr v14, v5

    invoke-virtual {v13, v14}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    invoke-virtual {v9, v13}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    iget-object v14, v1, Lcom/threed/jpct/CollisionInfo;->eSpaceVelocity:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v13, v14}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    iget v14, v1, Lcom/threed/jpct/CollisionInfo;->nearestDistance:F

    sub-float/2addr v14, v5

    invoke-virtual {v13, v14}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    invoke-virtual {v12, v13}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    iget-object v14, v1, Lcom/threed/jpct/CollisionInfo;->eSpaceVelocity:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v14, v13}, Lcom/threed/jpct/SimpleVector;->normalize(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v13

    iget-object v14, v1, Lcom/threed/jpct/CollisionInfo;->intersectionPoint:Lcom/threed/jpct/SimpleVector;

    iget v15, v13, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v15, v5

    iget v10, v13, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v10, v5

    iget v13, v13, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v5, v13

    invoke-static {v15, v10, v5}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/threed/jpct/SimpleVector;->calcSub(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v5

    iput-object v5, v1, Lcom/threed/jpct/CollisionInfo;->intersectionPoint:Lcom/threed/jpct/SimpleVector;

    :cond_7
    iget-object v5, v1, Lcom/threed/jpct/CollisionInfo;->intersectionPoint:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v12, v5}, Lcom/threed/jpct/SimpleVector;->calcSub(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v10

    invoke-virtual {v10, v10}, Lcom/threed/jpct/SimpleVector;->normalize(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v10

    iget-object v12, v0, Lcom/threed/jpct/World;->slidePlaneTmp:Lcom/threed/jpct/Plane;

    invoke-virtual {v12, v5, v10}, Lcom/threed/jpct/Plane;->setTo(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V

    iget-object v5, v0, Lcom/threed/jpct/World;->slidePlaneTmp:Lcom/threed/jpct/Plane;

    invoke-virtual {v5, v8}, Lcom/threed/jpct/Plane;->distanceTo(Lcom/threed/jpct/SimpleVector;)F

    move-result v5

    invoke-virtual {v10, v5}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    invoke-virtual {v8, v10}, Lcom/threed/jpct/SimpleVector;->sub(Lcom/threed/jpct/SimpleVector;)V

    iget-object v5, v1, Lcom/threed/jpct/CollisionInfo;->intersectionPoint:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v8, v5}, Lcom/threed/jpct/SimpleVector;->calcSub(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v5

    iget v8, v5, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v10, v8, v8

    iget v12, v5, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v13, v12, v12

    add-float/2addr v10, v13

    iget v13, v5, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v14, v13, v13

    add-float/2addr v10, v14

    iget-object v14, v1, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    iget v15, v14, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v8, v15

    iput v8, v5, Lcom/threed/jpct/SimpleVector;->x:F

    iget v8, v14, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v12, v8

    iput v12, v5, Lcom/threed/jpct/SimpleVector;->y:F

    iget v8, v14, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v13, v8

    iput v13, v5, Lcom/threed/jpct/SimpleVector;->z:F

    iget-object v8, v1, Lcom/threed/jpct/CollisionInfo;->addTransMat:Lcom/threed/jpct/Matrix;

    if-nez v8, :cond_8

    iget-object v8, v1, Lcom/threed/jpct/CollisionInfo;->collisionObject:Lcom/threed/jpct/Object3D;

    iget-object v12, v0, Lcom/threed/jpct/World;->tmpMatCol:Lcom/threed/jpct/Matrix;

    invoke-virtual {v8, v12, v5, v7}, Lcom/threed/jpct/Object3D;->reverseTransform(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/SimpleVector;Z)Lcom/threed/jpct/SimpleVector;

    move-result-object v5

    goto :goto_2

    :cond_8
    iget-object v7, v1, Lcom/threed/jpct/CollisionInfo;->addRotMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v5, v7}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    :goto_2
    iput-object v9, v1, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    iput-object v5, v1, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    if-nez v2, :cond_9

    invoke-static {v9}, Lcom/threed/jpct/SimpleVector;->create(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v5

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/CollisionInfo;->recalcDest()V

    cmpl-float v6, v10, v6

    if-ltz v6, :cond_a

    add-int/lit8 v6, v2, 0x1

    invoke-direct {v0, v1, v6, v3, v4}, Lcom/threed/jpct/World;->doWorldCollisionEllipsoid(Lcom/threed/jpct/CollisionInfo;ILcom/threed/jpct/Object3D;I)V

    :cond_a
    if-nez v2, :cond_b

    invoke-direct {v0, v3, v1, v11, v5}, Lcom/threed/jpct/World;->notifyAll(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/CollisionInfo;ILcom/threed/jpct/SimpleVector;)V

    :cond_b
    return-void

    :cond_c
    iget-object v10, v0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v10, v12}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v10

    invoke-virtual {v10}, Lcom/threed/jpct/Object3D;->getLazyTransformationState()Z

    move-result v14

    if-nez v14, :cond_d

    invoke-virtual {v10}, Lcom/threed/jpct/Object3D;->enableLazyTransformations()V

    :cond_d
    if-nez v2, :cond_e

    iput-boolean v7, v10, Lcom/threed/jpct/Object3D;->wasCollider:Z

    invoke-virtual {v10}, Lcom/threed/jpct/Object3D;->resetPolygonIDCount()V

    :cond_e
    iget-boolean v15, v10, Lcom/threed/jpct/Object3D;->isPotentialCollider:Z

    if-eqz v15, :cond_12

    if-eqz v3, :cond_f

    if-eq v10, v3, :cond_12

    :cond_f
    iget-boolean v15, v10, Lcom/threed/jpct/Object3D;->isVisible:Z

    if-eqz v15, :cond_12

    iget-boolean v15, v10, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    if-eqz v15, :cond_11

    if-eqz v9, :cond_10

    invoke-virtual {v10, v9, v8}, Lcom/threed/jpct/Object3D;->ellipsoidIntersectsAABB(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)Z

    move-result v15

    if-nez v15, :cond_11

    :cond_10
    if-nez v9, :cond_12

    iget-object v15, v1, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    iget-object v11, v1, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v10, v15, v11}, Lcom/threed/jpct/Object3D;->ellipsoidIntersectsAABB(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)Z

    move-result v11

    if-nez v11, :cond_11

    iget-object v11, v1, Lcom/threed/jpct/CollisionInfo;->r3Dest:Lcom/threed/jpct/SimpleVector;

    iget-object v15, v1, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v10, v11, v15}, Lcom/threed/jpct/Object3D;->ellipsoidIntersectsAABB(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)Z

    move-result v11

    if-eqz v11, :cond_12

    :cond_11
    iput-boolean v7, v1, Lcom/threed/jpct/CollisionInfo;->isPartOfCollision:Z

    sget v11, Lcom/threed/jpct/Config;->collideSectorOffset:F

    invoke-virtual {v10, v1, v11}, Lcom/threed/jpct/Object3D;->collideEllipsoid(Lcom/threed/jpct/CollisionInfo;F)V

    iget-boolean v11, v10, Lcom/threed/jpct/Object3D;->wasCollider:Z

    iget-boolean v15, v1, Lcom/threed/jpct/CollisionInfo;->isPartOfCollision:Z

    or-int/2addr v11, v15

    iput-boolean v11, v10, Lcom/threed/jpct/Object3D;->wasCollider:Z

    or-int/2addr v13, v15

    :cond_12
    if-nez v14, :cond_13

    invoke-virtual {v10}, Lcom/threed/jpct/Object3D;->disableLazyTransformations()V

    :cond_13
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x2

    goto/16 :goto_1
.end method

.method private final draw(Lcom/threed/jpct/FrameBuffer;ZI)V
    .locals 12

    .line 2
    iget-boolean v0, p0, Lcom/threed/jpct/World;->calledRender:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0, p0, p1}, Lcom/threed/jpct/GLRenderer;->setFrustumAndFog(Lcom/threed/jpct/World;Lcom/threed/jpct/FrameBuffer;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/threed/jpct/World;->calledRender:Z

    .line 5
    invoke-virtual {p0, v0}, Lcom/threed/jpct/World;->setPlanes(Z)V

    .line 6
    iget-object v7, p1, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    .line 7
    iget-wide v1, p0, Lcom/threed/jpct/World;->drawCnt:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/threed/jpct/World;->drawCnt:J

    .line 8
    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getWidth()I

    move-result v8

    .line 9
    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getHeight()I

    move-result v9

    .line 10
    iget-object v1, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    iget v4, v1, Lcom/threed/jpct/VisList;->anzpoly:I

    .line 11
    invoke-virtual {v7}, Lcom/threed/jpct/GLRenderer;->startPainting()V

    .line 12
    iget-object v1, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    iget v1, v1, Lcom/threed/jpct/VisList;->anzpoly:I

    const/4 v2, -0x1

    const/4 v10, 0x1

    if-eq v1, v2, :cond_5

    .line 13
    sget v1, Lcom/threed/jpct/Config;->viewportOffsetX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    sget v1, Lcom/threed/jpct/Config;->viewportOffsetY:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v11, v0

    goto :goto_1

    .line 14
    :cond_2
    :goto_0
    sget v1, Lcom/threed/jpct/Config;->viewportOffsetX:F

    int-to-float v2, v8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/threed/jpct/Config;->viewportOffsetY:F

    neg-float v2, v2

    int-to-float v3, v9

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v7, v1, v2, v8, v9}, Lcom/threed/jpct/GLRenderer;->setBufferViewport(IIII)V

    move v11, v10

    :goto_1
    if-eqz p2, :cond_4

    move p2, v0

    :goto_2
    if-le p2, v4, :cond_3

    goto :goto_3

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    invoke-virtual {v7, v1, p2, p3, p1}, Lcom/threed/jpct/GLRenderer;->drawWireframe(Lcom/threed/jpct/VisList;IILcom/threed/jpct/FrameBuffer;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 16
    :cond_4
    iget-object v2, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    const/4 v3, 0x0

    move-object v1, v7

    move-object v5, p1

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/threed/jpct/GLRenderer;->drawVertexArray(Lcom/threed/jpct/VisList;IILcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/World;)V

    .line 17
    :goto_3
    invoke-virtual {v7}, Lcom/threed/jpct/GLRenderer;->endState()V

    if-eqz v11, :cond_5

    .line 18
    iget-object p1, p1, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {p1, v0, v0, v8, v9}, Lcom/threed/jpct/GLRenderer;->setBufferViewport(IIII)V

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/threed/jpct/World;->lines:Ljava/util/List;

    if-eqz p1, :cond_8

    .line 20
    invoke-virtual {v7, p0}, Lcom/threed/jpct/GLRenderer;->enableLineMode(Lcom/threed/jpct/World;)V

    .line 21
    :goto_4
    iget-object p1, p0, Lcom/threed/jpct/World;->lines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt v0, p1, :cond_6

    .line 22
    invoke-virtual {v7}, Lcom/threed/jpct/GLRenderer;->disableLineMode()V

    goto :goto_5

    .line 23
    :cond_6
    iget-object p1, p0, Lcom/threed/jpct/World;->lines:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/threed/jpct/Polyline;

    .line 24
    invoke-virtual {p1}, Lcom/threed/jpct/Polyline;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 25
    invoke-virtual {v7, p1}, Lcom/threed/jpct/GLRenderer;->drawLine(Lcom/threed/jpct/Polyline;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 26
    :cond_8
    :goto_5
    invoke-virtual {v7}, Lcom/threed/jpct/GLRenderer;->endPainting()V

    .line 27
    invoke-virtual {p0, v10}, Lcom/threed/jpct/World;->setPlanes(Z)V

    return-void
.end method

.method public static declared-synchronized getDefaultThread()Ljava/lang/Thread;
    .locals 2

    const-class v0, Lcom/threed/jpct/World;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/threed/jpct/World;->defaultThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private hasToNotify(Lcom/threed/jpct/CollisionInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/threed/jpct/CollisionInfo;->collision:Z

    if-eqz p1, :cond_1

    :cond_0
    sget p1, Lcom/threed/jpct/Object3D;->globalListenerCount:I

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private notifyAll(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/CollisionInfo;ILcom/threed/jpct/SimpleVector;)V
    .locals 7

    .line 3
    invoke-direct {p0, p2}, Lcom/threed/jpct/World;->hasToNotify(Lcom/threed/jpct/CollisionInfo;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 4
    iget-object p2, p0, Lcom/threed/jpct/World;->targets:Lcom/threed/jpct/Object3DList;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/threed/jpct/Object3DList;

    const/16 v0, 0xa

    invoke-direct {p2, v0}, Lcom/threed/jpct/Object3DList;-><init>(I)V

    iput-object p2, p0, Lcom/threed/jpct/World;->targets:Lcom/threed/jpct/Object3DList;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/threed/jpct/Object3DList;->clear()V

    :goto_0
    const/4 p2, 0x2

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 8
    iget-object p2, p0, Lcom/threed/jpct/World;->targets:Lcom/threed/jpct/Object3DList;

    invoke-virtual {p2}, Lcom/threed/jpct/Object3DList;->toArray()[Lcom/threed/jpct/Object3D;

    move-result-object v6

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 9
    invoke-virtual {p1, p2, p3, v6, p4}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    :cond_1
    const/4 p2, 0x0

    .line 10
    :goto_2
    iget-object v0, p0, Lcom/threed/jpct/World;->targets:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v0

    if-lt p2, v0, :cond_2

    goto :goto_3

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/threed/jpct/World;->targets:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v0, p2}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v0

    const/4 v2, 0x0

    move-object v1, p1

    move v3, p3

    move-object v4, v6

    move-object v5, p4

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(Lcom/threed/jpct/Object3D;II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v0, p2}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v0

    .line 14
    iget-boolean v1, v0, Lcom/threed/jpct/Object3D;->wasCollider:Z

    if-eqz v1, :cond_4

    .line 15
    iget-object v1, p0, Lcom/threed/jpct/World;->targets:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v1, v0}, Lcom/threed/jpct/Object3DList;->addElement(Lcom/threed/jpct/Object3D;)V

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    return-void
.end method

.method private notifyAll(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/CollisionInfo;I[F)V
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/threed/jpct/World;->hasToNotify(Lcom/threed/jpct/CollisionInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    aget v0, p4, v0

    const/4 v1, 0x1

    aget v1, p4, v1

    const/4 v2, 0x2

    aget p4, p4, v2

    invoke-static {v0, v1, p4}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/threed/jpct/World;->notifyAll(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/CollisionInfo;ILcom/threed/jpct/SimpleVector;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized setDefaultThread(Ljava/lang/Thread;)V
    .locals 1

    const-class v0, Lcom/threed/jpct/World;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/threed/jpct/World;->defaultThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public addLight(Lcom/threed/jpct/SimpleVector;FFF)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->z:F

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/threed/jpct/Lights;->addLight(FFFFFF)I

    move-result p1

    return p1
.end method

.method public addLight(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/RGBColor;)I
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {p2}, Lcom/threed/jpct/RGBColor;->getRed()I

    move-result p1

    int-to-float v4, p1

    invoke-virtual {p2}, Lcom/threed/jpct/RGBColor;->getGreen()I

    move-result p1

    int-to-float v5, p1

    invoke-virtual {p2}, Lcom/threed/jpct/RGBColor;->getBlue()I

    move-result p1

    int-to-float v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/threed/jpct/Lights;->addLight(FFFFFF)I

    move-result p1

    return p1
.end method

.method public addObject(Lcom/threed/jpct/Object3D;)I
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "Can\'t add \'null\' to a World!"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    const/16 p1, -0x64

    return p1

    :cond_0
    iget-object v0, p1, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3DList;->contains(Lcom/threed/jpct/Object3D;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Object \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' already belongs to this world!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getID()I

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3DList;->addElement(Lcom/threed/jpct/Object3D;)V

    iput-object p0, p1, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getID()I

    move-result p1

    return p1
.end method

.method public addObjects([Lcom/threed/jpct/Object3D;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/threed/jpct/World;->addObject(Lcom/threed/jpct/Object3D;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addPolyline(Lcom/threed/jpct/Polyline;)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/World;->lines:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/World;->lines:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/World;->lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public buildAllObjects()V
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v0

    const/4 v1, 0x2

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v2, v1}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->build()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)F
    .locals 11

    iget-object v0, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v1}, Lcom/threed/jpct/Object3DList;->getInternalArray()[Lcom/threed/jpct/Object3D;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x2

    move v5, v3

    :goto_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    const v8, 0x5368d4a5    # 1.0E12f

    if-lt v4, v0, :cond_2

    cmpl-float p3, v5, v3

    if-eqz p3, :cond_1

    cmpl-float p3, v5, v8

    if-eqz p3, :cond_1

    iget-object p3, v2, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    if-eqz p3, :cond_0

    new-instance p3, Lcom/threed/jpct/SimpleVector;

    invoke-direct {p3, p2}, Lcom/threed/jpct/SimpleVector;-><init>(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {p3, v5}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    new-instance p2, Lcom/threed/jpct/SimpleVector;

    invoke-direct {p2, p1}, Lcom/threed/jpct/SimpleVector;-><init>(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {p3, p2}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    filled-new-array {v2}, [Lcom/threed/jpct/Object3D;

    move-result-object p1

    invoke-virtual {v2, v7, v7, p1, p3}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    :cond_0
    iput-boolean v6, v2, Lcom/threed/jpct/Object3D;->wasCollider:Z

    return v5

    :cond_1
    return v8

    :cond_2
    aget-object v9, v1, v4

    iget-boolean v10, v9, Lcom/threed/jpct/Object3D;->isVisible:Z

    if-eqz v10, :cond_4

    iget-boolean v10, v9, Lcom/threed/jpct/Object3D;->isPotentialCollider:Z

    if-eqz v10, :cond_4

    iget-boolean v10, v9, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    if-eqz v10, :cond_3

    invoke-virtual {v9, p1, p2, v6}, Lcom/threed/jpct/Object3D;->rayIntersectsAABB(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Z)F

    move-result v6

    cmpg-float v6, v6, p3

    if-gez v6, :cond_4

    :cond_3
    invoke-virtual {v9, p1, p2, p3, v7}, Lcom/threed/jpct/Object3D;->calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;FZ)F

    move-result v6

    cmpg-float v7, v6, v5

    if-gez v7, :cond_4

    cmpl-float v7, v6, v8

    if-eqz v7, :cond_4

    move v5, v6

    move-object v2, v9

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public calcMinDistanceAndObject3D(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)[Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v1}, Lcom/threed/jpct/Object3DList;->getInternalArray()[Lcom/threed/jpct/Object3D;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x2

    move v6, v3

    move v5, v4

    :goto_0
    const/4 v7, 0x1

    const v8, 0x5368d4a5    # 1.0E12f

    const/4 v9, 0x0

    if-lt v5, v0, :cond_2

    cmpl-float p3, v6, v3

    if-eqz p3, :cond_1

    cmpl-float p3, v6, v8

    if-eqz p3, :cond_1

    iget-object p3, v2, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    if-eqz p3, :cond_0

    new-instance p3, Lcom/threed/jpct/SimpleVector;

    invoke-direct {p3, p2}, Lcom/threed/jpct/SimpleVector;-><init>(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {p3, v6}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    new-instance p2, Lcom/threed/jpct/SimpleVector;

    invoke-direct {p2, p1}, Lcom/threed/jpct/SimpleVector;-><init>(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {p3, p2}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    filled-new-array {v2}, [Lcom/threed/jpct/Object3D;

    move-result-object p1

    invoke-virtual {v2, v9, v9, p1, p3}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    :cond_0
    iput-boolean v7, v2, Lcom/threed/jpct/Object3D;->wasCollider:Z

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v9

    return-object p1

    :cond_2
    aget-object v10, v1, v5

    iget-boolean v11, v10, Lcom/threed/jpct/Object3D;->isPotentialCollider:Z

    if-eqz v11, :cond_4

    iget-boolean v11, v10, Lcom/threed/jpct/Object3D;->isVisible:Z

    if-eqz v11, :cond_4

    iget-boolean v11, v10, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    if-eqz v11, :cond_3

    invoke-virtual {v10, p1, p2, v7}, Lcom/threed/jpct/Object3D;->rayIntersectsAABB(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Z)F

    move-result v7

    cmpg-float v7, v7, p3

    if-gez v7, :cond_4

    :cond_3
    invoke-virtual {v10, p1, p2, p3, v9}, Lcom/threed/jpct/Object3D;->calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;FZ)F

    move-result v7

    cmpg-float v9, v7, v6

    if-gez v9, :cond_4

    cmpl-float v8, v7, v8

    if-eqz v8, :cond_4

    move v6, v7

    move-object v2, v10

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public checkCameraCollision(IF)Z
    .locals 6

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v5, 0x1

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/World;->checkCameraCollision(Lcom/threed/jpct/SimpleVector;IFFZ)Z

    move-result p1

    return p1
.end method

.method public checkCameraCollision(IFFZ)Z
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/World;->checkCameraCollision(Lcom/threed/jpct/SimpleVector;IFFZ)Z

    move-result p1

    return p1
.end method

.method public checkCameraCollision(IFZ)Z
    .locals 6

    const/4 v1, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/World;->checkCameraCollision(Lcom/threed/jpct/SimpleVector;IFFZ)Z

    move-result p1

    return p1
.end method

.method public checkCameraCollision(Lcom/threed/jpct/SimpleVector;FFZ)Z
    .locals 6

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/World;->checkCameraCollision(Lcom/threed/jpct/SimpleVector;IFFZ)Z

    move-result p1

    return p1
.end method

.method public checkCameraCollisionEllipsoid(ILcom/threed/jpct/SimpleVector;FI)Z
    .locals 7

    const/4 v0, 0x1

    if-ge p4, v0, :cond_0

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    .line 1
    invoke-direct/range {v1 .. v6}, Lcom/threed/jpct/World;->checkCameraCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;ILcom/threed/jpct/SimpleVector;FI)Z

    move-result p1

    return p1
.end method

.method public checkCameraCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;FI)Z
    .locals 7

    const/4 v0, 0x1

    if-ge p4, v0, :cond_0

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    const/4 v3, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/threed/jpct/World;->checkCameraCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;ILcom/threed/jpct/SimpleVector;FI)Z

    move-result p1

    return p1
.end method

.method public checkCameraCollisionSpherical(IFFZ)Z
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/World;->checkCameraCollisionSpherical(Lcom/threed/jpct/SimpleVector;IFFZ)Z

    move-result p1

    return p1
.end method

.method public checkCameraCollisionSpherical(Lcom/threed/jpct/SimpleVector;FFZ)Z
    .locals 6

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/World;->checkCameraCollisionSpherical(Lcom/threed/jpct/SimpleVector;IFFZ)Z

    move-result p1

    return p1
.end method

.method public checkCollision(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)I
    .locals 5

    invoke-virtual {p2}, Lcom/threed/jpct/SimpleVector;->toArray()[F

    move-result-object p2

    const/4 v0, 0x0

    aget v1, p2, v0

    mul-float/2addr v1, v1

    const/4 v2, 0x1

    aget v3, p2, v2

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p2, v3

    mul-float/2addr v4, v4

    add-float/2addr v1, v4

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    aget v4, p2, v0

    div-float/2addr v4, v1

    aput v4, p2, v0

    aget v0, p2, v2

    div-float/2addr v0, v1

    aput v0, p2, v2

    aget v0, p2, v3

    div-float/2addr v0, v1

    aput v0, p2, v3

    invoke-virtual {p1}, Lcom/threed/jpct/SimpleVector;->toArray()[F

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/threed/jpct/World;->checkSomeCollision([F[FFLcom/threed/jpct/Object3D;)I

    move-result p1

    return p1
.end method

.method public checkCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;I)Lcom/threed/jpct/SimpleVector;
    .locals 7

    const/4 v0, 0x1

    if-ge p4, v0, :cond_0

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/threed/jpct/World;->checkSomeCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/Object3D;I)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public checkCollisionSpherical(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p1}, Lcom/threed/jpct/SimpleVector;->toArray()[F

    move-result-object p1

    invoke-virtual {p2}, Lcom/threed/jpct/SimpleVector;->toArray()[F

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/threed/jpct/World;->checkSomeCollisionSpherical([F[FFLcom/threed/jpct/Object3D;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public final checkObjCollision(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;F)I
    .locals 9

    const/4 v0, 0x3

    iget-boolean v1, p1, Lcom/threed/jpct/Object3D;->mayCollide:Z

    if-eqz v1, :cond_0

    new-array v1, v0, [F

    iget v3, p1, Lcom/threed/jpct/Object3D;->centerX:F

    iget v4, p1, Lcom/threed/jpct/Object3D;->centerY:F

    iget v5, p1, Lcom/threed/jpct/Object3D;->centerZ:F

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/threed/jpct/World;->tmpMat:Lcom/threed/jpct/Matrix;

    move-object v2, p1

    move-object v7, v1

    invoke-virtual/range {v2 .. v8}, Lcom/threed/jpct/Object3D;->getProjectedPoint(FFFLcom/threed/jpct/SimpleVector;[FLcom/threed/jpct/Matrix;)V

    iget v2, p2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v3, p2, Lcom/threed/jpct/SimpleVector;->y:F

    iget p2, p2, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    mul-float v5, p2, p2

    add-float/2addr v4, v5

    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v4

    mul-float/2addr v2, v5

    mul-float/2addr v3, v5

    mul-float/2addr p2, v5

    new-array v0, v0, [F

    const/4 v4, 0x0

    aput v2, v0, v4

    const/4 v2, 0x1

    aput v3, v0, v2

    const/4 v2, 0x2

    aput p2, v0, v2

    invoke-direct {p0, v1, v0, p3, p1}, Lcom/threed/jpct/World;->checkSomeCollision([F[FFLcom/threed/jpct/Object3D;)I

    move-result p1

    return p1

    :cond_0
    const/16 p1, -0x64

    return p1
.end method

.method public final checkObjCollisionEllipsoid(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;I)Lcom/threed/jpct/SimpleVector;
    .locals 9

    iget-boolean v0, p1, Lcom/threed/jpct/Object3D;->mayCollide:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    new-instance v8, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v8, p2}, Lcom/threed/jpct/SimpleVector;-><init>(Lcom/threed/jpct/SimpleVector;)V

    iget v2, p1, Lcom/threed/jpct/Object3D;->centerX:F

    iget v3, p1, Lcom/threed/jpct/Object3D;->centerY:F

    iget v4, p1, Lcom/threed/jpct/Object3D;->centerZ:F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/threed/jpct/World;->tmpMat:Lcom/threed/jpct/Matrix;

    move-object v1, p1

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Lcom/threed/jpct/Object3D;->getProjectedPoint(FFFLcom/threed/jpct/SimpleVector;[FLcom/threed/jpct/Matrix;)V

    move-object v1, p0

    move-object v2, v0

    move-object v3, v8

    move-object v4, p3

    move-object v5, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/threed/jpct/World;->checkSomeCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/Object3D;I)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/threed/jpct/SimpleVector;

    invoke-direct {p1, p2}, Lcom/threed/jpct/SimpleVector;-><init>(Lcom/threed/jpct/SimpleVector;)V

    return-object p1
.end method

.method public final checkObjCollisionSpherical(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/SimpleVector;
    .locals 9

    const/4 v0, 0x3

    iget-boolean v1, p1, Lcom/threed/jpct/Object3D;->mayCollide:Z

    if-eqz v1, :cond_0

    new-array v1, v0, [F

    iget v3, p1, Lcom/threed/jpct/Object3D;->centerX:F

    iget v4, p1, Lcom/threed/jpct/Object3D;->centerY:F

    iget v5, p1, Lcom/threed/jpct/Object3D;->centerZ:F

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/threed/jpct/World;->tmpMat:Lcom/threed/jpct/Matrix;

    move-object v2, p1

    move-object v7, v1

    invoke-virtual/range {v2 .. v8}, Lcom/threed/jpct/Object3D;->getProjectedPoint(FFFLcom/threed/jpct/SimpleVector;[FLcom/threed/jpct/Matrix;)V

    iget v2, p2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v3, p2, Lcom/threed/jpct/SimpleVector;->y:F

    iget p2, p2, Lcom/threed/jpct/SimpleVector;->z:F

    new-array v0, v0, [F

    const/4 v4, 0x0

    aput v2, v0, v4

    const/4 v2, 0x1

    aput v3, v0, v2

    const/4 v2, 0x2

    aput p2, v0, v2

    invoke-direct {p0, v1, v0, p3, p1}, Lcom/threed/jpct/World;->checkSomeCollisionSpherical([F[FFLcom/threed/jpct/Object3D;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1

    :cond_0
    iget p1, p2, Lcom/threed/jpct/SimpleVector;->x:F

    iget p3, p2, Lcom/threed/jpct/SimpleVector;->y:F

    iget p2, p2, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-static {p1, p3, p2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized compileAllObjects()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v3, v2}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/threed/jpct/Object3D;->object3DRendered:Z

    iget-boolean v4, v3, Lcom/threed/jpct/Object3D;->hasBeenBuild:Z

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Object "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/threed/jpct/Object3D;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " hasn\'t been build yet. Forcing build()!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->build()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v4, v3, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->isCompiled()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v4

    iget v4, v4, Lcom/threed/jpct/Mesh;->anzTri:I

    if-lez v4, :cond_4

    iget-object v4, v3, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/threed/jpct/Object3D;->isCompiled()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v5

    iget v5, v5, Lcom/threed/jpct/Mesh;->anzTri:I

    if-lez v5, :cond_3

    iget-object v5, v4, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-nez v5, :cond_2

    iget-boolean v5, v3, Lcom/threed/jpct/Object3D;->dynamic:Z

    iget-boolean v6, v3, Lcom/threed/jpct/Object3D;->staticUV:Z

    invoke-virtual {v4, v5, v6}, Lcom/threed/jpct/Object3D;->compile(ZZ)V

    :cond_2
    const-string v5, "Compiling source object..."

    invoke-static {v5, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    invoke-direct {p0, v4}, Lcom/threed/jpct/World;->compile(Lcom/threed/jpct/Object3D;)V

    :cond_3
    invoke-direct {p0, v3}, Lcom/threed/jpct/World;->compile(Lcom/threed/jpct/Object3D;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/World;->disposed:Z

    iget-object v0, p0, Lcom/threed/jpct/World;->vlManager:Lcom/threed/jpct/VisListManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/threed/jpct/VisListManager;->dispose()V

    :cond_0
    return-void
.end method

.method public draw(Lcom/threed/jpct/FrameBuffer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/threed/jpct/World;->draw(Lcom/threed/jpct/FrameBuffer;ZI)V

    return-void
.end method

.method public drawWireframe(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/RGBColor;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/threed/jpct/RGBColor;->getRGB()I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lcom/threed/jpct/World;->draw(Lcom/threed/jpct/FrameBuffer;ZI)V

    return-void
.end method

.method public fillAmbientLight([F)V
    .locals 2

    iget v0, p0, Lcom/threed/jpct/World;->ambientRed:I

    int-to-float v0, v0

    const/4 v1, 0x0

    aput v0, p1, v1

    iget v0, p0, Lcom/threed/jpct/World;->ambientGreen:I

    int-to-float v0, v0

    const/4 v1, 0x1

    aput v0, p1, v1

    iget v0, p0, Lcom/threed/jpct/World;->ambientBlue:I

    int-to-float v0, v0

    const/4 v1, 0x2

    aput v0, p1, v1

    return-void
.end method

.method public finalize()V
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/World;->disposed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/threed/jpct/World;->dispose()V

    :cond_0
    return-void
.end method

.method public getAmbientLight()[I
    .locals 3

    iget v0, p0, Lcom/threed/jpct/World;->ambientRed:I

    iget v1, p0, Lcom/threed/jpct/World;->ambientGreen:I

    iget v2, p0, Lcom/threed/jpct/World;->ambientBlue:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    return-object v0
.end method

.method public getCamera()Lcom/threed/jpct/Camera;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    return-object v0
.end method

.method public getFogging()I
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/World;->useFogging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFrameCounter()J
    .locals 2

    iget-wide v0, p0, Lcom/threed/jpct/World;->drawCnt:J

    return-wide v0
.end method

.method public getGlobalShader()Lcom/threed/jpct/GLSLShader;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/World;->globalShader:Lcom/threed/jpct/GLSLShader;

    return-object v0
.end method

.method public getInternalObjectByName(Ljava/lang/String;)Lcom/threed/jpct/Object3D;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v1}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v1, v0}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v1

    iget-object v1, v1, Lcom/threed/jpct/Object3D;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {p1, v0}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLightAttenuation(I)F
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Lights;->getAttenuation(I)F

    move-result p1

    return p1
.end method

.method public getLightDiscardDistance(I)F
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    iget-object v0, v0, Lcom/threed/jpct/Lights;->discardDistance:[F

    aget p1, v0, p1

    return p1
.end method

.method public getLightDistanceOverride(I)F
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Lights;->getDistanceOverride(I)F

    move-result p1

    return p1
.end method

.method public getLightIntensity(I)Lcom/threed/jpct/SimpleVector;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Lights;->getIntensity(I)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public getLightPosition(ILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Lights;->getPosition(ILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public getLights()Lcom/threed/jpct/Lights;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    return-object v0
.end method

.method public getObject(I)Lcom/threed/jpct/Object3D;
    .locals 4

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v3}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t retrieve object #"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v3, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v3, v2}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v3

    iget v3, v3, Lcom/threed/jpct/Object3D;->number:I

    if-ne v3, v0, :cond_1

    iget-object p1, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {p1, v2}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getObjectByName(Ljava/lang/String;)Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/threed/jpct/World;->getInternalObjectByName(Ljava/lang/String;)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1
.end method

.method public getObjects()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lcom/threed/jpct/Object3D;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3DList;->elements()Ljava/util/Enumeration;

    move-result-object v0

    iget-object v1, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v1}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method public newCamera()V
    .locals 1

    new-instance v0, Lcom/threed/jpct/Camera;

    invoke-direct {v0}, Lcom/threed/jpct/Camera;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    return-void
.end method

.method public removeAll()V
    .locals 0

    invoke-virtual {p0}, Lcom/threed/jpct/World;->removeAllLights()V

    invoke-virtual {p0}, Lcom/threed/jpct/World;->removeAllObjects()V

    return-void
.end method

.method public removeAllLights()V
    .locals 2

    new-instance v0, Lcom/threed/jpct/Lights;

    sget v1, Lcom/threed/jpct/Config;->maxLights:I

    invoke-direct {v0, v1}, Lcom/threed/jpct/Lights;-><init>(I)V

    iput-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    return-void
.end method

.method public removeAllObjects()V
    .locals 5

    iget-object v0, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v0

    iget-object v2, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v3}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    new-instance v1, Lcom/threed/jpct/Object3DList;

    invoke-direct {v1}, Lcom/threed/jpct/Object3DList;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {p0, v0}, Lcom/threed/jpct/World;->addObject(Lcom/threed/jpct/Object3D;)I

    invoke-virtual {p0, v2}, Lcom/threed/jpct/World;->addObject(Lcom/threed/jpct/Object3D;)I

    iget-object v0, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/threed/jpct/VisList;->deepClear()V

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v3, v1}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeObject(I)V
    .locals 4

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    move v2, v1

    .line 1
    :goto_0
    iget-object v3, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v3}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t remove object #"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v3, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v3, v2}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v3

    iget v3, v3, Lcom/threed/jpct/Object3D;->number:I

    if-ne v3, v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {p1, v2}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    .line 5
    iget-object p1, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {p1, v2}, Lcom/threed/jpct/Object3DList;->removeElementAt(I)V

    .line 6
    iget-object p1, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/threed/jpct/VisList;->deepClear()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeObject(Lcom/threed/jpct/Object3D;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3DList;->removeElement(Lcom/threed/jpct/Object3D;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/threed/jpct/util/Overlay;

    if-nez v0, :cond_2

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t remove object #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getID()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", because it doesn\'t belong to this World!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 11
    iput-object v0, p1, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    .line 12
    iget-object p1, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/threed/jpct/VisList;->deepClear()V

    :cond_2
    :goto_0
    return-void
.end method

.method public removePolyline(Lcom/threed/jpct/Polyline;)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/World;->lines:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized renderScene(Lcom/threed/jpct/FrameBuffer;)V
    .locals 10

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/threed/jpct/World;->defaultThread:Ljava/lang/Thread;

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    sput-object v2, Lcom/threed/jpct/World;->defaultThread:Ljava/lang/Thread;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/threed/jpct/World;->calledRender:Z

    iget-object v2, p1, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v2}, Lcom/threed/jpct/GLRenderer;->disableBlitting()V

    invoke-virtual {p0, v1}, Lcom/threed/jpct/World;->setPlanes(Z)V

    iget-object v2, p0, Lcom/threed/jpct/World;->vlManager:Lcom/threed/jpct/VisListManager;

    if-nez v2, :cond_1

    new-instance v2, Lcom/threed/jpct/VisListManager;

    invoke-direct {v2}, Lcom/threed/jpct/VisListManager;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/World;->vlManager:Lcom/threed/jpct/VisListManager;

    :cond_1
    iget-object v2, p0, Lcom/threed/jpct/World;->vlManager:Lcom/threed/jpct/VisListManager;

    iget-object v3, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    invoke-virtual {v2, p1, v3}, Lcom/threed/jpct/VisListManager;->getVisList(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/VisList;)Lcom/threed/jpct/VisList;

    move-result-object v2

    iput-object v2, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    invoke-virtual {v2}, Lcom/threed/jpct/VisList;->clearList()V

    iget v2, p1, Lcom/threed/jpct/FrameBuffer;->width:I

    iget v3, p1, Lcom/threed/jpct/FrameBuffer;->height:I

    iget-object v4, p1, Lcom/threed/jpct/FrameBuffer;->renderTarget:Lcom/threed/jpct/Texture;

    if-eqz v4, :cond_2

    iget v2, v4, Lcom/threed/jpct/Texture;->width:I

    iget v3, v4, Lcom/threed/jpct/Texture;->height:I

    :cond_2
    iget-object v4, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    invoke-virtual {v4, v2, v3}, Lcom/threed/jpct/Camera;->calcFOV(II)V

    iget-object v2, p1, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v2, p0, p1}, Lcom/threed/jpct/GLRenderer;->setFrustumAndFog(Lcom/threed/jpct/World;Lcom/threed/jpct/FrameBuffer;)V

    iget-object v2, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    iget-object v3, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    invoke-virtual {v2, v3}, Lcom/threed/jpct/Lights;->transformLights(Lcom/threed/jpct/Camera;)V

    iget-object v2, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v3}, Lcom/threed/jpct/Object3DList;->getInternalArray()[Lcom/threed/jpct/Object3D;

    move-result-object v3

    const/4 v4, 0x2

    move v5, v4

    :goto_1
    if-lt v5, v2, :cond_3

    iget-object p1, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    invoke-virtual {p1}, Lcom/threed/jpct/VisList;->fillInstances()V

    iget-object p1, p0, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    iget v2, p1, Lcom/threed/jpct/VisList;->anzpoly:I

    invoke-virtual {p1, v1, v2}, Lcom/threed/jpct/VisList;->sort(II)V

    invoke-virtual {p0, v0}, Lcom/threed/jpct/World;->setPlanes(Z)V

    goto/16 :goto_4

    :cond_3
    aget-object v6, v3, v5

    if-nez v6, :cond_4

    const-string v6, "Null object in queue...?"

    invoke-static {v6, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_4
    iput-boolean v1, v6, Lcom/threed/jpct/Object3D;->object3DRendered:Z

    iget-boolean v7, v6, Lcom/threed/jpct/Object3D;->hasBeenBuild:Z

    if-eqz v7, :cond_5

    if-eqz v7, :cond_6

    iget-object v7, v6, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-nez v7, :cond_6

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Object "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v6, Lcom/threed/jpct/Object3D;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " hasn\'t been build yet. Forcing build()!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    invoke-virtual {v6}, Lcom/threed/jpct/Object3D;->build()V

    :cond_6
    iget-object v7, v6, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-eqz v7, :cond_9

    invoke-virtual {v6}, Lcom/threed/jpct/Object3D;->isCompiled()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v6}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v7

    iget v7, v7, Lcom/threed/jpct/Mesh;->anzTri:I

    if-lez v7, :cond_9

    iget-object v7, v6, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/threed/jpct/Object3D;->isCompiled()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v7}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v8

    iget v8, v8, Lcom/threed/jpct/Mesh;->anzTri:I

    if-lez v8, :cond_8

    iget-object v8, v7, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-nez v8, :cond_7

    iget-boolean v8, v6, Lcom/threed/jpct/Object3D;->dynamic:Z

    iget-boolean v9, v6, Lcom/threed/jpct/Object3D;->staticUV:Z

    invoke-virtual {v7, v8, v9}, Lcom/threed/jpct/Object3D;->compile(ZZ)V

    :cond_7
    const-string v8, "Compiling source object..."

    invoke-static {v8, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    invoke-direct {p0, v7}, Lcom/threed/jpct/World;->compile(Lcom/threed/jpct/Object3D;)V

    :cond_8
    invoke-direct {p0, v6}, Lcom/threed/jpct/World;->compile(Lcom/threed/jpct/Object3D;)V

    :cond_9
    invoke-virtual {v6}, Lcom/threed/jpct/Object3D;->getUserObject()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_a

    instance-of v8, v7, Lcom/threed/jpct/util/Overlay;

    if-eqz v8, :cond_a

    check-cast v7, Lcom/threed/jpct/util/Overlay;

    invoke-virtual {v7, p1}, Lcom/threed/jpct/util/Overlay;->update(Lcom/threed/jpct/FrameBuffer;)V

    :cond_a
    iget-boolean v7, v6, Lcom/threed/jpct/Object3D;->isVisible:Z

    if-eqz v7, :cond_b

    invoke-virtual {v6, p1}, Lcom/threed/jpct/Object3D;->transformVertices(Lcom/threed/jpct/FrameBuffer;)Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, v6, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v7, v7, Lcom/threed/jpct/Mesh;->anzTri:I

    if-lez v7, :cond_b

    invoke-virtual {v6}, Lcom/threed/jpct/Object3D;->render()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :goto_3
    :try_start_1
    const-string v2, "There\'s a problem with the object list not being consistent during rendering. This is often caused by concurrent modification of jPCT objects on a thread different from the rendering thread!"

    invoke-static {v2, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/Throwable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setAmbientLight(III)V
    .locals 0

    iput p1, p0, Lcom/threed/jpct/World;->ambientRed:I

    iput p2, p0, Lcom/threed/jpct/World;->ambientGreen:I

    iput p3, p0, Lcom/threed/jpct/World;->ambientBlue:I

    return-void
.end method

.method public setCameraTo(Lcom/threed/jpct/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    return-void
.end method

.method public setClippingPlanes(FF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/threed/jpct/World;->nearPlane:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/threed/jpct/World;->farPlane:F

    return-void
.end method

.method public setFogParameters(FFFF)V
    .locals 6

    const v1, -0x3b864000    # -999.0f

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/threed/jpct/World;->setFogParameters(FFFFF)V

    return-void
.end method

.method public setFogParameters(FFFFF)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/threed/jpct/World;->useFogging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/threed/jpct/World;->fogModeChanged:I

    :cond_0
    const v0, -0x3b864000    # -999.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 4
    iput p1, p0, Lcom/threed/jpct/World;->fogStart:F

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/threed/jpct/World;->fogDistance:F

    .line 6
    iput p3, p0, Lcom/threed/jpct/World;->fogColorR:F

    .line 7
    iput p4, p0, Lcom/threed/jpct/World;->fogColorG:F

    .line 8
    iput p5, p0, Lcom/threed/jpct/World;->fogColorB:F

    return-void
.end method

.method public setFogging(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/threed/jpct/World;->useFogging:Z

    if-eqz p1, :cond_1

    iput v0, p0, Lcom/threed/jpct/World;->fogModeChanged:I

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    iput p1, p0, Lcom/threed/jpct/World;->fogModeChanged:I

    :goto_1
    return-void
.end method

.method public setGlobalShader(Lcom/threed/jpct/GLSLShader;)V
    .locals 0

    iput-object p1, p0, Lcom/threed/jpct/World;->globalShader:Lcom/threed/jpct/GLSLShader;

    return-void
.end method

.method public setLightAttenuation(IF)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Lights;->setAttenuation(IF)V

    return-void
.end method

.method public setLightDiscardDistance(IF)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Lights;->setDiscardDistance(IF)V

    return-void
.end method

.method public setLightDistanceOverride(IF)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Lights;->setDistanceOverride(IF)V

    return-void
.end method

.method public setLightIntensity(IFFF)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/threed/jpct/Lights;->setLightIntensity(IFFF)V

    return-void
.end method

.method public setLightPosition(ILcom/threed/jpct/SimpleVector;)V
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    iget v1, p2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v2, p2, Lcom/threed/jpct/SimpleVector;->y:F

    iget p2, p2, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/threed/jpct/Lights;->setPosition(IFFF)V

    return-void
.end method

.method public setLightVisibility(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Lights;->setVisibility(IZ)V

    return-void
.end method

.method public setObjectsVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3DList;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/threed/jpct/Object3D;

    invoke-virtual {v1, p1}, Lcom/threed/jpct/Object3D;->setVisibility(Z)V

    goto :goto_0
.end method

.method public setPlanes(Z)V
    .locals 2

    iget v0, p0, Lcom/threed/jpct/World;->nearPlane:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    sget p1, Lcom/threed/jpct/Config;->nearPlane:F

    iput p1, p0, Lcom/threed/jpct/World;->nearPlaneOld:F

    sget p1, Lcom/threed/jpct/Config;->farPlane:F

    iput p1, p0, Lcom/threed/jpct/World;->farPlaneOld:F

    sput v0, Lcom/threed/jpct/Config;->nearPlane:F

    iget p1, p0, Lcom/threed/jpct/World;->farPlane:F

    sput p1, Lcom/threed/jpct/Config;->farPlane:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/threed/jpct/World;->nearPlaneOld:F

    sput p1, Lcom/threed/jpct/Config;->nearPlane:F

    iget p1, p0, Lcom/threed/jpct/World;->farPlaneOld:F

    sput p1, Lcom/threed/jpct/Config;->farPlane:F

    :cond_1
    :goto_0
    return-void
.end method

.method public setRGBScale(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/threed/jpct/World;->getLights()Lcom/threed/jpct/Lights;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Lights;->setRGBScale(I)V

    return-void
.end method
