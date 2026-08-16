.class public Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;
.super Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/stat/graph/TableLinkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;,
        Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;
    }
.end annotation


# static fields
.field public static final Horizontal:Lcom/ardor3d/util/stat/StatType;

.field public static final Vertical:Lcom/ardor3d/util/stat/StatType;

.field private static final majorHBar:I = 0x14

.field private static final majorVBar:I = 0xa


# instance fields
.field private _defBlendState:Lcom/ardor3d/renderer/state/BlendState;

.field private final _entries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ardor3d/util/stat/StatType;",
            "Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected _eventCount:I

.field protected _graphRoot:Lcom/ardor3d/scenegraph/Node;

.field protected _horizontals:Lcom/ardor3d/scenegraph/Line;

.field private _off:F

.field protected _startMarker:F

.field protected _threshold:I

.field private _vSpan:F

.field protected _verticals:Lcom/ardor3d/scenegraph/Line;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ardor3d/util/stat/StatType;

    const-string v1, "_timedGrapher_vert"

    invoke-direct {v0, v1}, Lcom/ardor3d/util/stat/StatType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->Vertical:Lcom/ardor3d/util/stat/StatType;

    new-instance v0, Lcom/ardor3d/util/stat/StatType;

    const-string v1, "_timedGrapher_horiz"

    invoke-direct {v0, v1}, Lcom/ardor3d/util/stat/StatType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->Horizontal:Lcom/ardor3d/util/stat/StatType;

    return-void
.end method

.method public constructor <init>(IILcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;-><init>(IILcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)V

    new-instance p1, Lcom/ardor3d/scenegraph/Node;

    const-string p2, "root"

    invoke-direct {p1, p2}, Lcom/ardor3d/scenegraph/Node;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    const/4 p1, 0x0

    iput p1, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_eventCount:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_threshold:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_startMarker:F

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_entries:Ljava/util/HashMap;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_defBlendState:Lcom/ardor3d/renderer/state/BlendState;

    invoke-direct {p0}, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->createHLines()V

    new-instance p2, Lcom/ardor3d/renderer/state/BlendState;

    invoke-direct {p2}, Lcom/ardor3d/renderer/state/BlendState;-><init>()V

    iput-object p2, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_defBlendState:Lcom/ardor3d/renderer/state/BlendState;

    invoke-virtual {p2, p1}, Lcom/ardor3d/renderer/state/RenderState;->setEnabled(Z)V

    iget-object p2, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_defBlendState:Lcom/ardor3d/renderer/state/BlendState;

    invoke-virtual {p2, p1}, Lcom/ardor3d/renderer/state/BlendState;->setBlendEnabled(Z)V

    iget-object p1, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_defBlendState:Lcom/ardor3d/renderer/state/BlendState;

    sget-object p2, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->SourceAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/state/BlendState;->setSourceFunction(Lcom/ardor3d/renderer/state/BlendState$SourceFunction;)V

    iget-object p1, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_defBlendState:Lcom/ardor3d/renderer/state/BlendState;

    sget-object p2, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->OneMinusSourceAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/state/BlendState;->setDestinationFunction(Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;)V

    iget-object p1, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    iget-object p2, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_defBlendState:Lcom/ardor3d/renderer/state/BlendState;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    iget-object p1, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p1

    sget-object p2, Lcom/ardor3d/scenegraph/hint/CullHint;->Never:Lcom/ardor3d/scenegraph/hint/CullHint;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setCullHint(Lcom/ardor3d/scenegraph/hint/CullHint;)V

    return-void
.end method

.method private calcVSpan()F
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {v0}, Lcom/ardor3d/renderer/TextureRenderer;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getMaxSamples()I

    move-result v1

    div-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private createHLines()V
    .locals 9

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {v0}, Lcom/ardor3d/renderer/TextureRenderer;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {v1}, Lcom/ardor3d/renderer/TextureRenderer;->getHeight()I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v5

    mul-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    if-ge v2, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    int-to-float v3, v3

    invoke-virtual {v6, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    int-to-float v6, v0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x6

    add-float/2addr v3, v1

    float-to-int v3, v3

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ardor3d/scenegraph/Line;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v4, "horiz"

    const/4 v6, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/ardor3d/scenegraph/Line;-><init>(Ljava/lang/String;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/scenegraph/FloatBufferData;)V

    iput-object v0, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_horizontals:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/renderer/IndexMode;->Lines:Lcom/ardor3d/renderer/IndexMode;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->setIndexMode(Lcom/ardor3d/renderer/IndexMode;)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_horizontals:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/renderer/queue/RenderBucketType;->Ortho:Lcom/ardor3d/renderer/queue/RenderBucketType;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_horizontals:Lcom/ardor3d/scenegraph/Line;

    sget-object v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->Horizontal:Lcom/ardor3d/util/stat/StatType;

    sget-object v2, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->Color:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ardor3d/math/ColorRGBA;

    sget-object v4, Lcom/ardor3d/math/ColorRGBA;->BLUE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v3, v4}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getColorConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Lcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/Mesh;->setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_horizontals:Lcom/ardor3d/scenegraph/Line;

    sget-object v2, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->Width:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getIntConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/Line;->setLineWidth(F)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_horizontals:Lcom/ardor3d/scenegraph/Line;

    sget-object v2, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->Stipple:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/16 v4, -0x100

    invoke-virtual {p0, v1, v2, v4}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getShortConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;S)S

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/Line;->setStipplePattern(S)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_horizontals:Lcom/ardor3d/scenegraph/Line;

    sget-object v2, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->Antialias:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getBooleanConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/Line;->setAntialiased(Z)V

    return-void
