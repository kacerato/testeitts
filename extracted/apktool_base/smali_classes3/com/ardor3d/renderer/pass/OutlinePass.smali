.class public Lcom/ardor3d/renderer/pass/OutlinePass;
.super Lcom/ardor3d/renderer/pass/RenderPass;
.source "SourceFile"


# static fields
.field public static final DEFAULT_LINE_WIDTH:F = 3.0f

.field public static final DEFAULT_OUTLINE_COLOR:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _backCull:Lcom/ardor3d/renderer/state/CullState;

.field private _blendState:Lcom/ardor3d/renderer/state/BlendState;

.field private final _frontCull:Lcom/ardor3d/renderer/state/CullState;

.field private final _noLights:Lcom/ardor3d/renderer/state/LightState;

.field private final _noTexture:Lcom/ardor3d/renderer/state/TextureState;

.field private final _wireframeState:Lcom/ardor3d/renderer/state/WireframeState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    sget-object v1, Lcom/ardor3d/math/ColorRGBA;->BLACK:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    sput-object v0, Lcom/ardor3d/renderer/pass/OutlinePass;->DEFAULT_OUTLINE_COLOR:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/ardor3d/renderer/pass/RenderPass;-><init>()V

    new-instance v0, Lcom/ardor3d/renderer/state/WireframeState;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/WireframeState;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/pass/OutlinePass;->_wireframeState:Lcom/ardor3d/renderer/state/WireframeState;

    sget-object v1, Lcom/ardor3d/renderer/state/WireframeState$Face;->FrontAndBack:Lcom/ardor3d/renderer/state/WireframeState$Face;

    invoke-virtual {v0, v1}, Lcom/ardor3d/renderer/state/WireframeState;->setFace(Lcom/ardor3d/renderer/state/WireframeState$Face;)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Lcom/ardor3d/renderer/state/WireframeState;->setLineWidth(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ardor3d/renderer/state/RenderState;->setEnabled(Z)V

    new-instance v2, Lcom/ardor3d/renderer/state/CullState;

    invoke-direct {v2}, Lcom/ardor3d/renderer/state/CullState;-><init>()V

    iput-object v2, p0, Lcom/ardor3d/renderer/pass/OutlinePass;->_frontCull:Lcom/ardor3d/renderer/state/CullState;

    sget-object v3, Lcom/ardor3d/renderer/state/CullState$Face;->Front:Lcom/ardor3d/renderer/state/CullState$Face;

    invoke-virtual {v2, v3}, Lcom/ardor3d/renderer/state/CullState;->setCullFace(Lcom/ardor3d/renderer/state/CullState$Face;)V

    new-instance v2, Lcom/ardor3d/renderer/state/CullState;

    invoke-direct {v2}, Lcom/ardor3d/renderer/state/CullState;-><init>()V

    iput-object v2, p0, Lcom/ardor3d/renderer/pass/OutlinePass;->_backCull:Lcom/ardor3d/renderer/state/CullState;

    sget-object v3, Lcom/ardor3d/renderer/state/CullState$Face;->Back:Lcom/ardor3d/renderer/state/CullState$Face;

    invoke-virtual {v2, v3}, Lcom/ardor3d/renderer/state/CullState;->setCullFace(Lcom/ardor3d/renderer/state/CullState$Face;)V

    invoke-virtual {v0, p1}, Lcom/ardor3d/renderer/state/WireframeState;->setAntialiased(Z)V

    new-instance p1, Lcom/ardor3d/renderer/state/LightState;

    invoke-direct {p1}, Lcom/ardor3d/renderer/state/LightState;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/renderer/pass/OutlinePass;->_noLights:Lcom/ardor3d/renderer/state/LightState;

    sget-object v0, Lcom/ardor3d/renderer/pass/OutlinePass;->DEFAULT_OUTLINE_COLOR:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-virtual {p1, v0}, Lcom/ardor3d/renderer/state/LightState;->setGlobalAmbient(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    invoke-virtual {p1, v1}, Lcom/ardor3d/renderer/state/RenderState;->setEnabled(Z)V

    new-instance p1, Lcom/ardor3d/renderer/state/TextureState;

    invoke-direct {p1}, Lcom/ardor3d/renderer/state/TextureState;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/renderer/pass/OutlinePass;->_noTexture:Lcom/ardor3d/renderer/state/TextureState;

    invoke-virtual {p1, v1}, Lcom/ardor3d/renderer/state/RenderState;->setEnabled(Z)V

    new-instance p1, Lcom/ardor3d/renderer/state/BlendState;

    invoke-direct {p1}, Lcom/ardor3d/renderer/state/BlendState;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/renderer/pass/OutlinePass;->_blendState:Lcom/ardor3d/renderer/state/BlendState;

    sget-object v0, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->SourceAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    invoke-virtual {p1, v0}, Lcom/ardor3d/renderer/state/BlendState;->setSourceFunction(Lcom/ardor3d/renderer/state/BlendState$SourceFunction;)V

    iget-object p1, p0, Lcom/ardor3d/renderer/pass/OutlinePass;->_blendState:Lcom/ardor3d/renderer/state/BlendState;

    sget-object v0, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->OneMinusSourceAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    invoke-virtual {p1, v0}, Lcom/ardor3d/renderer/state/BlendState;->setDestinationFunction(Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;)V

    iget-object p1, p0, Lcom/ardor3d/renderer/pass/OutlinePass;->_blendState:Lcom/ardor3d/renderer/state/BlendState;

    invoke-virtual {p1, v1}, Lcom/ardor3d/renderer/state/BlendState;->setBlendEnabled(Z)V

    iget-object p1, p0, Lcom/ardor3d/renderer/pass/OutlinePass;->_blendState:Lcom/ardor3d/renderer/state/BlendState;

    invoke-virtual {p1, v1}, Lcom/ardor3d/renderer/state/RenderState;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public doRender(Lcom/ardor3d/renderer/Renderer;)V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_spatials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_context:Lcom/ardor3d/renderer/RenderContext;

    iget-object v1, p0, Lcom/ardor3d/renderer/pass/OutlinePass;->_frontCull:Lcom/ardor3d/renderer/state/CullState;

    invoke-virtual {v0, v1}, Lcom/ardor3d/renderer/RenderContext;->enforceState(Lcom/ardor3d/renderer/state/RenderState;)V

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/pass/RenderPass;->doRender(Lcom/ardor3d/renderer/Renderer;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_context:Lcom/ardor3d/renderer/RenderContext;

    iget-object v1, p0, Lcom/ardor3d/renderer/pass/OutlinePass;->_backCull:Lcom/ardor3d/renderer/state/CullState;

    invoke-virtual {v0, v1}, Lcom/ardor3d/renderer/RenderContext;->enforceState(Lcom/ardor3d/renderer/state/RenderState;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_context:Lcom/ardor3d/renderer/RenderContext;

    iget-object v1, p0, Lcom/ardor3d/renderer/pass/OutlinePass;->_wireframeState:Lcom/ardor3d/renderer/state/WireframeState;

    invoke-virtual {v0, v1}, Lcom/ardor3d/renderer/RenderContext;->enforceState(Lcom/ardor3d/renderer/state/RenderState;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_context:Lcom/ardor3d/renderer/RenderContext;

    iget-object v1, p0, Lcom/ardor3d/renderer/pass/OutlinePass;->_noLights:Lcom/ardor3d/renderer/state/LightState;

    invoke-virtual {v0, v1}, Lcom/ardor3d/renderer/RenderContext;->enforceState(Lcom/ardor3d/renderer/state/RenderState;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_context:Lcom/ardor3d/renderer/RenderContext;

    iget-object v1, p0, Lcom/ardor3d/renderer/pass/OutlinePass;->_noTexture:Lcom/ardor3d/renderer/state/TextureState;

    invoke-virtual {v0, v1}, Lcom/ardor3d/renderer/RenderContext;->enforceState(Lcom/ardor3d/renderer/state/RenderState;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/Pass;->_context:Lcom/ardor3d/renderer/RenderContext;

    iget-object v1, p0, Lcom/ardor3d/renderer/pass/OutlinePass;->_blendState:Lcom/ardor3d/renderer/state/BlendState;

    invoke-virtual {v0, v1}, Lcom/ardor3d/renderer/RenderContext;->enforceState(Lcom/ardor3d/renderer/state/RenderState;)V

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/pass/RenderPass;->doRender(Lcom/ardor3d/renderer/Renderer;)V

    iget-object p1, p0, Lcom/ardor3d/renderer/pass/Pass;->_context:Lcom/ardor3d/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/RenderContext;->clearEnforcedStates()V

    return-void
.end method

.method public getBlendState()Lcom/ardor3d/renderer/state/BlendState;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/OutlinePass;->_blendState:Lcom/ardor3d/renderer/state/BlendState;

    return-object v0
.end method

.method public getOutlineColor()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/OutlinePass;->_noLights:Lcom/ardor3d/renderer/state/LightState;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/state/LightState;->getGlobalAmbient()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    move-result-object v0

    return-object v0
.end method

.method public getOutlineWidth()F
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/OutlinePass;->_wireframeState:Lcom/ardor3d/renderer/state/WireframeState;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/state/WireframeState;->getLineWidth()F

    move-result v0

    return v0
.end method

.method public setBlendState(Lcom/ardor3d/renderer/state/BlendState;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/renderer/pass/OutlinePass;->_blendState:Lcom/ardor3d/renderer/state/BlendState;

    return-void
.end method

.method public setOutlineColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/OutlinePass;->_noLights:Lcom/ardor3d/renderer/state/LightState;

    invoke-virtual {v0, p1}, Lcom/ardor3d/renderer/state/LightState;->setGlobalAmbient(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    return-void
.end method

.method public setOutlineWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/pass/OutlinePass;->_wireframeState:Lcom/ardor3d/renderer/state/WireframeState;

    invoke-virtual {v0, p1}, Lcom/ardor3d/renderer/state/WireframeState;->setLineWidth(F)V

    return-void
.end method
