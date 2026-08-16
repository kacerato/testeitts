.class public final Lcom/ardor3d/util/geom/Debugger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static AUTO_NORMAL_RATIO:D = 0.0

.field public static final NORMAL_COLOR_BASE:Lcom/ardor3d/math/ColorRGBA;

.field public static final NORMAL_COLOR_TIP:Lcom/ardor3d/math/ColorRGBA;

.field public static final NORTHEAST:I = 0x1

.field public static final NORTHWEST:I = 0x0

.field public static final SOUTHEAST:I = 0x2

.field public static final SOUTHWEST:I = 0x3

.field public static final TANGENT_COLOR_BASE:Lcom/ardor3d/math/ColorRGBA;

.field public static final TANGENT_COLOR_TIP:Lcom/ardor3d/math/ColorRGBA;

.field private static final _normalVect:Lcom/ardor3d/math/Vector3;

.field private static final _normalVect2:Lcom/ardor3d/math/Vector3;

.field private static axisInited:Z

.field private static final bQuad:Lcom/ardor3d/scenegraph/shape/Quad;

.field private static final boundingBox:Lcom/ardor3d/scenegraph/shape/Box;

.field private static final boundingOB:Lcom/ardor3d/scenegraph/shape/OrientedBox;

.field private static final boundingSphere:Lcom/ardor3d/scenegraph/shape/Sphere;

.field private static bufTexRend:Lcom/ardor3d/renderer/TextureRenderer;

.field private static bufTexture:Lcom/ardor3d/image/Texture2D;

.field private static final extendedCamera:Lcom/ardor3d/util/ExtendedCamera;

.field private static lineFrustum:Lcom/ardor3d/scenegraph/Line;

.field protected static final measureBox:Lcom/ardor3d/bounding/BoundingBox;

.field private static final normalLines:Lcom/ardor3d/scenegraph/Line;