.end method

.method private createVLines()V
    .locals 10

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {v0}, Lcom/ardor3d/renderer/TextureRenderer;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {v1}, Lcom/ardor3d/renderer/TextureRenderer;->getHeight()I

    move-result v1

    int-to-float v0, v0

    iget v2, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_vSpan:F

    div-float v2, v0, v2

    float-to-int v2, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v6

    iget v2, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_vSpan:F

    :goto_0
    iget v4, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_vSpan:F

    add-float/2addr v4, v0

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_0

    invoke-virtual {v6, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    int-to-float v7, v1

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_vSpan:F

    add-float/2addr v2, v4

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ardor3d/scenegraph/Line;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v5, "vert"

    const/4 v7, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/ardor3d/scenegraph/Line;-><init>(Ljava/lang/String;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/scenegraph/FloatBufferData;)V

    iput-object v0, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_verticals:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/renderer/IndexMode;->Lines:Lcom/ardor3d/renderer/IndexMode;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->setIndexMode(Lcom/ardor3d/renderer/IndexMode;)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_verticals:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/renderer/queue/RenderBucketType;->Ortho:Lcom/ardor3d/renderer/queue/RenderBucketType;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_verticals:Lcom/ardor3d/scenegraph/Line;

    sget-object v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->Vertical:Lcom/ardor3d/util/stat/StatType;

    sget-object v2, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->Color:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/ardor3d/math/ColorRGBA;

    sget-object v5, Lcom/ardor3d/math/ColorRGBA;->RED:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v4, v5}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    invoke-virtual {p0, v1, v2, v4}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getColorConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Lcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/Mesh;->setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_verticals:Lcom/ardor3d/scenegraph/Line;

    sget-object v2, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->Width:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getIntConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/Line;->setLineWidth(F)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_verticals:Lcom/ardor3d/scenegraph/Line;

    sget-object v2, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->Stipple:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/16 v4, -0x100

    invoke-virtual {p0, v1, v2, v4}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getShortConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;S)S

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/Line;->setStipplePattern(S)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_verticals:Lcom/ardor3d/scenegraph/Line;

    sget-object v2, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->Antialias:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getBooleanConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/Line;->setAntialiased(Z)V

    return-void
.end method

