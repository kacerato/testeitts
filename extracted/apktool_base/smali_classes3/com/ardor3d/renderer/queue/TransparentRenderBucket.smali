.class public Lcom/ardor3d/renderer/queue/TransparentRenderBucket;
.super Lcom/ardor3d/renderer/queue/AbstractRenderBucket;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/renderer/queue/TransparentRenderBucket$TransparentComparator;
    }
.end annotation


# instance fields
.field private final _tranparentCull:Lcom/ardor3d/renderer/state/CullState;

.field private final _transparentZBuff:Lcom/ardor3d/renderer/state/ZBufferState;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;-><init>()V

    new-instance v0, Lcom/ardor3d/renderer/state/CullState;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/CullState;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/queue/TransparentRenderBucket;->_tranparentCull:Lcom/ardor3d/renderer/state/CullState;

    new-instance v0, Lcom/ardor3d/renderer/state/ZBufferState;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/ZBufferState;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/queue/TransparentRenderBucket;->_transparentZBuff:Lcom/ardor3d/renderer/state/ZBufferState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ardor3d/renderer/state/ZBufferState;->setWritable(Z)V

    sget-object v1, Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;->LessThanOrEqualTo:Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;

    invoke-virtual {v0, v1}, Lcom/ardor3d/renderer/state/ZBufferState;->setFunction(Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;)V

    new-instance v0, Lcom/ardor3d/renderer/queue/TransparentRenderBucket$TransparentComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ardor3d/renderer/queue/TransparentRenderBucket$TransparentComparator;-><init>(Lcom/ardor3d/renderer/queue/TransparentRenderBucket;Lcom/ardor3d/renderer/queue/TransparentRenderBucket$1;)V

    iput-object v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public render(Lcom/ardor3d/renderer/Renderer;)V
    .locals 9

    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentListSize:I

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentList:[Lcom/ardor3d/scenegraph/Spatial;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v3, v2, Lcom/ardor3d/scenegraph/Mesh;

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getTransparencyType()Lcom/ardor3d/scenegraph/hint/TransparencyType;

    move-result-object v3

    sget-object v4, Lcom/ardor3d/scenegraph/hint/TransparencyType;->OnePass:Lcom/ardor3d/scenegraph/hint/TransparencyType;

    if-eq v3, v4, :cond_6

    move-object v3, v2

    check-cast v3, Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/RenderContext;->hasEnforcedStates()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/ardor3d/renderer/state/RenderState$StateType;->Cull:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v0, v4}, Lcom/ardor3d/renderer/RenderContext;->getEnforcedState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    sget-object v4, Lcom/ardor3d/renderer/state/RenderState$StateType;->Cull:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v3, v4}, Lcom/ardor3d/scenegraph/Mesh;->getWorldRenderState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;

    move-result-object v4

    :cond_2
    if-eqz v4, :cond_3

    check-cast v4, Lcom/ardor3d/renderer/state/CullState;

    invoke-virtual {v4}, Lcom/ardor3d/renderer/state/CullState;->getCullFace()Lcom/ardor3d/renderer/state/CullState$Face;

    move-result-object v4

    sget-object v5, Lcom/ardor3d/renderer/state/CullState$Face;->None:Lcom/ardor3d/renderer/state/CullState$Face;

    if-ne v4, v5, :cond_6

    :cond_3
    sget-object v2, Lcom/ardor3d/renderer/state/RenderState$StateType;->Cull:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v0, v2}, Lcom/ardor3d/renderer/RenderContext;->getEnforcedState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;

    move-result-object v4

    sget-object v5, Lcom/ardor3d/renderer/state/RenderState$StateType;->ZBuffer:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v0, v5}, Lcom/ardor3d/renderer/RenderContext;->getEnforcedState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;

    move-result-object v6

    iget-object v7, p0, Lcom/ardor3d/renderer/queue/TransparentRenderBucket;->_tranparentCull:Lcom/ardor3d/renderer/state/CullState;

    invoke-virtual {v0, v7}, Lcom/ardor3d/renderer/RenderContext;->enforceState(Lcom/ardor3d/renderer/state/RenderState;)V

    iget-object v7, p0, Lcom/ardor3d/renderer/queue/TransparentRenderBucket;->_transparentZBuff:Lcom/ardor3d/renderer/state/ZBufferState;

    invoke-virtual {v0, v7}, Lcom/ardor3d/renderer/RenderContext;->enforceState(Lcom/ardor3d/renderer/state/RenderState;)V

    iget-object v7, p0, Lcom/ardor3d/renderer/queue/TransparentRenderBucket;->_tranparentCull:Lcom/ardor3d/renderer/state/CullState;

    sget-object v8, Lcom/ardor3d/renderer/state/CullState$Face;->Front:Lcom/ardor3d/renderer/state/CullState$Face;

    invoke-virtual {v7, v8}, Lcom/ardor3d/renderer/state/CullState;->setCullFace(Lcom/ardor3d/renderer/state/CullState$Face;)V

    invoke-virtual {v3, p1}, Lcom/ardor3d/scenegraph/Mesh;->draw(Lcom/ardor3d/renderer/Renderer;)V

    invoke-virtual {v0, v5}, Lcom/ardor3d/renderer/RenderContext;->clearEnforcedState(Lcom/ardor3d/renderer/state/RenderState$StateType;)V

    if-eqz v6, :cond_4

    invoke-virtual {v0, v6}, Lcom/ardor3d/renderer/RenderContext;->enforceState(Lcom/ardor3d/renderer/state/RenderState;)V

    :cond_4
    iget-object v5, p0, Lcom/ardor3d/renderer/queue/TransparentRenderBucket;->_tranparentCull:Lcom/ardor3d/renderer/state/CullState;

    sget-object v6, Lcom/ardor3d/renderer/state/CullState$Face;->Back:Lcom/ardor3d/renderer/state/CullState$Face;

    invoke-virtual {v5, v6}, Lcom/ardor3d/renderer/state/CullState;->setCullFace(Lcom/ardor3d/renderer/state/CullState$Face;)V

    invoke-virtual {v3, p1}, Lcom/ardor3d/scenegraph/Mesh;->draw(Lcom/ardor3d/renderer/Renderer;)V

    if-eqz v4, :cond_5

    invoke-virtual {v0, v4}, Lcom/ardor3d/renderer/RenderContext;->enforceState(Lcom/ardor3d/renderer/state/RenderState;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v2}, Lcom/ardor3d/renderer/RenderContext;->clearEnforcedState(Lcom/ardor3d/renderer/state/RenderState$StateType;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v2, p1}, Lcom/ardor3d/scenegraph/Spatial;->draw(Lcom/ardor3d/renderer/Renderer;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method
