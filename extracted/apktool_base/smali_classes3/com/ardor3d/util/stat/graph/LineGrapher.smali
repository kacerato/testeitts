.class public Lcom/ardor3d/util/stat/graph/LineGrapher;
.super Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/stat/graph/TableLinkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;,
        Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;
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
            "Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;",
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

    const-string v1, "_lineGrapher_vert"

    invoke-direct {v0, v1}, Lcom/ardor3d/util/stat/StatType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ardor3d/util/stat/graph/LineGrapher;->Vertical:Lcom/ardor3d/util/stat/StatType;

    new-instance v0, Lcom/ardor3d/util/stat/StatType;

    const-string v1, "_lineGrapher_horiz"

    invoke-direct {v0, v1}, Lcom/ardor3d/util/stat/StatType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ardor3d/util/stat/graph/LineGrapher;->Horizontal:Lcom/ardor3d/util/stat/StatType;

    return-void
.end method

.method public constructor <init>(IILcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;-><init>(IILcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)V

    new-instance p1, Lcom/ardor3d/scenegraph/Node;

    const-string p2, "root"

    invoke-direct {p1, p2}, Lcom/ardor3d/scenegraph/Node;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    const/4 p1, 0x0

    iput p1, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_eventCount:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_threshold:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_startMarker:F

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_entries:Ljava/util/HashMap;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_defBlendState:Lcom/ardor3d/renderer/state/BlendState;

    invoke-direct {p0}, Lcom/ardor3d/util/stat/graph/LineGrapher;->createHLines()V

    new-instance p2, Lcom/ardor3d/renderer/state/BlendState;

    invoke-direct {p2}, Lcom/ardor3d/renderer/state/BlendState;-><init>()V

    iput-object p2, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_defBlendState:Lcom/ardor3d/renderer/state/BlendState;

    invoke-virtual {p2, p1}, Lcom/ardor3d/renderer/state/RenderState;->setEnabled(Z)V

    iget-object p2, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_defBlendState:Lcom/ardor3d/renderer/state/BlendState;

    invoke-virtual {p2, p1}, Lcom/ardor3d/renderer/state/BlendState;->setBlendEnabled(Z)V

    iget-object p1, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_defBlendState:Lcom/ardor3d/renderer/state/BlendState;

    sget-object p2, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->SourceAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/state/BlendState;->setSourceFunction(Lcom/ardor3d/renderer/state/BlendState$SourceFunction;)V

    iget-object p1, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_defBlendState:Lcom/ardor3d/renderer/state/BlendState;

    sget-object p2, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->OneMinusSourceAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/state/BlendState;->setDestinationFunction(Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;)V

    iget-object p1, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    iget-object p2, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_defBlendState:Lcom/ardor3d/renderer/state/BlendState;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    iget-object p1, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

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

    iput-object v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_horizontals:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/renderer/IndexMode;->Lines:Lcom/ardor3d/renderer/IndexMode;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->setIndexMode(Lcom/ardor3d/renderer/IndexMode;)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_horizontals:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/renderer/queue/RenderBucketType;->Ortho:Lcom/ardor3d/renderer/queue/RenderBucketType;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_horizontals:Lcom/ardor3d/scenegraph/Line;

    sget-object v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->Horizontal:Lcom/ardor3d/util/stat/StatType;

    sget-object v2, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->Color:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ardor3d/math/ColorRGBA;

    sget-object v4, Lcom/ardor3d/math/ColorRGBA;->BLUE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v3, v4}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getColorConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Lcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/Mesh;->setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_horizontals:Lcom/ardor3d/scenegraph/Line;

    sget-object v2, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->Width:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getIntConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/Line;->setLineWidth(F)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_horizontals:Lcom/ardor3d/scenegraph/Line;

    sget-object v2, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->Stipple:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/16 v4, -0x100

    invoke-virtual {p0, v1, v2, v4}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getShortConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;S)S

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/Line;->setStipplePattern(S)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_horizontals:Lcom/ardor3d/scenegraph/Line;

    sget-object v2, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->Antialias:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

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

    iget v2, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_vSpan:F

    div-float v2, v0, v2

    float-to-int v2, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v6

    iget v2, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_vSpan:F

    :goto_0
    iget v4, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_vSpan:F

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

    iget v4, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_vSpan:F

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

    iput-object v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_verticals:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/renderer/IndexMode;->Lines:Lcom/ardor3d/renderer/IndexMode;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->setIndexMode(Lcom/ardor3d/renderer/IndexMode;)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_verticals:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/renderer/queue/RenderBucketType;->Ortho:Lcom/ardor3d/renderer/queue/RenderBucketType;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_verticals:Lcom/ardor3d/scenegraph/Line;

    sget-object v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->Vertical:Lcom/ardor3d/util/stat/StatType;

    sget-object v2, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->Color:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/ardor3d/math/ColorRGBA;

    sget-object v5, Lcom/ardor3d/math/ColorRGBA;->RED:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v4, v5}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    invoke-virtual {p0, v1, v2, v4}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getColorConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Lcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/Mesh;->setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_verticals:Lcom/ardor3d/scenegraph/Line;

    sget-object v2, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->Width:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getIntConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/Line;->setLineWidth(F)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_verticals:Lcom/ardor3d/scenegraph/Line;

    sget-object v2, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->Stipple:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/16 v4, -0x100

    invoke-virtual {p0, v1, v2, v4}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getShortConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;S)S

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/Line;->setStipplePattern(S)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_verticals:Lcom/ardor3d/scenegraph/Line;

    sget-object v2, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->Antialias:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

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

    iget v1, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_off:F

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

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_verticals:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Spatial;->getTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    iget-object v4, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_verticals:Lcom/ardor3d/scenegraph/Line;

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

    iget v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_threshold:I

    return v0