.field private static final rods:Lcom/ardor3d/scenegraph/shape/AxisRods;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v6, Lcom/ardor3d/scenegraph/shape/Sphere;

    const/16 v3, 0xa

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-string v1, "bsphere"

    const/16 v2, 0xa

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ardor3d/scenegraph/shape/Sphere;-><init>(Ljava/lang/String;IID)V

    sput-object v6, Lcom/ardor3d/util/geom/Debugger;->boundingSphere:Lcom/ardor3d/scenegraph/shape/Sphere;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/renderer/queue/RenderBucketType;->Skip:Lcom/ardor3d/renderer/queue/RenderBucketType;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V

    new-instance v0, Lcom/ardor3d/renderer/state/WireframeState;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/WireframeState;-><init>()V

    invoke-virtual {v6, v0}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    new-instance v0, Lcom/ardor3d/renderer/state/ZBufferState;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/ZBufferState;-><init>()V

    invoke-virtual {v6, v0}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/ardor3d/scenegraph/Spatial;->updateWorldRenderStates(Z)V

    new-instance v2, Lcom/ardor3d/scenegraph/shape/Box;

    new-instance v9, Lcom/ardor3d/math/Vector3;

    invoke-direct {v9}, Lcom/ardor3d/math/Vector3;-><init>()V

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-string v8, "bbox"

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Lcom/ardor3d/scenegraph/shape/Box;-><init>(Ljava/lang/String;Lcom/ardor3d/math/type/ReadOnlyVector3;DDD)V

    sput-object v2, Lcom/ardor3d/util/geom/Debugger;->boundingBox:Lcom/ardor3d/scenegraph/shape/Box;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V

    new-instance v3, Lcom/ardor3d/renderer/state/WireframeState;

    invoke-direct {v3}, Lcom/ardor3d/renderer/state/WireframeState;-><init>()V

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    new-instance v3, Lcom/ardor3d/renderer/state/ZBufferState;

    invoke-direct {v3}, Lcom/ardor3d/renderer/state/ZBufferState;-><init>()V

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    invoke-virtual {v2, v0}, Lcom/ardor3d/scenegraph/Spatial;->updateWorldRenderStates(Z)V

    new-instance v2, Lcom/ardor3d/scenegraph/shape/OrientedBox;

    const-string v3, "bobox"

    invoke-direct {v2, v3}, Lcom/ardor3d/scenegraph/shape/OrientedBox;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/ardor3d/util/geom/Debugger;->boundingOB:Lcom/ardor3d/scenegraph/shape/OrientedBox;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V

    new-instance v3, Lcom/ardor3d/renderer/state/WireframeState;

    invoke-direct {v3}, Lcom/ardor3d/renderer/state/WireframeState;-><init>()V

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    new-instance v3, Lcom/ardor3d/renderer/state/ZBufferState;

    invoke-direct {v3}, Lcom/ardor3d/renderer/state/ZBufferState;-><init>()V

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    invoke-virtual {v2, v0}, Lcom/ardor3d/scenegraph/Spatial;->updateWorldRenderStates(Z)V

    new-instance v2, Lcom/ardor3d/scenegraph/Line;

    const-string v3, "normLine"

    invoke-direct {v2, v3}, Lcom/ardor3d/scenegraph/Line;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/ardor3d/util/geom/Debugger;->normalLines:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V

    new-instance v3, Lcom/ardor3d/renderer/state/ZBufferState;

    invoke-direct {v3}, Lcom/ardor3d/renderer/state/ZBufferState;-><init>()V

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/Line;->setLineWidth(F)V

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v3

    sget-object v4, Lcom/ardor3d/renderer/IndexMode;->Lines:Lcom/ardor3d/renderer/IndexMode;

    invoke-virtual {v3, v4}, Lcom/ardor3d/scenegraph/MeshData;->setIndexMode(Lcom/ardor3d/renderer/IndexMode;)V

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v3

    const/16 v4, 0x1f4

    invoke-static {v4}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v3

    invoke-static {v4}, Lcom/ardor3d/util/geom/BufferUtils;->createColorBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ardor3d/scenegraph/MeshData;->setColorBuffer(Ljava/nio/FloatBuffer;)V

    invoke-virtual {v2, v0}, Lcom/ardor3d/scenegraph/Spatial;->updateWorldRenderStates(Z)V

    new-instance v2, Lcom/ardor3d/math/Vector3;

    invoke-direct {v2}, Lcom/ardor3d/math/Vector3;-><init>()V

    sput-object v2, Lcom/ardor3d/util/geom/Debugger;->_normalVect:Lcom/ardor3d/math/Vector3;

    new-instance v2, Lcom/ardor3d/math/Vector3;

    invoke-direct {v2}, Lcom/ardor3d/math/Vector3;-><init>()V

    sput-object v2, Lcom/ardor3d/util/geom/Debugger;->_normalVect2:Lcom/ardor3d/math/Vector3;

    new-instance v2, Lcom/ardor3d/math/ColorRGBA;

    sget-object v3, Lcom/ardor3d/math/ColorRGBA;->RED:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v2, v3}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    sput-object v2, Lcom/ardor3d/util/geom/Debugger;->NORMAL_COLOR_BASE:Lcom/ardor3d/math/ColorRGBA;

    new-instance v2, Lcom/ardor3d/math/ColorRGBA;

    sget-object v3, Lcom/ardor3d/math/ColorRGBA;->PINK:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v2, v3}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    sput-object v2, Lcom/ardor3d/util/geom/Debugger;->NORMAL_COLOR_TIP:Lcom/ardor3d/math/ColorRGBA;

    new-instance v2, Lcom/ardor3d/math/ColorRGBA;

    sget-object v3, Lcom/ardor3d/math/ColorRGBA;->ORANGE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v2, v3}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    sput-object v2, Lcom/ardor3d/util/geom/Debugger;->TANGENT_COLOR_BASE:Lcom/ardor3d/math/ColorRGBA;

    new-instance v2, Lcom/ardor3d/math/ColorRGBA;

    sget-object v3, Lcom/ardor3d/math/ColorRGBA;->YELLOW:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v2, v3}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    sput-object v2, Lcom/ardor3d/util/geom/Debugger;->TANGENT_COLOR_TIP:Lcom/ardor3d/math/ColorRGBA;

    new-instance v2, Lcom/ardor3d/bounding/BoundingBox;

    invoke-direct {v2}, Lcom/ardor3d/bounding/BoundingBox;-><init>()V

    sput-object v2, Lcom/ardor3d/util/geom/Debugger;->measureBox:Lcom/ardor3d/bounding/BoundingBox;

    const-wide v2, 0x3fa999999999999aL    # 0.05

    sput-wide v2, Lcom/ardor3d/util/geom/Debugger;->AUTO_NORMAL_RATIO:D

    new-instance v2, Lcom/ardor3d/scenegraph/shape/AxisRods;

    const/4 v3, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-string v6, "debug_rods"

    invoke-direct {v2, v6, v3, v4, v5}, Lcom/ardor3d/scenegraph/shape/AxisRods;-><init>(Ljava/lang/String;ZD)V

    sput-object v2, Lcom/ardor3d/util/geom/Debugger;->rods:Lcom/ardor3d/scenegraph/shape/AxisRods;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V

    sput-boolean v0, Lcom/ardor3d/util/geom/Debugger;->axisInited:Z

    new-instance v0, Lcom/ardor3d/scenegraph/shape/Quad;

    const-wide/high16 v5, 0x4060000000000000L    # 128.0

    const-wide/high16 v7, 0x4060000000000000L    # 128.0

    const-string v4, ""

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/ardor3d/scenegraph/shape/Quad;-><init>(Ljava/lang/String;DD)V

    sput-object v0, Lcom/ardor3d/util/geom/Debugger;->bQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v1

    sget-object v2, Lcom/ardor3d/renderer/queue/RenderBucketType;->Ortho:Lcom/ardor3d/renderer/queue/RenderBucketType;

    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/scenegraph/hint/CullHint;->Never:Lcom/ardor3d/scenegraph/hint/CullHint;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setCullHint(Lcom/ardor3d/scenegraph/hint/CullHint;)V

    new-instance v0, Lcom/ardor3d/util/ExtendedCamera;

    invoke-direct {v0}, Lcom/ardor3d/util/ExtendedCamera;-><init>()V

    sput-object v0, Lcom/ardor3d/util/geom/Debugger;->extendedCamera:Lcom/ardor3d/util/ExtendedCamera;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawAxis(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/Renderer;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcom/ardor3d/util/geom/Debugger;->drawAxis(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/Renderer;ZZ)V

    return-void
.end method

.method public static drawAxis(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/Renderer;ZZ)V
    .locals 11

    .line 2
    sget-boolean v0, Lcom/ardor3d/util/geom/Debugger;->axisInited:Z

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/ardor3d/renderer/state/BlendState;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/BlendState;-><init>()V

    const/4 v4, 0x1

    .line 4
    invoke-virtual {v0, v4}, Lcom/ardor3d/renderer/state/BlendState;->setBlendEnabled(Z)V

    .line 5
    sget-object v5, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->SourceAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    invoke-virtual {v0, v5}, Lcom/ardor3d/renderer/state/BlendState;->setSourceFunction(Lcom/ardor3d/renderer/state/BlendState$SourceFunction;)V

    .line 6
    sget-object v5, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->OneMinusSourceAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    invoke-virtual {v0, v5}, Lcom/ardor3d/renderer/state/BlendState;->setDestinationFunction(Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;)V

    .line 7
    sget-object v5, Lcom/ardor3d/util/geom/Debugger;->rods:Lcom/ardor3d/scenegraph/shape/AxisRods;

    invoke-virtual {v5, v0}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    .line 8
    invoke-virtual {v5, v2, v3, v1}, Lcom/ardor3d/scenegraph/Spatial;->updateGeometricState(DZ)V

    .line 9
    sput-boolean v4, Lcom/ardor3d/util/geom/Debugger;->axisInited:Z

    :cond_0
    if-nez p3, :cond_1

    .line 10
    instance-of v0, p0, Lcom/ardor3d/scenegraph/Mesh;

    if-eqz v0, :cond_4

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_2

    .line 13
    sget-object v6, Lcom/ardor3d/util/geom/Debugger;->measureBox:Lcom/ardor3d/bounding/BoundingBox;

    invoke-virtual {v0}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ardor3d/bounding/BoundingVolume;->setCenter(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    .line 14
    invoke-virtual {v6, v2, v3}, Lcom/ardor3d/bounding/BoundingBox;->setXExtent(D)V

    .line 15
    invoke-virtual {v6, v2, v3}, Lcom/ardor3d/bounding/BoundingBox;->setYExtent(D)V

    .line 16
    invoke-virtual {v6, v2, v3}, Lcom/ardor3d/bounding/BoundingBox;->setZExtent(D)V

    .line 17
    invoke-virtual {v6, v0}, Lcom/ardor3d/bounding/BoundingBox;->mergeLocal(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    .line 18
    invoke-virtual {v6}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v7

    invoke-virtual {v6}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-virtual {v6}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v9

    add-double/2addr v7, v9

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    div-double/2addr v7, v9

    mul-double/2addr v4, v7

    .line 19
    :cond_2
    sget-object v0, Lcom/ardor3d/util/geom/Debugger;->rods:Lcom/ardor3d/scenegraph/shape/AxisRods;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/ardor3d/scenegraph/Spatial;->setTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    .line 20
    invoke-virtual {v0, v4, v5}, Lcom/ardor3d/scenegraph/Spatial;->setScale(D)V

    goto :goto_0

    .line 21
    :cond_3
    sget-object v0, Lcom/ardor3d/util/geom/Debugger;->rods:Lcom/ardor3d/scenegraph/shape/AxisRods;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ardor3d/scenegraph/Spatial;->setTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    .line 22
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldScale()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ardor3d/scenegraph/Spatial;->setScale(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    .line 23
    :goto_0
    sget-object v0, Lcom/ardor3d/util/geom/Debugger;->rods:Lcom/ardor3d/scenegraph/shape/AxisRods;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldRotation()Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ardor3d/scenegraph/Spatial;->setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    .line 24
    invoke-virtual {v0, v2, v3, v1}, Lcom/ardor3d/scenegraph/Spatial;->updateGeometricState(DZ)V

    .line 25
    invoke-virtual {v0, p1}, Lcom/ardor3d/scenegraph/Node;->draw(Lcom/ardor3d/renderer/Renderer;)V

    .line 26
    :cond_4
    instance-of v0, p0, Lcom/ardor3d/scenegraph/Node;

    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    .line 27
    check-cast p0, Lcom/ardor3d/scenegraph/Node;

    .line 28
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 29
    :cond_5
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_6

    .line 30
    invoke-virtual {p0, v1}, Lcom/ardor3d/scenegraph/Node;->getChild(I)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v2

    invoke-static {v2, p1, p2, p3}, Lcom/ardor3d/util/geom/Debugger;->drawAxis(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/Renderer;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public static drawBoundingBox(Lcom/ardor3d/bounding/BoundingBox;Lcom/ardor3d/renderer/Renderer;)V
    .locals 9

    sget-object v8, Lcom/ardor3d/util/geom/Debugger;->boundingBox:Lcom/ardor3d/scenegraph/shape/Box;

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v6

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lcom/ardor3d/scenegraph/shape/Box;->setData(Lcom/ardor3d/math/type/ReadOnlyVector3;DDD)V

    invoke-virtual {v8, p1}, Lcom/ardor3d/scenegraph/Mesh;->draw(Lcom/ardor3d/renderer/Renderer;)V

    return-void
.end method

.method public static drawBoundingSphere(Lcom/ardor3d/bounding/BoundingSphere;Lcom/ardor3d/renderer/Renderer;)V
    .locals 7

    sget-object v6, Lcom/ardor3d/util/geom/Debugger;->boundingSphere:Lcom/ardor3d/scenegraph/shape/Sphere;

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingSphere;->getRadius()D

    move-result-wide v4

    const/16 v2, 0xa

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/ardor3d/scenegraph/shape/Sphere;->setData(Lcom/ardor3d/math/type/ReadOnlyVector3;IID)V

    invoke-virtual {v6, p1}, Lcom/ardor3d/scenegraph/Mesh;->draw(Lcom/ardor3d/renderer/Renderer;)V

    return-void
.end method

.method public static drawBounds(Lcom/ardor3d/bounding/BoundingVolume;Lcom/ardor3d/renderer/Renderer;)V
    .locals 2

    .line 13
    sget-object v0, Lcom/ardor3d/util/geom/Debugger$1;->$SwitchMap$com$ardor3d$bounding$BoundingVolume$Type:[I

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingVolume;->getType()Lcom/ardor3d/bounding/BoundingVolume$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    check-cast p0, Lcom/ardor3d/bounding/OrientedBoundingBox;

    invoke-static {p0, p1}, Lcom/ardor3d/util/geom/Debugger;->drawOBB(Lcom/ardor3d/bounding/OrientedBoundingBox;Lcom/ardor3d/renderer/Renderer;)V

    goto :goto_0

    .line 15
    :cond_1
    check-cast p0, Lcom/ardor3d/bounding/BoundingSphere;

    invoke-static {p0, p1}, Lcom/ardor3d/util/geom/Debugger;->drawBoundingSphere(Lcom/ardor3d/bounding/BoundingSphere;Lcom/ardor3d/renderer/Renderer;)V

    goto :goto_0

    .line 16
    :cond_2
    check-cast p0, Lcom/ardor3d/bounding/BoundingBox;

    invoke-static {p0, p1}, Lcom/ardor3d/util/geom/Debugger;->drawBoundingBox(Lcom/ardor3d/bounding/BoundingBox;Lcom/ardor3d/renderer/Renderer;)V

    :goto_0
    return-void
.end method

.method public static drawBounds(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/Renderer;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/ardor3d/util/geom/Debugger;->drawBounds(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/Renderer;Z)V

    return-void
.end method

.method public static drawBounds(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/Renderer;Z)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getCullHint()Lcom/ardor3d/scenegraph/hint/CullHint;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/scenegraph/hint/CullHint;->Always:Lcom/ardor3d/scenegraph/hint/CullHint;

    if-eq v0, v1, :cond_2

    .line 3
    invoke-static {}, Lcom/ardor3d/renderer/Camera;->getCurrentCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/ardor3d/renderer/Camera;->getPlaneState()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/renderer/Camera;->contains(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    move-result-object v2

    sget-object v3, Lcom/ardor3d/renderer/Camera$FrustumIntersect;->Outside:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    if-eq v2, v3, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/ardor3d/util/geom/Debugger;->drawBounds(Lcom/ardor3d/bounding/BoundingVolume;Lcom/ardor3d/renderer/Renderer;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0, v1}, Lcom/ardor3d/renderer/Camera;->setPlaneState(I)V

    :cond_2
    if-eqz p2, :cond_3

    .line 8
    instance-of p2, p0, Lcom/ardor3d/scenegraph/Node;

    if-eqz p2, :cond_3

    .line 9
    check-cast p0, Lcom/ardor3d/scenegraph/Node;

    .line 10
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result p2

    if-eqz p2, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result p2

    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_3

    .line 12
    invoke-virtual {p0, p2}, Lcom/ardor3d/scenegraph/Node;->getChild(I)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/ardor3d/util/geom/Debugger;->drawBounds(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/Renderer;Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static drawBuffer(Lcom/ardor3d/image/TextureStoreFormat;ILcom/ardor3d/renderer/Renderer;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ardor3d/renderer/Camera;->getCurrentCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/ardor3d/renderer/Camera;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4019000000000000L    # 6.25

    div-double/2addr v0, v2

    invoke-static {p0, p1, p2, v0, v1}, Lcom/ardor3d/util/geom/Debugger;->drawBuffer(Lcom/ardor3d/image/TextureStoreFormat;ILcom/ardor3d/renderer/Renderer;D)V

    return-void
.end method

.method public static drawBuffer(Lcom/ardor3d/image/TextureStoreFormat;ILcom/ardor3d/renderer/Renderer;D)V
    .locals 23

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    .line 3
    invoke-static {}, Lcom/ardor3d/renderer/Camera;->getCurrentCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v4

    .line 4
    invoke-interface/range {p2 .. p2}, Lcom/ardor3d/renderer/Renderer;->flushGraphics()V

    .line 5
    invoke-virtual {v4}, Lcom/ardor3d/renderer/Camera;->getWidth()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v4}, Lcom/ardor3d/renderer/Camera;->getHeight()I

    move-result v7

    int-to-double v7, v7

    .line 6
    sget-object v9, Lcom/ardor3d/util/geom/Debugger;->bQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {v4}, Lcom/ardor3d/renderer/Camera;->getHeight()I

    move-result v10

    int-to-double v10, v10

    invoke-virtual {v4}, Lcom/ardor3d/renderer/Camera;->getWidth()I

    move-result v12

    int-to-double v12, v12

    div-double/2addr v10, v12

    mul-double/2addr v10, v2

    invoke-virtual {v9, v2, v3, v10, v11}, Lcom/ardor3d/scenegraph/shape/Quad;->resize(DD)V

    .line 7
    sget-object v10, Lcom/ardor3d/renderer/state/RenderState$StateType;->Texture:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v9, v10}, Lcom/ardor3d/scenegraph/Spatial;->getLocalRenderState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;

    move-result-object v10

    if-nez v10, :cond_0

    .line 8
    new-instance v10, Lcom/ardor3d/renderer/state/TextureState;

    invoke-direct {v10}, Lcom/ardor3d/renderer/state/TextureState;-><init>()V

    .line 9
    new-instance v11, Lcom/ardor3d/image/Texture2D;

    invoke-direct {v11}, Lcom/ardor3d/image/Texture2D;-><init>()V

    sput-object v11, Lcom/ardor3d/util/geom/Debugger;->bufTexture:Lcom/ardor3d/image/Texture2D;

    .line 10
    invoke-virtual {v10, v11}, Lcom/ardor3d/renderer/state/TextureState;->setTexture(Lcom/ardor3d/image/Texture;)V

    .line 11
    invoke-virtual {v9, v10}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    .line 12
    :cond_0
    invoke-virtual {v4}, Lcom/ardor3d/renderer/Camera;->getWidth()I

    move-result v9

    .line 13
    invoke-static {v9}, Lcom/ardor3d/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v10

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v10, :cond_2

    const/4 v10, 0x2

    :cond_1
    shl-int/2addr v10, v13

    if-lt v10, v9, :cond_1

    .line 14
    sget-object v14, Lcom/ardor3d/util/geom/Debugger;->bQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {v14}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v15

    invoke-virtual {v15, v12}, Lcom/ardor3d/scenegraph/MeshData;->getTextureBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v15

    int-to-float v9, v9

    int-to-float v11, v10

    div-float/2addr v9, v11

    const/4 v11, 0x4

    invoke-virtual {v15, v11, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 15
    invoke-virtual {v14}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v11

    invoke-virtual {v11, v12}, Lcom/ardor3d/scenegraph/MeshData;->getTextureBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v11

    const/4 v14, 0x6

    invoke-virtual {v11, v14, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move v9, v10

    .line 16
    :cond_2
    invoke-virtual {v4}, Lcom/ardor3d/renderer/Camera;->getHeight()I

    move-result v4

    .line 17
    invoke-static {v4}, Lcom/ardor3d/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v10, 0x2

    :cond_3
    shl-int/2addr v10, v13

    if-lt v10, v4, :cond_3

    .line 18
    sget-object v11, Lcom/ardor3d/util/geom/Debugger;->bQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {v11}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/ardor3d/scenegraph/MeshData;->getTextureBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v14

    int-to-float v4, v4

    int-to-float v15, v10

    div-float/2addr v4, v15

    invoke-virtual {v14, v13, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 19
    invoke-virtual {v11}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v11

    invoke-virtual {v11, v12}, Lcom/ardor3d/scenegraph/MeshData;->getTextureBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v11

    const/4 v12, 0x7

    invoke-virtual {v11, v12, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move v4, v10

    .line 20
    :cond_4
    sget-object v10, Lcom/ardor3d/util/geom/Debugger;->bufTexRend:Lcom/ardor3d/renderer/TextureRenderer;

    if-nez v10, :cond_5

    .line 21
    sget-object v10, Lcom/ardor3d/renderer/TextureRendererFactory;->INSTANCE:Lcom/ardor3d/renderer/TextureRendererFactory;

    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ardor3d/renderer/RenderContext;->getCapabilities()Lcom/ardor3d/renderer/ContextCapabilities;

    move-result-object v11

    invoke-virtual {v10, v9, v4, v1, v11}, Lcom/ardor3d/renderer/TextureRendererFactory;->createTextureRenderer(IILcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)Lcom/ardor3d/renderer/TextureRenderer;

    move-result-object v10

    sput-object v10, Lcom/ardor3d/util/geom/Debugger;->bufTexRend:Lcom/ardor3d/renderer/TextureRenderer;

    .line 22
    sget-object v11, Lcom/ardor3d/util/geom/Debugger;->bufTexture:Lcom/ardor3d/image/Texture2D;

    invoke-interface {v10, v11}, Lcom/ardor3d/renderer/TextureRenderer;->setupTexture(Lcom/ardor3d/image/Texture2D;)V

    .line 23
    :cond_5
    sget-object v15, Lcom/ardor3d/util/geom/Debugger;->bufTexRend:Lcom/ardor3d/renderer/TextureRenderer;

    sget-object v16, Lcom/ardor3d/util/geom/Debugger;->bufTexture:Lcom/ardor3d/image/Texture2D;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v19, v9

    move/from16 v20, v4

    invoke-interface/range {v15 .. v22}, Lcom/ardor3d/renderer/TextureRenderer;->copyToTexture(Lcom/ardor3d/image/Texture;IIIIII)V

    const-wide/high16 v9, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v9

    if-eqz v0, :cond_8

    if-eq v0, v13, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    move-wide v10, v2

    move-wide v12, v10

    goto :goto_1

    :cond_6
    sub-double/2addr v5, v2

    :goto_0
    move-wide v12, v2

    move-wide v10, v5

    goto :goto_1

    :cond_7
    sub-double/2addr v5, v2

    sub-double v2, v7, v2

    goto :goto_0

    :cond_8
    sub-double/2addr v7, v2

    move-wide v10, v2

    move-wide v12, v7

    .line 24
    :goto_1
    sget-object v0, Lcom/ardor3d/util/geom/Debugger;->bQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    const-wide/16 v14, 0x0

    move-object v9, v0

    invoke-virtual/range {v9 .. v15}, Lcom/ardor3d/scenegraph/Spatial;->setWorldTranslation(DDD)V

    const-wide/16 v2, 0x0

    .line 25
    invoke-virtual {v0, v2, v3}, Lcom/ardor3d/scenegraph/Spatial;->updateGeometricState(D)V

    .line 26
    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/Spatial;->onDraw(Lcom/ardor3d/renderer/Renderer;)V

    .line 27
    invoke-interface/range {p2 .. p2}, Lcom/ardor3d/renderer/Renderer;->flushGraphics()V

    return-void
.end method

.method public static drawCameraFrustum(Lcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/Camera;DDLcom/ardor3d/math/type/ReadOnlyColorRGBA;SZ)V
    .locals 14

    move-object/from16 v0, p6

    .line 2
    sget-object v1, Lcom/ardor3d/util/geom/Debugger;->lineFrustum:Lcom/ardor3d/scenegraph/Line;

    const/16 v2, 0x8

    const/16 v3, 0x18

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v3}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v8

    .line 4
    invoke-static {v3}, Lcom/ardor3d/util/geom/BufferUtils;->createColorBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 5
    new-instance v1, Lcom/ardor3d/scenegraph/Line;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v7, "Lines"

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/ardor3d/scenegraph/Line;-><init>(Ljava/lang/String;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/scenegraph/FloatBufferData;)V

    sput-object v1, Lcom/ardor3d/util/geom/Debugger;->lineFrustum:Lcom/ardor3d/scenegraph/Line;

    .line 6
    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v1

    sget-object v6, Lcom/ardor3d/renderer/IndexMode;->LineLoop:Lcom/ardor3d/renderer/IndexMode;

    sget-object v7, Lcom/ardor3d/renderer/IndexMode;->Lines:Lcom/ardor3d/renderer/IndexMode;

    filled-new-array {v6, v6, v7, v7}, [Lcom/ardor3d/renderer/IndexMode;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/ardor3d/scenegraph/MeshData;->setIndexModes([Lcom/ardor3d/renderer/IndexMode;)V

    .line 7
    sget-object v1, Lcom/ardor3d/util/geom/Debugger;->lineFrustum:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v1

    filled-new-array {v4, v4, v2, v2}, [I

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/ardor3d/scenegraph/MeshData;->setIndexLengths([I)V

    .line 8
    sget-object v1, Lcom/ardor3d/util/geom/Debugger;->lineFrustum:Lcom/ardor3d/scenegraph/Line;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v1, v6}, Lcom/ardor3d/scenegraph/Line;->setLineWidth(F)V

    .line 9
    sget-object v1, Lcom/ardor3d/util/geom/Debugger;->lineFrustum:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v1

    sget-object v6, Lcom/ardor3d/scenegraph/hint/LightCombineMode;->Off:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    invoke-virtual {v1, v6}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setLightCombineMode(Lcom/ardor3d/scenegraph/hint/LightCombineMode;)V

    .line 10
    new-instance v1, Lcom/ardor3d/renderer/state/BlendState;

    invoke-direct {v1}, Lcom/ardor3d/renderer/state/BlendState;-><init>()V

    .line 11
    invoke-virtual {v1, v5}, Lcom/ardor3d/renderer/state/RenderState;->setEnabled(Z)V

    .line 12
    invoke-virtual {v1, v5}, Lcom/ardor3d/renderer/state/BlendState;->setBlendEnabled(Z)V

    .line 13
    invoke-virtual {v1, v5}, Lcom/ardor3d/renderer/state/BlendState;->setTestEnabled(Z)V

    .line 14
    sget-object v6, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->SourceAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    invoke-virtual {v1, v6}, Lcom/ardor3d/renderer/state/BlendState;->setSourceFunction(Lcom/ardor3d/renderer/state/BlendState$SourceFunction;)V

    .line 15
    sget-object v6, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->OneMinusSourceAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    invoke-virtual {v1, v6}, Lcom/ardor3d/renderer/state/BlendState;->setDestinationFunction(Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;)V

    .line 16
    sget-object v6, Lcom/ardor3d/util/geom/Debugger;->lineFrustum:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v6, v1}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    .line 17
    new-instance v1, Lcom/ardor3d/renderer/state/ZBufferState;

    invoke-direct {v1}, Lcom/ardor3d/renderer/state/ZBufferState;-><init>()V

    .line 18
    sget-object v6, Lcom/ardor3d/util/geom/Debugger;->lineFrustum:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v6, v1}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    .line 19
    sget-object v1, Lcom/ardor3d/util/geom/Debugger;->lineFrustum:Lcom/ardor3d/scenegraph/Line;

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/ardor3d/scenegraph/Spatial;->updateGeometricState(D)V

    .line 20
    sget-object v1, Lcom/ardor3d/util/geom/Debugger;->lineFrustum:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v1

    sget-object v6, Lcom/ardor3d/renderer/queue/RenderBucketType;->Skip:Lcom/ardor3d/renderer/queue/RenderBucketType;

    invoke-virtual {v1, v6}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V

    .line 21
    :cond_0
    sget-object v1, Lcom/ardor3d/util/geom/Debugger;->lineFrustum:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v1, v0}, Lcom/ardor3d/scenegraph/Mesh;->setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    .line 22
    sget-object v1, Lcom/ardor3d/util/geom/Debugger;->lineFrustum:Lcom/ardor3d/scenegraph/Line;

    move/from16 v6, p7

    invoke-virtual {v1, v6}, Lcom/ardor3d/scenegraph/Line;->setStipplePattern(S)V

    .line 23
    sget-object v1, Lcom/ardor3d/util/geom/Debugger;->extendedCamera:Lcom/ardor3d/util/ExtendedCamera;

    move-object v6, p1

    invoke-virtual {v1, p1}, Lcom/ardor3d/renderer/Camera;->set(Lcom/ardor3d/renderer/Camera;)V

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    .line 24
    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/ardor3d/util/ExtendedCamera;->calculateFrustum(DD)V

    .line 25
    sget-object v1, Lcom/ardor3d/util/geom/Debugger;->lineFrustum:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getColorBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 26
    invoke-static {v0, v1, v7}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    if-eqz p8, :cond_2

    const v7, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    move v9, v8

    :goto_2
    if-ge v9, v3, :cond_3

    mul-int/lit8 v10, v9, 0x4

    .line 27
    invoke-virtual {v1, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 28
    invoke-interface/range {p6 .. p6}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v10

    invoke-virtual {v1, v10}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 29
    invoke-interface/range {p6 .. p6}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v10

    invoke-virtual {v1, v10}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 30
    invoke-interface/range {p6 .. p6}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v10

    invoke-virtual {v1, v10}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 31
    invoke-virtual {v1, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 32
    :cond_3
    sget-object v0, Lcom/ardor3d/util/geom/Debugger;->extendedCamera:Lcom/ardor3d/util/ExtendedCamera;

    invoke-virtual {v0}, Lcom/ardor3d/util/ExtendedCamera;->getCorners()[Lcom/ardor3d/math/Vector3;

    move-result-object v1

    .line 33
    sget-object v3, Lcom/ardor3d/util/geom/Debugger;->lineFrustum:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 34
    aget-object v7, v1, v6

    invoke-static {v7, v3, v6}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    .line 35
    aget-object v7, v1, v5

    invoke-static {v7, v3, v5}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    const/4 v7, 0x2

    .line 36
    aget-object v9, v1, v7

    invoke-static {v9, v3, v7}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    const/4 v9, 0x3

    .line 37
    aget-object v10, v1, v9

    invoke-static {v10, v3, v9}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    .line 38
    aget-object v10, v1, v4

    invoke-static {v10, v3, v4}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    const/4 v10, 0x5

    .line 39
    aget-object v11, v1, v10

    invoke-static {v11, v3, v10}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    const/4 v11, 0x6

    .line 40
    aget-object v12, v1, v11

    invoke-static {v12, v3, v11}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    const/4 v12, 0x7

    .line 41
    aget-object v13, v1, v12

    invoke-static {v13, v3, v12}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    .line 42
    aget-object v13, v1, v6

    invoke-static {v13, v3, v2}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    .line 43
    aget-object v2, v1, v4

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    .line 44
    aget-object v2, v1, v5

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    .line 45
    aget-object v2, v1, v10

    const/16 v4, 0xb

    invoke-static {v2, v3, v4}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    .line 46
    aget-object v2, v1, v7

    const/16 v4, 0xc

    invoke-static {v2, v3, v4}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    .line 47
    aget-object v2, v1, v11

    const/16 v4, 0xd

    invoke-static {v2, v3, v4}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    .line 48
    aget-object v2, v1, v9

    const/16 v4, 0xe

    invoke-static {v2, v3, v4}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    .line 49
    aget-object v2, v1, v12

    const/16 v4, 0xf

    invoke-static {v2, v3, v4}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    .line 50
    invoke-virtual {v0}, Lcom/ardor3d/renderer/Camera;->getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    invoke-static {v2, v3, v8}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    .line 51
    aget-object v2, v1, v6

    const/16 v4, 0x11

    invoke-static {v2, v3, v4}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    .line 52
    invoke-virtual {v0}, Lcom/ardor3d/renderer/Camera;->getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    const/16 v4, 0x12

    invoke-static {v2, v3, v4}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    .line 53
    aget-object v2, v1, v5

    const/16 v4, 0x13

    invoke-static {v2, v3, v4}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    .line 54
    invoke-virtual {v0}, Lcom/ardor3d/renderer/Camera;->getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    const/16 v4, 0x14

    invoke-static {v2, v3, v4}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    .line 55
    aget-object v2, v1, v7

    const/16 v4, 0x15

    invoke-static {v2, v3, v4}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    .line 56
    invoke-virtual {v0}, Lcom/ardor3d/renderer/Camera;->getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    const/16 v2, 0x16

    invoke-static {v0, v3, v2}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    .line 57
    aget-object v0, v1, v9

    const/16 v1, 0x17

    invoke-static {v0, v3, v1}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    .line 58
    sget-object v0, Lcom/ardor3d/util/geom/Debugger;->lineFrustum:Lcom/ardor3d/scenegraph/Line;

    move-object v1, p0

    invoke-virtual {v0, p0}, Lcom/ardor3d/scenegraph/Mesh;->draw(Lcom/ardor3d/renderer/Renderer;)V

    return-void
.end method

.method public static drawCameraFrustum(Lcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/Camera;Lcom/ardor3d/math/type/ReadOnlyColorRGBA;SZ)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getFrustumNear()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getFrustumFar()D

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/ardor3d/util/geom/Debugger;->drawCameraFrustum(Lcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/Camera;DDLcom/ardor3d/math/type/ReadOnlyColorRGBA;SZ)V

    return-void
.end method

.method public static drawNormals(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/Renderer;)V
    .locals 3

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    const/4 v2, 0x1

    .line 1
    invoke-static {p0, p1, v0, v1, v2}, Lcom/ardor3d/util/geom/Debugger;->drawNormals(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/Renderer;DZ)V

    return-void
.end method

.method public static drawNormals(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/Renderer;DZ)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/ardor3d/renderer/Camera;->getCurrentCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Lcom/ardor3d/renderer/Camera;->getPlaneState()I

    move-result v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/ardor3d/renderer/Camera;->contains(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    move-result-object v6

    sget-object v7, Lcom/ardor3d/renderer/Camera$FrustumIntersect;->Outside:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    if-ne v6, v7, :cond_1

    .line 5
    invoke-virtual {v4, v5}, Lcom/ardor3d/renderer/Camera;->setPlaneState(I)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {v4, v5}, Lcom/ardor3d/renderer/Camera;->setPlaneState(I)V

    .line 7
    instance-of v4, v0, Lcom/ardor3d/scenegraph/Mesh;

    if-eqz v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getCullHint()Lcom/ardor3d/scenegraph/hint/CullHint;

    move-result-object v4

    sget-object v6, Lcom/ardor3d/scenegraph/hint/CullHint;->Always:Lcom/ardor3d/scenegraph/hint/CullHint;

    if-eq v4, v6, :cond_b

    .line 8
    move-object v4, v0

    check-cast v4, Lcom/ardor3d/scenegraph/Mesh;

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v6, v2, v6

    if-nez v6, :cond_4

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-eqz v6, :cond_2

    .line 10
    sget-object v9, Lcom/ardor3d/util/geom/Debugger;->measureBox:Lcom/ardor3d/bounding/BoundingBox;

    invoke-virtual {v6}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ardor3d/bounding/BoundingVolume;->setCenter(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-wide/16 v10, 0x0

    .line 11
    invoke-virtual {v9, v10, v11}, Lcom/ardor3d/bounding/BoundingBox;->setXExtent(D)V

    .line 12
    invoke-virtual {v9, v10, v11}, Lcom/ardor3d/bounding/BoundingBox;->setYExtent(D)V

    .line 13
    invoke-virtual {v9, v10, v11}, Lcom/ardor3d/bounding/BoundingBox;->setZExtent(D)V

    .line 14
    invoke-virtual {v9, v6}, Lcom/ardor3d/bounding/BoundingBox;->mergeLocal(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    .line 15
    sget-wide v10, Lcom/ardor3d/util/geom/Debugger;->AUTO_NORMAL_RATIO:D

    invoke-virtual {v9}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v12

    invoke-virtual {v9}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-virtual {v9}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v14

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    div-double/2addr v12, v14

    mul-double/2addr v10, v12

    goto :goto_0

    :cond_2
    move-wide v10, v7

    .line 16
    :goto_0
    invoke-static {v10, v11}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move-wide v7, v10

    goto :goto_1

    :cond_4
    move-wide v7, v2

    .line 17
    :cond_5
    :goto_1
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 18
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    if-eqz v6, :cond_b

    if-eqz v9, :cond_b

    .line 19
    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    move-result v10

    invoke-virtual {v9}, Ljava/nio/Buffer;->limit()I

    move-result v11

    if-ne v10, v11, :cond_b

    .line 20
    sget-object v10, Lcom/ardor3d/util/geom/Debugger;->normalLines:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 21
    invoke-virtual {v11}, Ljava/nio/Buffer;->capacity()I

    move-result v12

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v13

    mul-int/lit8 v13, v13, 0x6

    const/4 v14, 0x0

    if-ge v12, v13, :cond_6

    .line 22
    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v11

    invoke-virtual {v11, v14}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    .line 23
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    invoke-static {v11}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 24
    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    goto :goto_2

    .line 25
    :cond_6
    invoke-virtual {v11}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 26
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v12

    mul-int/lit8 v12, v12, 0x6

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 27
    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    .line 28
    :goto_2
    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ardor3d/scenegraph/MeshData;->getColorBuffer()Ljava/nio/FloatBuffer;

    move-result-object v12

    .line 29
    invoke-virtual {v12}, Ljava/nio/Buffer;->capacity()I

    move-result v13

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v15

    mul-int/lit8 v15, v15, 0x8

    if-ge v13, v15, :cond_7

    .line 30
    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v12

    invoke-virtual {v12, v14}, Lcom/ardor3d/scenegraph/MeshData;->setColorBuffer(Ljava/nio/FloatBuffer;)V

    .line 31
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v12

    mul-int/lit8 v12, v12, 0x2

    invoke-static {v12}, Lcom/ardor3d/util/geom/BufferUtils;->createColorBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v12

    .line 32
    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/ardor3d/scenegraph/MeshData;->setColorBuffer(Ljava/nio/FloatBuffer;)V

    goto :goto_3

    .line 33
    :cond_7
    invoke-virtual {v12}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 34
    :goto_3
    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 35
    invoke-virtual {v13}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBufferCapacity()I

    move-result v15

    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v5

    if-ge v15, v5, :cond_8

    goto :goto_4

    .line 36
    :cond_8
    invoke-virtual {v13}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 37
    invoke-virtual {v13}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v5

    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_5

    .line 38
    :cond_9
    :goto_4
    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/ardor3d/scenegraph/MeshData;->setIndices(Lcom/ardor3d/scenegraph/IndexBufferData;)V

    .line 39
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-static {v5, v13}, Lcom/ardor3d/util/geom/BufferUtils;->createIndexBufferData(II)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v13

    .line 40
    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/ardor3d/scenegraph/MeshData;->setIndices(Lcom/ardor3d/scenegraph/IndexBufferData;)V

    .line 41
    :goto_5
    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 42
    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 43
    invoke-virtual {v11}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 44
    invoke-virtual {v13}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    const/4 v5, 0x0

    .line 45
    :goto_6
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v10

    if-ge v5, v10, :cond_a

    .line 46
    sget-object v10, Lcom/ardor3d/util/geom/Debugger;->_normalVect:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->get()F

    move-result v14

    float-to-double v14, v14

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    float-to-double v0, v0

    move-object/from16 v17, v10

    move-wide/from16 v18, v14

    move-wide/from16 v20, v2

    move-wide/from16 v22, v0

    invoke-virtual/range {v17 .. v23}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    .line 47
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Spatial;->getWorldTransform()Lcom/ardor3d/math/type/ReadOnlyTransform;

    move-result-object v0

    invoke-interface {v0, v10}, Lcom/ardor3d/math/type/ReadOnlyTransform;->applyForward(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    .line 48
    invoke-virtual {v10}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v0

    invoke-virtual {v11, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 49
    invoke-virtual {v10}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v0

    invoke-virtual {v11, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 50
    invoke-virtual {v10}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v0

    invoke-virtual {v11, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 51
    sget-object v0, Lcom/ardor3d/util/geom/Debugger;->NORMAL_COLOR_BASE:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v1

    invoke-virtual {v12, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 52
    invoke-virtual {v0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v1

    invoke-virtual {v12, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 53
    invoke-virtual {v0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v1

    invoke-virtual {v12, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 54
    invoke-virtual {v0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v0

    invoke-virtual {v12, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    mul-int/lit8 v0, v5, 0x2

    .line 55
    invoke-virtual {v13, v0}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    .line 56
    sget-object v1, Lcom/ardor3d/util/geom/Debugger;->_normalVect2:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->get()F

    move-result v14

    float-to-double v14, v14

    move-object/from16 v16, v9

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->get()F

    move-result v9

    move/from16 v25, v5

    move-object/from16 v24, v6

    float-to-double v5, v9

    move-object/from16 v17, v1

    move-wide/from16 v18, v2

    move-wide/from16 v20, v14

    move-wide/from16 v22, v5

    invoke-virtual/range {v17 .. v23}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    .line 57
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Spatial;->getWorldTransform()Lcom/ardor3d/math/type/ReadOnlyTransform;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->applyForwardVector(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    .line 58
    invoke-virtual {v10, v1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 59
    invoke-virtual {v10}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v11, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 60
    invoke-virtual {v10}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v11, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 61
    invoke-virtual {v10}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v11, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 62
    sget-object v1, Lcom/ardor3d/util/geom/Debugger;->NORMAL_COLOR_TIP:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v1}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v2

    invoke-virtual {v12, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 63
    invoke-virtual {v1}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v2

    invoke-virtual {v12, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 64
    invoke-virtual {v1}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v2

    invoke-virtual {v12, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 65
    invoke-virtual {v1}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v1

    invoke-virtual {v12, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 66
    invoke-virtual {v13, v0}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    add-int/lit8 v5, v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, v16

    move-object/from16 v6, v24

    goto/16 :goto_6

    .line 67
    :cond_a
    sget-object v0, Lcom/ardor3d/util/geom/Debugger;->normalLines:Lcom/ardor3d/scenegraph/Line;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/Spatial;->onDraw(Lcom/ardor3d/renderer/Renderer;)V

    :cond_b
    if-eqz p4, :cond_c

    move-object/from16 v0, p0

    .line 68
    instance-of v2, v0, Lcom/ardor3d/scenegraph/Node;

    if-eqz v2, :cond_c

    .line 69
    check-cast v0, Lcom/ardor3d/scenegraph/Node;

    .line 70
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v2

    if-eqz v2, :cond_c

    .line 71
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v2

    :goto_7
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_c

    .line 72
    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/Node;->getChild(I)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v3

    move-wide/from16 v4, p2

    const/4 v6, 0x1

    invoke-static {v3, v1, v4, v5, v6}, Lcom/ardor3d/util/geom/Debugger;->drawNormals(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/Renderer;DZ)V

    goto :goto_7

    :cond_c
    return-void
.end method

.method public static drawOBB(Lcom/ardor3d/bounding/OrientedBoundingBox;Lcom/ardor3d/renderer/Renderer;)V
    .locals 3

    sget-object v0, Lcom/ardor3d/util/geom/Debugger;->boundingOB:Lcom/ardor3d/scenegraph/shape/OrientedBox;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/shape/OrientedBox;->getCenter()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/shape/OrientedBox;->getxAxis()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ardor3d/bounding/OrientedBoundingBox;->getXAxis()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/shape/OrientedBox;->getYAxis()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ardor3d/bounding/OrientedBoundingBox;->getYAxis()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/shape/OrientedBox;->getZAxis()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ardor3d/bounding/OrientedBoundingBox;->getZAxis()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/shape/OrientedBox;->getExtent()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ardor3d/bounding/OrientedBoundingBox;->getExtent()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/shape/OrientedBox;->computeInformation()V

    invoke-virtual {v0, p1}, Lcom/ardor3d/scenegraph/Mesh;->draw(Lcom/ardor3d/renderer/Renderer;)V

    return-void
.end method

.method public static drawTangents(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/Renderer;)V
    .locals 3

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    const/4 v2, 0x1

    .line 1
    invoke-static {p0, p1, v0, v1, v2}, Lcom/ardor3d/util/geom/Debugger;->drawTangents(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/Renderer;DZ)V

    return-void
.end method

.method public static drawTangents(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/Renderer;DZ)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/ardor3d/renderer/Camera;->getCurrentCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Lcom/ardor3d/renderer/Camera;->getPlaneState()I

    move-result v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/ardor3d/renderer/Camera;->contains(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    move-result-object v6

    sget-object v7, Lcom/ardor3d/renderer/Camera$FrustumIntersect;->Outside:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    if-ne v6, v7, :cond_1

    .line 5
    invoke-virtual {v4, v5}, Lcom/ardor3d/renderer/Camera;->setPlaneState(I)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {v4, v5}, Lcom/ardor3d/renderer/Camera;->setPlaneState(I)V

    .line 7
    instance-of v4, v0, Lcom/ardor3d/scenegraph/Mesh;

    if-eqz v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getCullHint()Lcom/ardor3d/scenegraph/hint/CullHint;

    move-result-object v4

    sget-object v6, Lcom/ardor3d/scenegraph/hint/CullHint;->Always:Lcom/ardor3d/scenegraph/hint/CullHint;

    if-eq v4, v6, :cond_9

    .line 8
    move-object v4, v0

    check-cast v4, Lcom/ardor3d/scenegraph/Mesh;

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v6, v2, v6

    if-nez v6, :cond_3

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 10
    sget-object v7, Lcom/ardor3d/util/geom/Debugger;->measureBox:Lcom/ardor3d/bounding/BoundingBox;

    invoke-virtual {v6}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ardor3d/bounding/BoundingVolume;->setCenter(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-wide/16 v8, 0x0

    .line 11
    invoke-virtual {v7, v8, v9}, Lcom/ardor3d/bounding/BoundingBox;->setXExtent(D)V

    .line 12
    invoke-virtual {v7, v8, v9}, Lcom/ardor3d/bounding/BoundingBox;->setYExtent(D)V

    .line 13
    invoke-virtual {v7, v8, v9}, Lcom/ardor3d/bounding/BoundingBox;->setZExtent(D)V

    .line 14
    invoke-virtual {v7, v6}, Lcom/ardor3d/bounding/BoundingBox;->mergeLocal(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    .line 15
    sget-wide v8, Lcom/ardor3d/util/geom/Debugger;->AUTO_NORMAL_RATIO:D

    invoke-virtual {v7}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v10

    invoke-virtual {v7}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-virtual {v7}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v6

    add-double/2addr v10, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v10, v6

    mul-double/2addr v8, v10

    goto :goto_0

    :cond_2
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_3
    move-wide v8, v2

    .line 16
    :goto_0
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/MeshData;->getTangentBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 17
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    .line 18
    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    move-result v10

    invoke-virtual {v7}, Ljava/nio/Buffer;->limit()I

    move-result v11

    if-ne v10, v11, :cond_9

    .line 19
    sget-object v10, Lcom/ardor3d/util/geom/Debugger;->normalLines:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 20
    invoke-virtual {v11}, Ljava/nio/Buffer;->capacity()I

    move-result v12

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v13

    mul-int/lit8 v13, v13, 0x6

    const/4 v14, 0x0

    if-ge v12, v13, :cond_4

    .line 21
    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v11

    invoke-virtual {v11, v14}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    .line 22
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    invoke-static {v11}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 23
    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    goto :goto_1

    .line 24
    :cond_4
    invoke-virtual {v11}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 25
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v12

    mul-int/lit8 v12, v12, 0x6

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 26
    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    .line 27
    :goto_1
    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ardor3d/scenegraph/MeshData;->getColorBuffer()Ljava/nio/FloatBuffer;

    move-result-object v12

    .line 28
    invoke-virtual {v12}, Ljava/nio/Buffer;->capacity()I

    move-result v13

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v15

    mul-int/lit8 v15, v15, 0x8

    if-ge v13, v15, :cond_5

    .line 29
    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v12

    invoke-virtual {v12, v14}, Lcom/ardor3d/scenegraph/MeshData;->setColorBuffer(Ljava/nio/FloatBuffer;)V

    .line 30
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v12

    mul-int/lit8 v12, v12, 0x2

    invoke-static {v12}, Lcom/ardor3d/util/geom/BufferUtils;->createColorBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v12

    .line 31
    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/ardor3d/scenegraph/MeshData;->setColorBuffer(Ljava/nio/FloatBuffer;)V

    goto :goto_2

    .line 32
    :cond_5
    invoke-virtual {v12}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 33
    :goto_2
    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 34
    invoke-virtual {v13}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBufferCapacity()I

    move-result v15

    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v5

    if-ge v15, v5, :cond_6

    goto :goto_3

    .line 35
    :cond_6
    invoke-virtual {v13}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 36
    invoke-virtual {v13}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v5

    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_4

    .line 37
    :cond_7
    :goto_3
    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/ardor3d/scenegraph/MeshData;->setIndices(Lcom/ardor3d/scenegraph/IndexBufferData;)V

    .line 38
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-static {v5, v13}, Lcom/ardor3d/util/geom/BufferUtils;->createIndexBufferData(II)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v13

    .line 39
    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/ardor3d/scenegraph/MeshData;->setIndices(Lcom/ardor3d/scenegraph/IndexBufferData;)V

    .line 40
    :goto_4
    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 41
    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 42
    invoke-virtual {v11}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 43
    invoke-virtual {v13}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    const/4 v5, 0x0

    .line 44
    :goto_5
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v10

    if-ge v5, v10, :cond_8

    .line 45
    sget-object v10, Lcom/ardor3d/util/geom/Debugger;->_normalVect:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->get()F

    move-result v14

    float-to-double v14, v14

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    float-to-double v0, v0

    move-object/from16 v17, v10

    move-wide/from16 v18, v14

    move-wide/from16 v20, v2

    move-wide/from16 v22, v0

    invoke-virtual/range {v17 .. v23}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    .line 46
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Spatial;->getWorldScale()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/ardor3d/math/Vector3;->multiplyLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 47
    invoke-virtual {v10}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v0

    invoke-virtual {v11, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 48
    invoke-virtual {v10}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v0

    invoke-virtual {v11, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 49
    invoke-virtual {v10}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v0

    invoke-virtual {v11, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 50
    sget-object v0, Lcom/ardor3d/util/geom/Debugger;->TANGENT_COLOR_BASE:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v1

    invoke-virtual {v12, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 51
    invoke-virtual {v0}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v1

    invoke-virtual {v12, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 52
    invoke-virtual {v0}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v1

    invoke-virtual {v12, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 53
    invoke-virtual {v0}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v0

    invoke-virtual {v12, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    mul-int/lit8 v0, v5, 0x2

    .line 54
    invoke-virtual {v13, v0}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    .line 55
    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->get()F

    move-result v1

    float-to-double v1, v1

    mul-double v18, v1, v8

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->get()F

    move-result v1

    float-to-double v1, v1

    mul-double v20, v1, v8

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->get()F

    move-result v1

    float-to-double v1, v1

    mul-double v22, v1, v8

    invoke-virtual/range {v17 .. v23}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    .line 56
    invoke-virtual {v10}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v1

    invoke-virtual {v11, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 57
    invoke-virtual {v10}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v1

    invoke-virtual {v11, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 58
    invoke-virtual {v10}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v1

    invoke-virtual {v11, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 59
    sget-object v1, Lcom/ardor3d/util/geom/Debugger;->TANGENT_COLOR_TIP:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v1}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v2

    invoke-virtual {v12, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 60
    invoke-virtual {v1}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v2

    invoke-virtual {v12, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 61
    invoke-virtual {v1}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v2

    invoke-virtual {v12, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 62
    invoke-virtual {v1}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v1

    invoke-virtual {v12, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 63
    invoke-virtual {v13, v0}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    goto/16 :goto_5

    .line 64
    :cond_8
    sget-object v0, Lcom/ardor3d/util/geom/Debugger;->normalLines:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Spatial;->getWorldTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/Spatial;->setWorldTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    .line 65
    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Spatial;->getWorldRotation()Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/Spatial;->setWorldRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    move-object/from16 v1, p1

    .line 66
    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/Spatial;->onDraw(Lcom/ardor3d/renderer/Renderer;)V

    :cond_9
    if-eqz p4, :cond_a

    move-object/from16 v0, p0

    .line 67
    instance-of v2, v0, Lcom/ardor3d/scenegraph/Node;

    if-eqz v2, :cond_a

    .line 68
    check-cast v0, Lcom/ardor3d/scenegraph/Node;

    .line 69
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v2

    if-eqz v2, :cond_a

    .line 70
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v2

    :goto_6
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_a

    .line 71
    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/Node;->getChild(I)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v3

    move-wide/from16 v4, p2

    const/4 v6, 0x1

    invoke-static {v3, v1, v4, v5, v6}, Lcom/ardor3d/util/geom/Debugger;->drawTangents(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/Renderer;DZ)V

    goto :goto_6

    :cond_a
    return-void
.end method

.method public static setBoundsColor(Lcom/ardor3d/math/ColorRGBA;)V
    .locals 1

    sget-object v0, Lcom/ardor3d/util/geom/Debugger;->boundingBox:Lcom/ardor3d/scenegraph/shape/Box;

    invoke-virtual {v0, p0}, Lcom/ardor3d/scenegraph/Mesh;->setSolidColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    sget-object v0, Lcom/ardor3d/util/geom/Debugger;->boundingOB:Lcom/ardor3d/scenegraph/shape/OrientedBox;

    invoke-virtual {v0, p0}, Lcom/ardor3d/scenegraph/Mesh;->setSolidColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    sget-object v0, Lcom/ardor3d/util/geom/Debugger;->boundingSphere:Lcom/ardor3d/scenegraph/shape/Sphere;

    invoke-virtual {v0, p0}, Lcom/ardor3d/scenegraph/Mesh;->setSolidColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    return-void
.end method
