.class public Lcom/jme3/renderer/RenderContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final maxBufferObjectUnits:I = 0x8

.field public static final maxTextureUnits:I = 0x10


# instance fields
.field public alphaFunc:Lcom/jme3/material/RenderState$TestFunction;

.field public final attribIndexList:Lcom/jme3/renderer/IDList;

.field public backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field public backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field public backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

.field public backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field public blendEquation:Lcom/jme3/material/RenderState$BlendEquation;

.field public blendEquationAlpha:Lcom/jme3/material/RenderState$BlendEquationAlpha;

.field public blendMode:Lcom/jme3/material/RenderState$BlendMode;

.field public boundArrayVBO:I

.field public final boundAttribs:[Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/jme3/scene/VertexBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final boundBO:[Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/jme3/shader/bufferobject/BufferObject;",
            ">;"
        }
    .end annotation
.end field

.field public boundElementArrayVBO:I

.field public boundFB:Lcom/jme3/texture/FrameBuffer;

.field public boundFBO:I

.field public boundPixelPackPBO:I

.field public boundRB:I

.field public boundShader:Lcom/jme3/shader/Shader;

.field public boundShaderProgram:I

.field public boundTextureUnit:I

.field public final boundTextures:[Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/jme3/texture/Image;",
            ">;"
        }
    .end annotation
.end field

.field public boundVertexArray:I

.field public clearColor:Lcom/jme3/math/ColorRGBA;

.field public clipRectEnabled:Z

.field public colorWriteEnabled:Z

.field public cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

.field public depthFunc:Lcom/jme3/material/RenderState$TestFunction;

.field public depthTestEnabled:Z

.field public depthWriteEnabled:Z

.field public dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

.field public dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

.field public frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field public frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field public frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

.field public frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field public initialDrawBuf:I

.field public initialReadBuf:I

.field public lineWidth:F

.field public numTexturesSet:I

.field public pointSize:F

.field public polyOffsetEnabled:Z

.field public polyOffsetFactor:F

.field public polyOffsetUnits:F

.field public sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

.field public sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

.field public srgbWriteEnabled:Z

.field public stencilTest:Z

.field public final textureIndexList:Lcom/jme3/renderer/IDList;

.field public wireframe:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/jme3/renderer/RenderContext;->boundTextures:[Ljava/lang/ref/WeakReference;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/jme3/renderer/RenderContext;->boundBO:[Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/jme3/renderer/IDList;

    invoke-direct {v1}, Lcom/jme3/renderer/IDList;-><init>()V

    iput-object v1, p0, Lcom/jme3/renderer/RenderContext;->textureIndexList:Lcom/jme3/renderer/IDList;

    new-array v0, v0, [Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/jme3/renderer/RenderContext;->boundAttribs:[Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/jme3/renderer/IDList;

    invoke-direct {v0}, Lcom/jme3/renderer/IDList;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/RenderContext;->attribIndexList:Lcom/jme3/renderer/IDList;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    iput-object v0, p0, Lcom/jme3/renderer/RenderContext;->clearColor:Lcom/jme3/math/ColorRGBA;

    invoke-direct {p0}, Lcom/jme3/renderer/RenderContext;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    sget-object v0, Lcom/jme3/material/RenderState$FaceCullMode;->Off:Lcom/jme3/material/RenderState$FaceCullMode;

    iput-object v0, p0, Lcom/jme3/renderer/RenderContext;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jme3/renderer/RenderContext;->depthTestEnabled:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jme3/renderer/RenderContext;->depthWriteEnabled:Z

    iput-boolean v2, p0, Lcom/jme3/renderer/RenderContext;->colorWriteEnabled:Z

    iput-boolean v1, p0, Lcom/jme3/renderer/RenderContext;->clipRectEnabled:Z

    iput-boolean v1, p0, Lcom/jme3/renderer/RenderContext;->polyOffsetEnabled:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/jme3/renderer/RenderContext;->polyOffsetFactor:F

    iput v2, p0, Lcom/jme3/renderer/RenderContext;->polyOffsetUnits:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/jme3/renderer/RenderContext;->pointSize:F

    iput v3, p0, Lcom/jme3/renderer/RenderContext;->lineWidth:F

    sget-object v3, Lcom/jme3/material/RenderState$BlendMode;->Off:Lcom/jme3/material/RenderState$BlendMode;

    iput-object v3, p0, Lcom/jme3/renderer/RenderContext;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    sget-object v3, Lcom/jme3/material/RenderState$BlendEquation;->Add:Lcom/jme3/material/RenderState$BlendEquation;

    iput-object v3, p0, Lcom/jme3/renderer/RenderContext;->blendEquation:Lcom/jme3/material/RenderState$BlendEquation;

    sget-object v3, Lcom/jme3/material/RenderState$BlendEquationAlpha;->InheritColor:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    iput-object v3, p0, Lcom/jme3/renderer/RenderContext;->blendEquationAlpha:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    sget-object v3, Lcom/jme3/material/RenderState$BlendFunc;->One:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v3, p0, Lcom/jme3/renderer/RenderContext;->sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v3, p0, Lcom/jme3/renderer/RenderContext;->dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v3, p0, Lcom/jme3/renderer/RenderContext;->sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v3, p0, Lcom/jme3/renderer/RenderContext;->dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    iput-boolean v1, p0, Lcom/jme3/renderer/RenderContext;->wireframe:Z

    iput v1, p0, Lcom/jme3/renderer/RenderContext;->boundShaderProgram:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/jme3/renderer/RenderContext;->boundShader:Lcom/jme3/shader/Shader;

    iput v1, p0, Lcom/jme3/renderer/RenderContext;->boundFBO:I

    iput-object v3, p0, Lcom/jme3/renderer/RenderContext;->boundFB:Lcom/jme3/texture/FrameBuffer;

    iput v1, p0, Lcom/jme3/renderer/RenderContext;->boundRB:I

    iput v1, p0, Lcom/jme3/renderer/RenderContext;->boundElementArrayVBO:I

    iput v1, p0, Lcom/jme3/renderer/RenderContext;->boundVertexArray:I

    iput v1, p0, Lcom/jme3/renderer/RenderContext;->boundArrayVBO:I

    iput v1, p0, Lcom/jme3/renderer/RenderContext;->boundPixelPackPBO:I

    iput v1, p0, Lcom/jme3/renderer/RenderContext;->numTexturesSet:I

    iput v1, p0, Lcom/jme3/renderer/RenderContext;->boundTextureUnit:I

    iput-boolean v1, p0, Lcom/jme3/renderer/RenderContext;->stencilTest:Z

    sget-object v3, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v3, p0, Lcom/jme3/renderer/RenderContext;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v3, p0, Lcom/jme3/renderer/RenderContext;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v3, p0, Lcom/jme3/renderer/RenderContext;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v3, p0, Lcom/jme3/renderer/RenderContext;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v3, p0, Lcom/jme3/renderer/RenderContext;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v3, p0, Lcom/jme3/renderer/RenderContext;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    sget-object v3, Lcom/jme3/material/RenderState$TestFunction;->Always:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v3, p0, Lcom/jme3/renderer/RenderContext;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v3, p0, Lcom/jme3/renderer/RenderContext;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    sget-object v3, Lcom/jme3/material/RenderState$TestFunction;->Less:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v3, p0, Lcom/jme3/renderer/RenderContext;->depthFunc:Lcom/jme3/material/RenderState$TestFunction;

    sget-object v3, Lcom/jme3/material/RenderState$TestFunction;->Greater:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v3, p0, Lcom/jme3/renderer/RenderContext;->alphaFunc:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p0, Lcom/jme3/renderer/RenderContext;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    iput-boolean v1, p0, Lcom/jme3/renderer/RenderContext;->srgbWriteEnabled:Z

    iget-object v0, p0, Lcom/jme3/renderer/RenderContext;->clearColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/jme3/math/ColorRGBA;->set(FFFF)Lcom/jme3/math/ColorRGBA;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 5

    invoke-direct {p0}, Lcom/jme3/renderer/RenderContext;->init()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/jme3/renderer/RenderContext;->boundTextures:[Ljava/lang/ref/WeakReference;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_0

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/jme3/renderer/RenderContext;->textureIndexList:Lcom/jme3/renderer/IDList;

    invoke-virtual {v1}, Lcom/jme3/renderer/IDList;->reset()V

    :goto_1
    iget-object v1, p0, Lcom/jme3/renderer/RenderContext;->boundAttribs:[Ljava/lang/ref/WeakReference;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/jme3/renderer/RenderContext;->attribIndexList:Lcom/jme3/renderer/IDList;

    invoke-virtual {v0}, Lcom/jme3/renderer/IDList;->reset()V

    return-void
.end method