.method private shiftVerticals()V
    .locals 11

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {v0}, Lcom/ardor3d/renderer/TextureRenderer;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_off:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    neg-float v0, v1

    float-to-double v0, v0

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getMaxSamples()I

    move-result v2

    int-to-double v2, v2

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getSampleRate()D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double v5, v0, v2

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_verticals:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Spatial;->getTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    iget-object v4, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_verticals:Lcom/ardor3d/scenegraph/Line;

    invoke-interface {v0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v7

    invoke-interface {v0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v9

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/scenegraph/Spatial;->setTranslation(DDD)V

    return-void
.end method


# virtual methods
.method public getThreshold()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_threshold:I

    return v0
.end method

.method public reset()V
    .locals 4

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getHistorical()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_entries:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_entries:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;

    iget-object v2, v2, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->area:Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/Spatial;->removeFromParent()Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_threshold:I

    return-void
.end method

.method public statsUpdated()V
    .locals 27

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-boolean v0, Lcom/ardor3d/util/Constants;->updateGraphs:Z

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->pause()V

    iget v0, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_gWidth:I

    iget v2, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_gHeight:I

    iget v3, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_eventCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_eventCount:I

    iget v3, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_off:F

    float-to-double v5, v3

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getStartOffset()D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-float v3, v5

    iput v3, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_off:F

    iget v3, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_eventCount:I

    iget v5, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_threshold:I

    if-ge v3, v5, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    iput v3, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_eventCount:I

    iget-object v5, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    iget-object v6, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_horizontals:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/Spatial;->getParent()Lcom/ardor3d/scenegraph/Node;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    iget-object v6, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_horizontals:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v5, v6}, Lcom/ardor3d/scenegraph/Node;->attachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->calcVSpan()F

    move-result v5

    iget-object v6, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_verticals:Lcom/ardor3d/scenegraph/Line;

    if-eqz v6, :cond_3

    iget v6, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_vSpan:F

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_4

    :cond_3
    iput v5, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_vSpan:F

    invoke-direct/range {p0 .. p0}, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->createVLines()V

    :cond_4
    iget v5, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_off:F

    float-to-double v5, v5

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getSampleRate()D

    move-result-wide v7

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    mul-double/2addr v7, v9

    rem-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_off:F

    iget-object v5, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    iget-object v6, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_verticals:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/Spatial;->getParent()Lcom/ardor3d/scenegraph/Node;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    iget-object v6, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_verticals:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v5, v6}, Lcom/ardor3d/scenegraph/Node;->attachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->shiftVerticals()V

    iget-object v5, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_entries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ardor3d/util/stat/StatType;

    iget-object v7, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_entries:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;

    iput-boolean v3, v7, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->visited:Z

    iget-object v7, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_entries:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;

    iget-object v6, v6, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->verts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getHistorical()Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    :goto_1
    :try_start_0
    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getHistorical()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const-wide/16 v7, 0x0

    if-ge v3, v6, :cond_d

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getHistorical()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ardor3d/util/stat/MultiStatSample;

    invoke-virtual {v6}, Lcom/ardor3d/util/stat/MultiStatSample;->getStatTypes()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v10, v7

    :cond_7
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ardor3d/util/stat/StatType;

    iget-object v13, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    invoke-virtual {v13, v12}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v6, v12}, Lcom/ardor3d/util/stat/MultiStatSample;->getStatValue(Lcom/ardor3d/util/stat/StatType;)Lcom/ardor3d/util/stat/StatValue;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ardor3d/util/stat/StatValue;->getAccumulatedValue()D

    move-result-wide v12

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v23, v5

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v6}, Lcom/ardor3d/util/stat/MultiStatSample;->getStatTypes()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ardor3d/util/stat/StatType;

    iget-object v13, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    invoke-virtual {v13, v12}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    iget-object v13, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_entries:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;

    if-eqz v13, :cond_9

    iget v14, v13, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->maxSamples:I

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getMaxSamples()I

    move-result v15

    if-eq v14, v15, :cond_a

    :cond_9
    new-instance v13, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getMaxSamples()I

    move-result v14

    invoke-direct {v13, v1, v14, v12}, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;-><init>(Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;ILcom/ardor3d/util/stat/StatType;)V

    iget-object v14, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_entries:Ljava/util/HashMap;

    invoke-virtual {v14, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-virtual {v6, v12}, Lcom/ardor3d/util/stat/MultiStatSample;->getStatValue(Lcom/ardor3d/util/stat/StatType;)Lcom/ardor3d/util/stat/StatValue;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ardor3d/util/stat/StatValue;->getAccumulatedValue()D

    move-result-wide v14

    div-double/2addr v14, v10

    new-instance v12, Lcom/ardor3d/math/Vector3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v23, v5

    int-to-double v4, v3

    add-double/2addr v14, v7

    move-object/from16 v24, v6

    double-to-float v6, v14

    move-wide/from16 v25, v10

    move-object v11, v9

    float-to-double v9, v6

    const-wide/16 v21, 0x0

    move-object/from16 v16, v12

    move-wide/from16 v17, v4

    move-wide/from16 v19, v9

    :try_start_1
    invoke-direct/range {v16 .. v22}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iget-object v6, v13, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->verts:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/ardor3d/math/Vector3;

    double-to-float v7, v7

    float-to-double v7, v7

    const-wide/16 v21, 0x0

    move-object/from16 v16, v6

    move-wide/from16 v17, v4

    move-wide/from16 v19, v7

    invoke-direct/range {v16 .. v22}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iget-object v4, v13, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->verts:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    iput-boolean v4, v13, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->visited:Z

    move-wide v7, v14

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :cond_b
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-wide/from16 v25, v10

    move-object v11, v9

    :goto_4
    move-object v9, v11

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move-wide/from16 v10, v25

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_c
    move-object/from16 v23, v5

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_d
    move-object/from16 v23, v5

    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-float v0, v0

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getMaxSamples()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v0, v3

    int-to-float v2, v2

    const v3, 0x3f828f5c    # 1.02f

    div-float/2addr v2, v3

    iget-object v3, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_entries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_entries:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;

    iget-boolean v5, v4, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->visited:Z

    if-nez v5, :cond_f

    iget-object v4, v4, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->area:Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Spatial;->removeFromParent()Z

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_f
    iget-object v5, v4, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->verts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/ardor3d/math/Vector3;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-static {v5}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer([Lcom/ardor3d/math/type/ReadOnlyVector3;)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v6, v4, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->area:Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    iget-object v5, v4, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->area:Lcom/ardor3d/scenegraph/Mesh;

    new-instance v6, Lcom/ardor3d/math/Vector3;

    float-to-double v10, v0

    float-to-double v12, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object v9, v6

    invoke-direct/range {v9 .. v15}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-virtual {v5, v6}, Lcom/ardor3d/scenegraph/Spatial;->setScale(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object v5, v4, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->area:Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getIndexBuffer()Ljava/nio/Buffer;

    move-result-object v5

    iget-object v6, v4, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->verts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v5, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    iget-object v6, v4, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->area:Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/Spatial;->getParent()Lcom/ardor3d/scenegraph/Node;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    iget-object v4, v4, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->area:Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {v5, v4}, Lcom/ardor3d/scenegraph/Node;->attachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    goto :goto_5

    :cond_10
    iget-object v0, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    const/4 v2, 0x1

    invoke-virtual {v0, v7, v8, v2}, Lcom/ardor3d/scenegraph/Spatial;->updateGeometricState(DZ)V

    iget-object v0, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    iget-object v2, v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    iget-object v3, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_texture:Lcom/ardor3d/image/Texture2D;

    const/4 v4, 0x3

    invoke-interface {v0, v2, v3, v4}, Lcom/ardor3d/renderer/TextureRenderer;->render(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/image/Texture;I)V

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->resume()V

    return-void

    :goto_6
    :try_start_2
    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_11
    :goto_7
    return-void
.end method

.method public updateLineKey(Lcom/ardor3d/util/stat/StatType;Lcom/ardor3d/scenegraph/Line;)Lcom/ardor3d/scenegraph/Line;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez p2, :cond_0

    new-instance v8, Lcom/ardor3d/scenegraph/Line;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "lk"

    const/4 v5, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/ardor3d/scenegraph/Line;-><init>(Ljava/lang/String;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/scenegraph/FloatBufferData;)V

    new-instance v2, Lcom/ardor3d/math/Vector3;

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v10, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v3, Lcom/ardor3d/math/Vector3;

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/high16 v17, 0x403e000000000000L    # 30.0

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v22}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    filled-new-array {v2, v3}, [Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-static {v2}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer([Lcom/ardor3d/math/type/ReadOnlyVector3;)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v8}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    goto :goto_0

    :cond_0
    move-object/from16 v8, p2

    :goto_0
    invoke-virtual {v8}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v2

    sget-object v3, Lcom/ardor3d/renderer/queue/RenderBucketType;->Ortho:Lcom/ardor3d/renderer/queue/RenderBucketType;

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V

    invoke-virtual {v8}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v2

    sget-object v3, Lcom/ardor3d/renderer/IndexMode;->LineLoop:Lcom/ardor3d/renderer/IndexMode;

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/MeshData;->setIndexMode(Lcom/ardor3d/renderer/IndexMode;)V

    sget-object v2, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->Color:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ardor3d/math/ColorRGBA;

    sget-object v4, Lcom/ardor3d/math/ColorRGBA;->LIGHT_GRAY:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v3, v4}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getColorConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Lcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/ardor3d/scenegraph/Mesh;->setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    sget-object v2, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->Width:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getIntConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Lcom/ardor3d/scenegraph/Line;->setLineWidth(F)V

    sget-object v2, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->Stipple:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getShortConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;S)S

    move-result v2

    invoke-virtual {v8, v2}, Lcom/ardor3d/scenegraph/Line;->setStipplePattern(S)V

    sget-object v2, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->Antialias:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getBooleanConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v8, v2}, Lcom/ardor3d/scenegraph/Line;->setAntialiased(Z)V

    sget-object v2, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->ShowAreas:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getBooleanConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v8}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v1

    sget-object v2, Lcom/ardor3d/scenegraph/hint/CullHint;->Always:Lcom/ardor3d/scenegraph/hint/CullHint;

    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setCullHint(Lcom/ardor3d/scenegraph/hint/CullHint;)V

    :cond_1
    return-object v8
.end method
