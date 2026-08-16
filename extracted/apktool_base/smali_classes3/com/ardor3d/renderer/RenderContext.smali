.class public Lcom/ardor3d/renderer/RenderContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _capabilities:Lcom/ardor3d/renderer/ContextCapabilities;

.field protected final _contextKey:Ljava/lang/Object;

.field protected _currentCamera:Lcom/ardor3d/renderer/Camera;

.field protected final _currentStates:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/ardor3d/renderer/state/RenderState$StateType;",
            "Lcom/ardor3d/renderer/state/RenderState;",
            ">;"
        }
    .end annotation
.end field

.field protected final _enforcedBackStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/util/EnumMap<",
            "Lcom/ardor3d/renderer/state/RenderState$StateType;",
            "Lcom/ardor3d/renderer/state/RenderState;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final _enforcedStates:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/ardor3d/renderer/state/RenderState$StateType;",
            "Lcom/ardor3d/renderer/state/RenderState;",
            ">;"
        }
    .end annotation
.end field

.field protected final _glContextRep:Ljava/lang/Object;

.field protected final _lineRecord:Lcom/ardor3d/renderer/state/record/LineRecord;

.field protected final _rendererRecord:Lcom/ardor3d/renderer/state/record/RendererRecord;

.field protected final _stateRecords:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/ardor3d/renderer/state/RenderState$StateType;",
            "Lcom/ardor3d/renderer/state/record/StateRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected final _textureRenderers:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/ardor3d/renderer/ContextCapabilities;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/ardor3d/renderer/RenderContext;-><init>(Ljava/lang/Object;Lcom/ardor3d/renderer/ContextCapabilities;Lcom/ardor3d/renderer/RenderContext;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/ardor3d/renderer/ContextCapabilities;Lcom/ardor3d/renderer/RenderContext;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_enforcedStates:Ljava/util/EnumMap;

    .line 4
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_enforcedBackStack:Ljava/util/Stack;

    .line 5
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_textureRenderers:Ljava/util/Stack;

    .line 6
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_currentStates:Ljava/util/EnumMap;

    .line 7
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_stateRecords:Ljava/util/EnumMap;

    .line 8
    new-instance v0, Lcom/ardor3d/renderer/state/record/LineRecord;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/record/LineRecord;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_lineRecord:Lcom/ardor3d/renderer/state/record/LineRecord;

    .line 9
    new-instance v0, Lcom/ardor3d/renderer/state/record/RendererRecord;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/record/RendererRecord;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_rendererRecord:Lcom/ardor3d/renderer/state/record/RendererRecord;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_currentCamera:Lcom/ardor3d/renderer/Camera;

    .line 11
    iput-object p1, p0, Lcom/ardor3d/renderer/RenderContext;->_contextKey:Ljava/lang/Object;

    .line 12
    iput-object p2, p0, Lcom/ardor3d/renderer/RenderContext;->_capabilities:Lcom/ardor3d/renderer/ContextCapabilities;

    .line 13
    invoke-virtual {p0}, Lcom/ardor3d/renderer/RenderContext;->setupRecords()V

    if-nez p3, :cond_0

    .line 14
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_0
    iget-object p1, p3, Lcom/ardor3d/renderer/RenderContext;->_glContextRep:Ljava/lang/Object;

    :goto_0
    iput-object p1, p0, Lcom/ardor3d/renderer/RenderContext;->_glContextRep:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clearCurrentState(Lcom/ardor3d/renderer/state/RenderState$StateType;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_currentStates:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearCurrentStates()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_currentStates:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    return-void
.end method

.method public clearEnforcedState(Lcom/ardor3d/renderer/state/RenderState$StateType;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_enforcedStates:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearEnforcedStates()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_enforcedStates:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    return-void
.end method

.method public contextLost()V
    .locals 1

    invoke-static {p0}, Lcom/ardor3d/renderer/ContextManager;->fireCleanContextEvent(Lcom/ardor3d/renderer/RenderContext;)V

    invoke-virtual {p0}, Lcom/ardor3d/renderer/RenderContext;->invalidateStates()V

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_currentCamera:Lcom/ardor3d/renderer/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ardor3d/renderer/Camera;->update()V

    :cond_0
    return-void
.end method

.method public enforceState(Lcom/ardor3d/renderer/state/RenderState;)V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_enforcedStates:Ljava/util/EnumMap;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/state/RenderState;->getType()Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public enforceStates(Ljava/util/EnumMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/ardor3d/renderer/state/RenderState$StateType;",
            "Lcom/ardor3d/renderer/state/RenderState;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_enforcedStates:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public getCapabilities()Lcom/ardor3d/renderer/ContextCapabilities;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_capabilities:Lcom/ardor3d/renderer/ContextCapabilities;

    return-object v0
.end method

.method public getContextKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_contextKey:Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentCamera()Lcom/ardor3d/renderer/Camera;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_currentCamera:Lcom/ardor3d/renderer/Camera;

    return-object v0
.end method

.method public getCurrentState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_currentStates:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/RenderState;

    return-object p1
.end method

.method public getEnforcedState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_enforcedStates:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/RenderState;

    return-object p1
.end method

.method public getGlContextRep()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_glContextRep:Ljava/lang/Object;

    return-object v0
.end method

.method public getLineRecord()Lcom/ardor3d/renderer/state/record/LineRecord;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_lineRecord:Lcom/ardor3d/renderer/state/record/LineRecord;

    return-object v0
.end method

.method public getRendererRecord()Lcom/ardor3d/renderer/state/record/RendererRecord;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_rendererRecord:Lcom/ardor3d/renderer/state/record/RendererRecord;

    return-object v0
.end method

.method public getStateRecord(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/record/StateRecord;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_stateRecords:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/record/StateRecord;

    return-object p1
.end method

.method public hasEnforcedStates()Z
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_enforcedStates:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public invalidateStates()V
    .locals 5

    invoke-static {}, Lcom/ardor3d/renderer/state/RenderState$StateType;->values()[Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/ardor3d/renderer/RenderContext;->_stateRecords:Ljava/util/EnumMap;

    invoke-virtual {v4, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ardor3d/renderer/state/record/StateRecord;

    invoke-virtual {v3}, Lcom/ardor3d/renderer/state/record/StateRecord;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_lineRecord:Lcom/ardor3d/renderer/state/record/LineRecord;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/state/record/LineRecord;->invalidate()V

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_rendererRecord:Lcom/ardor3d/renderer/state/record/RendererRecord;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/state/record/RendererRecord;->invalidate()V

    invoke-virtual {p0}, Lcom/ardor3d/renderer/RenderContext;->clearCurrentStates()V

    return-void
.end method

.method public popEnforcedStates()V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_enforcedStates:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_enforcedStates:Ljava/util/EnumMap;

    iget-object v1, p0, Lcom/ardor3d/renderer/RenderContext;->_enforcedBackStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public popFBOTextureRenderer()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_textureRenderers:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->deactivate()V

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_textureRenderers:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_textureRenderers:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->activate()V

    :cond_0
    return-void
.end method

.method public pushEnforcedStates()V
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_enforcedBackStack:Ljava/util/Stack;

    new-instance v1, Ljava/util/EnumMap;

    iget-object v2, p0, Lcom/ardor3d/renderer/RenderContext;->_enforcedStates:Ljava/util/EnumMap;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/util/EnumMap;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pushFBOTextureRenderer(Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_textureRenderers:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_textureRenderers:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->deactivate()V

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_textureRenderers:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->activate()V

    return-void
.end method

.method public setCurrentCamera(Lcom/ardor3d/renderer/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/renderer/RenderContext;->_currentCamera:Lcom/ardor3d/renderer/Camera;

    return-void
.end method

.method public setCurrentState(Lcom/ardor3d/renderer/state/RenderState$StateType;Lcom/ardor3d/renderer/state/RenderState;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/RenderContext;->_currentStates:Ljava/util/EnumMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setupRecords()V
    .locals 6

    invoke-static {}, Lcom/ardor3d/renderer/state/RenderState$StateType;->values()[Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/ardor3d/renderer/RenderContext;->_stateRecords:Ljava/util/EnumMap;

    invoke-static {v3}, Lcom/ardor3d/renderer/state/RenderState;->createState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ardor3d/renderer/state/RenderState;->createStateRecord()Lcom/ardor3d/renderer/state/record/StateRecord;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
