.class public Lcom/ardor3d/scenegraph/extension/Skybox;
.super Lcom/ardor3d/scenegraph/Node;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/scenegraph/extension/Skybox$Face;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

.field private _xExtent:F

.field private _yExtent:F

.field private _zExtent:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Node;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFF)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Node;-><init>(Ljava/lang/String;)V

    .line 3
    iput p2, p0, Lcom/ardor3d/scenegraph/extension/Skybox;->_xExtent:F

    .line 4
    iput p3, p0, Lcom/ardor3d/scenegraph/extension/Skybox;->_yExtent:F

    .line 5
    iput p4, p0, Lcom/ardor3d/scenegraph/extension/Skybox;->_zExtent:F

    .line 6
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/extension/Skybox;->initialize()V

    return-void
.end method


# virtual methods
.method public getFace(Lcom/ardor3d/scenegraph/extension/Skybox$Face;)Lcom/ardor3d/scenegraph/shape/Quad;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getTexture(Lcom/ardor3d/scenegraph/extension/Skybox$Face;)Lcom/ardor3d/image/Texture;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->Texture:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {p1, v0}, Lcom/ardor3d/scenegraph/Spatial;->getLocalRenderState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/TextureState;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/state/TextureState;->getTexture()Lcom/ardor3d/image/Texture;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Face can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x6

    new-array v2, v1, [Lcom/ardor3d/scenegraph/shape/Quad;

    iput-object v2, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    sget-object v3, Lcom/ardor3d/scenegraph/extension/Skybox$Face;->North:Lcom/ardor3d/scenegraph/extension/Skybox$Face;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    new-instance v11, Lcom/ardor3d/scenegraph/shape/Quad;

    iget v5, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_xExtent:F

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v5, v12

    float-to-double v7, v5

    iget v5, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_yExtent:F

    mul-float/2addr v5, v12

    float-to-double v9, v5

    const-string v6, "north"

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/ardor3d/scenegraph/shape/Quad;-><init>(Ljava/lang/String;DD)V

    aput-object v11, v2, v4

    iget-object v2, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v2, v2, v4

    new-instance v4, Lcom/ardor3d/math/Matrix3;

    invoke-direct {v4}, Lcom/ardor3d/math/Matrix3;-><init>()V

    const-wide v5, 0x4066800000000000L    # 180.0

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Matrix3;->fromAngles(DDD)Lcom/ardor3d/math/Matrix3;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/Spatial;->setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    iget-object v2, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    new-instance v10, Lcom/ardor3d/math/Vector3;

    iget v3, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_zExtent:F

    float-to-double v8, v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-virtual {v2, v10}, Lcom/ardor3d/scenegraph/Spatial;->setTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object v2, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    sget-object v3, Lcom/ardor3d/scenegraph/extension/Skybox$Face;->South:Lcom/ardor3d/scenegraph/extension/Skybox$Face;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    new-instance v11, Lcom/ardor3d/scenegraph/shape/Quad;

    iget v5, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_xExtent:F

    mul-float/2addr v5, v12

    float-to-double v7, v5

    iget v5, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_yExtent:F

    mul-float/2addr v5, v12

    float-to-double v9, v5

    const-string v6, "south"

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/ardor3d/scenegraph/shape/Quad;-><init>(Ljava/lang/String;DD)V

    aput-object v11, v2, v4

    iget-object v2, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    new-instance v10, Lcom/ardor3d/math/Vector3;

    iget v3, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_zExtent:F

    neg-float v3, v3

    float-to-double v8, v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-virtual {v2, v10}, Lcom/ardor3d/scenegraph/Spatial;->setTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object v2, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    sget-object v3, Lcom/ardor3d/scenegraph/extension/Skybox$Face;->East:Lcom/ardor3d/scenegraph/extension/Skybox$Face;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    new-instance v11, Lcom/ardor3d/scenegraph/shape/Quad;

    iget v5, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_zExtent:F

    mul-float/2addr v5, v12

    float-to-double v7, v5

    iget v5, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_yExtent:F

    mul-float/2addr v5, v12

    float-to-double v9, v5

    const-string v6, "east"

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/ardor3d/scenegraph/shape/Quad;-><init>(Ljava/lang/String;DD)V

    aput-object v11, v2, v4

    iget-object v2, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v2, v2, v4

    new-instance v4, Lcom/ardor3d/math/Matrix3;

    invoke-direct {v4}, Lcom/ardor3d/math/Matrix3;-><init>()V

    const-wide v13, 0x4056800000000000L    # 90.0

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Matrix3;->fromAngles(DDD)Lcom/ardor3d/math/Matrix3;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/Spatial;->setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    iget-object v2, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    new-instance v10, Lcom/ardor3d/math/Vector3;

    iget v3, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_xExtent:F

    neg-float v3, v3

    float-to-double v4, v3

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-virtual {v2, v10}, Lcom/ardor3d/scenegraph/Spatial;->setTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object v2, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    sget-object v3, Lcom/ardor3d/scenegraph/extension/Skybox$Face;->West:Lcom/ardor3d/scenegraph/extension/Skybox$Face;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    new-instance v11, Lcom/ardor3d/scenegraph/shape/Quad;

    iget v5, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_zExtent:F

    mul-float/2addr v5, v12

    float-to-double v7, v5

    iget v5, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_yExtent:F

    mul-float/2addr v5, v12

    float-to-double v9, v5

    const-string v6, "west"

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/ardor3d/scenegraph/shape/Quad;-><init>(Ljava/lang/String;DD)V

    aput-object v11, v2, v4

    iget-object v2, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v2, v2, v4

    new-instance v4, Lcom/ardor3d/math/Matrix3;

    invoke-direct {v4}, Lcom/ardor3d/math/Matrix3;-><init>()V

    const-wide v15, 0x4070e00000000000L    # 270.0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Matrix3;->fromAngles(DDD)Lcom/ardor3d/math/Matrix3;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/Spatial;->setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    iget-object v2, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    new-instance v10, Lcom/ardor3d/math/Vector3;

    iget v3, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_xExtent:F

    float-to-double v4, v3

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-virtual {v2, v10}, Lcom/ardor3d/scenegraph/Spatial;->setTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object v2, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    sget-object v3, Lcom/ardor3d/scenegraph/extension/Skybox$Face;->Up:Lcom/ardor3d/scenegraph/extension/Skybox$Face;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    new-instance v11, Lcom/ardor3d/scenegraph/shape/Quad;

    iget v5, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_xExtent:F

    mul-float/2addr v5, v12

    float-to-double v7, v5

    iget v5, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_zExtent:F

    mul-float/2addr v5, v12

    float-to-double v9, v5

    const-string v6, "up"

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/ardor3d/scenegraph/shape/Quad;-><init>(Ljava/lang/String;DD)V

    aput-object v11, v2, v4

    iget-object v2, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v2, v2, v4

    new-instance v4, Lcom/ardor3d/math/Matrix3;

    invoke-direct {v4}, Lcom/ardor3d/math/Matrix3;-><init>()V

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Matrix3;->fromAngles(DDD)Lcom/ardor3d/math/Matrix3;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/Spatial;->setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    iget-object v2, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    new-instance v10, Lcom/ardor3d/math/Vector3;

    iget v3, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_yExtent:F

    float-to-double v6, v3

    const-wide/16 v8, 0x0

    const-wide/16 v4, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-virtual {v2, v10}, Lcom/ardor3d/scenegraph/Spatial;->setTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object v2, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    sget-object v3, Lcom/ardor3d/scenegraph/extension/Skybox$Face;->Down:Lcom/ardor3d/scenegraph/extension/Skybox$Face;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    new-instance v11, Lcom/ardor3d/scenegraph/shape/Quad;

    iget v5, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_xExtent:F

    mul-float/2addr v5, v12

    float-to-double v7, v5

    iget v5, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_zExtent:F

    mul-float/2addr v5, v12

    float-to-double v9, v5

    const-string v6, "down"

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/ardor3d/scenegraph/shape/Quad;-><init>(Ljava/lang/String;DD)V

    aput-object v11, v2, v4

    iget-object v2, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v2, v2, v4

    new-instance v4, Lcom/ardor3d/math/Matrix3;

    invoke-direct {v4}, Lcom/ardor3d/math/Matrix3;-><init>()V

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Matrix3;->fromAngles(DDD)Lcom/ardor3d/math/Matrix3;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/Spatial;->setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    iget-object v2, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    new-instance v10, Lcom/ardor3d/math/Vector3;

    iget v3, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_yExtent:F

    neg-float v3, v3

    float-to-double v6, v3

    const-wide/16 v8, 0x0

    const-wide/16 v4, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-virtual {v2, v10}, Lcom/ardor3d/scenegraph/Spatial;->setTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v2

    sget-object v3, Lcom/ardor3d/scenegraph/hint/LightCombineMode;->Off:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setLightCombineMode(Lcom/ardor3d/scenegraph/hint/LightCombineMode;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v2

    sget-object v3, Lcom/ardor3d/scenegraph/hint/TextureCombineMode;->Replace:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setTextureCombineMode(Lcom/ardor3d/scenegraph/hint/TextureCombineMode;)V

    new-instance v2, Lcom/ardor3d/renderer/state/ZBufferState;

    invoke-direct {v2}, Lcom/ardor3d/renderer/state/ZBufferState;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ardor3d/renderer/state/RenderState;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    new-instance v2, Lcom/ardor3d/renderer/state/FogState;

    invoke-direct {v2}, Lcom/ardor3d/renderer/state/FogState;-><init>()V

    invoke-virtual {v2, v3}, Lcom/ardor3d/renderer/state/RenderState;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v2

    sget-object v4, Lcom/ardor3d/scenegraph/hint/CullHint;->Never:Lcom/ardor3d/scenegraph/hint/CullHint;

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setCullHint(Lcom/ardor3d/scenegraph/hint/CullHint;)V

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v2, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v2

    sget-object v4, Lcom/ardor3d/scenegraph/hint/TextureCombineMode;->Replace:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setTextureCombineMode(Lcom/ardor3d/scenegraph/hint/TextureCombineMode;)V

    iget-object v2, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v2

    sget-object v4, Lcom/ardor3d/scenegraph/hint/LightCombineMode;->Off:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setLightCombineMode(Lcom/ardor3d/scenegraph/hint/LightCombineMode;)V

    iget-object v2, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v2

    sget-object v4, Lcom/ardor3d/scenegraph/hint/CullHint;->Never:Lcom/ardor3d/scenegraph/hint/CullHint;

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setCullHint(Lcom/ardor3d/scenegraph/hint/CullHint;)V

    iget-object v2, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v2

    sget-object v4, Lcom/ardor3d/renderer/queue/RenderBucketType;->PreBucket:Lcom/ardor3d/renderer/queue/RenderBucketType;

    invoke-virtual {v2, v4}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V

    iget-object v2, v0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/Node;->attachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public preloadTexture(Lcom/ardor3d/scenegraph/extension/Skybox$Face;Lcom/ardor3d/renderer/Renderer;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->Texture:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {p1, v0}, Lcom/ardor3d/scenegraph/Spatial;->getLocalRenderState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/TextureState;

    if-eqz p1, :cond_0

    invoke-interface {p2, v0, p1}, Lcom/ardor3d/renderer/Renderer;->applyState(Lcom/ardor3d/renderer/state/RenderState$StateType;Lcom/ardor3d/renderer/state/RenderState;)V

    :cond_0
    return-void
.end method

.method public preloadTextures(Lcom/ardor3d/renderer/Renderer;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    aget-object v1, v1, v0

    sget-object v2, Lcom/ardor3d/renderer/state/RenderState$StateType;->Texture:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/Spatial;->getLocalRenderState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/renderer/state/TextureState;

    if-eqz v1, :cond_0

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/renderer/Renderer;->applyState(Lcom/ardor3d/renderer/state/RenderState$StateType;Lcom/ardor3d/renderer/state/RenderState;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Node;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "xExtent"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/extension/Skybox;->_xExtent:F

    const-string v0, "yExtent"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/extension/Skybox;->_yExtent:F

    const-string v0, "zExtent"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/extension/Skybox;->_zExtent:F

    const-string v0, "skyboxQuads"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/ardor3d/util/export/Savable;)[Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    const-class v0, Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-static {p1, v0}, Lcom/ardor3d/util/export/CapsuleUtils;->asArray([Lcom/ardor3d/util/export/Savable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/ardor3d/scenegraph/shape/Quad;

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    return-void
.end method

.method public setTexture(Lcom/ardor3d/scenegraph/extension/Skybox$Face;Lcom/ardor3d/image/Texture;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->Texture:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/Spatial;->clearRenderState(Lcom/ardor3d/renderer/state/RenderState$StateType;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/ardor3d/scenegraph/extension/Skybox;->setTexture(Lcom/ardor3d/scenegraph/extension/Skybox$Face;Lcom/ardor3d/image/Texture;I)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Face can not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTexture(Lcom/ardor3d/scenegraph/extension/Skybox$Face;Lcom/ardor3d/image/Texture;I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->Texture:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/Spatial;->getLocalRenderState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/renderer/state/TextureState;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/ardor3d/renderer/state/TextureState;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/TextureState;-><init>()V

    .line 6
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/ardor3d/renderer/state/TextureState;->setTexture(Lcom/ardor3d/image/Texture;I)V

    const/4 p3, 0x1

    .line 7
    invoke-virtual {v0, p3}, Lcom/ardor3d/renderer/state/RenderState;->setEnabled(Z)V

    .line 8
    sget-object p3, Lcom/ardor3d/image/Texture$WrapMode;->EdgeClamp:Lcom/ardor3d/image/Texture$WrapMode;

    invoke-virtual {p2, p3}, Lcom/ardor3d/image/Texture;->setWrap(Lcom/ardor3d/image/Texture$WrapMode;)V

    .line 9
    iget-object p2, p0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, p2, p1

    invoke-virtual {p1, v0}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Face can not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Node;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget v0, p0, Lcom/ardor3d/scenegraph/extension/Skybox;->_xExtent:F

    const-string v1, "xExtent"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/ardor3d/scenegraph/extension/Skybox;->_yExtent:F

    const-string v1, "yExtent"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/ardor3d/scenegraph/extension/Skybox;->_zExtent:F

    const-string v1, "zExtent"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/Skybox;->_skyboxQuads:[Lcom/ardor3d/scenegraph/shape/Quad;

    const-string v1, "skyboxQuads"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write([Lcom/ardor3d/util/export/Savable;Ljava/lang/String;[Lcom/ardor3d/util/export/Savable;)V

    return-void
.end method
