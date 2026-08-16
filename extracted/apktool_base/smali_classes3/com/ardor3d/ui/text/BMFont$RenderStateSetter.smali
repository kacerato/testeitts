.class public Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/ui/text/BMFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderStateSetter"
.end annotation


# instance fields
.field _blendDisabledTestRef:F

.field _blendEnabledTestRef:F

.field _useBlend:Z

.field public blendState:Lcom/ardor3d/renderer/state/BlendState;

.field public textureState:Lcom/ardor3d/renderer/state/TextureState;

.field final synthetic this$0:Lcom/ardor3d/ui/text/BMFont;

.field public zBuffState:Lcom/ardor3d/renderer/state/ZBufferState;


# direct methods
.method public constructor <init>(Lcom/ardor3d/ui/text/BMFont;Lcom/ardor3d/image/Texture;Z)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->this$0:Lcom/ardor3d/ui/text/BMFont;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x3e99999a    # 0.3f

    iput p1, p0, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->_blendDisabledTestRef:F

    const p1, 0x3ca3d70a    # 0.02f

    iput p1, p0, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->_blendEnabledTestRef:F

    new-instance p1, Lcom/ardor3d/renderer/state/TextureState;

    invoke-direct {p1}, Lcom/ardor3d/renderer/state/TextureState;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->textureState:Lcom/ardor3d/renderer/state/TextureState;

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/state/TextureState;->setTexture(Lcom/ardor3d/image/Texture;)V

    new-instance p1, Lcom/ardor3d/renderer/state/BlendState;

    invoke-direct {p1}, Lcom/ardor3d/renderer/state/BlendState;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->blendState:Lcom/ardor3d/renderer/state/BlendState;

    sget-object p2, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->SourceAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/state/BlendState;->setSourceFunction(Lcom/ardor3d/renderer/state/BlendState$SourceFunction;)V

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->blendState:Lcom/ardor3d/renderer/state/BlendState;

    sget-object p2, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->OneMinusSourceAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/state/BlendState;->setDestinationFunction(Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;)V

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->blendState:Lcom/ardor3d/renderer/state/BlendState;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/state/BlendState;->setTestEnabled(Z)V

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->blendState:Lcom/ardor3d/renderer/state/BlendState;

    sget-object p2, Lcom/ardor3d/renderer/state/BlendState$TestFunction;->GreaterThan:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/state/BlendState;->setTestFunction(Lcom/ardor3d/renderer/state/BlendState$TestFunction;)V

    new-instance p1, Lcom/ardor3d/renderer/state/ZBufferState;

    invoke-direct {p1}, Lcom/ardor3d/renderer/state/ZBufferState;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->zBuffState:Lcom/ardor3d/renderer/state/ZBufferState;

    sget-object p2, Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;->LessThanOrEqualTo:Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/state/ZBufferState;->setFunction(Lcom/ardor3d/renderer/state/ZBufferState$TestFunction;)V

    invoke-virtual {p0, p3}, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->setUseBlend(Z)V

    return-void
.end method


# virtual methods
.method public applyTo(Lcom/ardor3d/scenegraph/Spatial;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->textureState:Lcom/ardor3d/renderer/state/TextureState;

    invoke-virtual {p1, v0}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->blendState:Lcom/ardor3d/renderer/state/BlendState;

    invoke-virtual {p1, v0}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->zBuffState:Lcom/ardor3d/renderer/state/ZBufferState;

    invoke-virtual {p1, v0}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    iget-boolean v0, p0, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->_useBlend:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p1

    sget-object v0, Lcom/ardor3d/renderer/queue/RenderBucketType;->Transparent:Lcom/ardor3d/renderer/queue/RenderBucketType;

    invoke-virtual {p1, v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p1

    sget-object v0, Lcom/ardor3d/renderer/queue/RenderBucketType;->Opaque:Lcom/ardor3d/renderer/queue/RenderBucketType;

    invoke-virtual {p1, v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V

    :goto_0
    return-void
.end method

.method public setUseBlend(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->_useBlend:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->blendState:Lcom/ardor3d/renderer/state/BlendState;

    invoke-virtual {p1, v1}, Lcom/ardor3d/renderer/state/BlendState;->setBlendEnabled(Z)V

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->blendState:Lcom/ardor3d/renderer/state/BlendState;

    iget v1, p0, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->_blendDisabledTestRef:F

    invoke-virtual {p1, v1}, Lcom/ardor3d/renderer/state/BlendState;->setReference(F)V

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->zBuffState:Lcom/ardor3d/renderer/state/ZBufferState;

    invoke-virtual {p1, v0}, Lcom/ardor3d/renderer/state/ZBufferState;->setWritable(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->blendState:Lcom/ardor3d/renderer/state/BlendState;

    invoke-virtual {p1, v0}, Lcom/ardor3d/renderer/state/BlendState;->setBlendEnabled(Z)V

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->blendState:Lcom/ardor3d/renderer/state/BlendState;

    iget v0, p0, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->_blendEnabledTestRef:F

    invoke-virtual {p1, v0}, Lcom/ardor3d/renderer/state/BlendState;->setReference(F)V

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMFont$RenderStateSetter;->zBuffState:Lcom/ardor3d/renderer/state/ZBufferState;

    invoke-virtual {p1, v1}, Lcom/ardor3d/renderer/state/ZBufferState;->setWritable(Z)V

    :goto_0
    return-void
.end method
