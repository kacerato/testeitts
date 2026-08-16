.class public Lcom/ardor3d/scenegraph/extension/QuadImposterNode;
.super Lcom/ardor3d/scenegraph/Node;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _cam:Lcom/ardor3d/renderer/Camera;

.field protected _cameraAngleThreshold:D

.field protected _cameraDistanceThreshold:D

.field protected final _center:Lcom/ardor3d/math/Vector3;

.field protected _corners:[Lcom/ardor3d/math/Vector3;

.field protected _depth:I

.field protected _doUpdate:Z

.field protected _elapsed:D

.field protected final _extents:Lcom/ardor3d/math/Vector3;

.field protected _farPlane:D

.field protected _haveDrawn:Z

.field protected _imposterQuad:Lcom/ardor3d/scenegraph/shape/Quad;

.field protected final _lastCamDir:Lcom/ardor3d/math/Vector3;

.field protected _lastCamDist:D

.field protected final _maxMinScreenPos:Lcom/ardor3d/math/Vector2;

.field protected final _maxScreenPos:Lcom/ardor3d/math/Vector2;

.field protected final _minMaxScreenPos:Lcom/ardor3d/math/Vector2;

.field protected final _minScreenPos:Lcom/ardor3d/math/Vector2;

.field protected _minZ:D

.field protected _nearPlane:D

.field protected _redrawRate:D

.field protected _samples:I

.field protected _tRenderer:Lcom/ardor3d/renderer/TextureRenderer;

.field protected _targetScene:Lcom/ardor3d/scenegraph/Node;

.field protected final _tempVec:Lcom/ardor3d/math/Vector3;

.field protected _texture:Lcom/ardor3d/image/Texture2D;

.field protected _theight:I

.field protected _timer:Lcom/ardor3d/util/Timer;

.field protected _twidth:I

.field protected _worldUpVector:Lcom/ardor3d/math/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x40

    .line 1
    invoke-direct {p0, v0, v1, v1}, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;-><init>(Ljava/lang/String;IILcom/ardor3d/util/Timer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILcom/ardor3d/util/Timer;)V
    .locals 9

    .line 4
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Node;-><init>(Ljava/lang/String;)V

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 5
    iput-wide v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cameraDistanceThreshold:D

    .line 6
    new-instance p1, Lcom/ardor3d/math/Vector3;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v7, 0x0

    const-wide/16 v3, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_worldUpVector:Lcom/ardor3d/math/Vector3;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_doUpdate:Z

    .line 8
    new-instance p1, Lcom/ardor3d/math/Vector3;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_lastCamDir:Lcom/ardor3d/math/Vector3;

    const/16 p1, 0x8

    .line 9
    new-array p1, p1, [Lcom/ardor3d/math/Vector3;

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    .line 10
    new-instance p1, Lcom/ardor3d/math/Vector3;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_center:Lcom/ardor3d/math/Vector3;

    .line 11
    new-instance p1, Lcom/ardor3d/math/Vector3;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    .line 12
    new-instance p1, Lcom/ardor3d/math/Vector2;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_minScreenPos:Lcom/ardor3d/math/Vector2;

    .line 13
    new-instance p1, Lcom/ardor3d/math/Vector2;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_maxScreenPos:Lcom/ardor3d/math/Vector2;

    .line 14
    new-instance p1, Lcom/ardor3d/math/Vector2;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_minMaxScreenPos:Lcom/ardor3d/math/Vector2;

    .line 15
    new-instance p1, Lcom/ardor3d/math/Vector2;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_maxMinScreenPos:Lcom/ardor3d/math/Vector2;

    .line 16
    new-instance p1, Lcom/ardor3d/math/Vector3;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_tempVec:Lcom/ardor3d/math/Vector3;

    .line 17
    iput p2, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_twidth:I

    .line 18
    iput p3, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_theight:I

    .line 19
    iput p4, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_depth:I

    .line 20
    iput p5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_samples:I

    .line 21
    iput-object p6, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_timer:Lcom/ardor3d/util/Timer;

    .line 22
    new-instance p1, Lcom/ardor3d/image/Texture2D;

    invoke-direct {p1}, Lcom/ardor3d/image/Texture2D;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_texture:Lcom/ardor3d/image/Texture2D;

    .line 23
    new-instance p1, Lcom/ardor3d/scenegraph/shape/Quad;

    const-string p2, "ImposterQuad"

    invoke-direct {p1, p2}, Lcom/ardor3d/scenegraph/shape/Quad;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_imposterQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 24
    invoke-virtual {p1, p2, p3, p2, p3}, Lcom/ardor3d/scenegraph/shape/Quad;->resize(DD)V

    .line 25
    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_imposterQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    new-instance p2, Lcom/ardor3d/bounding/BoundingBox;

    invoke-direct {p2}, Lcom/ardor3d/bounding/BoundingBox;-><init>()V

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/Mesh;->setModelBound(Lcom/ardor3d/bounding/BoundingVolume;)V

    .line 26
    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_imposterQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p1

    sget-object p2, Lcom/ardor3d/scenegraph/hint/TextureCombineMode;->Replace:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setTextureCombineMode(Lcom/ardor3d/scenegraph/hint/TextureCombineMode;)V

    .line 27
    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_imposterQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p1

    sget-object p2, Lcom/ardor3d/scenegraph/hint/LightCombineMode;->Off:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setLightCombineMode(Lcom/ardor3d/scenegraph/hint/LightCombineMode;)V

    .line 28
    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_imposterQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Node;->attachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    .line 29
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p1

    sget-object p2, Lcom/ardor3d/renderer/queue/RenderBucketType;->Transparent:Lcom/ardor3d/renderer/queue/RenderBucketType;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V

    .line 30
    new-instance p1, Lcom/ardor3d/scenegraph/Node;

    invoke-direct {p1}, Lcom/ardor3d/scenegraph/Node;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_targetScene:Lcom/ardor3d/scenegraph/Node;

    .line 31
    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Node;->attachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    const/4 p1, 0x0

    move p2, p1

    .line 32
    :goto_0
    iget-object p3, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    array-length p4, p3

    if-ge p2, p4, :cond_0

    .line 33
    new-instance p4, Lcom/ardor3d/math/Vector3;

    invoke-direct {p4}, Lcom/ardor3d/math/Vector3;-><init>()V

    aput-object p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p6, :cond_1

    const-wide p2, 0x3fa999999999999aL    # 0.05

    .line 34
    iput-wide p2, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_elapsed:D

    iput-wide p2, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_redrawRate:D

    goto :goto_1

    :cond_1
    const-wide/high16 p2, 0x4024000000000000L    # 10.0

    .line 35
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->setCameraAngleThreshold(D)V

    const-wide p2, 0x3fc999999999999aL    # 0.2

    .line 36
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->setCameraDistanceThreshold(D)V

    .line 37
    :goto_1
    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_haveDrawn:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/ardor3d/util/Timer;)V
    .locals 7

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;-><init>(Ljava/lang/String;IIIILcom/ardor3d/util/Timer;)V

    return-void
.end method

.method private calculateImposter()V
    .locals 13

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_targetScene:Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    instance-of v2, v0, Lcom/ardor3d/bounding/BoundingBox;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/ardor3d/bounding/BoundingBox;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v2}, Lcom/ardor3d/bounding/BoundingBox;->getExtent(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    goto :goto_1

    :cond_1
    instance-of v2, v0, Lcom/ardor3d/bounding/BoundingSphere;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/ardor3d/bounding/BoundingSphere;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v7

    invoke-virtual/range {v2 .. v8}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    aget-object v2, v0, v1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v5

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v7

    neg-double v7, v7

    invoke-virtual/range {v2 .. v8}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v2, 0x1

    aget-object v3, v0, v2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    neg-double v4, v4

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v8

    neg-double v8, v8

    invoke-virtual/range {v3 .. v9}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v3, 0x2

    aget-object v4, v0, v3

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v7

    neg-double v7, v7

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v9

    neg-double v9, v9

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v4, 0x3

    aget-object v5, v0, v4

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v6

    neg-double v6, v6

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v8

    neg-double v8, v8

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v10

    neg-double v10, v10

    invoke-virtual/range {v5 .. v11}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v5, 0x4

    aget-object v6, v0, v5

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v7

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v9

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v11

    invoke-virtual/range {v6 .. v12}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v5, 0x5

    aget-object v6, v0, v5

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v7

    neg-double v7, v7

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v9

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v11

    invoke-virtual/range {v6 .. v12}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v5, 0x6

    aget-object v6, v0, v5

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v7

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v9

    neg-double v9, v9

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v11

    invoke-virtual/range {v6 .. v12}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v5, 0x7

    aget-object v6, v0, v5

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v7

    neg-double v7, v7

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v9

    neg-double v9, v9

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v11

    invoke-virtual/range {v6 .. v12}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    move v0, v1

    :goto_2
    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    array-length v5, v5

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_tRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {v5}, Lcom/ardor3d/renderer/TextureRenderer;->getCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v5

    iget-object v6, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6, v6}, Lcom/ardor3d/renderer/Camera;->getScreenCoordinates(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_minScreenPos:Lcom/ardor3d/math/Vector2;

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {v0, v5, v6, v5, v6}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_maxScreenPos:Lcom/ardor3d/math/Vector2;

    const-wide v7, -0x10000000000001L

    invoke-virtual {v0, v7, v8, v7, v8}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    iput-wide v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_minZ:D

    move v0, v1

    :goto_3
    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    array-length v6, v5

    if-ge v0, v6, :cond_4

    iget-object v6, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_minScreenPos:Lcom/ardor3d/math/Vector2;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v7

    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_minScreenPos:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/ardor3d/math/Vector2;->setX(D)V

    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_minScreenPos:Lcom/ardor3d/math/Vector2;

    iget-object v6, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    iget-object v8, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_minScreenPos:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/ardor3d/math/Vector2;->setY(D)V

    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_maxScreenPos:Lcom/ardor3d/math/Vector2;

    iget-object v6, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v6

    iget-object v8, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_maxScreenPos:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/ardor3d/math/Vector2;->setX(D)V

    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_maxScreenPos:Lcom/ardor3d/math/Vector2;

    iget-object v6, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    iget-object v8, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_maxScreenPos:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/ardor3d/math/Vector2;->setY(D)V

    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v5

    iget-wide v7, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_minZ:D

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_minZ:D

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_maxMinScreenPos:Lcom/ardor3d/math/Vector2;

    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_maxScreenPos:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v5

    iget-object v7, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_minScreenPos:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v7

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_minMaxScreenPos:Lcom/ardor3d/math/Vector2;

    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_minScreenPos:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v5

    iget-object v7, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_maxScreenPos:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v7

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_tRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {v0}, Lcom/ardor3d/renderer/TextureRenderer;->getCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v0

    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_maxScreenPos:Lcom/ardor3d/math/Vector2;

    iget-wide v6, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_minZ:D

    iget-object v8, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    aget-object v8, v8, v1

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/ardor3d/renderer/Camera;->getWorldCoordinates(Lcom/ardor3d/math/type/ReadOnlyVector2;DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_tRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {v0}, Lcom/ardor3d/renderer/TextureRenderer;->getCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v0

    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_maxMinScreenPos:Lcom/ardor3d/math/Vector2;

    iget-wide v6, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_minZ:D

    iget-object v8, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    aget-object v8, v8, v2

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/ardor3d/renderer/Camera;->getWorldCoordinates(Lcom/ardor3d/math/type/ReadOnlyVector2;DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_tRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {v0}, Lcom/ardor3d/renderer/TextureRenderer;->getCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v0

    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_minScreenPos:Lcom/ardor3d/math/Vector2;

    iget-wide v6, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_minZ:D

    iget-object v8, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    aget-object v8, v8, v3

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/ardor3d/renderer/Camera;->getWorldCoordinates(Lcom/ardor3d/math/type/ReadOnlyVector2;DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_tRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {v0}, Lcom/ardor3d/renderer/TextureRenderer;->getCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v0

    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_minMaxScreenPos:Lcom/ardor3d/math/Vector2;

    iget-wide v6, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_minZ:D

    iget-object v8, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    aget-object v8, v8, v4

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/ardor3d/renderer/Camera;->getWorldCoordinates(Lcom/ardor3d/math/type/ReadOnlyVector2;DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_center:Lcom/ardor3d/math/Vector3;

    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    aget-object v5, v5, v1

    invoke-virtual {v0, v5}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    invoke-virtual {v0, v5, v6}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_lastCamDir:Lcom/ardor3d/math/Vector3;

    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v5}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_tRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {v5}, Lcom/ardor3d/renderer/TextureRenderer;->getCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ardor3d/renderer/Camera;->getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_lastCamDir:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->length()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_nearPlane:D

    iput-wide v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_lastCamDist:D

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_extents:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->length()D

    move-result-wide v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    iput-wide v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_farPlane:D

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_lastCamDir:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_imposterQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    aget-object v5, v5, v1

    invoke-static {v5, v0, v4}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    aget-object v5, v5, v2

    invoke-static {v5, v0, v3}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    aget-object v3, v5, v3

    invoke-static {v3, v0, v2}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    iget-object v2, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    aget-object v2, v2, v4

    invoke-static {v2, v0, v1}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_imposterQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Mesh;->updateModelBound()V

    return-void
.end method

.method private init(Lcom/ardor3d/renderer/Renderer;)V
    .locals 7

    sget-object v0, Lcom/ardor3d/renderer/TextureRendererFactory;->INSTANCE:Lcom/ardor3d/renderer/TextureRendererFactory;

    iget v1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_twidth:I

    iget v2, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_theight:I

    iget v3, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_depth:I

    iget v4, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_samples:I

    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ardor3d/renderer/RenderContext;->getCapabilities()Lcom/ardor3d/renderer/ContextCapabilities;

    move-result-object v6

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/renderer/TextureRendererFactory;->createTextureRenderer(IIIILcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)Lcom/ardor3d/renderer/TextureRenderer;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_tRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    invoke-interface {p1, v0}, Lcom/ardor3d/renderer/TextureRenderer;->setBackgroundColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->resetTexture()V

    return-void
.end method

.method private shouldDoUpdate(Lcom/ardor3d/renderer/Camera;)Z
    .locals 8

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_redrawRate:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    const/4 v5, 0x1

    if-lez v4, :cond_0

    iget-wide v6, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_elapsed:D

    cmpl-double v4, v6, v0

    if-ltz v4, :cond_0

    rem-double/2addr v6, v0

    iput-wide v6, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_elapsed:D

    return v5

    :cond_0
    iget-wide v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cameraAngleThreshold:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_tempVec:Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_tempVec:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->length()D

    move-result-wide v0

    iget-wide v6, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_lastCamDist:D

    cmpl-double p1, v6, v2

    if-eqz p1, :cond_1

    sub-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_lastCamDist:D

    div-double/2addr v0, v2

    iget-wide v2, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cameraDistanceThreshold:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    return v5

    :cond_1
    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_tempVec:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_tempVec:Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_lastCamDir:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Vector3;->smallestAngleBetween(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cameraAngleThreshold:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_2

    return v5

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private updateCameraFrustum()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    const/4 v2, 0x2

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->length()D

    move-result-wide v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v13, v1, v4

    iget-object v1, v0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_corners:[Lcom/ardor3d/math/Vector3;

    aget-object v2, v1, v3

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->length()D

    move-result-wide v1

    div-double/2addr v1, v4

    iget-object v3, v0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_tRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {v3}, Lcom/ardor3d/renderer/TextureRenderer;->getCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v6

    iget-wide v7, v0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_nearPlane:D

    iget-wide v9, v0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_farPlane:D

    neg-double v11, v13

    neg-double v3, v1

    move-wide v15, v1

    move-wide/from16 v17, v3

    invoke-virtual/range {v6 .. v18}, Lcom/ardor3d/renderer/Camera;->setFrustum(DDDDDD)V

    return-void
.end method

.method private updateCameraLookat()V
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_tRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {v0}, Lcom/ardor3d/renderer/TextureRenderer;->getCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cam:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v1}, Lcom/ardor3d/renderer/Camera;->getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/renderer/Camera;->setLocation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_tRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {v0}, Lcom/ardor3d/renderer/TextureRenderer;->getCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_center:Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_worldUpVector:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/renderer/Camera;->lookAt(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    return-void
.end method


# virtual methods
.method public attachChild(Lcom/ardor3d/scenegraph/Spatial;)I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_targetScene:Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {v0, p1}, Lcom/ardor3d/scenegraph/Node;->attachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    move-result p1

    return p1
.end method

.method public attachChildAt(Lcom/ardor3d/scenegraph/Spatial;I)I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_targetScene:Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {v0, p1, p2}, Lcom/ardor3d/scenegraph/Node;->attachChildAt(Lcom/ardor3d/scenegraph/Spatial;I)I

    move-result p1

    return p1
.end method

.method public detachAllChildren()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_targetScene:Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Node;->detachAllChildren()V

    return-void
.end method

.method public detachChild(Lcom/ardor3d/scenegraph/Spatial;)I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_targetScene:Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {v0, p1}, Lcom/ardor3d/scenegraph/Node;->detachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    move-result p1

    return p1
.end method

.method public detachChildAt(I)Lcom/ardor3d/scenegraph/Spatial;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_targetScene:Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {v0, p1}, Lcom/ardor3d/scenegraph/Node;->detachChildAt(I)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object p1

    return-object p1
.end method

.method public detachChildNamed(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_targetScene:Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {v0, p1}, Lcom/ardor3d/scenegraph/Node;->detachChildNamed(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public draw(Lcom/ardor3d/renderer/Renderer;)V
    .locals 14

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_timer:Lcom/ardor3d/util/Timer;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_redrawRate:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_elapsed:D

    invoke-virtual {v0}, Lcom/ardor3d/util/Timer;->getTimePerFrame()D

    move-result-wide v3

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_elapsed:D

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_tRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->init(Lcom/ardor3d/renderer/Renderer;)V

    :cond_1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cam:Lcom/ardor3d/renderer/Camera;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/ardor3d/renderer/Camera;->getCurrentCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cam:Lcom/ardor3d/renderer/Camera;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_tRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {v0}, Lcom/ardor3d/renderer/TextureRenderer;->getCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cam:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/Camera;->getFrustumNear()D

    move-result-wide v2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cam:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/Camera;->getFrustumFar()D

    move-result-wide v4

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cam:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/Camera;->getFrustumLeft()D

    move-result-wide v6

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cam:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/Camera;->getFrustumRight()D

    move-result-wide v8

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cam:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/Camera;->getFrustumTop()D

    move-result-wide v10

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cam:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/Camera;->getFrustumBottom()D

    move-result-wide v12

    invoke-virtual/range {v1 .. v13}, Lcom/ardor3d/renderer/Camera;->setFrustum(DDDDDD)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_tRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {v0}, Lcom/ardor3d/renderer/TextureRenderer;->getCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cam:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v1}, Lcom/ardor3d/renderer/Camera;->getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    iget-object v2, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cam:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v2}, Lcom/ardor3d/renderer/Camera;->getLeft()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    iget-object v3, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cam:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v3}, Lcom/ardor3d/renderer/Camera;->getUp()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    iget-object v4, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cam:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v4}, Lcom/ardor3d/renderer/Camera;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ardor3d/renderer/Camera;->setFrame(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    :cond_2
    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_doUpdate:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_haveDrawn:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cam:Lcom/ardor3d/renderer/Camera;

    invoke-direct {p0, v0}, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->shouldDoUpdate(Lcom/ardor3d/renderer/Camera;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_targetScene:Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_targetScene:Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->updateCameraLookat()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->calculateImposter()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->updateCameraLookat()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->updateCameraFrustum()V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->renderImposter()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_haveDrawn:Z

    :cond_4
    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_imposterQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {v0, p1}, Lcom/ardor3d/scenegraph/Mesh;->draw(Lcom/ardor3d/renderer/Renderer;)V

    return-void
.end method

.method public getCameraAngleThreshold()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cameraAngleThreshold:D

    return-wide v0
.end method

.method public getCameraDistanceThreshold()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cameraDistanceThreshold:D

    return-wide v0
.end method

.method public getTexture()Lcom/ardor3d/image/Texture;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_texture:Lcom/ardor3d/image/Texture2D;

    return-object v0
.end method

.method public getWorldUpVector()Lcom/ardor3d/math/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_worldUpVector:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public isDoUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_doUpdate:Z

    return v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Node;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "texture"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/image/Texture2D;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_texture:Lcom/ardor3d/image/Texture2D;

    const-string v0, "targetScene"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/Node;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_targetScene:Lcom/ardor3d/scenegraph/Node;

    new-instance v0, Lcom/ardor3d/scenegraph/shape/Quad;

    const-string v1, "ImposterQuad"

    invoke-direct {v0, v1}, Lcom/ardor3d/scenegraph/shape/Quad;-><init>(Ljava/lang/String;)V

    const-string v1, "standIn"

    invoke-interface {p1, v1, v0}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/shape/Quad;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_imposterQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    const-string v0, "redrawRate"

    const v1, 0x3d4ccccd    # 0.05f

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_redrawRate:D

    const-string v0, "cameraThreshold"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cameraAngleThreshold:D

    new-instance v0, Lcom/ardor3d/math/Vector3;

    sget-object v1, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v1, "worldUpVector"

    invoke-interface {p1, v1, v0}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/math/Vector3;

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_worldUpVector:Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public renderImposter()V
    .locals 4

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_tRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_targetScene:Lcom/ardor3d/scenegraph/Node;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_texture:Lcom/ardor3d/image/Texture2D;

    const/4 v3, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/ardor3d/renderer/TextureRenderer;->render(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/image/Texture;I)V

    return-void
.end method

.method public resetTexture()V
    .locals 4

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_texture:Lcom/ardor3d/image/Texture2D;

    sget-object v1, Lcom/ardor3d/image/Texture$WrapMode;->EdgeClamp:Lcom/ardor3d/image/Texture$WrapMode;

    invoke-virtual {v0, v1}, Lcom/ardor3d/image/Texture2D;->setWrap(Lcom/ardor3d/image/Texture$WrapMode;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_texture:Lcom/ardor3d/image/Texture2D;

    sget-object v1, Lcom/ardor3d/image/Texture$MinificationFilter;->BilinearNoMipMaps:Lcom/ardor3d/image/Texture$MinificationFilter;

    invoke-virtual {v0, v1}, Lcom/ardor3d/image/Texture;->setMinificationFilter(Lcom/ardor3d/image/Texture$MinificationFilter;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_texture:Lcom/ardor3d/image/Texture2D;

    sget-object v1, Lcom/ardor3d/image/Texture$MagnificationFilter;->Bilinear:Lcom/ardor3d/image/Texture$MagnificationFilter;

    invoke-virtual {v0, v1}, Lcom/ardor3d/image/Texture;->setMagnificationFilter(Lcom/ardor3d/image/Texture$MagnificationFilter;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_texture:Lcom/ardor3d/image/Texture2D;

    sget-object v1, Lcom/ardor3d/image/TextureStoreFormat;->RGBA8:Lcom/ardor3d/image/TextureStoreFormat;

    invoke-virtual {v0, v1}, Lcom/ardor3d/image/Texture;->setTextureStoreFormat(Lcom/ardor3d/image/TextureStoreFormat;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_tRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_texture:Lcom/ardor3d/image/Texture2D;

    invoke-interface {v0, v1}, Lcom/ardor3d/renderer/TextureRenderer;->setupTexture(Lcom/ardor3d/image/Texture2D;)V

    new-instance v0, Lcom/ardor3d/renderer/state/TextureState;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/TextureState;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ardor3d/renderer/state/RenderState;->setEnabled(Z)V

    iget-object v2, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_texture:Lcom/ardor3d/image/Texture2D;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/ardor3d/renderer/state/TextureState;->setTexture(Lcom/ardor3d/image/Texture;I)V

    iget-object v2, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_imposterQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {v2, v0}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    new-instance v0, Lcom/ardor3d/renderer/state/BlendState;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/BlendState;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ardor3d/renderer/state/BlendState;->setBlendEnabled(Z)V

    sget-object v2, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->SourceAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    invoke-virtual {v0, v2}, Lcom/ardor3d/renderer/state/BlendState;->setSourceFunction(Lcom/ardor3d/renderer/state/BlendState$SourceFunction;)V

    sget-object v2, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->OneMinusSourceAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    invoke-virtual {v0, v2}, Lcom/ardor3d/renderer/state/BlendState;->setDestinationFunction(Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;)V

    invoke-virtual {v0, v1}, Lcom/ardor3d/renderer/state/BlendState;->setTestEnabled(Z)V

    sget-object v2, Lcom/ardor3d/renderer/state/BlendState$TestFunction;->GreaterThan:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    invoke-virtual {v0, v2}, Lcom/ardor3d/renderer/state/BlendState;->setTestFunction(Lcom/ardor3d/renderer/state/BlendState$TestFunction;)V

    invoke-virtual {v0, v1}, Lcom/ardor3d/renderer/state/RenderState;->setEnabled(Z)V

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_imposterQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {v1, v0}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    return-void
.end method

.method public setCameraAngleThreshold(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cameraAngleThreshold:D

    return-void
.end method

.method public setCameraDistanceThreshold(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cameraDistanceThreshold:D

    return-void
.end method

.method public setDoUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_doUpdate:Z

    return-void
.end method

.method public setRedrawRate(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_elapsed:D

    iput-wide p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_redrawRate:D

    return-void
.end method

.method public setWorldUpVector(Lcom/ardor3d/math/Vector3;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_worldUpVector:Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public updateChildren(D)V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_imposterQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/ardor3d/scenegraph/Spatial;->updateGeometricState(DZ)V

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_doUpdate:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_haveDrawn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cam:Lcom/ardor3d/renderer/Camera;

    invoke-direct {p0, v0}, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->shouldDoUpdate(Lcom/ardor3d/renderer/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_targetScene:Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {v0, p1, p2, v1}, Lcom/ardor3d/scenegraph/Spatial;->updateGeometricState(DZ)V

    :cond_1
    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Node;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_texture:Lcom/ardor3d/image/Texture2D;

    const-string v1, "texture"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_targetScene:Lcom/ardor3d/scenegraph/Node;

    const-string v1, "targetScene"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_imposterQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    new-instance v1, Lcom/ardor3d/scenegraph/shape/Quad;

    const-string v2, "ImposterQuad"

    invoke-direct {v1, v2}, Lcom/ardor3d/scenegraph/shape/Quad;-><init>(Ljava/lang/String;)V

    const-string v2, "standIn"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_redrawRate:D

    const-string v3, "redrawRate"

    const-wide v4, 0x3fa99999a0000000L    # 0.05000000074505806

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_cameraAngleThreshold:D

    const-string v3, "cameraThreshold"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/QuadImposterNode;->_worldUpVector:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "worldUpVector"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    return-void
.end method
