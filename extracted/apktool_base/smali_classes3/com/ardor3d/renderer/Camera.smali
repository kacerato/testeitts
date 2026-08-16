.class public Lcom/ardor3d/renderer/Camera;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/export/Savable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/renderer/Camera$ProjectionMode;,
        Lcom/ardor3d/renderer/Camera$FrustumIntersect;
    }
.end annotation


# static fields
.field public static final BOTTOM_PLANE:I = 0x2

.field public static final FAR_PLANE:I = 0x4

.field public static final FRUSTUM_PLANES:I = 0x6

.field public static final LEFT_PLANE:I = 0x0

.field public static final MAX_WORLD_PLANES:I = 0x20

.field public static final NEAR_PLANE:I = 0x5

.field public static final RIGHT_PLANE:I = 0x1

.field public static final TOP_PLANE:I = 0x3

.field private static final _logger:Ljava/util/logging/Logger;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _coeffBottom:[D

.field protected _coeffLeft:[D

.field protected _coeffRight:[D

.field protected _coeffTop:[D

.field protected _depthRangeDirty:Z

.field protected _depthRangeFar:D

.field protected _depthRangeNear:D

.field protected final _direction:Lcom/ardor3d/math/Vector3;

.field protected _fovY:D

.field protected _frameDirty:Z

.field protected _frustumBottom:D

.field protected _frustumDirty:Z

.field protected _frustumFar:D

.field protected _frustumLeft:D

.field protected _frustumNear:D

.field protected _frustumRight:D

.field protected _frustumTop:D

.field protected _height:I

.field protected final _left:Lcom/ardor3d/math/Vector3;

.field protected final _location:Lcom/ardor3d/math/Vector3;

.field protected final _matrixBuffer:Ljava/nio/FloatBuffer;

.field protected final _modelView:Lcom/ardor3d/math/Matrix4;

.field private final _modelViewProjection:Lcom/ardor3d/math/Matrix4;

.field private final _modelViewProjectionInverse:Lcom/ardor3d/math/Matrix4;

.field protected final _newDirection:Lcom/ardor3d/math/Vector3;

.field protected _planeQuantity:I

.field private _planeState:I

.field protected final _projection:Lcom/ardor3d/math/Matrix4;

.field private _projectionMode:Lcom/ardor3d/renderer/Camera$ProjectionMode;

.field protected final _transMatrix:Lcom/ardor3d/math/Matrix4;

.field protected final _up:Lcom/ardor3d/math/Vector3;

.field private _updateInverseMVPMatrix:Z

.field private _updateMVMatrix:Z

.field private _updateMVPMatrix:Z

.field private _updatePMatrix:Z

.field protected _viewPortBottom:D

.field protected _viewPortDirty:Z

.field protected _viewPortLeft:D

.field protected _viewPortRight:D

.field protected _viewPortTop:D

.field protected _width:I

.field protected _worldPlane:[Lcom/ardor3d/math/Plane;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/Camera;->_logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x64

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/ardor3d/renderer/Camera;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v3, Lcom/ardor3d/math/Vector3;

    invoke-direct {v3}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v3, v0, Lcom/ardor3d/renderer/Camera;->_location:Lcom/ardor3d/math/Vector3;

    .line 4
    new-instance v10, Lcom/ardor3d/math/Vector3;

    invoke-direct {v10}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v10, v0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    .line 5
    new-instance v11, Lcom/ardor3d/math/Vector3;

    invoke-direct {v11}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v11, v0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    .line 6
    new-instance v14, Lcom/ardor3d/math/Vector3;

    invoke-direct {v14}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v14, v0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    .line 7
    iput-wide v4, v0, Lcom/ardor3d/renderer/Camera;->_fovY:D

    const/16 v4, 0x10

    .line 8
    invoke-static {v4}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, v0, Lcom/ardor3d/renderer/Camera;->_matrixBuffer:Ljava/nio/FloatBuffer;

    .line 9
    new-instance v4, Lcom/ardor3d/math/Vector3;

    invoke-direct {v4}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v4, v0, Lcom/ardor3d/renderer/Camera;->_newDirection:Lcom/ardor3d/math/Vector3;

    .line 10
    sget-object v4, Lcom/ardor3d/renderer/Camera$ProjectionMode;->Perspective:Lcom/ardor3d/renderer/Camera$ProjectionMode;

    iput-object v4, v0, Lcom/ardor3d/renderer/Camera;->_projectionMode:Lcom/ardor3d/renderer/Camera$ProjectionMode;

    const/4 v15, 0x1

    .line 11
    iput-boolean v15, v0, Lcom/ardor3d/renderer/Camera;->_updateMVMatrix:Z

    .line 12
    iput-boolean v15, v0, Lcom/ardor3d/renderer/Camera;->_updatePMatrix:Z

    .line 13
    iput-boolean v15, v0, Lcom/ardor3d/renderer/Camera;->_updateMVPMatrix:Z

    .line 14
    iput-boolean v15, v0, Lcom/ardor3d/renderer/Camera;->_updateInverseMVPMatrix:Z

    .line 15
    new-instance v4, Lcom/ardor3d/math/Matrix4;

    invoke-direct {v4}, Lcom/ardor3d/math/Matrix4;-><init>()V

    iput-object v4, v0, Lcom/ardor3d/renderer/Camera;->_modelView:Lcom/ardor3d/math/Matrix4;

    .line 16
    new-instance v4, Lcom/ardor3d/math/Matrix4;

    invoke-direct {v4}, Lcom/ardor3d/math/Matrix4;-><init>()V

    iput-object v4, v0, Lcom/ardor3d/renderer/Camera;->_projection:Lcom/ardor3d/math/Matrix4;

    .line 17
    new-instance v4, Lcom/ardor3d/math/Matrix4;

    invoke-direct {v4}, Lcom/ardor3d/math/Matrix4;-><init>()V

    iput-object v4, v0, Lcom/ardor3d/renderer/Camera;->_modelViewProjection:Lcom/ardor3d/math/Matrix4;

    .line 18
    new-instance v4, Lcom/ardor3d/math/Matrix4;

    invoke-direct {v4}, Lcom/ardor3d/math/Matrix4;-><init>()V

    iput-object v4, v0, Lcom/ardor3d/renderer/Camera;->_modelViewProjectionInverse:Lcom/ardor3d/math/Matrix4;

    .line 19
    new-instance v4, Lcom/ardor3d/math/Matrix4;

    invoke-direct {v4}, Lcom/ardor3d/math/Matrix4;-><init>()V

    iput-object v4, v0, Lcom/ardor3d/renderer/Camera;->_transMatrix:Lcom/ardor3d/math/Matrix4;

    .line 20
    iput v1, v0, Lcom/ardor3d/renderer/Camera;->_width:I

    .line 21
    iput v2, v0, Lcom/ardor3d/renderer/Camera;->_height:I

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v4, 0x0

    .line 22
    invoke-virtual/range {v3 .. v9}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    const-wide/16 v7, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move-object v4, v10

    move-wide v9, v12

    .line 23
    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v16, 0x0

    move-object v5, v14

    move v6, v15

    move-wide v14, v3

    .line 24
    invoke-virtual/range {v11 .. v17}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    const-wide/16 v15, 0x0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const-wide/16 v13, 0x0

    move-object v12, v5

    .line 25
    invoke-virtual/range {v12 .. v18}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    const-wide/16 v3, 0x0

    .line 26
    iput-wide v3, v0, Lcom/ardor3d/renderer/Camera;->_depthRangeNear:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 27
    iput-wide v7, v0, Lcom/ardor3d/renderer/Camera;->_depthRangeFar:D

    .line 28
    iput-boolean v6, v0, Lcom/ardor3d/renderer/Camera;->_depthRangeDirty:Z

    .line 29
    iput-wide v7, v0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 30
    iput-wide v5, v0, Lcom/ardor3d/renderer/Camera;->_frustumFar:D

    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    .line 31
    iput-wide v5, v0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 32
    iput-wide v9, v0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    .line 33
    iput-wide v9, v0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    .line 34
    iput-wide v5, v0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    const/4 v5, 0x2

    .line 35
    new-array v6, v5, [D

    iput-object v6, v0, Lcom/ardor3d/renderer/Camera;->_coeffLeft:[D

    .line 36
    new-array v6, v5, [D

    iput-object v6, v0, Lcom/ardor3d/renderer/Camera;->_coeffRight:[D

    .line 37
    new-array v6, v5, [D

    iput-object v6, v0, Lcom/ardor3d/renderer/Camera;->_coeffBottom:[D

    .line 38
    new-array v5, v5, [D

    iput-object v5, v0, Lcom/ardor3d/renderer/Camera;->_coeffTop:[D

    .line 39
    iput-wide v3, v0, Lcom/ardor3d/renderer/Camera;->_viewPortLeft:D

    .line 40
    iput-wide v7, v0, Lcom/ardor3d/renderer/Camera;->_viewPortRight:D

    .line 41
    iput-wide v7, v0, Lcom/ardor3d/renderer/Camera;->_viewPortTop:D

    .line 42
    iput-wide v3, v0, Lcom/ardor3d/renderer/Camera;->_viewPortBottom:D

    const/4 v3, 0x6

    .line 43
    iput v3, v0, Lcom/ardor3d/renderer/Camera;->_planeQuantity:I

    const/16 v3, 0x20

    .line 44
    new-array v4, v3, [Lcom/ardor3d/math/Plane;

    iput-object v4, v0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 45
    iget-object v5, v0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    new-instance v6, Lcom/ardor3d/math/Plane;

    invoke-direct {v6}, Lcom/ardor3d/math/Plane;-><init>()V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->onFrustumChange()V

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->onViewPortChange()V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->onFrameChange()V

    .line 49
    sget-object v3, Lcom/ardor3d/renderer/Camera;->_logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera created. W: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  H: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/renderer/Camera;)V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/Camera;->_location:Lcom/ardor3d/math/Vector3;

    .line 52
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    .line 53
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    .line 54
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 55
    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_fovY:D

    const/16 v0, 0x10

    .line 56
    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/Camera;->_matrixBuffer:Ljava/nio/FloatBuffer;

    .line 57
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/Camera;->_newDirection:Lcom/ardor3d/math/Vector3;

    .line 58
    sget-object v0, Lcom/ardor3d/renderer/Camera$ProjectionMode;->Perspective:Lcom/ardor3d/renderer/Camera$ProjectionMode;

    iput-object v0, p0, Lcom/ardor3d/renderer/Camera;->_projectionMode:Lcom/ardor3d/renderer/Camera$ProjectionMode;

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/ardor3d/renderer/Camera;->_updateMVMatrix:Z

    .line 60
    iput-boolean v0, p0, Lcom/ardor3d/renderer/Camera;->_updatePMatrix:Z

    .line 61
    iput-boolean v0, p0, Lcom/ardor3d/renderer/Camera;->_updateMVPMatrix:Z

    .line 62
    iput-boolean v0, p0, Lcom/ardor3d/renderer/Camera;->_updateInverseMVPMatrix:Z

    .line 63
    new-instance v0, Lcom/ardor3d/math/Matrix4;

    invoke-direct {v0}, Lcom/ardor3d/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/Camera;->_modelView:Lcom/ardor3d/math/Matrix4;

    .line 64
    new-instance v0, Lcom/ardor3d/math/Matrix4;

    invoke-direct {v0}, Lcom/ardor3d/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/Camera;->_projection:Lcom/ardor3d/math/Matrix4;

    .line 65
    new-instance v0, Lcom/ardor3d/math/Matrix4;

    invoke-direct {v0}, Lcom/ardor3d/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/Camera;->_modelViewProjection:Lcom/ardor3d/math/Matrix4;

    .line 66
    new-instance v0, Lcom/ardor3d/math/Matrix4;

    invoke-direct {v0}, Lcom/ardor3d/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/Camera;->_modelViewProjectionInverse:Lcom/ardor3d/math/Matrix4;

    .line 67
    new-instance v0, Lcom/ardor3d/math/Matrix4;

    invoke-direct {v0}, Lcom/ardor3d/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/Camera;->_transMatrix:Lcom/ardor3d/math/Matrix4;

    const/4 v0, 0x2

    .line 68
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/ardor3d/renderer/Camera;->_coeffLeft:[D

    .line 69
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/ardor3d/renderer/Camera;->_coeffRight:[D

    .line 70
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/ardor3d/renderer/Camera;->_coeffBottom:[D

    .line 71
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/ardor3d/renderer/Camera;->_coeffTop:[D

    const/16 v0, 0x20

    .line 72
    new-array v1, v0, [Lcom/ardor3d/math/Plane;

    iput-object v1, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 73
    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    new-instance v3, Lcom/ardor3d/math/Plane;

    invoke-direct {v3}, Lcom/ardor3d/math/Plane;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/Camera;->set(Lcom/ardor3d/renderer/Camera;)V

    .line 75
    sget-object p1, Lcom/ardor3d/renderer/Camera;->_logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera created. W: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  H: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method private checkInverseModelViewProjection()V
    .locals 2

    iget-boolean v0, p0, Lcom/ardor3d/renderer/Camera;->_updateInverseMVPMatrix:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ardor3d/renderer/Camera;->checkModelViewProjection()V

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_modelViewProjection:Lcom/ardor3d/math/Matrix4;

    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_modelViewProjectionInverse:Lcom/ardor3d/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Matrix4;->invert(Lcom/ardor3d/math/Matrix4;)Lcom/ardor3d/math/Matrix4;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/Camera;->_updateInverseMVPMatrix:Z

    :cond_0
    return-void
.end method

.method private checkModelView()V
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/Camera;->_updateMVMatrix:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->updateModelViewMatrix()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/Camera;->_updateMVMatrix:Z

    :cond_0
    return-void
.end method

.method private checkModelViewProjection()V
    .locals 2

    iget-boolean v0, p0, Lcom/ardor3d/renderer/Camera;->_updateMVPMatrix:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ardor3d/renderer/Camera;->checkModelView()V

    invoke-direct {p0}, Lcom/ardor3d/renderer/Camera;->checkProjection()V

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_modelViewProjection:Lcom/ardor3d/math/Matrix4;

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getModelViewMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Matrix4;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)Lcom/ardor3d/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getProjectionMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Matrix4;->multiplyLocal(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)Lcom/ardor3d/math/Matrix4;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/Camera;->_updateMVPMatrix:Z

    :cond_0
    return-void
.end method

.method private checkProjection()V
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/Camera;->_updatePMatrix:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->updateProjectionMatrix()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/Camera;->_updatePMatrix:Z

    :cond_0
    return-void
.end method

.method public static getCurrentCamera()Lcom/ardor3d/renderer/Camera;
    .locals 1

    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/renderer/RenderContext;->getCurrentCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/ardor3d/renderer/Renderer;)V
    .locals 6

    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ardor3d/renderer/RenderContext;->setCurrentCamera(Lcom/ardor3d/renderer/Camera;)V

    iget-boolean v0, p0, Lcom/ardor3d/renderer/Camera;->_depthRangeDirty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/ardor3d/renderer/Camera;->_depthRangeNear:D

    iget-wide v4, p0, Lcom/ardor3d/renderer/Camera;->_depthRangeFar:D

    invoke-interface {p1, v2, v3, v4, v5}, Lcom/ardor3d/renderer/Renderer;->setDepthRange(DD)V

    iput-boolean v1, p0, Lcom/ardor3d/renderer/Camera;->_depthRangeDirty:Z

    :cond_0
    iget-boolean v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumDirty:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/Camera;->applyProjectionMatrix(Lcom/ardor3d/renderer/Renderer;)V

    iput-boolean v1, p0, Lcom/ardor3d/renderer/Camera;->_frustumDirty:Z

    :cond_1
    iget-boolean v0, p0, Lcom/ardor3d/renderer/Camera;->_viewPortDirty:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/Camera;->applyViewport(Lcom/ardor3d/renderer/Renderer;)V

    iput-boolean v1, p0, Lcom/ardor3d/renderer/Camera;->_viewPortDirty:Z

    :cond_2
    iget-boolean v0, p0, Lcom/ardor3d/renderer/Camera;->_frameDirty:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/Camera;->applyModelViewMatrix(Lcom/ardor3d/renderer/Renderer;)V

    iput-boolean v1, p0, Lcom/ardor3d/renderer/Camera;->_frameDirty:Z

    :cond_3
    return-void
.end method

.method public applyModelViewMatrix(Lcom/ardor3d/renderer/Renderer;)V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_matrixBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getModelViewMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix4;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_matrixBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v1}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->toFloatBuffer(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_matrixBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_matrixBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0}, Lcom/ardor3d/renderer/Renderer;->setModelViewMatrix(Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method public applyProjectionMatrix(Lcom/ardor3d/renderer/Renderer;)V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_matrixBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getProjectionMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix4;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_matrixBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v1}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->toFloatBuffer(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_matrixBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_matrixBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0}, Lcom/ardor3d/renderer/Renderer;->setProjectionMatrix(Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method public applyViewport(Lcom/ardor3d/renderer/Renderer;)V
    .locals 10

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_viewPortLeft:D

    iget v2, p0, Lcom/ardor3d/renderer/Camera;->_width:I

    int-to-double v3, v2

    mul-double/2addr v3, v0

    double-to-int v3, v3

    iget-wide v4, p0, Lcom/ardor3d/renderer/Camera;->_viewPortBottom:D

    iget v6, p0, Lcom/ardor3d/renderer/Camera;->_height:I

    int-to-double v7, v6

    mul-double/2addr v7, v4

    double-to-int v7, v7

    iget-wide v8, p0, Lcom/ardor3d/renderer/Camera;->_viewPortRight:D

    sub-double/2addr v8, v0

    int-to-double v0, v2

    mul-double/2addr v8, v0

    double-to-int v0, v8

    iget-wide v1, p0, Lcom/ardor3d/renderer/Camera;->_viewPortTop:D

    sub-double/2addr v1, v4

    int-to-double v4, v6

    mul-double/2addr v1, v4

    double-to-int v1, v1

    invoke-interface {p1, v3, v7, v0, v1}, Lcom/ardor3d/renderer/Renderer;->setViewport(IIII)V

    return-void
.end method

.method public contains(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/renderer/Camera$FrustumIntersect;
    .locals 8

    if-nez p1, :cond_0

    sget-object p1, Lcom/ardor3d/renderer/Camera$FrustumIntersect;->Inside:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    return-object p1

    :cond_0
    sget-object v0, Lcom/ardor3d/renderer/Camera$FrustumIntersect;->Inside:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    const/4 v1, 0x6

    move v2, v1

    :goto_0
    if-ltz v2, :cond_7

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingVolume;->getCheckPlane()I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    :cond_1
    if-ne v2, v1, :cond_2

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingVolume;->getCheckPlane()I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    const/4 v4, 0x1

    shl-int v5, v4, v3

    iget v6, p0, Lcom/ardor3d/renderer/Camera;->_planeState:I

    and-int/2addr v6, v5

    if-nez v6, :cond_6

    sget-object v6, Lcom/ardor3d/renderer/Camera$1;->$SwitchMap$com$ardor3d$math$type$ReadOnlyPlane$Side:[I

    iget-object v7, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    aget-object v7, v7, v3

    invoke-virtual {p1, v7}, Lcom/ardor3d/bounding/BoundingVolume;->whichSide(Lcom/ardor3d/math/type/ReadOnlyPlane;)Lcom/ardor3d/math/type/ReadOnlyPlane$Side;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v4, :cond_5

    const/4 v3, 0x2

    if-eq v6, v3, :cond_4

    const/4 v3, 0x3

    if-eq v6, v3, :cond_3

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/ardor3d/renderer/Camera$FrustumIntersect;->Intersects:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    goto :goto_2

    :cond_4
    iget v3, p0, Lcom/ardor3d/renderer/Camera;->_planeState:I

    or-int/2addr v3, v5

    iput v3, p0, Lcom/ardor3d/renderer/Camera;->_planeState:I

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v3}, Lcom/ardor3d/bounding/BoundingVolume;->setCheckPlane(I)V

    sget-object p1, Lcom/ardor3d/renderer/Camera$FrustumIntersect;->Outside:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    return-object p1

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method public distanceToCam(Lcom/ardor3d/math/type/ReadOnlyVector3;)D
    .locals 5

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_location:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1, v1, v0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object p1, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v1

    iget-object p1, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, p1}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget-object p1, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v1, v2, v0}, Lcom/ardor3d/math/Vector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->length()D

    move-result-wide v0

    invoke-static {p1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-wide v0
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/renderer/Camera;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDepthRangeFar()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_depthRangeFar:D

    return-wide v0
.end method

.method public getDepthRangeNear()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_depthRangeNear:D

    return-wide v0
.end method

.method public getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getFovY()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_fovY:D

    return-wide v0
.end method

.method public getFrustumBottom()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    return-wide v0
.end method

.method public getFrustumCoordinates(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ardor3d/renderer/Camera;->getFrustumCoordinates(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public getFrustumCoordinates(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 10

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/renderer/Camera;->getNormalizedDeviceCoordinates(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iget-wide v4, p0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    iget-wide v6, p0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    sub-double/2addr v4, v6

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v4

    add-double/2addr v0, v6

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->setX(D)V

    .line 4
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v0

    add-double/2addr v0, v2

    iget-wide v6, p0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    iget-wide v8, p0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    sub-double/2addr v6, v8

    mul-double/2addr v0, v6

    div-double/2addr v0, v4

    add-double/2addr v0, v8

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->setY(D)V

    .line 5
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v0

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/ardor3d/renderer/Camera;->_frustumFar:D

    iget-wide v6, p0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    sub-double/2addr v2, v6

    mul-double/2addr v0, v2

    div-double/2addr v0, v4

    add-double/2addr v0, v6

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    return-object p1
.end method

.method public getFrustumFar()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumFar:D

    return-wide v0
.end method

.method public getFrustumLeft()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    return-wide v0
.end method

.method public getFrustumNear()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    return-wide v0
.end method

.method public getFrustumRight()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    return-wide v0
.end method

.method public getFrustumTop()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/Camera;->_height:I

    return v0
.end method

.method public getLeft()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_location:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getModelViewMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix4;
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/Camera;->checkModelView()V

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_modelView:Lcom/ardor3d/math/Matrix4;

    return-object v0
.end method

.method public getModelViewProjectionInverseMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix4;
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/Camera;->checkInverseModelViewProjection()V

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_modelViewProjectionInverse:Lcom/ardor3d/math/Matrix4;

    return-object v0
.end method

.method public getModelViewProjectionMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix4;
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/Camera;->checkModelViewProjection()V

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_modelViewProjection:Lcom/ardor3d/math/Matrix4;

    return-object v0
.end method

.method public getNormalizedDeviceCoordinates(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ardor3d/renderer/Camera;->getNormalizedDeviceCoordinates(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public getNormalizedDeviceCoordinates(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 10

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/ardor3d/math/Vector3;

    invoke-direct {p2}, Lcom/ardor3d/math/Vector3;-><init>()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/ardor3d/renderer/Camera;->checkModelViewProjection()V

    .line 4
    invoke-static {}, Lcom/ardor3d/math/Vector4;->fetchTempInstance()Lcom/ardor3d/math/Vector4;

    move-result-object v9

    .line 5
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Vector4;->set(DDDD)Lcom/ardor3d/math/Vector4;

    .line 6
    iget-object p1, p0, Lcom/ardor3d/renderer/Camera;->_modelViewProjection:Lcom/ardor3d/math/Matrix4;

    invoke-virtual {p1, v9, v9}, Lcom/ardor3d/math/Matrix4;->applyPre(Lcom/ardor3d/math/type/ReadOnlyVector4;Lcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 7
    invoke-virtual {v9}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {v9, v0, v1}, Lcom/ardor3d/math/Vector4;->multiplyLocal(D)Lcom/ardor3d/math/Vector4;

    .line 8
    invoke-virtual {v9}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/ardor3d/math/Vector3;->setX(D)V

    .line 9
    invoke-virtual {v9}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/ardor3d/math/Vector3;->setY(D)V

    .line 10
    invoke-virtual {v9}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    .line 11
    invoke-static {v9}, Lcom/ardor3d/math/Vector4;->releaseTempInstance(Lcom/ardor3d/math/Vector4;)V

    return-object p2
.end method

.method public getPickRay(Lcom/ardor3d/math/type/ReadOnlyVector2;ZLcom/ardor3d/math/Ray3;)Lcom/ardor3d/math/Ray3;
    .locals 5

    invoke-static {}, Lcom/ardor3d/math/Vector2;->fetchTempInstance()Lcom/ardor3d/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector2;->set(Lcom/ardor3d/math/type/ReadOnlyVector2;)Lcom/ardor3d/math/Vector2;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getHeight()I

    move-result p2

    int-to-double v1, p2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/math/Vector2;->setY(D)V

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Lcom/ardor3d/math/Ray3;

    invoke-direct {p3}, Lcom/ardor3d/math/Ray3;-><init>()V

    :cond_1
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object p2

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/ardor3d/renderer/Camera;->getWorldCoordinates(Lcom/ardor3d/math/type/ReadOnlyVector2;DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    const-wide v1, 0x3fd3333333333333L    # 0.3

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/ardor3d/renderer/Camera;->getWorldCoordinates(Lcom/ardor3d/math/type/ReadOnlyVector2;DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    invoke-virtual {p3, p2}, Lcom/ardor3d/math/Line3Base;->setOrigin(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    invoke-virtual {p3, v0}, Lcom/ardor3d/math/Line3Base;->setDirection(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    invoke-static {p2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-object p3
.end method

.method public getPlaneState()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/Camera;->_planeState:I

    return v0
.end method

.method public getProjectionMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix4;
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/Camera;->checkProjection()V

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_projection:Lcom/ardor3d/math/Matrix4;

    return-object v0
.end method

.method public getProjectionMode()Lcom/ardor3d/renderer/Camera$ProjectionMode;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_projectionMode:Lcom/ardor3d/renderer/Camera$ProjectionMode;

    return-object v0
.end method

.method public getScreenCoordinates(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ardor3d/renderer/Camera;->getScreenCoordinates(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public getScreenCoordinates(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 10

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/renderer/Camera;->getNormalizedDeviceCoordinates(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iget-wide v4, p0, Lcom/ardor3d/renderer/Camera;->_viewPortRight:D

    iget-wide v6, p0, Lcom/ardor3d/renderer/Camera;->_viewPortLeft:D

    sub-double/2addr v4, v6

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v4

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getWidth()I

    move-result p2

    int-to-double v6, p2

    mul-double/2addr v0, v6

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->setX(D)V

    .line 4
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v0

    add-double/2addr v0, v2

    iget-wide v6, p0, Lcom/ardor3d/renderer/Camera;->_viewPortTop:D

    iget-wide v8, p0, Lcom/ardor3d/renderer/Camera;->_viewPortBottom:D

    sub-double/2addr v6, v8

    mul-double/2addr v0, v6

    div-double/2addr v0, v4

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getHeight()I

    move-result p2

    int-to-double v6, p2

    mul-double/2addr v0, v6

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->setY(D)V

    .line 5
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v0

    add-double/2addr v0, v2

    div-double/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    return-object p1
.end method

.method public getUp()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getViewPortBottom()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_viewPortBottom:D

    return-wide v0
.end method

.method public getViewPortLeft()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_viewPortLeft:D

    return-wide v0
.end method

.method public getViewPortRight()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_viewPortRight:D

    return-wide v0
.end method

.method public getViewPortTop()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_viewPortTop:D

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/Camera;->_width:I

    return v0
.end method

.method public getWorldCoordinates(Lcom/ardor3d/math/type/ReadOnlyVector2;D)Lcom/ardor3d/math/Vector3;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ardor3d/renderer/Camera;->getWorldCoordinates(Lcom/ardor3d/math/type/ReadOnlyVector2;DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public getWorldCoordinates(Lcom/ardor3d/math/type/ReadOnlyVector2;DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 18

    move-object/from16 v0, p0

    if-nez p4, :cond_0

    .line 2
    new-instance v1, Lcom/ardor3d/math/Vector3;

    invoke-direct {v1}, Lcom/ardor3d/math/Vector3;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p4

    .line 3
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->checkInverseModelViewProjection()V

    .line 4
    invoke-static {}, Lcom/ardor3d/math/Vector4;->fetchTempInstance()Lcom/ardor3d/math/Vector4;

    move-result-object v11

    .line 5
    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getWidth()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget-wide v4, v0, Lcom/ardor3d/renderer/Camera;->_viewPortLeft:D

    sub-double/2addr v2, v4

    iget-wide v6, v0, Lcom/ardor3d/renderer/Camera;->_viewPortRight:D

    sub-double/2addr v6, v4

    div-double/2addr v2, v6

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v6, v2, v12

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getHeight()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v2, v8

    iget-wide v8, v0, Lcom/ardor3d/renderer/Camera;->_viewPortBottom:D

    sub-double/2addr v2, v8

    iget-wide v14, v0, Lcom/ardor3d/renderer/Camera;->_viewPortTop:D

    sub-double/2addr v14, v8

    div-double/2addr v2, v14

    mul-double/2addr v2, v4

    sub-double v8, v2, v12

    mul-double v2, p2, v4

    sub-double v14, v2, v12

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object v2, v11

    move-wide v3, v6

    move-wide v5, v8

    move-wide v7, v14

    move-wide/from16 v9, v16

    invoke-virtual/range {v2 .. v10}, Lcom/ardor3d/math/Vector4;->set(DDDD)Lcom/ardor3d/math/Vector4;

    .line 6
    iget-object v2, v0, Lcom/ardor3d/renderer/Camera;->_modelViewProjectionInverse:Lcom/ardor3d/math/Matrix4;

    invoke-virtual {v2, v11, v11}, Lcom/ardor3d/math/Matrix4;->applyPre(Lcom/ardor3d/math/type/ReadOnlyVector4;Lcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;

    .line 7
    invoke-virtual {v11}, Lcom/ardor3d/math/Vector4;->getW()D

    move-result-wide v2

    div-double/2addr v12, v2

    invoke-virtual {v11, v12, v13}, Lcom/ardor3d/math/Vector4;->multiplyLocal(D)Lcom/ardor3d/math/Vector4;

    .line 8
    invoke-virtual {v11}, Lcom/ardor3d/math/Vector4;->getX()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ardor3d/math/Vector3;->setX(D)V

    .line 9
    invoke-virtual {v11}, Lcom/ardor3d/math/Vector4;->getY()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ardor3d/math/Vector3;->setY(D)V

    .line 10
    invoke-virtual {v11}, Lcom/ardor3d/math/Vector4;->getZ()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    .line 11
    invoke-static {v11}, Lcom/ardor3d/math/Vector4;->releaseTempInstance(Lcom/ardor3d/math/Vector4;)V

    return-object v1
.end method

.method public lookAt(DDDLcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_newDirection:Lcom/ardor3d/math/Vector3;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    iget-object p2, p0, Lcom/ardor3d/renderer/Camera;->_location:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, p2}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    .line 3
    iget-object p1, p0, Lcom/ardor3d/renderer/Camera;->_newDirection:Lcom/ardor3d/math/Vector3;

    iget-object p2, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, p2}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    iget-object p2, p0, Lcom/ardor3d/renderer/Camera;->_newDirection:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, p2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 5
    iget-object p1, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, p7}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    .line 6
    iget-object p1, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    sget-object p2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-virtual {p1, p2}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    sget-object p3, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-virtual {p1, p3}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    iget-object p3, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, p3}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    iget-object p3, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, p3}, Lcom/ardor3d/math/Vector3;->crossLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    .line 9
    iget-object p1, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, p2}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmpl-double p1, p1, p3

    if-eqz p1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    iget-object p1, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    iget-object p1, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide p1

    neg-double v3, p1

    const-wide/16 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    iget-object p2, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide p4

    iget-object p2, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide p2

    neg-double p6, p2

    const-wide/16 p2, 0x0

    invoke-virtual/range {p1 .. p7}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    .line 13
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    iget-object p2, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, p2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    iget-object p2, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, p2}, Lcom/ardor3d/math/Vector3;->crossLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    .line 14
    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public lookAt(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v5

    move-object v0, p0

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/ardor3d/renderer/Camera;->lookAt(DDDLcom/ardor3d/math/type/ReadOnlyVector3;)V

    return-void
.end method

.method public normalize()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public onFrameChange()V
    .locals 15

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_location:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v0

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v9

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ardor3d/renderer/Camera;->_coeffLeft:[D

    const/4 v10, 0x0

    aget-wide v5, v4, v10

    mul-double/2addr v2, v5

    invoke-virtual {v9, v2, v3}, Lcom/ardor3d/math/Vector3;->setX(D)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ardor3d/renderer/Camera;->_coeffLeft:[D

    aget-wide v5, v4, v10

    mul-double/2addr v2, v5

    invoke-virtual {v9, v2, v3}, Lcom/ardor3d/math/Vector3;->setY(D)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ardor3d/renderer/Camera;->_coeffLeft:[D

    aget-wide v5, v4, v10

    mul-double/2addr v2, v5

    invoke-virtual {v9, v2, v3}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ardor3d/renderer/Camera;->_coeffLeft:[D

    const/4 v11, 0x1

    aget-wide v5, v4, v11

    mul-double v3, v2, v5

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v5

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_coeffLeft:[D

    aget-wide v7, v2, v11

    mul-double/2addr v5, v7

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v7

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_coeffLeft:[D

    aget-wide v12, v2, v11

    mul-double/2addr v7, v12

    move-object v2, v9

    invoke-virtual/range {v2 .. v8}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    aget-object v2, v2, v10

    invoke-virtual {v2, v9}, Lcom/ardor3d/math/Plane;->setNormal(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    aget-object v2, v2, v10

    iget-object v3, p0, Lcom/ardor3d/renderer/Camera;->_location:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v9}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ardor3d/math/Plane;->setConstant(D)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ardor3d/renderer/Camera;->_coeffRight:[D

    aget-wide v5, v4, v10

    mul-double/2addr v2, v5

    invoke-virtual {v9, v2, v3}, Lcom/ardor3d/math/Vector3;->setX(D)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ardor3d/renderer/Camera;->_coeffRight:[D

    aget-wide v5, v4, v10

    mul-double/2addr v2, v5

    invoke-virtual {v9, v2, v3}, Lcom/ardor3d/math/Vector3;->setY(D)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ardor3d/renderer/Camera;->_coeffRight:[D

    aget-wide v5, v4, v10

    mul-double/2addr v2, v5

    invoke-virtual {v9, v2, v3}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ardor3d/renderer/Camera;->_coeffRight:[D

    aget-wide v5, v4, v11

    mul-double v3, v2, v5

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v5

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_coeffRight:[D

    aget-wide v7, v2, v11

    mul-double/2addr v5, v7

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v7

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_coeffRight:[D

    aget-wide v12, v2, v11

    mul-double/2addr v7, v12

    move-object v2, v9

    invoke-virtual/range {v2 .. v8}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    aget-object v2, v2, v11

    invoke-virtual {v2, v9}, Lcom/ardor3d/math/Plane;->setNormal(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    aget-object v2, v2, v11

    iget-object v3, p0, Lcom/ardor3d/renderer/Camera;->_location:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v9}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ardor3d/math/Plane;->setConstant(D)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ardor3d/renderer/Camera;->_coeffBottom:[D

    aget-wide v5, v4, v10

    mul-double/2addr v2, v5

    invoke-virtual {v9, v2, v3}, Lcom/ardor3d/math/Vector3;->setX(D)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ardor3d/renderer/Camera;->_coeffBottom:[D

    aget-wide v5, v4, v10

    mul-double/2addr v2, v5

    invoke-virtual {v9, v2, v3}, Lcom/ardor3d/math/Vector3;->setY(D)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ardor3d/renderer/Camera;->_coeffBottom:[D

    aget-wide v5, v4, v10

    mul-double/2addr v2, v5

    invoke-virtual {v9, v2, v3}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ardor3d/renderer/Camera;->_coeffBottom:[D

    aget-wide v5, v4, v11

    mul-double v3, v2, v5

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v5

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_coeffBottom:[D

    aget-wide v7, v2, v11

    mul-double/2addr v5, v7

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v7

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_coeffBottom:[D

    aget-wide v12, v2, v11

    mul-double/2addr v7, v12

    move-object v2, v9

    invoke-virtual/range {v2 .. v8}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    const/4 v12, 0x2

    aget-object v2, v2, v12

    invoke-virtual {v2, v9}, Lcom/ardor3d/math/Plane;->setNormal(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    aget-object v2, v2, v12

    iget-object v3, p0, Lcom/ardor3d/renderer/Camera;->_location:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v9}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ardor3d/math/Plane;->setConstant(D)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ardor3d/renderer/Camera;->_coeffTop:[D

    aget-wide v5, v4, v10

    mul-double/2addr v2, v5

    invoke-virtual {v9, v2, v3}, Lcom/ardor3d/math/Vector3;->setX(D)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ardor3d/renderer/Camera;->_coeffTop:[D

    aget-wide v5, v4, v10

    mul-double/2addr v2, v5

    invoke-virtual {v9, v2, v3}, Lcom/ardor3d/math/Vector3;->setY(D)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ardor3d/renderer/Camera;->_coeffTop:[D

    aget-wide v5, v4, v10

    mul-double/2addr v2, v5

    invoke-virtual {v9, v2, v3}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ardor3d/renderer/Camera;->_coeffTop:[D

    aget-wide v5, v4, v11

    mul-double v3, v2, v5

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v5

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_coeffTop:[D

    aget-wide v7, v2, v11

    mul-double/2addr v5, v7

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v7

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_coeffTop:[D

    aget-wide v13, v2, v11

    mul-double/2addr v7, v13

    move-object v2, v9

    invoke-virtual/range {v2 .. v8}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2, v9}, Lcom/ardor3d/math/Plane;->setNormal(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    aget-object v2, v2, v3

    iget-object v4, p0, Lcom/ardor3d/renderer/Camera;->_location:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4, v9}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/ardor3d/math/Plane;->setConstant(D)V

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getProjectionMode()Lcom/ardor3d/renderer/Camera$ProjectionMode;

    move-result-object v2

    sget-object v4, Lcom/ardor3d/renderer/Camera$ProjectionMode;->Parallel:Lcom/ardor3d/renderer/Camera$ProjectionMode;

    if-ne v2, v4, :cond_2

    iget-wide v4, p0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    iget-wide v6, p0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    cmpl-double v2, v4, v6

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lcom/ardor3d/math/Plane;->getConstant()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    add-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/ardor3d/math/Plane;->setConstant(D)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lcom/ardor3d/math/Plane;->getConstant()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    sub-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/ardor3d/math/Plane;->setConstant(D)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lcom/ardor3d/math/Plane;->getConstant()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    sub-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/ardor3d/math/Plane;->setConstant(D)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lcom/ardor3d/math/Plane;->getConstant()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    add-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/ardor3d/math/Plane;->setConstant(D)V

    :goto_0
    iget-wide v4, p0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    iget-wide v6, p0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    cmpl-double v2, v4, v6

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/ardor3d/math/Plane;->getConstant()D

    move-result-wide v3

    iget-wide v5, p0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    add-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/ardor3d/math/Plane;->setConstant(D)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    aget-object v2, v2, v12

    invoke-virtual {v2}, Lcom/ardor3d/math/Plane;->getConstant()D

    move-result-wide v3

    iget-wide v5, p0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    sub-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/ardor3d/math/Plane;->setConstant(D)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/ardor3d/math/Plane;->getConstant()D

    move-result-wide v3

    iget-wide v5, p0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    sub-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/ardor3d/math/Plane;->setConstant(D)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    aget-object v2, v2, v12

    invoke-virtual {v2}, Lcom/ardor3d/math/Plane;->getConstant()D

    move-result-wide v3

    iget-wide v5, p0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    add-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/ardor3d/math/Plane;->setConstant(D)V

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v9, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->negateLocal()Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2, v9}, Lcom/ardor3d/math/Plane;->setNormal(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    aget-object v2, v2, v3

    iget-wide v3, p0, Lcom/ardor3d/renderer/Camera;->_frustumFar:D

    add-double/2addr v3, v0

    neg-double v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/ardor3d/math/Plane;->setConstant(D)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    iget-object v4, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2, v4}, Lcom/ardor3d/math/Plane;->setNormal(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object v2, p0, Lcom/ardor3d/renderer/Camera;->_worldPlane:[Lcom/ardor3d/math/Plane;

    aget-object v2, v2, v3

    iget-wide v3, p0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    add-double/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lcom/ardor3d/math/Plane;->setConstant(D)V

    invoke-static {v9}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    iput-boolean v11, p0, Lcom/ardor3d/renderer/Camera;->_updateMVMatrix:Z

    iput-boolean v11, p0, Lcom/ardor3d/renderer/Camera;->_updateMVPMatrix:Z

    iput-boolean v11, p0, Lcom/ardor3d/renderer/Camera;->_updateInverseMVPMatrix:Z

    iput-boolean v11, p0, Lcom/ardor3d/renderer/Camera;->_frameDirty:Z

    return-void
.end method

.method public onFrustumChange()V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getProjectionMode()Lcom/ardor3d/renderer/Camera$ProjectionMode;

    move-result-object v1

    sget-object v2, Lcom/ardor3d/renderer/Camera$ProjectionMode;->Perspective:Lcom/ardor3d/renderer/Camera$ProjectionMode;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v1, v2, :cond_0

    iget-wide v1, v0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    mul-double/2addr v1, v1

    iget-wide v7, v0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    mul-double/2addr v7, v7

    iget-wide v9, v0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    mul-double/2addr v9, v9

    iget-wide v11, v0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    mul-double/2addr v11, v11

    iget-wide v13, v0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    mul-double/2addr v13, v13

    add-double/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double v7, v3, v7

    iget-object v15, v0, Lcom/ardor3d/renderer/Camera;->_coeffLeft:[D

    iget-wide v3, v0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    mul-double/2addr v3, v7

    aput-wide v3, v15, v5

    iget-wide v3, v0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    neg-double v3, v3

    mul-double/2addr v3, v7

    aput-wide v3, v15, v6

    add-double/2addr v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double v3, v7, v3

    iget-object v9, v0, Lcom/ardor3d/renderer/Camera;->_coeffRight:[D

    iget-wide v7, v0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    neg-double v7, v7

    mul-double/2addr v7, v3

    aput-wide v7, v9, v5

    iget-wide v7, v0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    mul-double/2addr v7, v3

    aput-wide v7, v9, v6

    add-double/2addr v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double v3, v7, v3

    iget-object v9, v0, Lcom/ardor3d/renderer/Camera;->_coeffBottom:[D

    iget-wide v10, v0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    mul-double/2addr v10, v3

    aput-wide v10, v9, v5

    iget-wide v10, v0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    neg-double v10, v10

    mul-double/2addr v10, v3

    aput-wide v10, v9, v6

    add-double/2addr v1, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double v3, v7, v1

    iget-object v1, v0, Lcom/ardor3d/renderer/Camera;->_coeffTop:[D

    iget-wide v7, v0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    neg-double v7, v7

    mul-double/2addr v7, v3

    aput-wide v7, v1, v5

    iget-wide v7, v0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    mul-double/2addr v7, v3

    aput-wide v7, v1, v6

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/renderer/Camera;->getProjectionMode()Lcom/ardor3d/renderer/Camera$ProjectionMode;

    move-result-object v1

    sget-object v2, Lcom/ardor3d/renderer/Camera$ProjectionMode;->Parallel:Lcom/ardor3d/renderer/Camera$ProjectionMode;

    if-ne v1, v2, :cond_3

    iget-wide v1, v0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    iget-wide v3, v0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    cmpl-double v1, v1, v3

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/16 v7, 0x0

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/ardor3d/renderer/Camera;->_coeffLeft:[D

    aput-wide v2, v1, v5

    aput-wide v7, v1, v6

    iget-object v1, v0, Lcom/ardor3d/renderer/Camera;->_coeffRight:[D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    aput-wide v9, v1, v5

    aput-wide v7, v1, v6

    goto :goto_0

    :cond_1
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    iget-object v1, v0, Lcom/ardor3d/renderer/Camera;->_coeffLeft:[D

    aput-wide v9, v1, v5

    aput-wide v7, v1, v6

    iget-object v1, v0, Lcom/ardor3d/renderer/Camera;->_coeffRight:[D

    aput-wide v2, v1, v5

    aput-wide v7, v1, v6

    :goto_0
    iget-wide v9, v0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    iget-wide v11, v0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    cmpl-double v1, v9, v11

    if-lez v1, :cond_2

    iget-object v1, v0, Lcom/ardor3d/renderer/Camera;->_coeffBottom:[D

    aput-wide v2, v1, v5

    aput-wide v7, v1, v6

    iget-object v1, v0, Lcom/ardor3d/renderer/Camera;->_coeffTop:[D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    aput-wide v9, v1, v5

    aput-wide v7, v1, v6

    goto :goto_1

    :cond_2
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    iget-object v1, v0, Lcom/ardor3d/renderer/Camera;->_coeffBottom:[D

    aput-wide v9, v1, v5

    aput-wide v7, v1, v6

    iget-object v1, v0, Lcom/ardor3d/renderer/Camera;->_coeffTop:[D

    aput-wide v2, v1, v5

    aput-wide v7, v1, v6

    :cond_3
    :goto_1
    iput-boolean v6, v0, Lcom/ardor3d/renderer/Camera;->_updatePMatrix:Z

    iput-boolean v6, v0, Lcom/ardor3d/renderer/Camera;->_updateMVPMatrix:Z

    iput-boolean v6, v0, Lcom/ardor3d/renderer/Camera;->_updateInverseMVPMatrix:Z

    iput-boolean v6, v0, Lcom/ardor3d/renderer/Camera;->_frustumDirty:Z

    return-void
.end method

.method public onViewPortChange()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/renderer/Camera;->_viewPortDirty:Z

    return-void
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_location:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "location"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_X:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "left"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "up"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_Z:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "direction"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const-string v0, "frustumNear"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    const-string v0, "frustumFar"

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-interface {p1, v0, v3, v4}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/ardor3d/renderer/Camera;->_frustumFar:D

    const-string v0, "frustumLeft"

    const-wide/high16 v3, -0x4020000000000000L    # -0.5

    invoke-interface {p1, v0, v3, v4}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    const-string v0, "frustumRight"

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    invoke-interface {p1, v0, v5, v6}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    const-string v0, "frustumTop"

    invoke-interface {p1, v0, v5, v6}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    const-string v0, "frustumBottom"

    invoke-interface {p1, v0, v3, v4}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    const/4 v0, 0x2

    new-array v3, v0, [D

    const-string v4, "coeffLeft"

    invoke-interface {p1, v4, v3}, Lcom/ardor3d/util/export/InputCapsule;->readDoubleArray(Ljava/lang/String;[D)[D

    move-result-object v3

    iput-object v3, p0, Lcom/ardor3d/renderer/Camera;->_coeffLeft:[D

    const-string v3, "coeffRight"

    new-array v4, v0, [D

    invoke-interface {p1, v3, v4}, Lcom/ardor3d/util/export/InputCapsule;->readDoubleArray(Ljava/lang/String;[D)[D

    move-result-object v3

    iput-object v3, p0, Lcom/ardor3d/renderer/Camera;->_coeffRight:[D

    const-string v3, "coeffBottom"

    new-array v4, v0, [D

    invoke-interface {p1, v3, v4}, Lcom/ardor3d/util/export/InputCapsule;->readDoubleArray(Ljava/lang/String;[D)[D

    move-result-object v3

    iput-object v3, p0, Lcom/ardor3d/renderer/Camera;->_coeffBottom:[D

    const-string v3, "coeffTop"

    new-array v0, v0, [D

    invoke-interface {p1, v3, v0}, Lcom/ardor3d/util/export/InputCapsule;->readDoubleArray(Ljava/lang/String;[D)[D

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/Camera;->_coeffTop:[D

    const-string v0, "planeQuantity"

    const/4 v3, 0x6

    invoke-interface {p1, v0, v3}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/Camera;->_planeQuantity:I

    const-string v0, "viewPortLeft"

    const-wide/16 v3, 0x0

    invoke-interface {p1, v0, v3, v4}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/ardor3d/renderer/Camera;->_viewPortLeft:D

    const-string v0, "viewPortRight"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/ardor3d/renderer/Camera;->_viewPortRight:D

    const-string v0, "viewPortTop"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/ardor3d/renderer/Camera;->_viewPortTop:D

    const-string v0, "viewPortBottom"

    invoke-interface {p1, v0, v3, v4}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/ardor3d/renderer/Camera;->_viewPortBottom:D

    const-string v0, "width"

    const/4 v5, 0x0

    invoke-interface {p1, v0, v5}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/Camera;->_width:I

    const-string v0, "height"

    invoke-interface {p1, v0, v5}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/Camera;->_height:I

    const-string v0, "depthRangeNear"

    invoke-interface {p1, v0, v3, v4}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/ardor3d/renderer/Camera;->_depthRangeNear:D

    const-string v0, "depthRangeFar"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_depthRangeFar:D

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_location:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumFar:D

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lcom/ardor3d/renderer/Camera;->_coeffLeft:[D

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lcom/ardor3d/renderer/Camera;->_coeffRight:[D

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lcom/ardor3d/renderer/Camera;->_coeffBottom:[D

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lcom/ardor3d/renderer/Camera;->_coeffTop:[D

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/Camera;->_planeQuantity:I

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_viewPortLeft:D

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_viewPortRight:D

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_viewPortTop:D

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_viewPortBottom:D

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/Camera;->_width:I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/Camera;->_height:I

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_depthRangeNear:D

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_depthRangeFar:D

    return-void
.end method

.method public resize(II)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/Camera;->_width:I

    iput p2, p0, Lcom/ardor3d/renderer/Camera;->_height:I

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onViewPortChange()V

    return-void
.end method

.method public set(Lcom/ardor3d/renderer/Camera;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/Camera;->_width:I

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/Camera;->_height:I

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_location:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getLeft()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getUp()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getFovY()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_fovY:D

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getDepthRangeNear()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_depthRangeNear:D

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getDepthRangeFar()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_depthRangeFar:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/renderer/Camera;->_depthRangeDirty:Z

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getFrustumNear()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getFrustumFar()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumFar:D

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getFrustumLeft()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getFrustumRight()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getFrustumTop()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getFrustumBottom()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getViewPortLeft()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_viewPortLeft:D

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getViewPortRight()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_viewPortRight:D

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getViewPortTop()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_viewPortTop:D

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getViewPortBottom()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_viewPortBottom:D

    const/4 v0, 0x6

    iput v0, p0, Lcom/ardor3d/renderer/Camera;->_planeQuantity:I

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getProjectionMode()Lcom/ardor3d/renderer/Camera$ProjectionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/renderer/Camera;->_projectionMode:Lcom/ardor3d/renderer/Camera$ProjectionMode;

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrustumChange()V

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onViewPortChange()V

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public setAxes(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V
    .locals 2

    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getColumn(ILcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    const/4 v0, 0x1

    .line 6
    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getColumn(ILcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    const/4 v0, 0x2

    .line 7
    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getColumn(ILcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    .line 8
    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public setAxes(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 2
    iget-object p1, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, p2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 3
    iget-object p1, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, p3}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 4
    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public setDepthRangeFar(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/renderer/Camera;->_depthRangeFar:D

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ardor3d/renderer/Camera;->_depthRangeDirty:Z

    return-void
.end method

.method public setDepthRangeNear(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/renderer/Camera;->_depthRangeNear:D

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ardor3d/renderer/Camera;->_depthRangeDirty:Z

    return-void
.end method

.method public setDirection(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public setFrame(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V
    .locals 2

    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    invoke-interface {p2, v0, v1}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getColumn(ILcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    const/4 v0, 0x1

    .line 7
    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    invoke-interface {p2, v0, v1}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getColumn(ILcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    const/4 v0, 0x2

    .line 8
    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-interface {p2, v0, v1}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getColumn(ILcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    .line 9
    iget-object p2, p0, Lcom/ardor3d/renderer/Camera;->_location:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p2, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 10
    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public setFrame(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 2
    iget-object p2, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p2, p3}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 3
    iget-object p2, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p2, p4}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 4
    iget-object p2, p0, Lcom/ardor3d/renderer/Camera;->_location:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p2, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 5
    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public setFrustum(DDDDDD)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    iput-wide p3, p0, Lcom/ardor3d/renderer/Camera;->_frustumFar:D

    iput-wide p5, p0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    iput-wide p7, p0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    iput-wide p9, p0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    iput-wide p11, p0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrustumChange()V

    return-void
.end method

.method public setFrustumBottom(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrustumChange()V

    return-void
.end method

.method public setFrustumFar(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/renderer/Camera;->_frustumFar:D

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrustumChange()V

    return-void
.end method

.method public setFrustumLeft(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrustumChange()V

    return-void
.end method

.method public setFrustumNear(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrustumChange()V

    return-void
.end method

.method public setFrustumPerspective(DDDD)V
    .locals 2

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3, p4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lcom/ardor3d/renderer/Camera;->_fovY:D

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    mul-double/2addr p1, p5

    mul-double/2addr p3, p1

    neg-double v0, p3

    iput-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    iput-wide p3, p0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    neg-double p3, p1

    iput-wide p3, p0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    iput-wide p1, p0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    iput-wide p5, p0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    iput-wide p7, p0, Lcom/ardor3d/renderer/Camera;->_frustumFar:D

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrustumChange()V

    return-void

    :cond_1
    :goto_0
    sget-object p1, Lcom/ardor3d/renderer/Camera;->_logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Invalid aspect given to setFrustumPerspective: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public setFrustumRight(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrustumChange()V

    return-void
.end method

.method public setFrustumTop(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrustumChange()V

    return-void
.end method

.method public setLeft(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public setLocation(DDD)V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_location:Lcom/ardor3d/math/Vector3;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    .line 4
    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public setLocation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_location:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public setPlaneState(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/Camera;->_planeState:I

    return-void
.end method

.method public setProjectionMatrix(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_projection:Lcom/ardor3d/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Matrix4;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)Lcom/ardor3d/math/Matrix4;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ardor3d/renderer/Camera;->_frustumDirty:Z

    return-void
.end method

.method public setProjectionMode(Lcom/ardor3d/renderer/Camera$ProjectionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/renderer/Camera;->_projectionMode:Lcom/ardor3d/renderer/Camera$ProjectionMode;

    return-void
.end method

.method public setUp(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public setViewPort(DDDD)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/renderer/Camera;->setViewPortLeft(D)V

    invoke-virtual {p0, p3, p4}, Lcom/ardor3d/renderer/Camera;->setViewPortRight(D)V

    invoke-virtual {p0, p5, p6}, Lcom/ardor3d/renderer/Camera;->setViewPortBottom(D)V

    invoke-virtual {p0, p7, p8}, Lcom/ardor3d/renderer/Camera;->setViewPortTop(D)V

    return-void
.end method

.method public setViewPortBottom(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/renderer/Camera;->_viewPortBottom:D

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onViewPortChange()V

    return-void
.end method

.method public setViewPortLeft(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/renderer/Camera;->_viewPortLeft:D

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onViewPortChange()V

    return-void
.end method

.method public setViewPortRight(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/renderer/Camera;->_viewPortRight:D

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onViewPortChange()V

    return-void
.end method

.method public setViewPortTop(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/renderer/Camera;->_viewPortTop:D

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onViewPortChange()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.ardor3d.renderer.Camera: loc - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->toArray([D)[D

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dir - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->toArray([D)[D

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " up - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getUp()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->toArray([D)[D

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " left - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getLeft()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->toArray([D)[D

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/renderer/Camera;->_depthRangeDirty:Z

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrustumChange()V

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onViewPortChange()V

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public updateModelViewMatrix()V
    .locals 7

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_modelView:Lcom/ardor3d/math/Matrix4;

    invoke-virtual {v0}, Lcom/ardor3d/math/Matrix4;->setIdentity()Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_modelView:Lcom/ardor3d/math/Matrix4;

    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    neg-double v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_modelView:Lcom/ardor3d/math/Matrix4;

    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    neg-double v1, v1

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_modelView:Lcom/ardor3d/math/Matrix4;

    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    neg-double v1, v1

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v3, v1, v2}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_modelView:Lcom/ardor3d/math/Matrix4;

    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_modelView:Lcom/ardor3d/math/Matrix4;

    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_modelView:Lcom/ardor3d/math/Matrix4;

    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    invoke-virtual {v0, v5, v4, v1, v2}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_modelView:Lcom/ardor3d/math/Matrix4;

    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    neg-double v1, v1

    invoke-virtual {v0, v3, v5, v1, v2}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_modelView:Lcom/ardor3d/math/Matrix4;

    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    neg-double v1, v1

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_modelView:Lcom/ardor3d/math/Matrix4;

    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    neg-double v1, v1

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_transMatrix:Lcom/ardor3d/math/Matrix4;

    invoke-virtual {v0}, Lcom/ardor3d/math/Matrix4;->setIdentity()Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_transMatrix:Lcom/ardor3d/math/Matrix4;

    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_location:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    neg-double v1, v1

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v3, v1, v2}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_transMatrix:Lcom/ardor3d/math/Matrix4;

    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_location:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    neg-double v1, v1

    invoke-virtual {v0, v6, v4, v1, v2}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_transMatrix:Lcom/ardor3d/math/Matrix4;

    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_location:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    neg-double v1, v1

    invoke-virtual {v0, v6, v5, v1, v2}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_transMatrix:Lcom/ardor3d/math/Matrix4;

    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_modelView:Lcom/ardor3d/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Matrix4;->multiplyLocal(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_modelView:Lcom/ardor3d/math/Matrix4;

    iget-object v1, p0, Lcom/ardor3d/renderer/Camera;->_transMatrix:Lcom/ardor3d/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Matrix4;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)Lcom/ardor3d/math/Matrix4;

    return-void
.end method

.method public updateProjectionMatrix()V
    .locals 14

    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getProjectionMode()Lcom/ardor3d/renderer/Camera$ProjectionMode;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/renderer/Camera$ProjectionMode;->Parallel:Lcom/ardor3d/renderer/Camera$ProjectionMode;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_projection:Lcom/ardor3d/math/Matrix4;

    invoke-virtual {v0}, Lcom/ardor3d/math/Matrix4;->setIdentity()Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_projection:Lcom/ardor3d/math/Matrix4;

    iget-wide v8, p0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    iget-wide v10, p0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    sub-double/2addr v8, v10

    div-double v8, v2, v8

    invoke-virtual {v0, v5, v5, v8, v9}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_projection:Lcom/ardor3d/math/Matrix4;

    iget-wide v8, p0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    iget-wide v10, p0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    sub-double/2addr v8, v10

    div-double/2addr v2, v8

    invoke-virtual {v0, v4, v4, v2, v3}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_projection:Lcom/ardor3d/math/Matrix4;

    iget-wide v1, p0, Lcom/ardor3d/renderer/Camera;->_frustumFar:D

    iget-wide v8, p0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    sub-double/2addr v1, v8

    const-wide/high16 v8, -0x4000000000000000L    # -2.0

    div-double/2addr v8, v1

    invoke-virtual {v0, v7, v7, v8, v9}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_projection:Lcom/ardor3d/math/Matrix4;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v6, v6, v1, v2}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_projection:Lcom/ardor3d/math/Matrix4;

    iget-wide v1, p0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    iget-wide v8, p0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    add-double v10, v1, v8

    neg-double v10, v10

    sub-double/2addr v1, v8

    div-double/2addr v10, v1

    invoke-virtual {v0, v6, v5, v10, v11}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_projection:Lcom/ardor3d/math/Matrix4;

    iget-wide v1, p0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    iget-wide v8, p0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    add-double v10, v1, v8

    neg-double v10, v10

    sub-double/2addr v1, v8

    div-double/2addr v10, v1

    invoke-virtual {v0, v6, v4, v10, v11}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_projection:Lcom/ardor3d/math/Matrix4;

    iget-wide v1, p0, Lcom/ardor3d/renderer/Camera;->_frustumFar:D

    iget-wide v3, p0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    add-double v8, v1, v3

    neg-double v8, v8

    sub-double/2addr v1, v3

    div-double/2addr v8, v1

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getProjectionMode()Lcom/ardor3d/renderer/Camera$ProjectionMode;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/renderer/Camera$ProjectionMode;->Perspective:Lcom/ardor3d/renderer/Camera$ProjectionMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_projection:Lcom/ardor3d/math/Matrix4;

    invoke-virtual {v0}, Lcom/ardor3d/math/Matrix4;->setIdentity()Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_projection:Lcom/ardor3d/math/Matrix4;

    iget-wide v8, p0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    mul-double/2addr v8, v2

    iget-wide v10, p0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    iget-wide v12, p0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    sub-double/2addr v10, v12

    div-double/2addr v8, v10

    invoke-virtual {v0, v5, v5, v8, v9}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_projection:Lcom/ardor3d/math/Matrix4;

    iget-wide v8, p0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    mul-double/2addr v8, v2

    iget-wide v10, p0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    iget-wide v12, p0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    sub-double/2addr v10, v12

    div-double/2addr v8, v10

    invoke-virtual {v0, v4, v4, v8, v9}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_projection:Lcom/ardor3d/math/Matrix4;

    iget-wide v8, p0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    iget-wide v10, p0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    add-double v12, v8, v10

    sub-double/2addr v8, v10

    div-double/2addr v12, v8

    invoke-virtual {v0, v7, v5, v12, v13}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_projection:Lcom/ardor3d/math/Matrix4;

    iget-wide v8, p0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    iget-wide v10, p0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    add-double v12, v8, v10

    sub-double/2addr v8, v10

    div-double/2addr v12, v8

    invoke-virtual {v0, v7, v4, v12, v13}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_projection:Lcom/ardor3d/math/Matrix4;

    iget-wide v8, p0, Lcom/ardor3d/renderer/Camera;->_frustumFar:D

    iget-wide v10, p0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    add-double v12, v8, v10

    neg-double v12, v12

    sub-double/2addr v8, v10

    div-double/2addr v12, v8

    invoke-virtual {v0, v7, v7, v12, v13}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_projection:Lcom/ardor3d/math/Matrix4;

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, v7, v6, v8, v9}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_projection:Lcom/ardor3d/math/Matrix4;

    iget-wide v8, p0, Lcom/ardor3d/renderer/Camera;->_frustumFar:D

    mul-double/2addr v2, v8

    iget-wide v10, p0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    mul-double/2addr v2, v10

    neg-double v1, v2

    sub-double/2addr v8, v10

    div-double/2addr v1, v8

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_projection:Lcom/ardor3d/math/Matrix4;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {v0, v6, v6, v1, v2}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    :cond_1
    :goto_0
    iput-boolean v5, p0, Lcom/ardor3d/renderer/Camera;->_updatePMatrix:Z

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_location:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "location"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_X:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "left"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "up"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_Z:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "direction"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-wide v1, p0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    const-string v3, "frustumNear"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v1, p0, Lcom/ardor3d/renderer/Camera;->_frustumFar:D

    const-string v3, "frustumFar"

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v1, p0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    const-string v3, "frustumLeft"

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v1, p0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    const-string v3, "frustumRight"

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v1, p0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    const-string v3, "frustumTop"

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v1, p0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    const-string v3, "frustumBottom"

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_coeffLeft:[D

    const/4 v1, 0x2

    new-array v2, v1, [D

    const-string v3, "coeffLeft"

    invoke-interface {p1, v0, v3, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write([DLjava/lang/String;[D)V

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_coeffRight:[D

    const-string v2, "coeffRight"

    new-array v3, v1, [D

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write([DLjava/lang/String;[D)V

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_coeffBottom:[D

    const-string v2, "coeffBottom"

    new-array v3, v1, [D

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write([DLjava/lang/String;[D)V

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_coeffTop:[D

    const-string v2, "coeffTop"

    new-array v1, v1, [D

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write([DLjava/lang/String;[D)V

    iget v0, p0, Lcom/ardor3d/renderer/Camera;->_planeQuantity:I

    const-string v1, "planeQuantity"

    const/4 v2, 0x6

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-wide v1, p0, Lcom/ardor3d/renderer/Camera;->_viewPortLeft:D

    const-string v3, "viewPortLeft"

    const-wide/16 v4, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v1, p0, Lcom/ardor3d/renderer/Camera;->_viewPortRight:D

    const-string v3, "viewPortRight"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v1, p0, Lcom/ardor3d/renderer/Camera;->_viewPortTop:D

    const-string v3, "viewPortTop"

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v1, p0, Lcom/ardor3d/renderer/Camera;->_viewPortBottom:D

    const-string v3, "viewPortBottom"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget v0, p0, Lcom/ardor3d/renderer/Camera;->_width:I

    const-string v1, "width"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/ardor3d/renderer/Camera;->_height:I

    const-string v1, "height"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-wide v1, p0, Lcom/ardor3d/renderer/Camera;->_depthRangeNear:D

    const-string v3, "depthRangeNear"

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v1, p0, Lcom/ardor3d/renderer/Camera;->_depthRangeFar:D

    const-string v3, "depthRangeFar"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_location:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_left:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_up:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumNear:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumFar:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumLeft:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumRight:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumTop:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_frustumBottom:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_coeffLeft:[D

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_coeffRight:[D

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_coeffBottom:[D

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/Camera;->_coeffTop:[D

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget v0, p0, Lcom/ardor3d/renderer/Camera;->_planeQuantity:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_viewPortLeft:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_viewPortRight:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_viewPortTop:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_viewPortBottom:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    iget v0, p0, Lcom/ardor3d/renderer/Camera;->_width:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lcom/ardor3d/renderer/Camera;->_height:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_depthRangeNear:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    iget-wide v0, p0, Lcom/ardor3d/renderer/Camera;->_depthRangeFar:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    return-void
.end method
