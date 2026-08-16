.class public abstract Lcom/ardor3d/renderer/pass/Pass;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _context:Lcom/ardor3d/renderer/RenderContext;

.field protected _enabled:Z

.field protected final _passStates:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/ardor3d/renderer/state/RenderState$StateType;",
            "Lcom/ardor3d/renderer/state/RenderState;",
            ">;"
        }
    .end annotation
.end field

.field protected _spatials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/scenegraph/Spatial;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_spatials:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_enabled:Z

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_passStates:Ljava/util/EnumMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_context:Lcom/ardor3d/renderer/RenderContext;

    return-void
.end method


# virtual methods
.method public add(Lcom/ardor3d/scenegraph/Spatial;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_spatials:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cleanUp()V
    .locals 0

    return-void
.end method

.method public clearPassState(Lcom/ardor3d/renderer/state/RenderState$StateType;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_passStates:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearPassStates()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_passStates:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    return-void
.end method

.method public contains(Lcom/ardor3d/scenegraph/Spatial;)Z
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_spatials:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract doRender(Lcom/ardor3d/renderer/Renderer;)V
.end method

.method public doRender(Lcom/ardor3d/renderer/TextureRenderer;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/renderer/TextureRenderer;",
            "I",
            "Ljava/util/List<",
            "Lcom/ardor3d/image/Texture;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This pass type does not support RTT use."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doUpdate(D)V
    .locals 0

    return-void
.end method

.method public get(I)Lcom/ardor3d/scenegraph/Spatial;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_spatials:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/scenegraph/Spatial;

    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_enabled:Z

    return v0
.end method

.method public remove(Lcom/ardor3d/scenegraph/Spatial;)Z
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_spatials:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final renderPass(Lcom/ardor3d/renderer/Renderer;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_enabled:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_context:Lcom/ardor3d/renderer/RenderContext;

    .line 3
    invoke-virtual {v0}, Lcom/ardor3d/renderer/RenderContext;->pushEnforcedStates()V

    .line 4
    iget-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_context:Lcom/ardor3d/renderer/RenderContext;

    iget-object v1, p0, Lcom/ardor3d/renderer/pass/Pass;->_passStates:Ljava/util/EnumMap;

    invoke-virtual {v0, v1}, Lcom/ardor3d/renderer/RenderContext;->enforceStates(Ljava/util/EnumMap;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/pass/Pass;->doRender(Lcom/ardor3d/renderer/Renderer;)V

    .line 6
    iget-object p1, p0, Lcom/ardor3d/renderer/pass/Pass;->_context:Lcom/ardor3d/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/RenderContext;->popEnforcedStates()V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/ardor3d/renderer/pass/Pass;->_context:Lcom/ardor3d/renderer/RenderContext;

    return-void
.end method

.method public final renderPass(Lcom/ardor3d/renderer/TextureRenderer;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/renderer/TextureRenderer;",
            "I",
            "Ljava/util/List<",
            "Lcom/ardor3d/image/Texture;",
            ">;)V"
        }
    .end annotation

    .line 8
    iget-boolean v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_enabled:Z

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_context:Lcom/ardor3d/renderer/RenderContext;

    .line 10
    invoke-virtual {v0}, Lcom/ardor3d/renderer/RenderContext;->pushEnforcedStates()V

    .line 11
    iget-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_context:Lcom/ardor3d/renderer/RenderContext;

    iget-object v1, p0, Lcom/ardor3d/renderer/pass/Pass;->_passStates:Ljava/util/EnumMap;

    invoke-virtual {v0, v1}, Lcom/ardor3d/renderer/RenderContext;->enforceStates(Ljava/util/EnumMap;)V

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/ardor3d/renderer/pass/Pass;->doRender(Lcom/ardor3d/renderer/TextureRenderer;ILjava/util/List;)V

    .line 13
    iget-object p1, p0, Lcom/ardor3d/renderer/pass/Pass;->_context:Lcom/ardor3d/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/RenderContext;->popEnforcedStates()V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/ardor3d/renderer/pass/Pass;->_context:Lcom/ardor3d/renderer/RenderContext;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/pass/Pass;->_enabled:Z

    return-void
.end method

.method public setPassState(Lcom/ardor3d/renderer/state/RenderState;)V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_passStates:Ljava/util/EnumMap;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/state/RenderState;->getType()Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_spatials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final updatePass(D)V
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/renderer/pass/Pass;->doUpdate(D)V

    return-void
.end method
