.class public Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;
.super Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;,
        Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;
    }
.end annotation


# static fields
.field public static final DEFAULT_DECIMALS:I = 0x2


# instance fields
.field protected _bgQuad:Lcom/ardor3d/scenegraph/shape/Quad;

.field protected _columns:I

.field protected _defBlendState:Lcom/ardor3d/renderer/state/BlendState;

.field private final _entries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ardor3d/util/stat/StatType;",
            "Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected _eventCount:I

.field protected _graphRoot:Lcom/ardor3d/scenegraph/Node;

.field private _linkedGraph:Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;

.field private _minimalBackground:Z

.field protected _threshold:I


# direct methods
.method public constructor <init>(IILcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)V
    .locals 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;-><init>(IILcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)V

    new-instance p1, Lcom/ardor3d/scenegraph/Node;

    const-string p2, "root"

    invoke-direct {p1, p2}, Lcom/ardor3d/scenegraph/Node;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    const/4 p1, 0x0

    iput p1, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_eventCount:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_threshold:I

    iput p1, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_columns:I

    new-instance p2, Lcom/ardor3d/scenegraph/shape/Quad;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-string v1, "bgQuad"

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/ardor3d/scenegraph/shape/Quad;-><init>(Ljava/lang/String;DD)V

    iput-object p2, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_bgQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_defBlendState:Lcom/ardor3d/renderer/state/BlendState;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_entries:Ljava/util/HashMap;

    new-instance p2, Lcom/ardor3d/renderer/state/BlendState;

    invoke-direct {p2}, Lcom/ardor3d/renderer/state/BlendState;-><init>()V

    iput-object p2, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_defBlendState:Lcom/ardor3d/renderer/state/BlendState;

    invoke-virtual {p2, p1}, Lcom/ardor3d/renderer/state/RenderState;->setEnabled(Z)V

    iget-object p2, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_defBlendState:Lcom/ardor3d/renderer/state/BlendState;

    invoke-virtual {p2, p1}, Lcom/ardor3d/renderer/state/BlendState;->setBlendEnabled(Z)V

    iget-object p1, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_defBlendState:Lcom/ardor3d/renderer/state/BlendState;

    sget-object p2, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->SourceAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/state/BlendState;->setSourceFunction(Lcom/ardor3d/renderer/state/BlendState$SourceFunction;)V

    iget-object p1, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_defBlendState:Lcom/ardor3d/renderer/state/BlendState;

    sget-object p2, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->OneMinusSourceAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/state/BlendState;->setDestinationFunction(Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;)V

    iget-object p1, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    iget-object p2, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_defBlendState:Lcom/ardor3d/renderer/state/BlendState;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    iget-object p1, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_bgQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p1

    sget-object p2, Lcom/ardor3d/renderer/queue/RenderBucketType;->Ortho:Lcom/ardor3d/renderer/queue/RenderBucketType;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V

    iget-object p1, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_bgQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    new-instance p2, Lcom/ardor3d/math/ColorRGBA;

    sget-object p3, Lcom/ardor3d/math/ColorRGBA;->BLACK:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {p2, p3}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/Mesh;->setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iget-object p1, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p1

    sget-object p2, Lcom/ardor3d/scenegraph/hint/CullHint;->Never:Lcom/ardor3d/scenegraph/hint/CullHint;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setCullHint(Lcom/ardor3d/scenegraph/hint/CullHint;)V

    return-void
.end method

.method private stripVal(DLcom/ardor3d/util/stat/StatType;)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;->ValueScale:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, p3, v0, v1, v2}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getDoubleConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;D)D

    move-result-wide v0

    mul-double/2addr p1, v0

    sget-object v0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;->Abbreviate:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p3, v0, v1}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getBooleanConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    cmpl-double v0, p1, v3

    if-ltz v0, :cond_0

    div-double/2addr p1, v3

    const-string v0, "m"

    goto :goto_0

    :cond_0
    const-wide v3, 0x408f400000000000L    # 1000.0

    cmpl-double v0, p1, v3

    if-ltz v0, :cond_1

    div-double/2addr p1, v3

    const-string v0, "k"

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    sget-object v3, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;->Decimals:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, p3, v3, v4}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getIntConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;I)I

    move-result p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p3, :cond_2

    move p3, v1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    if-lez p3, :cond_3

    const-string v4, "0.0"

    goto :goto_1

    :cond_3
    move-object v4, v3

    :goto_1
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    if-ge v1, p3, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/DecimalFormat;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getColumns()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_columns:I

    return v0
