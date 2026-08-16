.class public abstract Lcom/ardor3d/renderer/AbstractRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/renderer/Renderer;


# instance fields
.field protected final _backgroundColor:Lcom/ardor3d/math/ColorRGBA;

.field protected _inOrthoMode:Z

.field protected _processingQueue:Z

.field protected _queue:Lcom/ardor3d/renderer/queue/RenderQueue;

.field protected _stencilClearValue:I

.field protected final defaultStateList:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/ardor3d/renderer/state/RenderState$StateType;",
            "Lcom/ardor3d/renderer/state/RenderState;",
            ">;"
        }
    .end annotation
.end field

.field protected renderLogic:Lcom/ardor3d/renderer/RenderLogic;


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    sget-object v1, Lcom/ardor3d/math/ColorRGBA;->BLACK:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iput-object v0, p0, Lcom/ardor3d/renderer/AbstractRenderer;->_backgroundColor:Lcom/ardor3d/math/ColorRGBA;

    new-instance v0, Lcom/ardor3d/renderer/queue/RenderQueue;

    invoke-direct {v0}, Lcom/ardor3d/renderer/queue/RenderQueue;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/AbstractRenderer;->_queue:Lcom/ardor3d/renderer/queue/RenderQueue;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/ardor3d/renderer/AbstractRenderer;->defaultStateList:Ljava/util/EnumMap;

    invoke-static {}, Lcom/ardor3d/renderer/state/RenderState$StateType;->values()[Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/ardor3d/renderer/state/RenderState;->createState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/ardor3d/renderer/state/RenderState;->setEnabled(Z)V

    iget-object v6, p0, Lcom/ardor3d/renderer/AbstractRenderer;->defaultStateList:Ljava/util/EnumMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addStats(Lcom/ardor3d/renderer/IndexMode;I)V
    .locals 2

    invoke-static {p1, p2}, Lcom/ardor3d/renderer/IndexMode;->getPrimitiveCount(Lcom/ardor3d/renderer/IndexMode;I)I

    move-result p2

    sget-object v0, Lcom/ardor3d/renderer/AbstractRenderer$1;->$SwitchMap$com$ardor3d$renderer$IndexMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/ardor3d/util/stat/StatType;->STAT_QUAD_COUNT:Lcom/ardor3d/util/stat/StatType;

    int-to-double v0, p2

    invoke-static {p1, v0, v1}, Lcom/ardor3d/util/stat/StatCollector;->addStat(Lcom/ardor3d/util/stat/StatType;D)V

    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/ardor3d/util/stat/StatType;->STAT_POINT_COUNT:Lcom/ardor3d/util/stat/StatType;

    int-to-double v0, p2

    invoke-static {p1, v0, v1}, Lcom/ardor3d/util/stat/StatCollector;->addStat(Lcom/ardor3d/util/stat/StatType;D)V

    goto :goto_0

    :pswitch_2
    sget-object p1, Lcom/ardor3d/util/stat/StatType;->STAT_LINE_COUNT:Lcom/ardor3d/util/stat/StatType;

    int-to-double v0, p2

    invoke-static {p1, v0, v1}, Lcom/ardor3d/util/stat/StatCollector;->addStat(Lcom/ardor3d/util/stat/StatType;D)V

    goto :goto_0

    :pswitch_3
    sget-object p1, Lcom/ardor3d/util/stat/StatType;->STAT_TRIANGLE_COUNT:Lcom/ardor3d/util/stat/StatType;

    int-to-double v0, p2

    invoke-static {p1, v0, v1}, Lcom/ardor3d/util/stat/StatCollector;->addStat(Lcom/ardor3d/util/stat/StatType;D)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public applyState(Lcom/ardor3d/renderer/state/RenderState$StateType;Lcom/ardor3d/renderer/state/RenderState;)V
    .locals 3

    sget-boolean v0, Lcom/ardor3d/util/Constants;->stats:Z

    if-eqz v0, :cond_0

    sget-object v1, Lcom/ardor3d/util/stat/StatType;->STAT_STATES_TIMER:Lcom/ardor3d/util/stat/StatType;

    invoke-static {v1}, Lcom/ardor3d/util/stat/StatCollector;->startStat(Lcom/ardor3d/util/stat/StatType;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/renderer/AbstractRenderer;->getProperRenderState(Lcom/ardor3d/renderer/state/RenderState$StateType;Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    move-result-object p2

    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v1

    sget-object v2, Lcom/ardor3d/renderer/state/RenderState;->_quickCompare:Ljava/util/EnumSet;

    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/ardor3d/renderer/state/RenderState;->needsRefresh()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Lcom/ardor3d/renderer/RenderContext;->getCurrentState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;

    move-result-object p1

    if-eq p2, p1, :cond_2

    :cond_1
    invoke-virtual {p0, p2}, Lcom/ardor3d/renderer/AbstractRenderer;->doApplyState(Lcom/ardor3d/renderer/state/RenderState;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    :cond_2
    if-eqz v0, :cond_3

    sget-object p1, Lcom/ardor3d/util/stat/StatType;->STAT_STATES_TIMER:Lcom/ardor3d/util/stat/StatType;

    invoke-static {p1}, Lcom/ardor3d/util/stat/StatCollector;->endStat(Lcom/ardor3d/util/stat/StatType;)V

    :cond_3
    return-void
.end method

.method public abstract doApplyState(Lcom/ardor3d/renderer/state/RenderState;)V
.end method

.method public getBackgroundColor()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractRenderer;->_backgroundColor:Lcom/ardor3d/math/ColorRGBA;

    return-object v0
.end method

.method public getProperRenderState(Lcom/ardor3d/renderer/state/RenderState$StateType;Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;
    .locals 2

    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/renderer/RenderContext;->hasEnforcedStates()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/ardor3d/renderer/RenderContext;->getEnforcedState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    return-object p2

    :cond_1
    iget-object p2, p0, Lcom/ardor3d/renderer/AbstractRenderer;->defaultStateList:Ljava/util/EnumMap;

    invoke-virtual {p2, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/RenderState;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public getQueue()Lcom/ardor3d/renderer/queue/RenderQueue;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractRenderer;->_queue:Lcom/ardor3d/renderer/queue/RenderQueue;

    return-object v0
.end method

.method public getStencilClearValue()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/AbstractRenderer;->_stencilClearValue:I

    return v0
.end method

.method public getTotalInterleavedSize(Lcom/ardor3d/renderer/RenderContext;Lcom/ardor3d/scenegraph/FloatBufferData;Lcom/ardor3d/scenegraph/FloatBufferData;Lcom/ardor3d/scenegraph/FloatBufferData;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/renderer/RenderContext;",
            "Lcom/ardor3d/scenegraph/FloatBufferData;",
            "Lcom/ardor3d/scenegraph/FloatBufferData;",
            "Lcom/ardor3d/scenegraph/FloatBufferData;",
            "Ljava/util/List<",
            "Lcom/ardor3d/scenegraph/FloatBufferData;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/ardor3d/renderer/RenderContext;->getCapabilities()Lcom/ardor3d/renderer/ContextCapabilities;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBufferLimit()I

    move-result p3

    mul-int/lit8 p3, p3, 0x4

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBufferLimit()I

    move-result p4

    mul-int/lit8 p4, p4, 0x4

    add-int/2addr p3, p4

    :cond_1
    if-eqz p5, :cond_4

    sget-object p4, Lcom/ardor3d/renderer/state/RenderState$StateType;->Texture:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {p1, p4}, Lcom/ardor3d/renderer/RenderContext;->getCurrentState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/TextureState;

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/ardor3d/renderer/ContextCapabilities;->isMultitextureSupported()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {v0}, Lcom/ardor3d/renderer/ContextCapabilities;->getNumberOfFragmentTexCoordUnits()I

    move-result p4

    const/16 v0, 0x20

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    goto :goto_1

    :cond_2
    const/4 p4, 0x1

    :goto_1
    if-ge v1, p4, :cond_4

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ardor3d/renderer/state/TextureState;->getMaxTextureIndexUsed()I

    move-result v0

    if-gt v1, v0, :cond_3

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/FloatBufferData;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBufferLimit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr p3, v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBufferLimit()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p3, p1

    :cond_5
    return p3
.end method

.method public isClipTestEnabled()Z
    .locals 1

    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/renderer/RenderContext;->getRendererRecord()Lcom/ardor3d/renderer/state/record/RendererRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/renderer/state/record/RendererRecord;->isClippingTestEnabled()Z

    move-result v0

    return v0
.end method

.method public isInOrthoMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/AbstractRenderer;->_inOrthoMode:Z

    return v0
.end method

.method public isProcessingQueue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/AbstractRenderer;->_processingQueue:Z

    return v0
.end method

.method public setRenderLogic(Lcom/ardor3d/renderer/RenderLogic;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/renderer/AbstractRenderer;->renderLogic:Lcom/ardor3d/renderer/RenderLogic;

    return-void
.end method

.method public setStencilClearValue(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/AbstractRenderer;->_stencilClearValue:I

    return-void
.end method