.end method

.method public reset()V
    .locals 4

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getHistorical()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_entries:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_entries:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;

    iget-object v3, v2, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->line:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/Spatial;->removeFromParent()Z

    iget-object v2, v2, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->point:Lcom/ardor3d/scenegraph/Point;

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

    iput p1, p0, Lcom/ardor3d/util/stat/graph/LineGrapher;->_threshold:I

    return-void
.end method

.method public statsUpdated()V
    .locals 20

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/ardor3d/util/Constants;->updateGraphs:Z

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->pause()V

    iget v0, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_gWidth:I

    iget v2, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_gHeight:I

    iget v3, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_eventCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_eventCount:I

    iget v3, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_off:F

    float-to-double v5, v3

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getStartOffset()D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-float v3, v5

    iput v3, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_off:F

    iget v3, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_eventCount:I

    iget v5, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_threshold:I

    if-ge v3, v5, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    iput v3, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_eventCount:I

    iget-object v5, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    iget-object v6, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_horizontals:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/Spatial;->getParent()Lcom/ardor3d/scenegraph/Node;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    iget-object v6, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_horizontals:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v5, v6}, Lcom/ardor3d/scenegraph/Node;->attachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/ardor3d/util/stat/graph/LineGrapher;->calcVSpan()F

    move-result v5

    iget-object v6, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_verticals:Lcom/ardor3d/scenegraph/Line;

    if-eqz v6, :cond_3

    iget v6, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_vSpan:F

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_4

    :cond_3
    iput v5, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_vSpan:F

    invoke-direct/range {p0 .. p0}, Lcom/ardor3d/util/stat/graph/LineGrapher;->createVLines()V

    :cond_4
    iget v5, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_off:F

    float-to-double v5, v5

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getSampleRate()D

    move-result-wide v7

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    mul-double/2addr v7, v9

    rem-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_off:F

    iget-object v5, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    iget-object v6, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_verticals:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/Spatial;->getParent()Lcom/ardor3d/scenegraph/Node;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    iget-object v6, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_verticals:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v5, v6}, Lcom/ardor3d/scenegraph/Node;->attachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/ardor3d/util/stat/graph/LineGrapher;->shiftVerticals()V

    iget-object v5, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_entries:Ljava/util/HashMap;

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

    iget-object v7, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_entries:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;

    iput-boolean v3, v7, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->visited:Z

    iget-object v7, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_entries:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;

    iget-object v6, v6, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->verts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getHistorical()Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    move v6, v3

    :goto_1
    :try_start_0
    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getHistorical()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_e

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getHistorical()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ardor3d/util/stat/MultiStatSample;

    iget-object v8, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ardor3d/util/stat/StatType;

    invoke-virtual {v7, v9}, Lcom/ardor3d/util/stat/MultiStatSample;->containsStat(Lcom/ardor3d/util/stat/StatType;)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_entries:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;

    if-eqz v10, :cond_7

    iget v11, v10, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->maxSamples:I

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getMaxSamples()I

    move-result v12

    if-eq v11, v12, :cond_8

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_7
    :goto_3
    new-instance v10, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getMaxSamples()I

    move-result v11

    invoke-direct {v10, v1, v11, v9}, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;-><init>(Lcom/ardor3d/util/stat/graph/LineGrapher;ILcom/ardor3d/util/stat/StatType;)V

    iget-object v11, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_entries:Ljava/util/HashMap;

    invoke-virtual {v11, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    sget-object v11, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->FrameAverage:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v9, v11, v3}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getBooleanConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v7, v9}, Lcom/ardor3d/util/stat/MultiStatSample;->getStatValue(Lcom/ardor3d/util/stat/StatType;)Lcom/ardor3d/util/stat/StatValue;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ardor3d/util/stat/StatValue;->getAverageValue()D

    move-result-wide v11

    goto :goto_4

    :cond_9
    invoke-virtual {v7, v9}, Lcom/ardor3d/util/stat/MultiStatSample;->getStatValue(Lcom/ardor3d/util/stat/StatType;)Lcom/ardor3d/util/stat/StatValue;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ardor3d/util/stat/StatValue;->getAccumulatedValue()D

    move-result-wide v11

    :goto_4
    new-instance v9, Lcom/ardor3d/math/Vector3;

    int-to-double v14, v6

    const-wide/16 v18, 0x0

    move-object v13, v9

    move-wide/from16 v16, v11

    invoke-direct/range {v13 .. v19}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iget-object v13, v10, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->verts:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v13, v10, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->max:D

    cmpg-double v9, v13, v11

    if-gez v9, :cond_a

    iput-wide v11, v10, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->max:D

    :cond_a
    iput-boolean v4, v10, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->visited:Z

    goto :goto_5

    :cond_b
    iget-object v10, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_entries:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;

    if-eqz v9, :cond_c

    iget-object v9, v9, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->verts:Ljava/util/List;

    new-instance v15, Lcom/ardor3d/math/Vector3;

    int-to-double v11, v6

    const-wide/16 v13, 0x0

    const-wide/16 v16, 0x0

    move-object v10, v15

    move-object v3, v15

    move-wide/from16 v15, v16

    invoke-direct/range {v10 .. v16}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_5
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_d
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_e
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_entries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_entries:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;

    iget-boolean v6, v5, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->visited:Z

    if-nez v6, :cond_f

    iget-object v6, v5, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->line:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/Spatial;->removeFromParent()Z

    iget-object v5, v5, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->point:Lcom/ardor3d/scenegraph/Point;

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/Spatial;->removeFromParent()Z

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_f
    iget-object v6, v5, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->verts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/ardor3d/math/Vector3;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-static {v6}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer([Lcom/ardor3d/math/type/ReadOnlyVector3;)Ljava/nio/FloatBuffer;

    move-result-object v6

    iget-object v7, v5, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->point:Lcom/ardor3d/scenegraph/Point;

    invoke-virtual {v7}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    int-to-double v7, v0

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getMaxSamples()I

    move-result v9

    int-to-double v9, v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v9, v11

    div-double/2addr v7, v9

    int-to-double v9, v2

    iget-wide v11, v5, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->max:D

    const-wide v13, 0x3ff051eb851eb852L    # 1.02

    mul-double/2addr v11, v13

    div-double/2addr v9, v11

    iget-object v14, v5, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->point:Lcom/ardor3d/scenegraph/Point;

    new-instance v15, Lcom/ardor3d/math/Vector3;

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object v11, v15

    move-wide v12, v7

    move/from16 v19, v0

    move-object v4, v14

    move-object v0, v15

    move-wide v14, v9

    invoke-direct/range {v11 .. v17}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-virtual {v4, v0}, Lcom/ardor3d/scenegraph/Spatial;->setScale(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iget-object v0, v5, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->line:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    iget-object v0, v5, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->line:Lcom/ardor3d/scenegraph/Line;

    new-instance v4, Lcom/ardor3d/math/Vector3;

    move-object v11, v4

    invoke-direct/range {v11 .. v17}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-virtual {v0, v4}, Lcom/ardor3d/scenegraph/Spatial;->setScale(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    iget-object v4, v5, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->line:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Spatial;->getParent()Lcom/ardor3d/scenegraph/Node;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    iget-object v4, v5, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->line:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v0, v4}, Lcom/ardor3d/scenegraph/Node;->attachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    :cond_10
    iget-object v0, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    iget-object v4, v5, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->point:Lcom/ardor3d/scenegraph/Point;

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Spatial;->getParent()Lcom/ardor3d/scenegraph/Node;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    iget-object v4, v5, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->point:Lcom/ardor3d/scenegraph/Point;

    invoke-virtual {v0, v4}, Lcom/ardor3d/scenegraph/Node;->attachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    :cond_11
    move/from16 v0, v19

    const/4 v4, 0x1

    goto/16 :goto_6

    :cond_12
    iget-object v0, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/ardor3d/scenegraph/Spatial;->updateGeometricState(DZ)V

    iget-object v0, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    iget-object v2, v1, Lcom/ardor3d/util/stat/graph/LineGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    iget-object v3, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_texture:Lcom/ardor3d/image/Texture2D;

    const/4 v4, 0x3

    invoke-interface {v0, v2, v3, v4}, Lcom/ardor3d/renderer/TextureRenderer;->render(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/image/Texture;I)V

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->resume()V

    return-void

    :goto_7
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_13
    :goto_8
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

    sget-object v3, Lcom/ardor3d/renderer/IndexMode;->LineStrip:Lcom/ardor3d/renderer/IndexMode;

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/MeshData;->setIndexMode(Lcom/ardor3d/renderer/IndexMode;)V

    sget-object v2, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->Color:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ardor3d/math/ColorRGBA;

    sget-object v4, Lcom/ardor3d/math/ColorRGBA;->LIGHT_GRAY:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v3, v4}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getColorConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Lcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/ardor3d/scenegraph/Mesh;->setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    sget-object v2, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->Width:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getIntConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Lcom/ardor3d/scenegraph/Line;->setLineWidth(F)V

    sget-object v2, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->Stipple:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getShortConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;S)S

    move-result v2

    invoke-virtual {v8, v2}, Lcom/ardor3d/scenegraph/Line;->setStipplePattern(S)V

    sget-object v2, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->Antialias:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getBooleanConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v8, v2}, Lcom/ardor3d/scenegraph/Line;->setAntialiased(Z)V

    sget-object v2, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->ShowLines:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

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