.end method

.method public getThreshold()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_threshold:I

    return v0
.end method

.method public isMinimalBackground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_minimalBackground:Z

    return v0
.end method

.method public linkTo(Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_linkedGraph:Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;

    return-void
.end method

.method public reset()V
    .locals 4

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getHistorical()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_entries:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_entries:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;

    iget-object v3, v2, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->text:Lcom/ardor3d/ui/text/BasicText;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/Spatial;->removeFromParent()Z

    iget-object v2, v2, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->lineKey:Lcom/ardor3d/scenegraph/Line;

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

.method public setColumns(I)V
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_columns:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "columns must be >= 1 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinimalBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_minimalBackground:Z

    return-void
.end method

.method public setThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_threshold:I

    return-void
.end method

.method public statsUpdated()V
    .locals 27

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-boolean v0, Lcom/ardor3d/util/Constants;->updateGraphs:Z

    if-nez v0, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->pause()V

    iget v0, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_gWidth:I

    iget v2, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_gHeight:I

    iget v3, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_eventCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_eventCount:I

    iget v5, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_threshold:I

    if-ge v3, v5, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    iput v3, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_eventCount:I

    add-int/lit8 v5, v2, -0x3

    int-to-double v5, v5

    int-to-float v7, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->getColumns()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v7, v8

    iget-object v9, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_entries:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ardor3d/util/stat/StatType;

    iget-object v11, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_entries:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;

    iput-boolean v3, v10, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->visited:Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getHistorical()Ljava/util/List;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getHistorical()Ljava/util/List;

    move-result-object v10

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->getHistorical()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v4

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ardor3d/util/stat/MultiStatSample;

    iget-object v11, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    invoke-virtual {v11}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v15, v3

    const-wide/16 v16, 0x0

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ardor3d/util/stat/StatType;

    invoke-virtual {v10, v14}, Lcom/ardor3d/util/stat/MultiStatSample;->getStatValue(Lcom/ardor3d/util/stat/StatType;)Lcom/ardor3d/util/stat/StatValue;

    move-result-object v18

    if-nez v18, :cond_4

    invoke-static {v14}, Lcom/ardor3d/util/stat/StatCollector;->hasHistoricalStat(Lcom/ardor3d/util/stat/StatType;)Z

    move-result v18

    if-nez v18, :cond_3

    goto :goto_1

    :cond_3
    new-instance v18, Lcom/ardor3d/util/stat/StatValue;

    invoke-direct/range {v18 .. v18}, Lcom/ardor3d/util/stat/StatValue;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lcom/ardor3d/util/stat/StatValue;->incrementIterations()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_4
    :goto_2
    iget-object v12, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_entries:Ljava/util/HashMap;

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;

    if-nez v12, :cond_5

    new-instance v12, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;

    invoke-direct {v12, v1, v14}, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;-><init>(Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;Lcom/ardor3d/util/stat/StatType;)V

    iget-object v13, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_entries:Ljava/util/HashMap;

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    iget-object v3, v12, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->text:Lcom/ardor3d/ui/text/BasicText;

    invoke-virtual {v13, v3}, Lcom/ardor3d/scenegraph/Node;->attachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    :cond_5
    iput-boolean v4, v12, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->visited:Z

    sget-object v3, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;->FrameAverage:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    invoke-virtual {v1, v14, v3, v13}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getBooleanConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {v18 .. v18}, Lcom/ardor3d/util/stat/StatValue;->getAverageValue()D

    move-result-wide v18

    :goto_3
    move-wide/from16 v21, v5

    move-wide/from16 v4, v18

    goto :goto_4

    :cond_6
    invoke-virtual/range {v18 .. v18}, Lcom/ardor3d/util/stat/StatValue;->getAccumulatedValue()D

    move-result-wide v18

    goto :goto_3

    :goto_4
    iget-object v6, v12, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->text:Lcom/ardor3d/ui/text/BasicText;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;->Name:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v10

    invoke-virtual {v14}, Lcom/ardor3d/util/stat/StatType;->getStatName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v14, v3, v10}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getStringConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v4, v5, v14}, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->stripVal(DLcom/ardor3d/util/stat/StatType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/ardor3d/ui/text/BMText;->setText(Ljava/lang/String;)V

    sget-object v3, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;->FontScale:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const v4, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v14, v3, v4}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getFloatConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;F)F

    move-result v3

    iget-object v4, v12, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->text:Lcom/ardor3d/ui/text/BasicText;

    float-to-double v5, v3

    invoke-virtual {v4, v5, v6}, Lcom/ardor3d/scenegraph/Spatial;->setScale(D)V

    iget-object v3, v12, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->text:Lcom/ardor3d/ui/text/BasicText;

    sget-object v4, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;->TextColor:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_linkedGraph:Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;

    if-eqz v5, :cond_7

    sget-object v6, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->Color:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/ardor3d/math/ColorRGBA;

    sget-object v13, Lcom/ardor3d/math/ColorRGBA;->WHITE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v10, v13}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    invoke-virtual {v5, v14, v6, v10}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getColorConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Lcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    move-result-object v5

    goto :goto_5

    :cond_7
    new-instance v5, Lcom/ardor3d/math/ColorRGBA;

    sget-object v6, Lcom/ardor3d/math/ColorRGBA;->WHITE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v5, v6}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    :goto_5
    invoke-virtual {v1, v14, v4, v5}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getColorConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Lcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ardor3d/ui/text/BMText;->setTextColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iget-object v3, v12, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->text:Lcom/ardor3d/ui/text/BasicText;

    invoke-virtual {v3}, Lcom/ardor3d/ui/text/BMText;->getHeight()F

    move-result v3

    float-to-double v3, v3

    cmpg-double v5, v16, v3

    if-gez v5, :cond_8

    goto :goto_6

    :cond_8
    move-wide/from16 v3, v16

    :goto_6
    iget-object v5, v12, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->text:Lcom/ardor3d/ui/text/BasicText;

    int-to-float v6, v15

    mul-float/2addr v6, v8

    move-object v13, v11

    float-to-double v10, v6

    const-wide/16 v19, 0x0

    move-object v6, v14

    move-object v14, v5

    move v5, v15

    move-wide v15, v10

    move-wide/from16 v17, v21

    invoke-virtual/range {v14 .. v20}, Lcom/ardor3d/scenegraph/Spatial;->setTranslation(DDD)V

    iget-object v10, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_linkedGraph:Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;

    if-eqz v10, :cond_a

    invoke-virtual {v10, v6}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->hasConfig(Lcom/ardor3d/util/stat/StatType;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_linkedGraph:Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;

    instance-of v11, v10, Lcom/ardor3d/util/stat/graph/TableLinkable;

    if-eqz v11, :cond_a

    check-cast v10, Lcom/ardor3d/util/stat/graph/TableLinkable;

    iget-object v11, v12, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->lineKey:Lcom/ardor3d/scenegraph/Line;

    invoke-interface {v10, v6, v11}, Lcom/ardor3d/util/stat/graph/TableLinkable;->updateLineKey(Lcom/ardor3d/util/stat/StatType;Lcom/ardor3d/scenegraph/Line;)Lcom/ardor3d/scenegraph/Line;

    move-result-object v6

    iput-object v6, v12, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->lineKey:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/Spatial;->getParent()Lcom/ardor3d/scenegraph/Node;

    move-result-object v6

    iget-object v10, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    if-eq v6, v10, :cond_9

    iget-object v6, v12, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->lineKey:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v10, v6}, Lcom/ardor3d/scenegraph/Node;->attachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    :cond_9
    iget-object v6, v12, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->text:Lcom/ardor3d/ui/text/BasicText;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/Spatial;->getTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v6

    iget-object v14, v12, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->lineKey:Lcom/ardor3d/scenegraph/Line;

    invoke-interface {v6}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v10

    iget-object v15, v12, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->text:Lcom/ardor3d/ui/text/BasicText;

    invoke-virtual {v15}, Lcom/ardor3d/ui/text/BMText;->getWidth()F

    move-result v15

    move/from16 v24, v7

    move/from16 v25, v8

    float-to-double v7, v15

    add-double/2addr v10, v7

    const-wide/high16 v7, 0x402e000000000000L    # 15.0

    add-double/2addr v10, v7

    double-to-float v7, v10

    float-to-double v7, v7

    invoke-interface {v6}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v10

    iget-object v6, v12, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->text:Lcom/ardor3d/ui/text/BasicText;

    invoke-virtual {v6}, Lcom/ardor3d/ui/text/BMText;->getHeight()F

    move-result v6

    move-object/from16 v26, v13

    float-to-double v12, v6

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v12, v15

    add-double/2addr v10, v12

    double-to-float v6, v10

    float-to-double v10, v6

    const-wide/16 v19, 0x0

    move-wide v15, v7

    move-wide/from16 v17, v10

    invoke-virtual/range {v14 .. v20}, Lcom/ardor3d/scenegraph/Spatial;->setTranslation(DDD)V

    goto :goto_7

    :cond_a
    move/from16 v24, v7

    move/from16 v25, v8

    move-object/from16 v26, v13

    :goto_7
    add-int/lit8 v15, v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->getColumns()I

    move-result v5

    rem-int/2addr v15, v5

    if-nez v15, :cond_b

    sub-double v5, v21, v3

    const-wide/16 v16, 0x0

    goto :goto_8

    :cond_b
    move-wide/from16 v16, v3

    move-wide/from16 v5, v21

    :goto_8
    move-object/from16 v10, v23

    move/from16 v7, v24

    move/from16 v8, v25

    move-object/from16 v11, v26

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_c
    move-wide/from16 v21, v5

    move/from16 v24, v7

    move v5, v15

    iget-object v3, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_entries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_entries:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;

    iget-boolean v6, v4, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->visited:Z

    if-nez v6, :cond_d

    iget-object v6, v4, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->text:Lcom/ardor3d/ui/text/BasicText;

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/Spatial;->removeFromParent()Z

    iget-object v4, v4, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->lineKey:Lcom/ardor3d/scenegraph/Line;

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Spatial;->removeFromParent()Z

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    :cond_f
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v4}, Lcom/ardor3d/scenegraph/Spatial;->updateGeometricState(DZ)V

    invoke-static {}, Lcom/ardor3d/math/ColorRGBA;->fetchTempInstance()Lcom/ardor3d/math/ColorRGBA;

    move-result-object v4

    iget-object v6, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {v6}, Lcom/ardor3d/renderer/TextureRenderer;->getBackgroundColor()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    move-result-object v4

    iget-boolean v6, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_minimalBackground:Z

    const/4 v7, 0x3

    if-eqz v6, :cond_11

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/ardor3d/math/ColorRGBA;->setAlpha(F)V

    iget-object v6, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {v6, v4}, Lcom/ardor3d/renderer/TextureRenderer;->setBackgroundColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    sub-double v8, v21, v8

    if-eqz v5, :cond_10

    sub-double v8, v8, v16

    :cond_10
    iget-object v5, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_bgQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    int-to-double v10, v0

    int-to-double v12, v2

    sub-double v8, v12, v8

    invoke-virtual {v5, v10, v11, v8, v9}, Lcom/ardor3d/scenegraph/shape/Quad;->resize(DD)V

    iget-object v0, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_bgQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    iget-object v2, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_defBlendState:Lcom/ardor3d/renderer/state/BlendState;

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    iget-object v14, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_bgQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v24, v0

    float-to-double v5, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    sub-double v17, v12, v8

    const-wide/16 v19, 0x0

    move-wide v15, v5

    invoke-virtual/range {v14 .. v20}, Lcom/ardor3d/scenegraph/Spatial;->setTranslation(DDD)V

    iget-object v0, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_bgQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6, v2}, Lcom/ardor3d/scenegraph/Spatial;->updateGeometricState(DZ)V

    iget-object v0, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    iget-object v2, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_bgQuad:Lcom/ardor3d/scenegraph/shape/Quad;

    iget-object v3, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_texture:Lcom/ardor3d/image/Texture2D;

    invoke-interface {v0, v2, v3, v7}, Lcom/ardor3d/renderer/TextureRenderer;->render(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/image/Texture;I)V

    iget-object v0, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    iget-object v2, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    iget-object v3, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_texture:Lcom/ardor3d/image/Texture2D;

    const/4 v5, 0x0

    invoke-interface {v0, v2, v3, v5}, Lcom/ardor3d/renderer/TextureRenderer;->render(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/image/Texture;I)V

    goto :goto_a

    :cond_11
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v4, v0}, Lcom/ardor3d/math/ColorRGBA;->setAlpha(F)V

    iget-object v0, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {v0, v4}, Lcom/ardor3d/renderer/TextureRenderer;->setBackgroundColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iget-object v0, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    iget-object v2, v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->_graphRoot:Lcom/ardor3d/scenegraph/Node;

    iget-object v3, v1, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_texture:Lcom/ardor3d/image/Texture2D;

    invoke-interface {v0, v2, v3, v7}, Lcom/ardor3d/renderer/TextureRenderer;->render(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/image/Texture;I)V

    :goto_a
    invoke-static {v4}, Lcom/ardor3d/math/ColorRGBA;->releaseTempInstance(Lcom/ardor3d/math/ColorRGBA;)V

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->resume()V

    return-void

    :goto_b
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_12
    :goto_c
    return-void
.end method
