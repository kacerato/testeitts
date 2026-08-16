.class public final Lcom/jme3/renderer/opengl/GLRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/renderer/Renderer;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final GLVERSION_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALIDATE_SHADER:Z = false

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final caps:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/jme3/renderer/Caps;",
            ">;"
        }
    .end annotation
.end field

.field private clipH:I

.field private clipW:I

.field private clipX:I

.field private clipY:I

.field private final context:Lcom/jme3/renderer/RenderContext;

.field private debug:Z

.field private debugGroupId:I

.field private defaultAnisotropicFilter:I

.field private defaultFBO:I

.field private extensions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final floatBuf16:Ljava/nio/FloatBuffer;

.field private generateMipmapsForFramebuffers:Z

.field private final gl:Lcom/jme3/renderer/opengl/GL;

.field private final gl2:Lcom/jme3/renderer/opengl/GL2;

.field private final gl3:Lcom/jme3/renderer/opengl/GL3;

.field private final gl4:Lcom/jme3/renderer/opengl/GL4;

.field private final glext:Lcom/jme3/renderer/opengl/GLExt;

.field private final glfbo:Lcom/jme3/renderer/opengl/GLFbo;

.field private final intBuf1:Ljava/nio/IntBuffer;

.field private final intBuf16:Ljava/nio/IntBuffer;

.field private final limits:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/jme3/renderer/Limits;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private linearizeSrgbImages:Z

.field private mainFbOverride:Lcom/jme3/texture/FrameBuffer;

.field private mainFrameBufferSrgb:Z

.field private final nameBuf:Ljava/nio/ByteBuffer;

.field private final objManager:Lcom/jme3/util/NativeObjectManager;

.field private final statistics:Lcom/jme3/renderer/Statistics;

.field private final stringBuf:Ljava/lang/StringBuilder;

.field private final texUtil:Lcom/jme3/renderer/opengl/TextureUtil;

.field private vpH:I

.field private vpW:I

.field private vpX:I

.field private vpY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/renderer/opengl/GLRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    const-string v0, ".*?(\\d+)\\.(\\d+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jme3/renderer/opengl/GLRenderer;->GLVERSION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/renderer/opengl/GL;Lcom/jme3/renderer/opengl/GLExt;Lcom/jme3/renderer/opengl/GLFbo;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xfa

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->nameBuf:Ljava/nio/ByteBuffer;

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->floatBuf16:Ljava/nio/FloatBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->stringBuf:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf16:Ljava/nio/IntBuffer;

    new-instance v1, Lcom/jme3/renderer/RenderContext;

    invoke-direct {v1}, Lcom/jme3/renderer/RenderContext;-><init>()V

    iput-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    new-instance v1, Lcom/jme3/util/NativeObjectManager;

    invoke-direct {v1}, Lcom/jme3/util/NativeObjectManager;-><init>()V

    iput-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    const-class v1, Lcom/jme3/renderer/Caps;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/jme3/renderer/Limits;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->mainFbOverride:Lcom/jme3/texture/FrameBuffer;

    const/4 v2, 0x0

    iput v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->defaultFBO:I

    new-instance v3, Lcom/jme3/renderer/Statistics;

    invoke-direct {v3}, Lcom/jme3/renderer/Statistics;-><init>()V

    iput-object v3, p0, Lcom/jme3/renderer/opengl/GLRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    iput v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->defaultAnisotropicFilter:I

    iput-boolean v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->generateMipmapsForFramebuffers:Z

    iput-boolean v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->debug:Z

    iput v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->debugGroupId:I

    iput-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    instance-of v0, p1, Lcom/jme3/renderer/opengl/GL2;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/jme3/renderer/opengl/GL2;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl2:Lcom/jme3/renderer/opengl/GL2;

    instance-of v2, p1, Lcom/jme3/renderer/opengl/GL3;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/jme3/renderer/opengl/GL3;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iput-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl3:Lcom/jme3/renderer/opengl/GL3;

    instance-of v2, p1, Lcom/jme3/renderer/opengl/GL4;

    if-eqz v2, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/jme3/renderer/opengl/GL4;

    :cond_2
    iput-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl4:Lcom/jme3/renderer/opengl/GL4;

    iput-object p3, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    iput-object p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    new-instance p3, Lcom/jme3/renderer/opengl/TextureUtil;

    invoke-direct {p3, p1, v0, p2}, Lcom/jme3/renderer/opengl/TextureUtil;-><init>(Lcom/jme3/renderer/opengl/GL;Lcom/jme3/renderer/opengl/GL2;Lcom/jme3/renderer/opengl/GLExt;)V

    iput-object p3, p0, Lcom/jme3/renderer/opengl/GLRenderer;->texUtil:Lcom/jme3/renderer/opengl/TextureUtil;

    return-void
.end method

.method private bindFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V
    .locals 4

    const/4 v0, 0x1

    const v1, 0x8d40

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget p1, p1, Lcom/jme3/renderer/RenderContext;->boundFBO:I

    iget v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->defaultFBO:I

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    invoke-interface {p1, v1, v2}, Lcom/jme3/renderer/opengl/GLFbo;->glBindFramebufferEXT(II)V

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/jme3/renderer/Statistics;->onFrameBufferUse(Lcom/jme3/texture/FrameBuffer;Z)V

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->defaultFBO:I

    iput v0, p1, Lcom/jme3/renderer/RenderContext;->boundFBO:I

    iput-object v1, p1, Lcom/jme3/renderer/RenderContext;->boundFB:Lcom/jme3/texture/FrameBuffer;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v2, v2, Lcom/jme3/renderer/RenderContext;->boundFBO:I

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/jme3/renderer/opengl/GLFbo;->glBindFramebufferEXT(II)V

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v2

    iput v2, v1, Lcom/jme3/renderer/RenderContext;->boundFBO:I

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-object p1, v1, Lcom/jme3/renderer/RenderContext;->boundFB:Lcom/jme3/texture/FrameBuffer;

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {v1, p1, v0}, Lcom/jme3/renderer/Statistics;->onFrameBufferUse(Lcom/jme3/texture/FrameBuffer;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jme3/renderer/Statistics;->onFrameBufferUse(Lcom/jme3/texture/FrameBuffer;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private bindShaderStorageBlock(III)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl4:Lcom/jme3/renderer/opengl/GL4;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/jme3/renderer/opengl/GL4;->glShaderStorageBlockBinding(III)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    invoke-interface {v0, p1, p2, p3}, Lcom/jme3/renderer/opengl/GLExt;->glShaderStorageBlockBinding(III)V

    :goto_0
    return-void
.end method

.method private bindShaderStorageBufferBase(II)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl4:Lcom/jme3/renderer/opengl/GL4;

    const v1, 0x90d2

    if-eqz v0, :cond_0

    invoke-interface {v0, v1, p1, p2}, Lcom/jme3/renderer/opengl/GL3;->glBindBufferBase(III)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    invoke-interface {v0, v1, p1, p2}, Lcom/jme3/renderer/opengl/GLExt;->glBindBufferBase(III)V

    :goto_0
    return-void
.end method

.method private bindTextureAndUnit(ILcom/jme3/texture/Image;I)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v0, v0, Lcom/jme3/renderer/RenderContext;->boundTextureUnit:I

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v1, 0x84c0

    add-int/2addr v1, p3

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glActiveTexture(I)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput p3, v0, Lcom/jme3/renderer/RenderContext;->boundTextureUnit:I

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->boundTextures:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, p3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/jme3/renderer/Statistics;->onTextureUse(Lcom/jme3/texture/Image;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/jme3/renderer/opengl/GL;->glBindTexture(II)V

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object p1, p1, Lcom/jme3/renderer/RenderContext;->boundTextures:[Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    aput-object v0, p1, p3

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/jme3/renderer/Statistics;->onTextureUse(Lcom/jme3/texture/Image;Z)V

    :goto_1
    return-void
.end method

.method private bindTextureOnly(ILcom/jme3/texture/Image;I)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->boundTextures:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, p3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/jme3/renderer/Statistics;->onTextureUse(Lcom/jme3/texture/Image;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v0, v0, Lcom/jme3/renderer/RenderContext;->boundTextureUnit:I

    if-eq v0, p3, :cond_2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v1, 0x84c0

    add-int/2addr v1, p3

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glActiveTexture(I)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput p3, v0, Lcom/jme3/renderer/RenderContext;->boundTextureUnit:I

    :cond_2
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/jme3/renderer/opengl/GL;->glBindTexture(II)V

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object p1, p1, Lcom/jme3/renderer/RenderContext;->boundTextures:[Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    aput-object v0, p1, p3

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/jme3/renderer/Statistics;->onTextureUse(Lcom/jme3/texture/Image;Z)V

    :goto_1
    return-void
.end method

.method private bindUniformBlock(III)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl3:Lcom/jme3/renderer/opengl/GL3;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/jme3/renderer/opengl/GL3;->glUniformBlockBinding(III)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    invoke-interface {v0, p1, p2, p3}, Lcom/jme3/renderer/opengl/GLExt;->glUniformBlockBinding(III)V

    :goto_0
    return-void
.end method

.method private bindUniformBufferBase(II)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl3:Lcom/jme3/renderer/opengl/GL3;

    const v1, 0x8a11

    if-eqz v0, :cond_0

    invoke-interface {v0, v1, p1, p2}, Lcom/jme3/renderer/opengl/GL3;->glBindBufferBase(III)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    invoke-interface {v0, v1, p1, p2}, Lcom/jme3/renderer/opengl/GLExt;->glBindBufferBase(III)V

    :goto_0
    return-void
.end method

.method private blendEquationSeparate(Lcom/jme3/material/RenderState$BlendEquation;Lcom/jme3/material/RenderState$BlendEquationAlpha;)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v1, v0, Lcom/jme3/renderer/RenderContext;->blendEquation:Lcom/jme3/material/RenderState$BlendEquation;

    if-ne p1, v1, :cond_0

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->blendEquationAlpha:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    if-eq p2, v0, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->convertBlendEquation(Lcom/jme3/material/RenderState$BlendEquation;)I

    move-result v0

    sget-object v1, Lcom/jme3/material/RenderState$BlendEquationAlpha;->InheritColor:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    if-ne p2, v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/jme3/renderer/opengl/GLRenderer;->convertBlendEquationAlpha(Lcom/jme3/material/RenderState$BlendEquationAlpha;)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v2, v0, v1}, Lcom/jme3/renderer/opengl/GL;->glBlendEquationSeparate(II)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-object p1, v0, Lcom/jme3/renderer/RenderContext;->blendEquation:Lcom/jme3/material/RenderState$BlendEquation;

    iput-object p2, v0, Lcom/jme3/renderer/RenderContext;->blendEquationAlpha:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    :cond_2
    return-void
.end method

.method private blendFunc(Lcom/jme3/material/RenderState$BlendFunc;Lcom/jme3/material/RenderState$BlendFunc;)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v1, v0, Lcom/jme3/renderer/RenderContext;->sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    if-ne p1, v1, :cond_0

    iget-object v1, v0, Lcom/jme3/renderer/RenderContext;->dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    if-ne p2, v1, :cond_0

    iget-object v1, v0, Lcom/jme3/renderer/RenderContext;->sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    if-ne p1, v1, :cond_0

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    if-eq p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->convertBlendFunc(Lcom/jme3/material/RenderState$BlendFunc;)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/jme3/renderer/opengl/GLRenderer;->convertBlendFunc(Lcom/jme3/material/RenderState$BlendFunc;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/jme3/renderer/opengl/GL;->glBlendFunc(II)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-object p1, v0, Lcom/jme3/renderer/RenderContext;->sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object p2, v0, Lcom/jme3/renderer/RenderContext;->dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object p1, v0, Lcom/jme3/renderer/RenderContext;->sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object p2, v0, Lcom/jme3/renderer/RenderContext;->dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    :cond_1
    return-void
.end method

.method private blendFuncSeparate(Lcom/jme3/material/RenderState$BlendFunc;Lcom/jme3/material/RenderState$BlendFunc;Lcom/jme3/material/RenderState$BlendFunc;Lcom/jme3/material/RenderState$BlendFunc;)V
    .locals 5

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v1, v0, Lcom/jme3/renderer/RenderContext;->sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    if-ne p1, v1, :cond_0

    iget-object v1, v0, Lcom/jme3/renderer/RenderContext;->dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    if-ne p2, v1, :cond_0

    iget-object v1, v0, Lcom/jme3/renderer/RenderContext;->sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    if-ne p3, v1, :cond_0

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    if-eq p4, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->convertBlendFunc(Lcom/jme3/material/RenderState$BlendFunc;)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/jme3/renderer/opengl/GLRenderer;->convertBlendFunc(Lcom/jme3/material/RenderState$BlendFunc;)I

    move-result v2

    invoke-direct {p0, p3}, Lcom/jme3/renderer/opengl/GLRenderer;->convertBlendFunc(Lcom/jme3/material/RenderState$BlendFunc;)I

    move-result v3

    invoke-direct {p0, p4}, Lcom/jme3/renderer/opengl/GLRenderer;->convertBlendFunc(Lcom/jme3/material/RenderState$BlendFunc;)I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/jme3/renderer/opengl/GL;->glBlendFuncSeparate(IIII)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-object p1, v0, Lcom/jme3/renderer/RenderContext;->sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object p2, v0, Lcom/jme3/renderer/RenderContext;->dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object p3, v0, Lcom/jme3/renderer/RenderContext;->sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object p4, v0, Lcom/jme3/renderer/RenderContext;->dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    :cond_1
    return-void
.end method

.method private changeBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    if-eq p1, v0, :cond_2

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Off:Lcom/jme3/material/RenderState$BlendMode;

    const/16 v2, 0xbe2

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0, v2}, Lcom/jme3/renderer/opengl/GL;->glDisable(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0, v2}, Lcom/jme3/renderer/opengl/GL;->glEnable(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-object p1, v0, Lcom/jme3/renderer/RenderContext;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    :cond_2
    return-void
.end method

.method private checkFrameBufferError()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    const v1, 0x8d40

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GLFbo;->glCheckFramebufferStatusEXT(I)I

    move-result v0

    const v1, 0x8d56

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Some video driver error or programming error occurred. Framebuffer object status is invalid. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Framebuffer object format is unsupported by the video hardware."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Incomplete read buffer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Incomplete draw buffer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Framebuffer attachments must have same formats."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Framebuffer attachments must have same dimensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Framebuffer doesn\'t have any renderbuffers attached."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Framebuffer has erroneous attachment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Incomplete multisample buffer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x8cd5
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8cd9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkNonPowerOfTwo(Lcom/jme3/texture/Texture;)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->isNPOT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->NonPowerOfTwoTextures:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->PartialNonPowerOfTwoTextures:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getMinFilter()Lcom/jme3/texture/Texture$MinFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/texture/Texture$MinFilter;->usesMipMapLevels()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getType()Lcom/jme3/texture/Texture$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "repeating non-power-of-2 textures are not supported by the video hardware"

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unrecognized texture type"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    sget-object v0, Lcom/jme3/texture/Texture$WrapAxis;->R:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {p1, v0}, Lcom/jme3/texture/Texture;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v0

    sget-object v1, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/jme3/renderer/RendererException;

    invoke-direct {p1, v2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    sget-object v0, Lcom/jme3/texture/Texture$WrapAxis;->S:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {p1, v0}, Lcom/jme3/texture/Texture;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v0

    sget-object v1, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/jme3/texture/Texture$WrapAxis;->T:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {p1, v0}, Lcom/jme3/texture/Texture;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-void

    :cond_6
    new-instance p1, Lcom/jme3/renderer/RendererException;

    invoke-direct {p1, v2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lcom/jme3/renderer/RendererException;

    const-string v0, "non-power-of-2 textures with mip-maps are not supported by the video hardware"

    invoke-direct {p1, v0}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lcom/jme3/renderer/RendererException;

    const-string v0, "non-power-of-2 textures are not supported by the video hardware"

    invoke-direct {p1, v0}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private cloneImageForUpload(Lcom/jme3/texture/Image;Z)Lcom/jme3/texture/Image;
    .locals 8

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/jme3/util/MipMapGenerator;->resizeToPowerOf2(Lcom/jme3/texture/Image;)Lcom/jme3/texture/Image;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {v5, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/jme3/texture/Image;

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getDepth()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v7

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IIILjava/util/ArrayList;[ILcom/jme3/texture/image/ColorSpace;)V

    return-object p2
.end method

.method private convertAttachmentSlot(I)I
    .locals 3

    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    const p1, 0x8d00

    return p1

    :cond_0
    const/16 v0, -0x65

    if-ne p1, v0, :cond_1

    const p1, 0x821a

    return p1

    :cond_1
    if-ltz p1, :cond_2

    const/16 v0, 0x10

    if-ge p1, v0, :cond_2

    const v0, 0x8ce0

    add-int/2addr p1, v0

    return p1

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid FBO attachment slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private convertBlendEquation(Lcom/jme3/material/RenderState$BlendEquation;)I
    .locals 3

    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendEquation:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const p1, 0x8008

    return p1

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized blend operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const p1, 0x8007

    return p1

    :cond_2
    const p1, 0x800b

    return p1

    :cond_3
    const p1, 0x800a

    return p1

    :cond_4
    const p1, 0x8006

    return p1
.end method

.method private convertBlendEquationAlpha(Lcom/jme3/material/RenderState$BlendEquationAlpha;)I
    .locals 3

    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendEquationAlpha:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const p1, 0x8008

    return p1

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized alpha blend operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const p1, 0x8007

    return p1

    :cond_2
    const p1, 0x800b

    return p1

    :cond_3
    const p1, 0x800a

    return p1

    :cond_4
    const p1, 0x8006

    return p1
.end method

.method private convertBlendFunc(Lcom/jme3/material/RenderState$BlendFunc;)I
    .locals 3

    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendFunc:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized blend function operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 p1, 0x308

    return p1

    :pswitch_1
    const/16 p1, 0x305

    return p1

    :pswitch_2
    const/16 p1, 0x304

    return p1

    :pswitch_3
    const/16 p1, 0x303

    return p1

    :pswitch_4
    const/16 p1, 0x302

    return p1

    :pswitch_5
    const/16 p1, 0x307

    return p1

    :pswitch_6
    const/16 p1, 0x306

    return p1

    :pswitch_7
    const/16 p1, 0x301

    return p1

    :pswitch_8
    const/16 p1, 0x300

    return p1

    :pswitch_9
    const/4 p1, 0x1

    return p1

    :pswitch_a
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertFormat(Lcom/jme3/scene/VertexBuffer$Format;)I
    .locals 1

    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unknown buffer format."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 p1, 0x140a

    return p1

    :pswitch_1
    const/16 p1, 0x1406

    return p1

    :pswitch_2
    const/16 p1, 0x1405

    return p1

    :pswitch_3
    const/16 p1, 0x1404

    return p1

    :pswitch_4
    const/16 p1, 0x1403

    return p1

    :pswitch_5
    const/16 p1, 0x1402

    return p1

    :pswitch_6
    const/16 p1, 0x1401

    return p1

    :pswitch_7
    const/16 p1, 0x1400

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertMagFilter(Lcom/jme3/texture/Texture$MagFilter;)I
    .locals 3

    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MagFilter:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 p1, 0x2600

    return p1

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mag filter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p1, 0x2601

    return p1
.end method

.method private convertMinFilter(Lcom/jme3/texture/Texture$MinFilter;Z)I
    .locals 4

    const/16 v0, 0x2601

    const/16 v1, 0x2600

    const-string v2, "Unknown min filter: "

    if-eqz p2, :cond_0

    sget-object p2, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p2, p2, v3

    packed-switch p2, :pswitch_data_0

    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    return v1

    :pswitch_1
    return v0

    :pswitch_2
    const/16 p1, 0x2700

    return p1

    :pswitch_3
    const/16 p1, 0x2702

    return p1

    :pswitch_4
    const/16 p1, 0x2701

    return p1

    :pswitch_5
    const/16 p1, 0x2703

    return p1

    :cond_0
    sget-object p2, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p2, p2, v3

    packed-switch p2, :pswitch_data_1

    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_6
    return v1

    :pswitch_7
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private convertStencilOperation(Lcom/jme3/material/RenderState$StencilOperation;)I
    .locals 3

    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$StencilOperation:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stencil operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 p1, 0x150a

    return p1

    :pswitch_1
    const p1, 0x8508

    return p1

    :pswitch_2
    const/16 p1, 0x1e03

    return p1

    :pswitch_3
    const p1, 0x8507

    return p1

    :pswitch_4
    const/16 p1, 0x1e02

    return p1

    :pswitch_5
    const/16 p1, 0x1e01

    return p1

    :pswitch_6
    const/4 p1, 0x0

    return p1

    :pswitch_7
    const/16 p1, 0x1e00

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertTestFunction(Lcom/jme3/material/RenderState$TestFunction;)I
    .locals 3

    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$TestFunction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized test function: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 p1, 0x207

    return p1

    :pswitch_1
    const/16 p1, 0x205

    return p1

    :pswitch_2
    const/16 p1, 0x202

    return p1

    :pswitch_3
    const/16 p1, 0x206

    return p1

    :pswitch_4
    const/16 p1, 0x204

    return p1

    :pswitch_5
    const/16 p1, 0x203

    return p1

    :pswitch_6
    const/16 p1, 0x201

    return p1

    :pswitch_7
    const/16 p1, 0x200

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertTextureType(Lcom/jme3/texture/Texture$Type;II)I
    .locals 3

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->TextureMultisample:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/jme3/renderer/RendererException;

    const-string p2, "Multisample textures are not supported by the video hardware."

    invoke-direct {p1, p2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v1, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_b

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    const/4 p2, 0x3

    if-eq v1, p2, :cond_5

    const/4 p2, 0x4

    if-ne v1, p2, :cond_4

    if-gez p3, :cond_2

    const p1, 0x8513

    return p1

    :cond_2
    const/4 p1, 0x6

    if-ge p3, p1, :cond_3

    const p1, 0x8515

    add-int/2addr p3, p1

    return p3

    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid cube map face index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown texture type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object p2, Lcom/jme3/renderer/Caps;->OpenGL20:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object p2, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Lcom/jme3/renderer/RendererException;

    const-string p2, "3D textures are not supported by the video hardware."

    invoke-direct {p1, p2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    const p1, 0x806f

    return p1

    :cond_8
    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object p3, Lcom/jme3/renderer/Caps;->TextureArray:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, p3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    if-le p2, v0, :cond_9

    const p1, 0x9102

    return p1

    :cond_9
    const p1, 0x8c1a

    return p1

    :cond_a
    new-instance p1, Lcom/jme3/renderer/RendererException;

    const-string p2, "Array textures are not supported by the video hardware."

    invoke-direct {p1, p2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    if-le p2, v0, :cond_c

    const p1, 0x9100

    return p1

    :cond_c
    const/16 p1, 0xde1

    return p1
.end method

.method private convertUsage(Lcom/jme3/scene/VertexBuffer$Usage;)I
    .locals 1

    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Usage:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const p1, 0x88e0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unknown usage type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const p1, 0x88e8

    return p1

    :cond_2
    const p1, 0x88e4

    return p1
.end method

.method private convertWrapMode(Lcom/jme3/texture/Texture$WrapMode;)I
    .locals 3

    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$WrapMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const p1, 0x8370

    return p1

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown wrap mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p1, 0x2901

    return p1

    :cond_2
    const p1, 0x812f

    return p1
.end method

.method private deleteRenderBuffer(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer$RenderBuffer;)V
    .locals 1

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getId()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    iget-object p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-interface {p1, p2}, Lcom/jme3/renderer/opengl/GLFbo;->glDeleteRenderbuffersEXT(Ljava/nio/IntBuffer;)V

    return-void
.end method

.method public static extractVersion(Ljava/lang/String;)I
    .locals 3

    const-string v0, "WebGL 2.0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x12c

    return p0

    :cond_0
    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer;->GLVERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 v1, 0xa

    if-lt p0, v1, :cond_1

    rem-int/lit8 v2, p0, 0xa

    if-nez v2, :cond_1

    div-int/lit8 p0, p0, 0xa

    :cond_1
    mul-int/lit8 v0, v0, 0x64

    mul-int/2addr p0, v1

    add-int/2addr v0, p0

    return v0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static generatedMipMaxLevel(III)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p2, 0x0

    :goto_0
    if-le p0, p1, :cond_0

    shr-int/lit8 p0, p0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method private getBoolean(I)Z
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->nameBuf:Ljava/nio/ByteBuffer;

    invoke-interface {v0, p1, v1}, Lcom/jme3/renderer/opengl/GL;->glGetBoolean(ILjava/nio/ByteBuffer;)V

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->nameBuf:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getInteger(I)I
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-interface {v0, p1, v1}, Lcom/jme3/renderer/opengl/GL;->glGetInteger(ILjava/nio/IntBuffer;)V

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf16:Ljava/nio/IntBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    return p1
.end method

.method private getProgramResourceIndex(IILjava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl4:Lcom/jme3/renderer/opengl/GL4;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/jme3/renderer/opengl/GL4;->glGetProgramResourceIndex(IILjava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    invoke-interface {v0, p1, p2, p3}, Lcom/jme3/renderer/opengl/GLExt;->glGetProgramResourceIndex(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getUniformBlockIndex(ILjava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl3:Lcom/jme3/renderer/opengl/GL3;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/jme3/renderer/opengl/GL3;->glGetUniformBlockIndex(ILjava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    invoke-interface {v0, p1, p2}, Lcom/jme3/renderer/opengl/GLExt;->glGetUniformBlockIndex(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method private varargs hasAnyExtension([Ljava/lang/String;)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private hasExtension(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->extensions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v0, "GL_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->extensions:Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->extensions:Ljava/util/HashSet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isMipmapGenerationSupported(Lcom/jme3/texture/Image$Format;Lcom/jme3/texture/image/ColorSpace;)Z
    .locals 4

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->texUtil:Lcom/jme3/renderer/opengl/TextureUtil;

    sget-object v1, Lcom/jme3/texture/image/ColorSpace;->sRGB:Lcom/jme3/texture/image/ColorSpace;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_0

    move p2, v3

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/jme3/renderer/opengl/TextureUtil;->getImageFormat(Lcom/jme3/texture/Image$Format;Z)Lcom/jme3/renderer/opengl/GLImageFormat;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p2, p1, Lcom/jme3/renderer/opengl/GLImageFormat;->colorRenderable:Z

    if-eqz p2, :cond_1

    iget-boolean p1, p1, Lcom/jme3/renderer/opengl/GLImageFormat;->filterable:Z

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    return v2
.end method

.method private isValidNumber(F)Z
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private isValidNumber(Lcom/jme3/math/ColorRGBA;)Z
    .locals 1

    .line 7
    iget v0, p1, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->isValidNumber(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->isValidNumber(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->isValidNumber(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->isValidNumber(F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isValidNumber(Lcom/jme3/math/Quaternion;)Z
    .locals 1

    .line 6
    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->isValidNumber(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->isValidNumber(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->isValidNumber(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getW()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->isValidNumber(F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isValidNumber(Lcom/jme3/math/Vector2f;)Z
    .locals 1

    .line 4
    iget v0, p1, Lcom/jme3/math/Vector2f;->x:F

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->isValidNumber(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->isValidNumber(F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isValidNumber(Lcom/jme3/math/Vector3f;)Z
    .locals 1

    .line 5
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->isValidNumber(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->isValidNumber(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->isValidNumber(F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isValidNumber(Lcom/jme3/math/Vector4f;)Z
    .locals 1

    .line 8
    iget v0, p1, Lcom/jme3/math/Vector4f;->x:F

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->isValidNumber(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/jme3/math/Vector4f;->y:F

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->isValidNumber(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/jme3/math/Vector4f;->z:F

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->isValidNumber(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->isValidNumber(F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isValidNumber(Ljava/nio/FloatBuffer;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/jme3/renderer/opengl/GLRenderer;->isValidNumber(F)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public static isWebGL(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "WebGL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private loadCapabilities()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl2:Lcom/jme3/renderer/opengl/GL2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    instance-of v0, v0, Lcom/jme3/renderer/opengl/GLES_30;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/jme3/renderer/opengl/GLRenderer;->loadCapabilitiesGL2()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/jme3/renderer/opengl/GLRenderer;->loadCapabilitiesES()V

    :goto_0
    invoke-direct {p0}, Lcom/jme3/renderer/opengl/GLRenderer;->loadCapabilitiesCommon()V

    return-void
.end method

.method private loadCapabilitiesCommon()V
    .locals 11

    invoke-direct {p0}, Lcom/jme3/renderer/opengl/GLRenderer;->loadExtensions()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->extensions:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v1, Lcom/jme3/renderer/Limits;->VertexTextureUnits:Lcom/jme3/renderer/Limits;

    const v2, 0x8b4c

    invoke-direct {p0, v2}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->VertexTextureFetch:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v1, Lcom/jme3/renderer/Limits;->FragmentTextureUnits:Lcom/jme3/renderer/Limits;

    const v2, 0x8872

    invoke-direct {p0, v2}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->OpenGLES20:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v2, Lcom/jme3/renderer/Limits;->FragmentUniformVectors:Lcom/jme3/renderer/Limits;

    const v3, 0x8dfd

    invoke-direct {p0, v3}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v2, Lcom/jme3/renderer/Limits;->VertexUniformVectors:Lcom/jme3/renderer/Limits;

    const v3, 0x8dfb

    invoke-direct {p0, v3}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v2, Lcom/jme3/renderer/Limits;->FragmentUniformVectors:Lcom/jme3/renderer/Limits;

    const v3, 0x8b49

    invoke-direct {p0, v3}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v2, Lcom/jme3/renderer/Limits;->VertexUniformVectors:Lcom/jme3/renderer/Limits;

    const v3, 0x8b4a

    invoke-direct {p0, v3}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v2, Lcom/jme3/renderer/Limits;->VertexAttributes:Lcom/jme3/renderer/Limits;

    const v3, 0x8869

    invoke-direct {p0, v3}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v2, Lcom/jme3/renderer/Limits;->TextureSize:Lcom/jme3/renderer/Limits;

    const/16 v3, 0xd33

    invoke-direct {p0, v3}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v2, Lcom/jme3/renderer/Limits;->CubemapSize:Lcom/jme3/renderer/Limits;

    const v3, 0x851c

    invoke-direct {p0, v3}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "GL_ARB_draw_instanced"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GL_ARB_instanced_arrays"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGL33:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->MeshInstancing:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v0, "GL_OES_element_index_uint"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl2:Lcom/jme3/renderer/opengl/GL2;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->IntegerIndexBuffer:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v0, "GL_OES_texture_buffer"

    const-string v2, "GL_EXT_texture_buffer"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasAnyExtension([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGL31:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGLES32:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->TextureBuffer:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGL30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    :cond_9
    move v0, v3

    goto :goto_2

    :cond_a
    :goto_1
    move v0, v4

    :goto_2
    const-string v5, "GL_ARB_texture_float"

    invoke-direct {p0, v5}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v6

    if-nez v0, :cond_c

    if-nez v6, :cond_c

    const-string v7, "GL_OES_texture_float"

    invoke-direct {p0, v7}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_3

    :cond_b
    move v7, v3

    goto :goto_4

    :cond_c
    :goto_3
    move v7, v4

    :goto_4
    const-string v8, "GL_ARB_half_float_pixel"

    if-nez v0, :cond_e

    const-string v0, "GL_OES_texture_half_float"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    if-eqz v6, :cond_d

    invoke-direct {p0, v8}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5

    :cond_d
    move v0, v3

    goto :goto_6

    :cond_e
    :goto_5
    move v0, v4

    :goto_6
    if-eqz v7, :cond_f

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v9, Lcom/jme3/renderer/Caps;->FloatTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {v6, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_f
    if-eqz v0, :cond_10

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v9, Lcom/jme3/renderer/Caps;->HalfFloatTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {v6, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_10
    if-eqz v7, :cond_12

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v6, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "GL_OES_texture_float_linear"

    invoke-direct {p0, v6}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    :cond_11
    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v9, Lcom/jme3/renderer/Caps;->FloatTextureFilter:Lcom/jme3/renderer/Caps;

    invoke-virtual {v6, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_12
    if-eqz v0, :cond_14

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v6, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    const-string v6, "GL_OES_texture_half_float_linear"

    invoke-direct {p0, v6}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    :cond_13
    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v9, Lcom/jme3/renderer/Caps;->HalfFloatTextureFilter:Lcom/jme3/renderer/Caps;

    invoke-virtual {v6, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_14
    const-string v6, "GL_EXT_texture_integer"

    invoke-direct {p0, v6}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v6, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v9, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v6, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v9, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v6, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    :cond_15
    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v9, Lcom/jme3/renderer/Caps;->IntegerTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {v6, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_16
    const-string v6, "GL_OES_depth_texture"

    invoke-direct {p0, v6}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_17

    const-string v6, "WEBGL_depth_texture"

    invoke-direct {p0, v6}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_17

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl2:Lcom/jme3/renderer/opengl/GL2;

    if-nez v6, :cond_17

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v9, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v6, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v9, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v6, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    :cond_17
    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v9, Lcom/jme3/renderer/Caps;->DepthTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {v6, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_18
    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v9, Lcom/jme3/renderer/Caps;->OpenGL20:Lcom/jme3/renderer/Caps;

    invoke-virtual {v6, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v10, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v6, v10}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v10, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v6, v10}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    const-string v6, "GL_OES_depth24"

    invoke-direct {p0, v6}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    :cond_19
    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v10, Lcom/jme3/renderer/Caps;->Depth24:Lcom/jme3/renderer/Caps;

    invoke-virtual {v6, v10}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1a
    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v6, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    const-string v6, "GL_OES_depth32"

    invoke-direct {p0, v6}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    :cond_1b
    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v10, Lcom/jme3/renderer/Caps;->Depth32:Lcom/jme3/renderer/Caps;

    invoke-virtual {v6, v10}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1c
    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v6, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v10, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v6, v10}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v10, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v6, v10}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    const-string v6, "GL_OES_rgb8_rgba8"

    invoke-direct {p0, v6}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1d

    const-string v6, "GL_ARM_rgba8"

    invoke-direct {p0, v6}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1d

    const-string v6, "GL_EXT_texture_format_BGRA8888"

    invoke-direct {p0, v6}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    :cond_1d
    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v10, Lcom/jme3/renderer/Caps;->Rgba8:Lcom/jme3/renderer/Caps;

    invoke-virtual {v6, v10}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1e
    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v6, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v10, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v6, v10}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v10, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v6, v10}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    const-string v6, "GL_OES_packed_depth_stencil"

    const-string v10, "GL_EXT_packed_depth_stencil"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jme3/renderer/opengl/GLRenderer;->hasAnyExtension([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    :cond_1f
    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v10, Lcom/jme3/renderer/Caps;->PackedDepthStencilBuffer:Lcom/jme3/renderer/Caps;

    invoke-virtual {v6, v10}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_20
    const-string v6, "GL_ARB_color_buffer_float"

    invoke-direct {p0, v6}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-direct {p0, v5}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-direct {p0, v8}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_22

    :cond_21
    iget-object v5, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v5, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    :cond_22
    move v5, v4

    goto :goto_7

    :cond_23
    move v5, v3

    :goto_7
    const-string v6, "GL_EXT_color_buffer_float"

    invoke-direct {p0, v6}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v6

    const-string v8, "GL_EXT_color_buffer_half_float"

    invoke-direct {p0, v8}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v8

    if-nez v5, :cond_25

    if-eqz v6, :cond_24

    goto :goto_8

    :cond_24
    if-eqz v8, :cond_26

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v8, Lcom/jme3/renderer/Caps;->HalfFloatColorBufferRGBA:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_25
    :goto_8
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v8, Lcom/jme3/renderer/Caps;->FloatColorBuffer:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v8, Lcom/jme3/renderer/Caps;->FloatColorBufferR:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v8, Lcom/jme3/renderer/Caps;->FloatColorBufferRG:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v8, Lcom/jme3/renderer/Caps;->FloatColorBufferRGBA:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v8, Lcom/jme3/renderer/Caps;->HalfFloatColorBufferR:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v8, Lcom/jme3/renderer/Caps;->HalfFloatColorBufferRG:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v8, Lcom/jme3/renderer/Caps;->HalfFloatColorBufferRGBA:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_26
    :goto_9
    if-eqz v5, :cond_27

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v8, Lcom/jme3/renderer/Caps;->FloatColorBufferRGB:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v8, Lcom/jme3/renderer/Caps;->HalfFloatColorBufferRGB:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_27
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v8, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v8, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "GL_ARB_depth_buffer_float"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_28
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v8, Lcom/jme3/renderer/Caps;->FloatDepthBuffer:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_29
    const-string v0, "GL_EXT_packed_float"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2a

    if-nez v7, :cond_2b

    :cond_2a
    iget-object v7, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v7, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2b

    iget-object v7, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v8, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v7, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2b

    iget-object v7, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v8, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v7, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    :cond_2b
    iget-object v7, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v8, Lcom/jme3/renderer/Caps;->PackedFloatTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {v7, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2c
    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    if-nez v5, :cond_2e

    :cond_2d
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    if-eqz v6, :cond_2f

    :cond_2e
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->PackedFloatColorBuffer:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2f
    const-string v0, "GL_EXT_texture_shared_exponent"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_30
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->SharedExponentTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_31
    const-string v0, "WEBKIT_WEBGL_compressed_texture_s3tc"

    const-string v5, "MOZ_WEBGL_compressed_texture_s3tc"

    const-string v6, "GL_EXT_texture_compression_s3tc"

    const-string v7, "WEBGL_compressed_texture_s3tc"

    filled-new-array {v6, v7, v0, v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasAnyExtension([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->TextureCompressionS3TC:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_32
    const-string v0, "GL_ARB_texture_compression_bptc"

    const-string v5, "EXT_texture_compression_bptc"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasAnyExtension([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->OpenGL42:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_33
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->TextureCompressionBPTC:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_34
    const-string v0, "GL_EXT_texture_compression_rgtc"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_35
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->TextureCompressionRGTC:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_36
    const-string v0, "GL_ARB_ES3_compatibility"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->OpenGL43:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "WEBGL_compressed_texture_etc"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_a

    :cond_37
    const-string v0, "GL_OES_compressed_ETC1_RGB8_texture"

    const-string v5, "WEBGL_compressed_texture_etc1"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasAnyExtension([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->TextureCompressionETC1:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_38
    :goto_a
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->TextureCompressionETC2:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->TextureCompressionETC1:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_39
    :goto_b
    const-string v0, "GL_ARB_vertex_array_object"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_3a
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->VertexBufferArray:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_3b
    const-string v0, "GL_ARB_texture_non_power_of_two"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "GL_OES_texture_npot"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v0, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_c

    :cond_3c
    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Your graphics card does not support non-power-of-2 textures. Some features might not work."

    invoke-virtual {v0, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_d

    :cond_3d
    :goto_c
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->NonPowerOfTwoTextures:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_d
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->PartialNonPowerOfTwoTextures:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_3e
    const-string v0, "GL_EXT_texture_array"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_3f
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->TextureArray:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_40
    const-string v0, "GL_EXT_texture_filter_anisotropic"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v5, Lcom/jme3/renderer/Caps;->TextureFilterAnisotropic:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->floatBuf16:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v5, 0x84ff

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->floatBuf16:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v5, v6}, Lcom/jme3/renderer/opengl/GL;->glGetFloat(ILjava/nio/FloatBuffer;)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v5, Lcom/jme3/renderer/Limits;->TextureAnisotropy:Lcom/jme3/renderer/Limits;

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->floatBuf16:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_41
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v5, Lcom/jme3/renderer/Limits;->TextureAnisotropy:Lcom/jme3/renderer/Limits;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e
    const-string v0, "GL_EXT_framebuffer_object"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    :cond_42
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->FrameBuffer:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v1, Lcom/jme3/renderer/Limits;->RenderBufferSize:Lcom/jme3/renderer/Limits;

    const v5, 0x84e8

    invoke-direct {p0, v5}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v1, Lcom/jme3/renderer/Limits;->FrameBufferAttachments:Lcom/jme3/renderer/Limits;

    const v5, 0x8cdf

    invoke-direct {p0, v5}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "GL_EXT_framebuffer_blit"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_43
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->FrameBufferBlit:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_44
    const-string v0, "GL_EXT_framebuffer_multisample"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_45
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->FrameBufferMultisample:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v1, Lcom/jme3/renderer/Limits;->FrameBufferSamples:Lcom/jme3/renderer/Limits;

    const v5, 0x8d57

    invoke-direct {p0, v5}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    const-string v0, "GL_ARB_texture_multisample"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->OpenGL32:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->OpenGLES31:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    :cond_47
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->TextureMultisample:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v1, Lcom/jme3/renderer/Limits;->ColorTextureSamples:Lcom/jme3/renderer/Limits;

    const v5, 0x910e

    invoke-direct {p0, v5}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v5, Lcom/jme3/renderer/Limits;->DepthTextureSamples:Lcom/jme3/renderer/Limits;

    const v6, 0x910f

    invoke-direct {p0, v6}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v5, Lcom/jme3/renderer/Limits;->FrameBufferSamples:Lcom/jme3/renderer/Limits;

    invoke-virtual {v0, v5}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v5, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    const-string v0, "GL_ARB_draw_buffers"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "WEBGL_draw_buffers"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v0, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_f

    :cond_49
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v1, Lcom/jme3/renderer/Limits;->FrameBufferMrtAttachments:Lcom/jme3/renderer/Limits;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_4a
    :goto_f
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v1, Lcom/jme3/renderer/Limits;->FrameBufferMrtAttachments:Lcom/jme3/renderer/Limits;

    const v5, 0x8824

    invoke-direct {p0, v5}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v4, :cond_4b

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->FrameBufferMRT:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_4b
    :goto_10
    const-string v0, "GL_ARB_multisample"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v0, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_4c
    const v0, 0x80a8

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_4d

    goto :goto_11

    :cond_4d
    move v4, v3

    :goto_11
    const v0, 0x80a9

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v0

    sget-object v1, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Samples: {0}"

    invoke-virtual {v1, v5, v7, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v5, 0x809d

    invoke-interface {v1, v5}, Lcom/jme3/renderer/opengl/GL;->glIsEnabled(I)Z

    move-result v1

    if-lez v0, :cond_4e

    if-eqz v4, :cond_4e

    if-nez v1, :cond_4e

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0, v5}, Lcom/jme3/renderer/opengl/GL;->glEnable(I)V

    :cond_4e
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->Multisample:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_4f
    const-string v0, "GL_ARB_framebuffer_sRGB"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    const-string v1, "GL_EXT_texture_sRGB"

    invoke-direct {p0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    :cond_50
    const-string v1, "GL_EXT_sRGB"

    invoke-direct {p0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v4, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v4, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    :cond_51
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v4, Lcom/jme3/renderer/Caps;->Srgb:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_52
    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "GL_EXT_sRGB_write_control"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    :cond_53
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->SrgbWriteControl:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_54
    const-string v0, "GL_ARB_seamless_cube_map"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->OpenGL32:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_55
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->SeamlessCubemap:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_56
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGL32:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_57
    const-string v0, "GL_ARB_compatibility"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_58

    invoke-static {}, Lcom/jme3/system/JmeSystem;->getPlatform()Lcom/jme3/system/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/system/Platform;->getOs()Lcom/jme3/system/Platform$Os;

    move-result-object v0

    sget-object v2, Lcom/jme3/system/Platform$Os;->iOS:Lcom/jme3/system/Platform$Os;

    if-eq v0, v2, :cond_58

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->CoreProfile:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_58
    const-string v0, "GL_ARB_get_program_binary"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGL41:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    :cond_59
    const v0, 0x87fe

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v0

    if-lez v0, :cond_5a

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->BinaryShader:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_5a
    const-string v0, "GL_OES_geometry_shader"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5b

    const-string v0, "GL_EXT_geometry_shader"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    :cond_5b
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->GeometryShader:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_5c
    const-string v0, "GL_OES_tessellation_shader"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, "GL_EXT_tessellation_shader"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_5d
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->TesselationShader:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_5e
    const-string v0, "GL_ARB_shader_storage_buffer_object"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGL43:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGLES31:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    :cond_5f
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->ShaderStorageBufferObject:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v2, Lcom/jme3/renderer/Limits;->ShaderStorageBufferObjectMaxBlockSize:Lcom/jme3/renderer/Limits;

    const v4, 0x90de

    invoke-direct {p0, v4}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->GeometryShader:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v2, Lcom/jme3/renderer/Limits;->ShaderStorageBufferObjectMaxGeometryBlocks:Lcom/jme3/renderer/Limits;

    const v4, 0x90d7

    invoke-direct {p0, v4}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v2, Lcom/jme3/renderer/Limits;->ShaderStorageBufferObjectMaxFragmentBlocks:Lcom/jme3/renderer/Limits;

    const v4, 0x90da

    invoke-direct {p0, v4}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v2, Lcom/jme3/renderer/Limits;->ShaderStorageBufferObjectMaxVertexBlocks:Lcom/jme3/renderer/Limits;

    const v4, 0x90d6

    invoke-direct {p0, v4}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->TesselationShader:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v2, Lcom/jme3/renderer/Limits;->ShaderStorageBufferObjectMaxTessControlBlocks:Lcom/jme3/renderer/Limits;

    const v4, 0x90d8

    invoke-direct {p0, v4}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v2, Lcom/jme3/renderer/Limits;->ShaderStorageBufferObjectMaxTessEvaluationBlocks:Lcom/jme3/renderer/Limits;

    const v4, 0x90d9

    invoke-direct {p0, v4}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v2, Lcom/jme3/renderer/Limits;->ShaderStorageBufferObjectMaxCombineBlocks:Lcom/jme3/renderer/Limits;

    const v4, 0x90dc

    invoke-direct {p0, v4}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_62
    const-string v0, "GL_ARB_uniform_buffer_object"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGL31:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-static {}, Lcom/jme3/system/JmeSystem;->getPlatform()Lcom/jme3/system/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/system/Platform;->getOs()Lcom/jme3/system/Platform$Os;

    move-result-object v0

    sget-object v2, Lcom/jme3/system/Platform$Os;->iOS:Lcom/jme3/system/Platform$Os;

    if-eq v0, v2, :cond_65

    :cond_63
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->UniformBufferObject:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v2, Lcom/jme3/renderer/Limits;->UniformBufferObjectMaxBlockSize:Lcom/jme3/renderer/Limits;

    const v4, 0x8a30

    invoke-direct {p0, v4}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->GeometryShader:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v2, Lcom/jme3/renderer/Limits;->UniformBufferObjectMaxGeometryBlocks:Lcom/jme3/renderer/Limits;

    const v4, 0x8a2c

    invoke-direct {p0, v4}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_64
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v2, Lcom/jme3/renderer/Limits;->UniformBufferObjectMaxFragmentBlocks:Lcom/jme3/renderer/Limits;

    const v4, 0x8a2d

    invoke-direct {p0, v4}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v2, Lcom/jme3/renderer/Limits;->UniformBufferObjectMaxVertexBlocks:Lcom/jme3/renderer/Limits;

    const v4, 0x8a2b

    invoke-direct {p0, v4}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v0, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    :cond_66
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->UnpackRowLength:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_67
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->OpenGL43:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "GL_KHR_debug"

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    :cond_68
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->GLDebug:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_69
    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iget-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const/16 v4, 0x1f00

    invoke-interface {v2, v4}, Lcom/jme3/renderer/opengl/GL;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const/16 v5, 0x1f01

    invoke-interface {v4, v5}, Lcom/jme3/renderer/opengl/GL;->glGetString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const/16 v6, 0x1f02

    invoke-interface {v5, v6}, Lcom/jme3/renderer/opengl/GL;->glGetString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v7, 0x8b8c

    invoke-interface {v6, v7}, Lcom/jme3/renderer/opengl/GL;->glGetString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v8, Lcom/jme3/renderer/Caps;->CoreProfile:Lcom/jme3/renderer/Caps;

    invoke-virtual {v7, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6a

    const-string v7, "Core"

    goto :goto_12

    :cond_6a
    const-string v7, "Compatibility"

    :goto_12
    filled-new-array {v2, v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "OpenGL Renderer Information\n * Vendor: {0}\n * Renderer: {1}\n * OpenGL Version: {2}\n * GLSL Version: {3}\n * Profile: {4}"

    invoke-virtual {v0, v1, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_6e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supported capabilities: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v4, "\n"

    const-string v5, "\t"

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_6b
    const-string v1, "\nHardware limits: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/jme3/renderer/Limits;->values()[Lcom/jme3/renderer/Limits;

    move-result-object v1

    array-length v2, v1

    move v6, v3

    :goto_14
    if-ge v6, v2, :cond_6d

    aget-object v7, v1, v6

    iget-object v8, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    invoke-virtual {v8, v7}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_6c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :cond_6c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_6d
    sget-object v1, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_6e
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->texUtil:Lcom/jme3/renderer/opengl/TextureUtil;

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/opengl/TextureUtil;->initialize(Ljava/util/EnumSet;)V

    return-void
.end method

.method private loadCapabilitiesES()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const/16 v1, 0x1f02

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jme3/renderer/opengl/GLRenderer;->extractVersion(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Lcom/jme3/renderer/opengl/GLRenderer;->isWebGL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->GLSL100:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGLES20:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->Multisample:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x12c

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->GLSL300:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->MeshInstancing:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v0, 0x136

    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGLES31:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->GLSL310:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    const/16 v0, 0x140

    if-lt v1, v0, :cond_3

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->OpenGLES32:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->GLSL320:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->GeometryShader:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->TesselationShader:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private loadCapabilitiesGL2()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const/16 v1, 0x1f02

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jme3/renderer/opengl/GLRenderer;->extractVersion(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    const/16 v2, 0x190

    if-lt v0, v1, :cond_a

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v3, Lcom/jme3/renderer/Caps;->OpenGL20:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xd2

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v3, Lcom/jme3/renderer/Caps;->OpenGL21:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 v1, 0x12c

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v3, Lcom/jme3/renderer/Caps;->OpenGL30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v1, 0x136

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v3, Lcom/jme3/renderer/Caps;->OpenGL31:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    const/16 v1, 0x140

    if-lt v0, v1, :cond_3

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v3, Lcom/jme3/renderer/Caps;->OpenGL32:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v3, Lcom/jme3/renderer/Caps;->GeometryShader:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_3
    const/16 v1, 0x14a

    if-lt v0, v1, :cond_4

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v3, Lcom/jme3/renderer/Caps;->OpenGL33:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_4
    if-lt v0, v2, :cond_5

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v3, Lcom/jme3/renderer/Caps;->OpenGL40:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v3, Lcom/jme3/renderer/Caps;->TesselationShader:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_5
    const/16 v1, 0x19a

    if-lt v0, v1, :cond_6

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v3, Lcom/jme3/renderer/Caps;->OpenGL41:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_6
    const/16 v1, 0x1a4

    if-lt v0, v1, :cond_7

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v3, Lcom/jme3/renderer/Caps;->OpenGL42:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_7
    const/16 v1, 0x1ae

    if-lt v0, v1, :cond_8

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v3, Lcom/jme3/renderer/Caps;->OpenGL43:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_8
    const/16 v1, 0x1b8

    if-lt v0, v1, :cond_9

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v3, Lcom/jme3/renderer/Caps;->OpenGL44:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_9
    const/16 v1, 0x1c2

    if-lt v0, v1, :cond_a

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->OpenGL45:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v1, 0x8b8c

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jme3/renderer/opengl/GLRenderer;->extractVersion(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    if-ge v0, v2, :cond_b

    goto :goto_0

    :cond_b
    :sswitch_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->GLSL450:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :sswitch_1
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->GLSL440:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :sswitch_2
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->GLSL430:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :sswitch_3
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->GLSL420:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :sswitch_4
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->GLSL410:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :sswitch_5
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->GLSL400:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :sswitch_6
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->GLSL330:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :sswitch_7
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->GLSL150:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :sswitch_8
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->GLSL140:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :sswitch_9
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->GLSL130:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :sswitch_a
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->GLSL120:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :sswitch_b
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->GLSL110:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :sswitch_c
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->GLSL100:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->GLSL110:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->GLSL100:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    const/16 v1, 0xc01

    invoke-direct {p0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/jme3/renderer/RenderContext;->initialDrawBuf:I

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    const/16 v1, 0xc02

    invoke-direct {p0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/jme3/renderer/RenderContext;->initialReadBuf:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_c
        0x6e -> :sswitch_b
        0x78 -> :sswitch_a
        0x82 -> :sswitch_9
        0x8c -> :sswitch_8
        0x96 -> :sswitch_7
        0x14a -> :sswitch_6
        0x190 -> :sswitch_5
        0x19a -> :sswitch_4
        0x1a4 -> :sswitch_3
        0x1ae -> :sswitch_2
        0x1b8 -> :sswitch_1
        0x1c2 -> :sswitch_0
    .end sparse-switch
.end method

.method private loadExtensions()Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGL30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x1f03

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl3:Lcom/jme3/renderer/opengl/GL3;

    const v3, 0x821d

    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-interface {v1, v3, v4}, Lcom/jme3/renderer/opengl/GL;->glGetInteger(ILjava/nio/IntBuffer;)V

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf16:Ljava/nio/IntBuffer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl3:Lcom/jme3/renderer/opengl/GL3;

    invoke-interface {v4, v2, v3}, Lcom/jme3/renderer/opengl/GL3;->glGetString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v1, v2}, Lcom/jme3/renderer/opengl/GL;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method private needsGeneratedMipmaps(Lcom/jme3/texture/Image;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->isGeneratedMipmapsRequired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->isMipmapsGenerated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v0

    iget-boolean v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->linearizeSrgbImages:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/jme3/renderer/opengl/GLRenderer;->isMipmapGenerationSupported(Lcom/jme3/texture/Image$Format;Lcom/jme3/texture/image/ColorSpace;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    invoke-static {p1}, Lcom/jme3/util/MipMapGenerator;->canGenerateMipmaps(Lcom/jme3/texture/Image;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method

.method private readFrameBufferWithGLFormat(Lcom/jme3/texture/FrameBuffer;Ljava/nio/ByteBuffer;II)V
    .locals 8

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getColorBuffer()Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Specified framebuffer does not have a colorbuffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    :goto_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    iget v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->vpX:I

    iget v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->vpY:I

    iget v3, p0, Lcom/jme3/renderer/opengl/GLRenderer;->vpW:I

    iget v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->vpH:I

    move v5, p3

    move v6, p4

    move-object v7, p2

    invoke-interface/range {v0 .. v7}, Lcom/jme3/renderer/opengl/GL;->glReadPixels(IIIIIILjava/nio/ByteBuffer;)V

    return-void
.end method

.method private renderMeshDefault(Lcom/jme3/scene/Mesh;II[Lcom/jme3/scene/VertexBuffer;)V
    .locals 6

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getInstanceCount()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->InterleavedData:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->updateBufferData(Lcom/jme3/scene/VertexBuffer;)V

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getNumLodLevels()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1, p2}, Lcom/jme3/scene/Mesh;->getLodLevel(I)Lcom/jme3/scene/VertexBuffer;

    move-result-object p2

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, p2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p2

    :goto_0
    const/4 v1, 0x0

    if-eqz p4, :cond_2

    array-length v2, p4

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p4, v3

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/jme3/renderer/opengl/GLRenderer;->setVertexAttrib(Lcom/jme3/scene/VertexBuffer;Lcom/jme3/scene/VertexBuffer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object p4

    invoke-virtual {p4}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lcom/jme3/scene/VertexBuffer;

    array-length v2, p4

    :goto_2
    if-ge v1, v2, :cond_6

    aget-object v3, p4, v1

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v4

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->InterleavedData:Lcom/jme3/scene/VertexBuffer$Type;

    if-eq v4, v5, :cond_5

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getUsage()Lcom/jme3/scene/VertexBuffer$Usage;

    move-result-object v4

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Usage;->CpuOnly:Lcom/jme3/scene/VertexBuffer$Usage;

    if-eq v4, v5, :cond_5

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v4

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    if-ne v4, v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getStride()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0, v3}, Lcom/jme3/renderer/opengl/GLRenderer;->setVertexAttrib(Lcom/jme3/scene/VertexBuffer;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v3, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->setVertexAttrib(Lcom/jme3/scene/VertexBuffer;Lcom/jme3/scene/VertexBuffer;)V

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/jme3/renderer/opengl/GLRenderer;->clearVertexAttribs()V

    if-eqz p2, :cond_7

    invoke-virtual {p0, p2, p1, p3}, Lcom/jme3/renderer/opengl/GLRenderer;->drawTriangleList(Lcom/jme3/scene/VertexBuffer;Lcom/jme3/scene/Mesh;I)V

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object p2

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result p1

    invoke-virtual {p0, p2, p3, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->drawTriangleArray(Lcom/jme3/scene/Mesh$Mode;II)V

    :goto_4
    return-void
.end method

.method private resolveUsageHint(Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;)I
    .locals 4

    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$bufferobject$BufferObject$AccessHint:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$bufferobject$BufferObject$NatureHint:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p1, p1, v3

    if-eq p1, v2, :cond_b

    if-eq p1, v1, :cond_a

    if-eq p1, v0, :cond_9

    :cond_1
    sget-object p1, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$bufferobject$BufferObject$NatureHint:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p1, p1, v3

    if-eq p1, v2, :cond_8

    if-eq p1, v1, :cond_7

    if-eq p1, v0, :cond_6

    :cond_2
    sget-object p1, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$bufferobject$BufferObject$NatureHint:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    :goto_0
    const/4 p1, -0x1

    return p1

    :cond_3
    const p1, 0x88e6

    return p1

    :cond_4
    const p1, 0x88e5

    return p1

    :cond_5
    const p1, 0x88e4

    return p1

    :cond_6
    const p1, 0x88e2

    return p1

    :cond_7
    const p1, 0x88e1

    return p1

    :cond_8
    const p1, 0x88e0

    return p1

    :cond_9
    const p1, 0x88ea

    return p1

    :cond_a
    const p1, 0x88e9

    return p1

    :cond_b
    const p1, 0x88e8

    return p1
.end method

.method private setupTextureParams(ILcom/jme3/texture/Texture;)V
    .locals 9

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getType()Lcom/jme3/texture/Texture$Type;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {p0, v3, v2, v4}, Lcom/jme3/renderer/opengl/GLRenderer;->convertTextureType(Lcom/jme3/texture/Texture$Type;II)I

    move-result v3

    if-le v2, v1, :cond_1

    invoke-direct {p0, v3, v0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->bindTextureOnly(ILcom/jme3/texture/Image;I)V

    return-void

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->hasMipmaps()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->isMipmapsGenerated()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->isGeneratedMipmapsRequired()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v4

    iget-boolean v5, p0, Lcom/jme3/renderer/opengl/GLRenderer;->linearizeSrgbImages:Z

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v5

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    :goto_1
    invoke-direct {p0, v4, v5}, Lcom/jme3/renderer/opengl/GLRenderer;->isMipmapGenerationSupported(Lcom/jme3/texture/Image$Format;Lcom/jme3/texture/image/ColorSpace;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v1

    :goto_3
    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getLastTextureState()Lcom/jme3/texture/image/LastTextureState;

    move-result-object v5

    iget-object v6, v5, Lcom/jme3/texture/image/LastTextureState;->magFilter:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getMagFilter()Lcom/jme3/texture/Texture$MagFilter;

    move-result-object v7

    if-eq v6, v7, :cond_5

    invoke-direct {p0, v3, v0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->bindTextureAndUnit(ILcom/jme3/texture/Image;I)V

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getMagFilter()Lcom/jme3/texture/Texture$MagFilter;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/jme3/renderer/opengl/GLRenderer;->convertMagFilter(Lcom/jme3/texture/Texture$MagFilter;)I

    move-result v7

    const/16 v8, 0x2800

    invoke-interface {v6, v3, v8, v7}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getMagFilter()Lcom/jme3/texture/Texture$MagFilter;

    move-result-object v6

    iput-object v6, v5, Lcom/jme3/texture/image/LastTextureState;->magFilter:Lcom/jme3/texture/Texture$MagFilter;

    :cond_5
    iget-object v6, v5, Lcom/jme3/texture/image/LastTextureState;->minFilter:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getMinFilter()Lcom/jme3/texture/Texture$MinFilter;

    move-result-object v7

    if-ne v6, v7, :cond_6

    iget-boolean v6, v5, Lcom/jme3/texture/image/LastTextureState;->minFilterMipmapsAvailable:Z

    if-eq v6, v4, :cond_7

    :cond_6
    invoke-direct {p0, v3, v0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->bindTextureAndUnit(ILcom/jme3/texture/Image;I)V

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getMinFilter()Lcom/jme3/texture/Texture$MinFilter;

    move-result-object v7

    invoke-direct {p0, v7, v4}, Lcom/jme3/renderer/opengl/GLRenderer;->convertMinFilter(Lcom/jme3/texture/Texture$MinFilter;Z)I

    move-result v7

    const/16 v8, 0x2801

    invoke-interface {v6, v3, v8, v7}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getMinFilter()Lcom/jme3/texture/Texture$MinFilter;

    move-result-object v6

    iput-object v6, v5, Lcom/jme3/texture/image/LastTextureState;->minFilter:Lcom/jme3/texture/Texture$MinFilter;

    iput-boolean v4, v5, Lcom/jme3/texture/image/LastTextureState;->minFilterMipmapsAvailable:Z

    :cond_7
    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getAnisotropicFilter()I

    move-result v4

    if-nez v4, :cond_8

    iget v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->defaultAnisotropicFilter:I

    goto :goto_4

    :cond_8
    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getAnisotropicFilter()I

    move-result v4

    :goto_4
    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v7, Lcom/jme3/renderer/Caps;->TextureFilterAnisotropic:Lcom/jme3/renderer/Caps;

    invoke-virtual {v6, v7}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, v5, Lcom/jme3/texture/image/LastTextureState;->anisoFilter:I

    if-eq v6, v4, :cond_9

    invoke-direct {p0, v3, v0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->bindTextureAndUnit(ILcom/jme3/texture/Image;I)V

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v7, 0x84fe

    int-to-float v8, v4

    invoke-interface {v6, v3, v7, v8}, Lcom/jme3/renderer/opengl/GL;->glTexParameterf(IIF)V

    iput v4, v5, Lcom/jme3/texture/image/LastTextureState;->anisoFilter:I

    :cond_9
    sget-object v4, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getType()Lcom/jme3/texture/Texture$Type;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v4, v4, v6

    if-eq v4, v1, :cond_d

    const/4 v1, 0x2

    if-eq v4, v1, :cond_d

    const/4 v1, 0x3

    if-eq v4, v1, :cond_b

    const/4 v1, 0x4

    if-ne v4, v1, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown texture type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getType()Lcom/jme3/texture/Texture$Type;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_5
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl2:Lcom/jme3/renderer/opengl/GL2;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v4, Lcom/jme3/renderer/Caps;->OpenGL20:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v4, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    iget-object v1, v5, Lcom/jme3/texture/image/LastTextureState;->rWrap:Lcom/jme3/texture/Texture$WrapMode;

    sget-object v4, Lcom/jme3/texture/Texture$WrapAxis;->R:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {p2, v4}, Lcom/jme3/texture/Texture;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v6

    if-eq v1, v6, :cond_d

    invoke-direct {p0, v3, v0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->bindTextureAndUnit(ILcom/jme3/texture/Image;I)V

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p2, v4}, Lcom/jme3/texture/Texture;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jme3/renderer/opengl/GLRenderer;->convertWrapMode(Lcom/jme3/texture/Texture$WrapMode;)I

    move-result v6

    const v7, 0x8072

    invoke-interface {v1, v3, v7, v6}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    invoke-virtual {p2, v4}, Lcom/jme3/texture/Texture;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v1

    iput-object v1, v5, Lcom/jme3/texture/image/LastTextureState;->rWrap:Lcom/jme3/texture/Texture$WrapMode;

    :cond_d
    iget-object v1, v5, Lcom/jme3/texture/image/LastTextureState;->tWrap:Lcom/jme3/texture/Texture$WrapMode;

    sget-object v4, Lcom/jme3/texture/Texture$WrapAxis;->T:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {p2, v4}, Lcom/jme3/texture/Texture;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v6

    if-eq v1, v6, :cond_e

    invoke-direct {p0, v3, v0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->bindTextureAndUnit(ILcom/jme3/texture/Image;I)V

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p2, v4}, Lcom/jme3/texture/Texture;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jme3/renderer/opengl/GLRenderer;->convertWrapMode(Lcom/jme3/texture/Texture$WrapMode;)I

    move-result v6

    const/16 v7, 0x2803

    invoke-interface {v1, v3, v7, v6}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getLastTextureState()Lcom/jme3/texture/image/LastTextureState;

    move-result-object v1

    invoke-virtual {p2, v4}, Lcom/jme3/texture/Texture;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v4

    iput-object v4, v1, Lcom/jme3/texture/image/LastTextureState;->tWrap:Lcom/jme3/texture/Texture$WrapMode;

    :cond_e
    iget-object v1, v5, Lcom/jme3/texture/image/LastTextureState;->sWrap:Lcom/jme3/texture/Texture$WrapMode;

    sget-object v4, Lcom/jme3/texture/Texture$WrapAxis;->S:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {p2, v4}, Lcom/jme3/texture/Texture;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v6

    if-eq v1, v6, :cond_f

    invoke-direct {p0, v3, v0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->bindTextureAndUnit(ILcom/jme3/texture/Image;I)V

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p2, v4}, Lcom/jme3/texture/Texture;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jme3/renderer/opengl/GLRenderer;->convertWrapMode(Lcom/jme3/texture/Texture$WrapMode;)I

    move-result v6

    const/16 v7, 0x2802

    invoke-interface {v1, v3, v7, v6}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    invoke-virtual {p2, v4}, Lcom/jme3/texture/Texture;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v1

    iput-object v1, v5, Lcom/jme3/texture/image/LastTextureState;->sWrap:Lcom/jme3/texture/Texture$WrapMode;

    :cond_f
    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getShadowCompareMode()Lcom/jme3/texture/Texture$ShadowCompareMode;

    move-result-object p2

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl2:Lcom/jme3/renderer/opengl/GL2;

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v4, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_10
    iget-object v1, v5, Lcom/jme3/texture/image/LastTextureState;->shadowCompareMode:Lcom/jme3/texture/Texture$ShadowCompareMode;

    if-eq v1, p2, :cond_13

    invoke-direct {p0, v3, v0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->bindTextureAndUnit(ILcom/jme3/texture/Image;I)V

    sget-object v1, Lcom/jme3/texture/Texture$ShadowCompareMode;->Off:Lcom/jme3/texture/Texture$ShadowCompareMode;

    const v4, 0x884c

    if-eq p2, v1, :cond_12

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v2, 0x884e

    invoke-interface {v1, v3, v4, v2}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    sget-object v1, Lcom/jme3/texture/Texture$ShadowCompareMode;->GreaterOrEqual:Lcom/jme3/texture/Texture$ShadowCompareMode;

    const v2, 0x884d

    if-ne p2, v1, :cond_11

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const/16 v4, 0x206

    invoke-interface {v1, v3, v2, v4}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    goto :goto_6

    :cond_11
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const/16 v4, 0x203

    invoke-interface {v1, v3, v2, v4}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    goto :goto_6

    :cond_12
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v1, v3, v4, v2}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    :goto_6
    iput-object p2, v5, Lcom/jme3/texture/image/LastTextureState;->shadowCompareMode:Lcom/jme3/texture/Texture$ShadowCompareMode;

    :cond_13
    invoke-direct {p0, v3, v0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->bindTextureOnly(ILcom/jme3/texture/Image;I)V

    return-void
.end method

.method public static textureMaxLevelForUpload(ZZZZ[II)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    return p5

    :cond_1
    if-nez p3, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    array-length p0, p4

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private toggleFramebufferSrgb(Lcom/jme3/texture/FrameBuffer;)V
    .locals 2

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->mainFrameBufferSrgb:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->isSrgb()Z

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->srgbWriteEnabled:Z

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->SrgbWriteControl:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->Srgb:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x8db9

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v1, v0}, Lcom/jme3/renderer/opengl/GL;->glEnable(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v1, v0}, Lcom/jme3/renderer/opengl/GL;->glDisable(I)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean p1, v0, Lcom/jme3/renderer/RenderContext;->srgbWriteEnabled:Z

    :cond_3
    return-void
.end method

.method private updateBufferData(ILcom/jme3/shader/bufferobject/BufferObject;)V
    .locals 9

    .line 22
    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    .line 23
    invoke-virtual {p2}, Lcom/jme3/shader/bufferobject/BufferObject;->getAccessHint()Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    move-result-object v1

    invoke-virtual {p2}, Lcom/jme3/shader/bufferobject/BufferObject;->getNatureHint()Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/jme3/renderer/opengl/GLRenderer;->resolveUsageHint(Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 24
    invoke-virtual {p0, p2}, Lcom/jme3/renderer/opengl/GLRenderer;->deleteBuffer(Lcom/jme3/shader/bufferobject/BufferObject;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 25
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 26
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    iget-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-interface {v0, v2}, Lcom/jme3/renderer/opengl/GL;->glGenBuffers(Ljava/nio/IntBuffer;)V

    .line 27
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 28
    invoke-virtual {p2, v0}, Lcom/jme3/util/NativeObject;->setId(I)V

    .line 29
    iget-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {v2, p2}, Lcom/jme3/util/NativeObjectManager;->registerObject(Lcom/jme3/util/NativeObject;)V

    .line 30
    :cond_1
    invoke-virtual {p2}, Lcom/jme3/shader/bufferobject/BufferObject;->getDirtyRegions()Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;

    move-result-object v2

    .line 31
    :goto_0
    invoke-virtual {v2}, Lcom/jme3/shader/bufferobject/DirtyRegionsIterator;->next()Lcom/jme3/shader/bufferobject/BufferRegion;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 32
    iget-object v5, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v5, p1, v0}, Lcom/jme3/renderer/opengl/GL;->glBindBuffer(II)V

    .line 33
    invoke-virtual {v4}, Lcom/jme3/shader/bufferobject/BufferRegion;->isFullBufferRegion()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 34
    invoke-virtual {p2}, Lcom/jme3/shader/bufferobject/BufferObject;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 35
    sget-object v2, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 36
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {p2, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Update full buffer {0} with {1} bytes"

    invoke-virtual {v2, v5, v7, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    :cond_2
    iget-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v2, p1, v0, v1}, Lcom/jme3/renderer/opengl/GL;->glBufferData(ILjava/nio/ByteBuffer;I)V

    .line 38
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0, p1, v3}, Lcom/jme3/renderer/opengl/GL;->glBindBuffer(II)V

    .line 39
    invoke-virtual {v4}, Lcom/jme3/shader/bufferobject/BufferRegion;->clearDirty()V

    goto :goto_1

    .line 40
    :cond_3
    sget-object v5, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 41
    const-string v7, "Update region {0} of {1}"

    filled-new-array {v4, p2}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :cond_4
    iget-object v5, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {v4}, Lcom/jme3/shader/bufferobject/BufferRegion;->getStart()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4}, Lcom/jme3/shader/bufferobject/BufferRegion;->getData()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-interface {v5, p1, v6, v7, v8}, Lcom/jme3/renderer/opengl/GL;->glBufferSubData(IJLjava/nio/ByteBuffer;)V

    .line 43
    iget-object v5, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v5, p1, v3}, Lcom/jme3/renderer/opengl/GL;->glBindBuffer(II)V

    .line 44
    invoke-virtual {v4}, Lcom/jme3/shader/bufferobject/BufferRegion;->clearDirty()V

    goto :goto_0

    .line 45
    :cond_5
    :goto_1
    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->clearUpdateNeeded()V

    return-void
.end method

.method private updateRenderBuffer(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer$RenderBuffer;)V
    .locals 8

    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GLFbo;->glGenRenderbuffersEXT(Ljava/nio/IntBuffer;)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->setId(I)V

    :cond_0
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v1, v1, Lcom/jme3/renderer/RenderContext;->boundRB:I

    const v2, 0x8d41

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    invoke-interface {v1, v2, v0}, Lcom/jme3/renderer/opengl/GLFbo;->glBindRenderbufferEXT(II)V

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput v0, v1, Lcom/jme3/renderer/RenderContext;->boundRB:I

    :cond_1
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v1, Lcom/jme3/renderer/Limits;->RenderBufferSize:Lcom/jme3/renderer/Limits;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getWidth()I

    move-result v1

    if-gt v1, v0, :cond_4

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getHeight()I

    move-result v1

    if-gt v1, v0, :cond_4

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->texUtil:Lcom/jme3/renderer/opengl/TextureUtil;

    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object p2

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->isSrgb()Z

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/jme3/renderer/opengl/TextureUtil;->getImageFormatWithError(Lcom/jme3/texture/Image$Format;Z)Lcom/jme3/renderer/opengl/GLImageFormat;

    move-result-object p2

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getSamples()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->FrameBufferMultisample:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getSamples()I

    move-result v0

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v2, Lcom/jme3/renderer/Limits;->FrameBufferSamples:Lcom/jme3/renderer/Limits;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v0, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    iget-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    iget v5, p2, Lcom/jme3/renderer/opengl/GLImageFormat;->internalFormat:I

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getHeight()I

    move-result v7

    const v3, 0x8d41

    invoke-interface/range {v2 .. v7}, Lcom/jme3/renderer/opengl/GLFbo;->glRenderbufferStorageMultisampleEXT(IIIII)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    iget p2, p2, Lcom/jme3/renderer/opengl/GLImageFormat;->internalFormat:I

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getHeight()I

    move-result p1

    invoke-interface {v0, v2, p2, v1, p1}, Lcom/jme3/renderer/opengl/GLFbo;->glRenderbufferStorageEXT(IIII)V

    :goto_1
    return-void

    :cond_4
    new-instance p2, Lcom/jme3/renderer/RendererException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resolution "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private updateTexImageData(Lcom/jme3/texture/Image;Lcom/jme3/texture/Texture$Type;IZZ)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p4

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    if-ne v0, v6, :cond_1

    .line 3
    iget-object v0, v1, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    iget-object v8, v1, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-interface {v0, v8}, Lcom/jme3/renderer/opengl/GL;->glGenTextures(Ljava/nio/IntBuffer;)V

    .line 4
    iget-object v0, v1, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 5
    invoke-virtual {v2, v0}, Lcom/jme3/util/NativeObject;->setId(I)V

    .line 6
    iget-object v0, v1, Lcom/jme3/renderer/opengl/GLRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {v0, v2}, Lcom/jme3/util/NativeObjectManager;->registerObject(Lcom/jme3/util/NativeObject;)V

    .line 7
    iget-object v0, v1, Lcom/jme3/renderer/opengl/GLRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {v0}, Lcom/jme3/renderer/Statistics;->onNewTexture()V

    .line 8
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result v0

    move-object/from16 v8, p2

    invoke-direct {v1, v8, v0, v6}, Lcom/jme3/renderer/opengl/GLRenderer;->convertTextureType(Lcom/jme3/texture/Texture$Type;II)I

    move-result v8

    move/from16 v0, p3

    .line 9
    invoke-direct {v1, v8, v2, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->bindTextureAndUnit(ILcom/jme3/texture/Image;I)V

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result v9

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->hasMipmaps()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    move v10, v5

    goto :goto_1

    :cond_2
    move v10, v4

    :goto_1
    if-nez v10, :cond_3

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->isGeneratedMipmapsRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    move/from16 v17, v5

    goto :goto_2

    :cond_3
    move/from16 v17, v4

    :goto_2
    if-eqz v17, :cond_5

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v0

    .line 14
    iget-boolean v11, v1, Lcom/jme3/renderer/opengl/GLRenderer;->linearizeSrgbImages:Z

    if-eqz v11, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v11

    goto :goto_3

    :cond_4
    sget-object v11, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    .line 15
    :goto_3
    invoke-direct {v1, v0, v11}, Lcom/jme3/renderer/opengl/GLRenderer;->isMipmapGenerationSupported(Lcom/jme3/texture/Image$Format;Lcom/jme3/texture/image/ColorSpace;)Z

    move-result v0

    if-eqz v0, :cond_5

    move/from16 v18, v5

    goto :goto_4

    :cond_5
    move/from16 v18, v4

    :goto_4
    if-gt v9, v5, :cond_13

    if-eqz v17, :cond_a

    .line 16
    const-string v11, "Texture "

    if-nez v18, :cond_8

    if-eqz p5, :cond_8

    if-eqz v7, :cond_8

    .line 17
    invoke-static/range {p1 .. p1}, Lcom/jme3/util/MipMapGenerator;->canGenerateMipmaps(Lcom/jme3/texture/Image;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    :try_start_0
    invoke-direct {v1, v2, v3}, Lcom/jme3/renderer/opengl/GLRenderer;->cloneImageForUpload(Lcom/jme3/texture/Image;Z)Lcom/jme3/texture/Image;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 19
    iget-boolean v0, v1, Lcom/jme3/renderer/opengl/GLRenderer;->linearizeSrgbImages:Z

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v12

    sget-object v13, Lcom/jme3/texture/image/ColorSpace;->sRGB:Lcom/jme3/texture/image/ColorSpace;

    if-ne v12, v13, :cond_6

    move v12, v5

    goto :goto_5

    :cond_6
    move v12, v4

    .line 21
    :goto_5
    invoke-static {v7, v0, v12}, Lcom/jme3/util/MipMapGenerator;->generateMipMaps(Lcom/jme3/texture/Image;ZZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    :try_start_1
    invoke-virtual {v2, v5}, Lcom/jme3/texture/Image;->setMipmapsGenerated(Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v4

    move v0, v5

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v12, v0

    move v3, v4

    move v0, v5

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v12, v0

    move-object v7, v2

    move v0, v4

    goto :goto_6

    :cond_7
    move-object v7, v2

    move v0, v4

    goto :goto_7

    .line 23
    :goto_6
    sget-object v13, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " requires mipmaps, but hardware mipmap generation is not supported and CPU mipmap generation failed. Mipmaps will not be generated."

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v14, v4, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v4, v5

    goto :goto_7

    :cond_8
    move-object v7, v2

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_7
    if-eqz v18, :cond_9

    .line 24
    iget-object v12, v1, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v13, Lcom/jme3/renderer/Caps;->FrameBuffer:Lcom/jme3/renderer/Caps;

    invoke-virtual {v12, v13}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    iget-object v12, v1, Lcom/jme3/renderer/opengl/GLRenderer;->gl2:Lcom/jme3/renderer/opengl/GL2;

    if-eqz v12, :cond_9

    const v13, 0x8191

    .line 25
    invoke-interface {v12, v8, v13, v5}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    .line 26
    invoke-virtual {v2, v5}, Lcom/jme3/texture/Image;->setMipmapsGenerated(Z)V

    :cond_9
    if-nez v18, :cond_b

    if-nez v10, :cond_b

    if-nez v0, :cond_b

    if-nez v4, :cond_b

    .line 27
    sget-object v4, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " requires mipmaps, but hardware mipmaps generation is not supported. Mipmaps will not be generated."

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v12, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    move-object v7, v2

    const/4 v0, 0x0

    .line 28
    :cond_b
    :goto_8
    iget-object v4, v1, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v11, Lcom/jme3/renderer/Caps;->OpenGL20:Lcom/jme3/renderer/Caps;

    invoke-virtual {v4, v11}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, v1, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v11, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v4, v11}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_9

    :cond_c
    const/4 v11, 0x0

    goto :goto_a

    :cond_d
    :goto_9
    move v11, v5

    :goto_a
    if-nez v10, :cond_f

    if-eqz v0, :cond_e

    goto :goto_b

    :cond_e
    const/4 v14, 0x0

    goto :goto_c

    :cond_f
    :goto_b
    move v14, v5

    :goto_c
    if-eqz v3, :cond_10

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v4

    invoke-static {v4}, Lcom/jme3/math/FastMath;->nearestPowerOfTwo(I)I

    move-result v4

    goto :goto_d

    :cond_10
    invoke-virtual {v7}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v4

    :goto_d
    if-eqz v3, :cond_11

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v10

    invoke-static {v10}, Lcom/jme3/math/FastMath;->nearestPowerOfTwo(I)I

    move-result v10

    goto :goto_e

    :cond_11
    invoke-virtual {v7}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v10

    :goto_e
    if-eqz v0, :cond_12

    .line 31
    invoke-virtual {v7}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v0

    :goto_f
    move-object v15, v0

    goto :goto_10

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v0

    goto :goto_f

    .line 32
    :goto_10
    invoke-virtual {v7}, Lcom/jme3/texture/Image;->getDepth()I

    move-result v0

    invoke-static {v4, v10, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->generatedMipMaxLevel(III)I

    move-result v16

    move/from16 v12, v17

    move/from16 v13, v18

    .line 33
    invoke-static/range {v11 .. v16}, Lcom/jme3/renderer/opengl/GLRenderer;->textureMaxLevelForUpload(ZZZZ[II)I

    move-result v0

    if-ltz v0, :cond_15

    .line 34
    iget-object v4, v1, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v10, 0x813d

    invoke-interface {v4, v8, v10, v0}, Lcom/jme3/renderer/opengl/GL;->glTexParameteri(III)V

    goto :goto_12

    .line 35
    :cond_13
    iget-object v0, v1, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v3, Lcom/jme3/renderer/Caps;->TextureMultisample:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->isGeneratedMipmapsRequired()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->hasMipmaps()Z

    move-result v0

    if-nez v0, :cond_25

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/texture/Image$Format;->isDepthFormat()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 38
    iget-object v0, v1, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v3, Lcom/jme3/renderer/Limits;->DepthTextureSamples:Lcom/jme3/renderer/Limits;

    invoke-virtual {v0, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/jme3/texture/Image;->setMultiSamples(I)V

    goto :goto_11

    .line 39
    :cond_14
    iget-object v0, v1, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v3, Lcom/jme3/renderer/Limits;->ColorTextureSamples:Lcom/jme3/renderer/Limits;

    invoke-virtual {v0, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/jme3/texture/Image;->setMultiSamples(I)V

    :goto_11
    move-object v7, v2

    const/4 v3, 0x0

    .line 40
    :cond_15
    :goto_12
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/texture/Image$Format;->isDepthFormat()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v4, Lcom/jme3/renderer/Caps;->DepthTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_13

    .line 41
    :cond_16
    new-instance v0, Lcom/jme3/renderer/RendererException;

    const-string v2, "Depth textures are not supported by the video hardware"

    invoke-direct {v0, v2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_13
    const v0, 0x8513

    if-ne v8, v0, :cond_1a

    .line 42
    iget-object v4, v1, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v10, Lcom/jme3/renderer/Limits;->CubemapSize:Lcom/jme3/renderer/Limits;

    invoke-virtual {v4, v10}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v10

    if-gt v10, v4, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v10

    if-gt v10, v4, :cond_19

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v10

    if-ne v4, v10, :cond_18

    goto :goto_14

    .line 45
    :cond_18
    new-instance v0, Lcom/jme3/renderer/RendererException;

    const-string v2, "Cubemaps must have square dimensions"

    invoke-direct {v0, v2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_19
    new-instance v0, Lcom/jme3/renderer/RendererException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot upload cubemap "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". The maximum supported cubemap resolution is "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1a
    iget-object v4, v1, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v10, Lcom/jme3/renderer/Limits;->TextureSize:Lcom/jme3/renderer/Limits;

    invoke-virtual {v4, v10}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v10

    if-gt v10, v4, :cond_24

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v10

    if-gt v10, v4, :cond_24

    :goto_14
    if-eqz v3, :cond_1b

    .line 49
    invoke-static/range {p1 .. p1}, Lcom/jme3/util/MipMapGenerator;->resizeToPowerOf2(Lcom/jme3/texture/Image;)Lcom/jme3/texture/Image;

    move-result-object v7

    :cond_1b
    if-ne v8, v0, :cond_1d

    .line 50
    invoke-virtual {v7}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1c

    .line 52
    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Invalid texture: {0}\nCubemap textures must contain 6 data units."

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1c
    const/4 v0, 0x0

    :goto_15
    if-ge v0, v3, :cond_20

    .line 53
    iget-object v4, v1, Lcom/jme3/renderer/opengl/GLRenderer;->texUtil:Lcom/jme3/renderer/opengl/TextureUtil;

    const v6, 0x8515

    add-int/2addr v6, v0

    iget-boolean v10, v1, Lcom/jme3/renderer/opengl/GLRenderer;->linearizeSrgbImages:Z

    invoke-virtual {v4, v7, v6, v0, v10}, Lcom/jme3/renderer/opengl/TextureUtil;->uploadTexture(Lcom/jme3/texture/Image;IIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_1d
    const v0, 0x8c1a

    if-ne v8, v0, :cond_1f

    .line 54
    iget-object v0, v1, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v3, Lcom/jme3/renderer/Caps;->TextureArray:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 55
    invoke-virtual {v7}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v0

    .line 56
    iget-object v3, v1, Lcom/jme3/renderer/opengl/GLRenderer;->texUtil:Lcom/jme3/renderer/opengl/TextureUtil;

    iget-boolean v4, v1, Lcom/jme3/renderer/opengl/GLRenderer;->linearizeSrgbImages:Z

    invoke-virtual {v3, v7, v8, v6, v4}, Lcom/jme3/renderer/opengl/TextureUtil;->uploadTexture(Lcom/jme3/texture/Image;IIZ)V

    const/4 v3, 0x0

    .line 57
    :goto_16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_20

    .line 58
    iget-object v4, v1, Lcom/jme3/renderer/opengl/GLRenderer;->texUtil:Lcom/jme3/renderer/opengl/TextureUtil;

    iget-boolean v6, v1, Lcom/jme3/renderer/opengl/GLRenderer;->linearizeSrgbImages:Z

    invoke-virtual {v4, v7, v8, v3, v6}, Lcom/jme3/renderer/opengl/TextureUtil;->uploadTexture(Lcom/jme3/texture/Image;IIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 59
    :cond_1e
    new-instance v0, Lcom/jme3/renderer/RendererException;

    const-string v2, "Texture arrays not supported by graphics hardware"

    invoke-direct {v0, v2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1f
    iget-object v0, v1, Lcom/jme3/renderer/opengl/GLRenderer;->texUtil:Lcom/jme3/renderer/opengl/TextureUtil;

    iget-boolean v3, v1, Lcom/jme3/renderer/opengl/GLRenderer;->linearizeSrgbImages:Z

    const/4 v4, 0x0

    invoke-virtual {v0, v7, v8, v4, v3}, Lcom/jme3/renderer/opengl/TextureUtil;->uploadTexture(Lcom/jme3/texture/Image;IIZ)V

    .line 61
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result v0

    if-eq v0, v9, :cond_21

    .line 62
    invoke-virtual {v2, v9}, Lcom/jme3/texture/Image;->setMultiSamples(I)V

    :cond_21
    if-eqz v17, :cond_23

    if-eqz v18, :cond_23

    .line 63
    iget-object v0, v1, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v3, Lcom/jme3/renderer/Caps;->FrameBuffer:Lcom/jme3/renderer/Caps;

    .line 64
    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, v1, Lcom/jme3/renderer/opengl/GLRenderer;->gl2:Lcom/jme3/renderer/opengl/GL2;

    if-nez v0, :cond_23

    :cond_22
    const/4 v3, 0x0

    .line 65
    invoke-virtual {v2, v3}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->isMipmapsGenerated()Z

    move-result v0

    if-nez v0, :cond_23

    .line 67
    iget-object v0, v1, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    invoke-interface {v0, v8}, Lcom/jme3/renderer/opengl/GLFbo;->glGenerateMipmapEXT(I)V

    .line 68
    invoke-virtual {v2, v5}, Lcom/jme3/texture/Image;->setMipmapsGenerated(Z)V

    .line 69
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/util/NativeObject;->clearUpdateNeeded()V

    return-void

    .line 70
    :cond_24
    new-instance v0, Lcom/jme3/renderer/RendererException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot upload texture "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". The maximum supported texture resolution is "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_25
    new-instance v0, Lcom/jme3/renderer/RendererException;

    const-string v2, "Multisample textures do not support mipmaps"

    invoke-direct {v0, v2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_26
    new-instance v0, Lcom/jme3/renderer/RendererException;

    const-string v2, "Multisample textures are not supported by the video hardware"

    invoke-direct {v0, v2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public applyRenderState(Lcom/jme3/material/RenderState;)V
    .locals 7

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl2:Lcom/jme3/renderer/opengl/GL2;

    const/16 v1, 0x408

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isWireframe()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->wireframe:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl2:Lcom/jme3/renderer/opengl/GL2;

    const/16 v4, 0x1b01

    invoke-interface {v0, v1, v4}, Lcom/jme3/renderer/opengl/GL2;->glPolygonMode(II)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v3, v0, Lcom/jme3/renderer/RenderContext;->wireframe:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isWireframe()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->wireframe:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl2:Lcom/jme3/renderer/opengl/GL2;

    const/16 v4, 0x1b02

    invoke-interface {v0, v1, v4}, Lcom/jme3/renderer/opengl/GL2;->glPolygonMode(II)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v2, v0, Lcom/jme3/renderer/RenderContext;->wireframe:Z

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isDepthTest()Z

    move-result v0

    const/16 v4, 0xb71

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->depthTestEnabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0, v4}, Lcom/jme3/renderer/opengl/GL;->glEnable(I)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v3, v0, Lcom/jme3/renderer/RenderContext;->depthTestEnabled:Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isDepthTest()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->depthTestEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0, v4}, Lcom/jme3/renderer/opengl/GL;->glDisable(I)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v2, v0, Lcom/jme3/renderer/RenderContext;->depthTestEnabled:Z

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isDepthTest()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getDepthFunc()Lcom/jme3/material/RenderState$TestFunction;

    move-result-object v0

    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v4, v4, Lcom/jme3/renderer/RenderContext;->depthFunc:Lcom/jme3/material/RenderState$TestFunction;

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getDepthFunc()Lcom/jme3/material/RenderState$TestFunction;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/jme3/renderer/opengl/GLRenderer;->convertTestFunction(Lcom/jme3/material/RenderState$TestFunction;)I

    move-result v4

    invoke-interface {v0, v4}, Lcom/jme3/renderer/opengl/GL;->glDepthFunc(I)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getDepthFunc()Lcom/jme3/material/RenderState$TestFunction;

    move-result-object v4

    iput-object v4, v0, Lcom/jme3/renderer/RenderContext;->depthFunc:Lcom/jme3/material/RenderState$TestFunction;

    :cond_4
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isDepthWrite()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->depthWriteEnabled:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0, v3}, Lcom/jme3/renderer/opengl/GL;->glDepthMask(Z)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v3, v0, Lcom/jme3/renderer/RenderContext;->depthWriteEnabled:Z

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isDepthWrite()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->depthWriteEnabled:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0, v2}, Lcom/jme3/renderer/opengl/GL;->glDepthMask(Z)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v2, v0, Lcom/jme3/renderer/RenderContext;->depthWriteEnabled:Z

    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isColorWrite()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->colorWriteEnabled:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0, v3, v3, v3, v3}, Lcom/jme3/renderer/opengl/GL;->glColorMask(ZZZZ)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v3, v0, Lcom/jme3/renderer/RenderContext;->colorWriteEnabled:Z

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isColorWrite()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->colorWriteEnabled:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0, v2, v2, v2, v2}, Lcom/jme3/renderer/opengl/GL;->glColorMask(ZZZZ)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v2, v0, Lcom/jme3/renderer/RenderContext;->colorWriteEnabled:Z

    :cond_8
    :goto_3
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isPolyOffset()Z

    move-result v0

    const v4, 0x8037

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->polyOffsetEnabled:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0, v4}, Lcom/jme3/renderer/opengl/GL;->glEnable(I)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetFactor()F

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetUnits()F

    move-result v4

    invoke-interface {v0, v2, v4}, Lcom/jme3/renderer/opengl/GL;->glPolygonOffset(FF)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v3, v0, Lcom/jme3/renderer/RenderContext;->polyOffsetEnabled:Z

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetFactor()F

    move-result v2

    iput v2, v0, Lcom/jme3/renderer/RenderContext;->polyOffsetFactor:F

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetUnits()F

    move-result v2

    iput v2, v0, Lcom/jme3/renderer/RenderContext;->polyOffsetUnits:F

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetFactor()F

    move-result v0

    iget-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v2, v2, Lcom/jme3/renderer/RenderContext;->polyOffsetFactor:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetUnits()F

    move-result v0

    iget-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v2, v2, Lcom/jme3/renderer/RenderContext;->polyOffsetUnits:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_c

    :cond_a
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetFactor()F

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetUnits()F

    move-result v4

    invoke-interface {v0, v2, v4}, Lcom/jme3/renderer/opengl/GL;->glPolygonOffset(FF)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetFactor()F

    move-result v2

    iput v2, v0, Lcom/jme3/renderer/RenderContext;->polyOffsetFactor:F

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetUnits()F

    move-result v2

    iput v2, v0, Lcom/jme3/renderer/RenderContext;->polyOffsetUnits:F

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->polyOffsetEnabled:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0, v4}, Lcom/jme3/renderer/opengl/GL;->glDisable(I)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v2, v0, Lcom/jme3/renderer/RenderContext;->polyOffsetEnabled:Z

    const/4 v2, 0x0

    iput v2, v0, Lcom/jme3/renderer/RenderContext;->polyOffsetFactor:F

    iput v2, v0, Lcom/jme3/renderer/RenderContext;->polyOffsetUnits:F

    :cond_c
    :goto_4
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFaceCullMode()Lcom/jme3/material/RenderState$FaceCullMode;

    move-result-object v0

    iget-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v2, v2, Lcom/jme3/renderer/RenderContext;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    const/16 v4, 0x405

    const/16 v5, 0x404

    if-eq v0, v2, :cond_12

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFaceCullMode()Lcom/jme3/material/RenderState$FaceCullMode;

    move-result-object v0

    sget-object v2, Lcom/jme3/material/RenderState$FaceCullMode;->Off:Lcom/jme3/material/RenderState$FaceCullMode;

    const/16 v6, 0xb44

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0, v6}, Lcom/jme3/renderer/opengl/GL;->glDisable(I)V

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0, v6}, Lcom/jme3/renderer/opengl/GL;->glEnable(I)V

    :goto_5
    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$FaceCullMode:[I

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFaceCullMode()Lcom/jme3/material/RenderState$FaceCullMode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v3, :cond_11

    const/4 v2, 0x2

    if-eq v0, v2, :cond_10

    const/4 v2, 0x3

    if-eq v0, v2, :cond_f

    const/4 v2, 0x4

    if-ne v0, v2, :cond_e

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glCullFace(I)V

    goto :goto_6

    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized face cull mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFaceCullMode()Lcom/jme3/material/RenderState$FaceCullMode;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0, v5}, Lcom/jme3/renderer/opengl/GL;->glCullFace(I)V

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0, v4}, Lcom/jme3/renderer/opengl/GL;->glCullFace(I)V

    :cond_11
    :goto_6
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFaceCullMode()Lcom/jme3/material/RenderState$FaceCullMode;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/renderer/RenderContext;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    :cond_12
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBlendMode()Lcom/jme3/material/RenderState$BlendMode;

    move-result-object v0

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Custom:Lcom/jme3/material/RenderState$BlendMode;

    if-ne v0, v1, :cond_13

    invoke-direct {p0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->changeBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getCustomSfactorRGB()Lcom/jme3/material/RenderState$BlendFunc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getCustomDfactorRGB()Lcom/jme3/material/RenderState$BlendFunc;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getCustomSfactorAlpha()Lcom/jme3/material/RenderState$BlendFunc;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getCustomDfactorAlpha()Lcom/jme3/material/RenderState$BlendFunc;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/jme3/renderer/opengl/GLRenderer;->blendFuncSeparate(Lcom/jme3/material/RenderState$BlendFunc;Lcom/jme3/material/RenderState$BlendFunc;Lcom/jme3/material/RenderState$BlendFunc;Lcom/jme3/material/RenderState$BlendFunc;)V

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBlendEquation()Lcom/jme3/material/RenderState$BlendEquation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBlendEquationAlpha()Lcom/jme3/material/RenderState$BlendEquationAlpha;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->blendEquationSeparate(Lcom/jme3/material/RenderState$BlendEquation;Lcom/jme3/material/RenderState$BlendEquationAlpha;)V

    goto/16 :goto_8

    :cond_13
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBlendMode()Lcom/jme3/material/RenderState$BlendMode;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v1, v1, Lcom/jme3/renderer/RenderContext;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    if-eq v0, v1, :cond_14

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBlendMode()Lcom/jme3/material/RenderState$BlendMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->changeBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBlendMode()Lcom/jme3/material/RenderState$BlendMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized blend mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBlendMode()Lcom/jme3/material/RenderState$BlendMode;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/jme3/material/RenderState$BlendFunc;->One_Minus_Dst_Color:Lcom/jme3/material/RenderState$BlendFunc;

    sget-object v1, Lcom/jme3/material/RenderState$BlendFunc;->One_Minus_Src_Color:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-direct {p0, v0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->blendFunc(Lcom/jme3/material/RenderState$BlendFunc;Lcom/jme3/material/RenderState$BlendFunc;)V

    goto :goto_7

    :pswitch_1
    sget-object v0, Lcom/jme3/material/RenderState$BlendFunc;->One:Lcom/jme3/material/RenderState$BlendFunc;

    sget-object v1, Lcom/jme3/material/RenderState$BlendFunc;->One_Minus_Src_Color:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-direct {p0, v0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->blendFunc(Lcom/jme3/material/RenderState$BlendFunc;Lcom/jme3/material/RenderState$BlendFunc;)V

    goto :goto_7

    :pswitch_2
    sget-object v0, Lcom/jme3/material/RenderState$BlendFunc;->Dst_Color:Lcom/jme3/material/RenderState$BlendFunc;

    sget-object v1, Lcom/jme3/material/RenderState$BlendFunc;->Src_Color:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-direct {p0, v0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->blendFunc(Lcom/jme3/material/RenderState$BlendFunc;Lcom/jme3/material/RenderState$BlendFunc;)V

    goto :goto_7

    :pswitch_3
    sget-object v0, Lcom/jme3/material/RenderState$BlendFunc;->Dst_Color:Lcom/jme3/material/RenderState$BlendFunc;

    sget-object v1, Lcom/jme3/material/RenderState$BlendFunc;->Zero:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-direct {p0, v0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->blendFunc(Lcom/jme3/material/RenderState$BlendFunc;Lcom/jme3/material/RenderState$BlendFunc;)V

    goto :goto_7

    :pswitch_4
    sget-object v0, Lcom/jme3/material/RenderState$BlendFunc;->One:Lcom/jme3/material/RenderState$BlendFunc;

    sget-object v1, Lcom/jme3/material/RenderState$BlendFunc;->One_Minus_Src_Alpha:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-direct {p0, v0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->blendFunc(Lcom/jme3/material/RenderState$BlendFunc;Lcom/jme3/material/RenderState$BlendFunc;)V

    goto :goto_7

    :pswitch_5
    sget-object v0, Lcom/jme3/material/RenderState$BlendFunc;->Src_Alpha:Lcom/jme3/material/RenderState$BlendFunc;

    sget-object v1, Lcom/jme3/material/RenderState$BlendFunc;->One_Minus_Src_Alpha:Lcom/jme3/material/RenderState$BlendFunc;

    sget-object v2, Lcom/jme3/material/RenderState$BlendFunc;->One:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/jme3/renderer/opengl/GLRenderer;->blendFuncSeparate(Lcom/jme3/material/RenderState$BlendFunc;Lcom/jme3/material/RenderState$BlendFunc;Lcom/jme3/material/RenderState$BlendFunc;Lcom/jme3/material/RenderState$BlendFunc;)V

    goto :goto_7

    :pswitch_6
    sget-object v0, Lcom/jme3/material/RenderState$BlendFunc;->Src_Alpha:Lcom/jme3/material/RenderState$BlendFunc;

    sget-object v1, Lcom/jme3/material/RenderState$BlendFunc;->One_Minus_Src_Alpha:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-direct {p0, v0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->blendFunc(Lcom/jme3/material/RenderState$BlendFunc;Lcom/jme3/material/RenderState$BlendFunc;)V

    goto :goto_7

    :pswitch_7
    sget-object v0, Lcom/jme3/material/RenderState$BlendFunc;->Src_Alpha:Lcom/jme3/material/RenderState$BlendFunc;

    sget-object v1, Lcom/jme3/material/RenderState$BlendFunc;->One:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-direct {p0, v0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->blendFunc(Lcom/jme3/material/RenderState$BlendFunc;Lcom/jme3/material/RenderState$BlendFunc;)V

    goto :goto_7

    :pswitch_8
    sget-object v0, Lcom/jme3/material/RenderState$BlendFunc;->One:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-direct {p0, v0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->blendFunc(Lcom/jme3/material/RenderState$BlendFunc;Lcom/jme3/material/RenderState$BlendFunc;)V

    :goto_7
    :pswitch_9
    sget-object v0, Lcom/jme3/material/RenderState$BlendEquation;->Add:Lcom/jme3/material/RenderState$BlendEquation;

    sget-object v1, Lcom/jme3/material/RenderState$BlendEquationAlpha;->InheritColor:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    invoke-direct {p0, v0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->blendEquationSeparate(Lcom/jme3/material/RenderState$BlendEquation;Lcom/jme3/material/RenderState$BlendEquationAlpha;)V

    :cond_14
    :goto_8
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->stencilTest:Z

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isStencilTest()Z

    move-result v1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFrontStencilStencilFailOperation()Lcom/jme3/material/RenderState$StencilOperation;

    move-result-object v1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFrontStencilDepthFailOperation()Lcom/jme3/material/RenderState$StencilOperation;

    move-result-object v1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFrontStencilDepthPassOperation()Lcom/jme3/material/RenderState$StencilOperation;

    move-result-object v1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBackStencilStencilFailOperation()Lcom/jme3/material/RenderState$StencilOperation;

    move-result-object v1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBackStencilDepthFailOperation()Lcom/jme3/material/RenderState$StencilOperation;

    move-result-object v1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBackStencilDepthPassOperation()Lcom/jme3/material/RenderState$StencilOperation;

    move-result-object v1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFrontStencilFunction()Lcom/jme3/material/RenderState$TestFunction;

    move-result-object v1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBackStencilFunction()Lcom/jme3/material/RenderState$TestFunction;

    move-result-object v1

    if-eq v0, v1, :cond_17

    :cond_15
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFrontStencilStencilFailOperation()Lcom/jme3/material/RenderState$StencilOperation;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/renderer/RenderContext;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFrontStencilDepthFailOperation()Lcom/jme3/material/RenderState$StencilOperation;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/renderer/RenderContext;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFrontStencilDepthPassOperation()Lcom/jme3/material/RenderState$StencilOperation;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/renderer/RenderContext;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBackStencilStencilFailOperation()Lcom/jme3/material/RenderState$StencilOperation;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/renderer/RenderContext;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBackStencilDepthFailOperation()Lcom/jme3/material/RenderState$StencilOperation;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/renderer/RenderContext;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBackStencilDepthPassOperation()Lcom/jme3/material/RenderState$StencilOperation;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/renderer/RenderContext;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFrontStencilFunction()Lcom/jme3/material/RenderState$TestFunction;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/renderer/RenderContext;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBackStencilFunction()Lcom/jme3/material/RenderState$TestFunction;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/renderer/RenderContext;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isStencilTest()Z

    move-result v0

    const/16 v1, 0xb90

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glEnable(I)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFrontStencilStencilFailOperation()Lcom/jme3/material/RenderState$StencilOperation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->convertStencilOperation(Lcom/jme3/material/RenderState$StencilOperation;)I

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFrontStencilDepthFailOperation()Lcom/jme3/material/RenderState$StencilOperation;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jme3/renderer/opengl/GLRenderer;->convertStencilOperation(Lcom/jme3/material/RenderState$StencilOperation;)I

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFrontStencilDepthPassOperation()Lcom/jme3/material/RenderState$StencilOperation;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jme3/renderer/opengl/GLRenderer;->convertStencilOperation(Lcom/jme3/material/RenderState$StencilOperation;)I

    move-result v3

    invoke-interface {v0, v5, v1, v2, v3}, Lcom/jme3/renderer/opengl/GL;->glStencilOpSeparate(IIII)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBackStencilStencilFailOperation()Lcom/jme3/material/RenderState$StencilOperation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->convertStencilOperation(Lcom/jme3/material/RenderState$StencilOperation;)I

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBackStencilDepthFailOperation()Lcom/jme3/material/RenderState$StencilOperation;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jme3/renderer/opengl/GLRenderer;->convertStencilOperation(Lcom/jme3/material/RenderState$StencilOperation;)I

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBackStencilDepthPassOperation()Lcom/jme3/material/RenderState$StencilOperation;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jme3/renderer/opengl/GLRenderer;->convertStencilOperation(Lcom/jme3/material/RenderState$StencilOperation;)I

    move-result v3

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/jme3/renderer/opengl/GL;->glStencilOpSeparate(IIII)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFrontStencilFunction()Lcom/jme3/material/RenderState$TestFunction;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->convertTestFunction(Lcom/jme3/material/RenderState$TestFunction;)I

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFrontStencilReference()I

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFrontStencilMask()I

    move-result v3

    invoke-interface {v0, v5, v1, v2, v3}, Lcom/jme3/renderer/opengl/GL;->glStencilFuncSeparate(IIII)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBackStencilFunction()Lcom/jme3/material/RenderState$TestFunction;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->convertTestFunction(Lcom/jme3/material/RenderState$TestFunction;)I

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBackStencilReference()I

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBackStencilMask()I

    move-result v3

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/jme3/renderer/opengl/GL;->glStencilFuncSeparate(IIII)V

    goto :goto_9

    :cond_16
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glDisable(I)V

    :cond_17
    :goto_9
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v0, v0, Lcom/jme3/renderer/RenderContext;->lineWidth:F

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getLineWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getLineWidth()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glLineWidth(F)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getLineWidth()F

    move-result p1

    iput p1, v0, Lcom/jme3/renderer/RenderContext;->lineWidth:F

    :cond_18
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bindProgram(Lcom/jme3/shader/Shader;)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v1, v1, Lcom/jme3/renderer/RenderContext;->boundShaderProgram:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v1, v0}, Lcom/jme3/renderer/opengl/GL;->glUseProgram(I)V

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/jme3/renderer/Statistics;->onShaderUse(Lcom/jme3/shader/Shader;Z)V

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-object p1, v1, Lcom/jme3/renderer/RenderContext;->boundShader:Lcom/jme3/shader/Shader;

    iput v0, v1, Lcom/jme3/renderer/RenderContext;->boundShaderProgram:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jme3/renderer/Statistics;->onShaderUse(Lcom/jme3/shader/Shader;Z)V

    :goto_0
    return-void
.end method

.method public cleanup()V
    .locals 3

    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Deleting objects and invalidating state"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {v0, p0}, Lcom/jme3/util/NativeObjectManager;->deleteAllObjects(Ljava/lang/Object;)V

    invoke-static {}, Lcom/jme3/opencl/OpenCLObjectManager;->getInstance()Lcom/jme3/opencl/OpenCLObjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/opencl/OpenCLObjectManager;->deleteAllObjects()V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {v0}, Lcom/jme3/renderer/Statistics;->clearMemory()V

    invoke-virtual {p0}, Lcom/jme3/renderer/opengl/GLRenderer;->invalidateState()V

    return-void
.end method

.method public clearBuffers(ZZZ)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean p1, p1, Lcom/jme3/renderer/RenderContext;->colorWriteEnabled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p1, v0, v0, v0, v0}, Lcom/jme3/renderer/opengl/GL;->glColorMask(ZZZZ)V

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v0, p1, Lcom/jme3/renderer/RenderContext;->colorWriteEnabled:Z

    :cond_0
    const/16 p1, 0x4000

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean p2, p2, Lcom/jme3/renderer/RenderContext;->depthWriteEnabled:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p2, v0}, Lcom/jme3/renderer/opengl/GL;->glDepthMask(Z)V

    iget-object p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v0, p2, Lcom/jme3/renderer/RenderContext;->depthWriteEnabled:Z

    :cond_2
    or-int/lit16 p1, p1, 0x100

    :cond_3
    if-eqz p3, :cond_4

    or-int/lit16 p1, p1, 0x400

    :cond_4
    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p2, p1}, Lcom/jme3/renderer/opengl/GL;->glClear(I)V

    :cond_5
    return-void
.end method

.method public clearClipRect()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->clipRectEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const/16 v1, 0xc11

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glDisable(I)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jme3/renderer/RenderContext;->clipRectEnabled:Z

    iput v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->clipX:I

    iput v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->clipY:I

    iput v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->clipW:I

    iput v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->clipH:I

    :cond_0
    return-void
.end method

.method public clearVertexAttribs()V
    .locals 6

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->attribIndexList:Lcom/jme3/renderer/IDList;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, v0, Lcom/jme3/renderer/IDList;->oldLen:I

    if-ge v2, v3, :cond_2

    iget-object v3, v0, Lcom/jme3/renderer/IDList;->oldList:[I

    aget v3, v3, v2

    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v4, v3}, Lcom/jme3/renderer/opengl/GL;->glDisableVertexAttribArray(I)V

    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v4, v4, Lcom/jme3/renderer/RenderContext;->boundAttribs:[Ljava/lang/ref/WeakReference;

    aget-object v4, v4, v3

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/scene/VertexBuffer;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->isInstanced()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    invoke-interface {v4, v3, v1}, Lcom/jme3/renderer/opengl/GLExt;->glVertexAttribDivisorARB(II)V

    :cond_0
    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v4, v4, Lcom/jme3/renderer/RenderContext;->boundAttribs:[Ljava/lang/ref/WeakReference;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/jme3/renderer/IDList;->copyNewToOld()V

    return-void
.end method

.method public convertElementMode(Lcom/jme3/scene/Mesh$Mode;)I
    .locals 3

    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized mesh mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 p1, 0xe

    return p1

    :pswitch_1
    const/4 p1, 0x5

    return p1

    :pswitch_2
    const/4 p1, 0x6

    return p1

    :pswitch_3
    const/4 p1, 0x4

    return p1

    :pswitch_4
    const/4 p1, 0x3

    return p1

    :pswitch_5
    const/4 p1, 0x2

    return p1

    :pswitch_6
    const/4 p1, 0x1

    return p1

    :pswitch_7
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public convertShaderType(Lcom/jme3/shader/Shader$ShaderType;)I
    .locals 1

    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$Shader$ShaderType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const p1, 0x8e87

    return p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unrecognized shader type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const p1, 0x8e88

    return p1

    :cond_2
    const p1, 0x8dd9

    return p1

    :cond_3
    const p1, 0x8b31

    return p1

    :cond_4
    const p1, 0x8b30

    return p1
.end method

.method public copyFrameBuffer(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->copyFrameBuffer(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer;ZZ)V

    return-void
.end method

.method public copyFrameBuffer(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/jme3/renderer/opengl/GLRenderer;->copyFrameBuffer(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer;ZZ)V

    return-void
.end method

.method public copyFrameBuffer(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer;ZZ)V
    .locals 20

    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->FrameBufferBlit:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4
    iget-object v1, v0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v2, v1, Lcom/jme3/renderer/RenderContext;->boundFBO:I

    .line 5
    iget-object v1, v1, Lcom/jme3/renderer/RenderContext;->boundFB:Lcom/jme3/texture/FrameBuffer;

    .line 6
    iget-object v3, v0, Lcom/jme3/renderer/opengl/GLRenderer;->mainFbOverride:Lcom/jme3/texture/FrameBuffer;

    if-eqz v3, :cond_2

    if-nez p1, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move-object/from16 v3, p2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p1

    goto :goto_1

    :goto_2
    if-eqz v4, :cond_3

    .line 7
    invoke-virtual {v4}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8
    invoke-virtual {v0, v4}, Lcom/jme3/renderer/opengl/GLRenderer;->updateFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 9
    invoke-virtual {v3}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 10
    invoke-virtual {v0, v3}, Lcom/jme3/renderer/opengl/GLRenderer;->updateFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    :cond_4
    const v5, 0x8ca8

    const/4 v6, 0x0

    if-nez v4, :cond_5

    .line 11
    iget-object v4, v0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    invoke-interface {v4, v5, v6}, Lcom/jme3/renderer/opengl/GLFbo;->glBindFramebufferEXT(II)V

    .line 12
    iget v4, v0, Lcom/jme3/renderer/opengl/GLRenderer;->vpX:I

    .line 13
    iget v5, v0, Lcom/jme3/renderer/opengl/GLRenderer;->vpY:I

    .line 14
    iget v7, v0, Lcom/jme3/renderer/opengl/GLRenderer;->vpW:I

    add-int/2addr v7, v4

    .line 15
    iget v8, v0, Lcom/jme3/renderer/opengl/GLRenderer;->vpH:I

    add-int/2addr v8, v5

    move v10, v4

    move v11, v5

    :goto_3
    move v12, v7

    move v13, v8

    goto :goto_4

    .line 16
    :cond_5
    iget-object v7, v0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    invoke-virtual {v4}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v8

    invoke-interface {v7, v5, v8}, Lcom/jme3/renderer/opengl/GLFbo;->glBindFramebufferEXT(II)V

    .line 17
    invoke-virtual {v4}, Lcom/jme3/texture/FrameBuffer;->getWidth()I

    move-result v7

    .line 18
    invoke-virtual {v4}, Lcom/jme3/texture/FrameBuffer;->getHeight()I

    move-result v8

    move v10, v6

    move v11, v10

    goto :goto_3

    :goto_4
    const v4, 0x8ca9

    if-nez v3, :cond_6

    .line 19
    iget-object v5, v0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    invoke-interface {v5, v4, v6}, Lcom/jme3/renderer/opengl/GLFbo;->glBindFramebufferEXT(II)V

    .line 20
    iget v4, v0, Lcom/jme3/renderer/opengl/GLRenderer;->vpX:I

    .line 21
    iget v5, v0, Lcom/jme3/renderer/opengl/GLRenderer;->vpY:I

    .line 22
    iget v7, v0, Lcom/jme3/renderer/opengl/GLRenderer;->vpW:I

    add-int/2addr v7, v4

    .line 23
    iget v8, v0, Lcom/jme3/renderer/opengl/GLRenderer;->vpH:I

    add-int/2addr v8, v5

    move v14, v4

    move v15, v5

    move/from16 v16, v7

    move/from16 v17, v8

    goto :goto_5

    .line 24
    :cond_6
    iget-object v5, v0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    invoke-virtual {v3}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v7

    invoke-interface {v5, v4, v7}, Lcom/jme3/renderer/opengl/GLFbo;->glBindFramebufferEXT(II)V

    .line 25
    invoke-virtual {v3}, Lcom/jme3/texture/FrameBuffer;->getWidth()I

    move-result v4

    .line 26
    invoke-virtual {v3}, Lcom/jme3/texture/FrameBuffer;->getHeight()I

    move-result v5

    move/from16 v16, v4

    move/from16 v17, v5

    move v14, v6

    move v15, v14

    .line 27
    :goto_5
    invoke-direct {v0, v3}, Lcom/jme3/renderer/opengl/GLRenderer;->toggleFramebufferSrgb(Lcom/jme3/texture/FrameBuffer;)V

    if-eqz p3, :cond_7

    const/16 v6, 0x4000

    :cond_7
    if-eqz p4, :cond_8

    or-int/lit16 v3, v6, 0x100

    move/from16 v18, v3

    goto :goto_6

    :cond_8
    move/from16 v18, v6

    .line 28
    :goto_6
    iget-object v9, v0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    const/16 v19, 0x2600

    invoke-interface/range {v9 .. v19}, Lcom/jme3/renderer/opengl/GLFbo;->glBlitFramebufferEXT(IIIIIIIIII)V

    .line 29
    iget-object v3, v0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    const v4, 0x8d40

    invoke-interface {v3, v4, v2}, Lcom/jme3/renderer/opengl/GLFbo;->glBindFramebufferEXT(II)V

    .line 30
    iget-object v3, v0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput v2, v3, Lcom/jme3/renderer/RenderContext;->boundFBO:I

    .line 31
    iput-object v1, v3, Lcom/jme3/renderer/RenderContext;->boundFB:Lcom/jme3/texture/FrameBuffer;

    .line 32
    invoke-direct {v0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->toggleFramebufferSrgb(Lcom/jme3/texture/FrameBuffer;)V

    return-void

    .line 33
    :cond_9
    new-instance v1, Lcom/jme3/renderer/RendererException;

    const-string v2, "Framebuffer blitting not supported by the video hardware"

    invoke-direct {v1, v2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public deleteBuffer(Lcom/jme3/scene/VertexBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 3
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 4
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glDeleteBuffers(Ljava/nio/IntBuffer;)V

    .line 5
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->resetObject()V

    :cond_0
    return-void
.end method

.method public deleteBuffer(Lcom/jme3/shader/bufferobject/BufferObject;)V
    .locals 2

    .line 6
    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 8
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 9
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 10
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glDeleteBuffers(Ljava/nio/IntBuffer;)V

    .line 11
    invoke-virtual {p1}, Lcom/jme3/shader/bufferobject/BufferObject;->resetObject()V

    return-void
.end method

.method public deleteFence(Lcom/jme3/renderer/opengl/GLFence;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl4:Lcom/jme3/renderer/opengl/GL4;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl4:Lcom/jme3/renderer/opengl/GL4;

    invoke-interface {v0, p1}, Lcom/jme3/renderer/opengl/GL4;->glDeleteSync(Lcom/jme3/renderer/opengl/GLFence;)V

    invoke-virtual {p1}, Lcom/jme3/renderer/opengl/GLFence;->resetObject()V

    :cond_0
    return-void
.end method

.method public deleteFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v0, v0, Lcom/jme3/renderer/RenderContext;->boundFBO:I

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    const v1, 0x8d40

    invoke-interface {v0, v1, v2}, Lcom/jme3/renderer/opengl/GLFbo;->glBindFramebufferEXT(II)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput v2, v0, Lcom/jme3/renderer/RenderContext;->boundFBO:I

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getDepthBuffer()Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getDepthBuffer()Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->deleteRenderBuffer(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer$RenderBuffer;)V

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getColorBuffer()Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getColorBuffer()Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->deleteRenderBuffer(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer$RenderBuffer;)V

    :cond_2
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GLFbo;->glDeleteFramebuffersEXT(Ljava/nio/IntBuffer;)V

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->resetObject()V

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {p1}, Lcom/jme3/renderer/Statistics;->onDeleteFrameBuffer()V

    :cond_3
    return-void
.end method

.method public deleteImage(Lcom/jme3/texture/Image;)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glDeleteTextures(Ljava/nio/IntBuffer;)V

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->resetObject()V

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {p1}, Lcom/jme3/renderer/Statistics;->onDeleteTexture()V

    :cond_0
    return-void
.end method

.method public deleteShader(Lcom/jme3/shader/Shader;)V
    .locals 6

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    const-string v0, "Shader is not uploaded to GPU, cannot delete."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getSources()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/shader/Shader$ShaderSource;

    invoke-virtual {v2}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v3

    if-eq v3, v1, :cond_1

    iget-object v3, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v4

    invoke-virtual {v2}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/jme3/renderer/opengl/GL;->glDetachShader(II)V

    invoke-virtual {p0, v2}, Lcom/jme3/renderer/opengl/GLRenderer;->deleteShaderSource(Lcom/jme3/shader/Shader$ShaderSource;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glDeleteProgram(I)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {v0}, Lcom/jme3/renderer/Statistics;->onDeleteShader()V

    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->resetObject()V

    return-void
.end method

.method public deleteShaderSource(Lcom/jme3/shader/Shader$ShaderSource;)V
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    if-gez v0, :cond_0

    sget-object p1, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    const-string v0, "Shader source is not uploaded to GPU, cannot delete."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->clearUpdateNeeded()V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glDeleteShader(I)V

    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->resetObject()V

    return-void
.end method

.method public drawTriangleArray(Lcom/jme3/scene/Mesh$Mode;II)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->MeshInstancing:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    invoke-virtual {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->convertElementMode(Lcom/jme3/scene/Mesh$Mode;)I

    move-result p1

    invoke-interface {v0, p1, v1, p3, p2}, Lcom/jme3/renderer/opengl/GLExt;->glDrawArraysInstancedARB(IIII)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->convertElementMode(Lcom/jme3/scene/Mesh$Mode;)I

    move-result p1

    invoke-interface {p2, p1, v1, p3}, Lcom/jme3/renderer/opengl/GL;->glDrawArrays(III)V

    :goto_0
    return-void
.end method

.method public drawTriangleList(Lcom/jme3/scene/VertexBuffer;Lcom/jme3/scene/Mesh;I)V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    if-ne v1, v2, :cond_c

    sget-object v1, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    iget-object v1, v0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v3, Lcom/jme3/renderer/Caps;->IntegerIndexBuffer:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/jme3/renderer/RendererException;

    const-string v2, "32-bit index buffers are not supported by the video hardware"

    invoke-direct {v1, v2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Lcom/jme3/renderer/RendererException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected format for index buffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p1}, Lcom/jme3/renderer/opengl/GLRenderer;->updateBufferData(Lcom/jme3/scene/VertexBuffer;)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v1

    iget-object v3, v0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v3, v3, Lcom/jme3/renderer/RenderContext;->boundElementArrayVBO:I

    if-eq v3, v1, :cond_4

    iget-object v3, v0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v4, 0x8893

    invoke-interface {v3, v4, v1}, Lcom/jme3/renderer/opengl/GL;->glBindBuffer(II)V

    iget-object v3, v0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput v1, v3, Lcom/jme3/renderer/RenderContext;->boundElementArrayVBO:I

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    move/from16 v12, p3

    if-le v12, v4, :cond_5

    iget-object v5, v0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v6, Lcom/jme3/renderer/Caps;->MeshInstancing:Lcom/jme3/renderer/Caps;

    invoke-virtual {v5, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v13, v4

    goto :goto_1

    :cond_5
    move v13, v3

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v5

    sget-object v6, Lcom/jme3/scene/Mesh$Mode;->Hybrid:Lcom/jme3/scene/Mesh$Mode;

    if-ne v5, v6, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Mesh;->getModeStart()[I

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Mesh;->getElementLengths()[I

    move-result-object v14

    sget-object v6, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v0, v6}, Lcom/jme3/renderer/opengl/GLRenderer;->convertElementMode(Lcom/jme3/scene/Mesh$Mode;)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/jme3/renderer/opengl/GLRenderer;->convertFormat(Lcom/jme3/scene/VertexBuffer$Format;)I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jme3/scene/VertexBuffer$Format;->getComponentSize()I

    move-result v16

    aget v7, v5, v3

    aget v4, v5, v4

    aget v2, v5, v2

    move v11, v3

    :goto_2
    array-length v5, v14

    if-ge v3, v5, :cond_b

    if-ne v3, v4, :cond_6

    sget-object v5, Lcom/jme3/scene/Mesh$Mode;->TriangleStrip:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v0, v5}, Lcom/jme3/renderer/opengl/GLRenderer;->convertElementMode(Lcom/jme3/scene/Mesh$Mode;)I

    move-result v5

    :goto_3
    move/from16 v17, v5

    goto :goto_4

    :cond_6
    if-ne v3, v2, :cond_7

    sget-object v5, Lcom/jme3/scene/Mesh$Mode;->TriangleFan:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v0, v5}, Lcom/jme3/renderer/opengl/GLRenderer;->convertElementMode(Lcom/jme3/scene/Mesh$Mode;)I

    move-result v5

    goto :goto_3

    :cond_7
    move/from16 v17, v6

    :goto_4
    aget v18, v14, v3

    if-eqz v13, :cond_8

    iget-object v5, v0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    int-to-long v9, v11

    move/from16 v6, v17

    move/from16 v7, v18

    move v8, v15

    move/from16 p1, v2

    move v2, v11

    move/from16 v11, p3

    invoke-interface/range {v5 .. v11}, Lcom/jme3/renderer/opengl/GLExt;->glDrawElementsInstancedARB(IIIJI)V

    move/from16 v19, v4

    goto :goto_5

    :cond_8
    move/from16 p1, v2

    move v2, v11

    iget-object v5, v0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const/4 v6, 0x0

    int-to-long v10, v2

    move/from16 v19, v4

    move-object v4, v5

    move/from16 v5, v17

    move v7, v1

    move/from16 v8, v18

    move v9, v15

    invoke-interface/range {v4 .. v11}, Lcom/jme3/renderer/opengl/GL;->glDrawRangeElements(IIIIIJ)V

    :goto_5
    mul-int v18, v18, v16

    add-int v11, v2, v18

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, p1

    move/from16 v6, v17

    move/from16 v4, v19

    goto :goto_2

    :cond_9
    if-eqz v13, :cond_a

    iget-object v5, v0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->convertElementMode(Lcom/jme3/scene/Mesh$Mode;)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->convertFormat(Lcom/jme3/scene/VertexBuffer$Format;)I

    move-result v8

    const-wide/16 v9, 0x0

    move/from16 v11, p3

    invoke-interface/range {v5 .. v11}, Lcom/jme3/renderer/opengl/GLExt;->glDrawElementsInstancedARB(IIIJI)V

    goto :goto_6

    :cond_a
    iget-object v4, v0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/renderer/opengl/GLRenderer;->convertElementMode(Lcom/jme3/scene/Mesh$Mode;)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/jme3/renderer/opengl/GLRenderer;->convertFormat(Lcom/jme3/scene/VertexBuffer$Format;)I

    move-result v9

    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    move v7, v1

    invoke-interface/range {v4 .. v11}, Lcom/jme3/renderer/opengl/GL;->glDrawRangeElements(IIIIIJ)V

    :cond_b
    :goto_6
    return-void

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only index buffers are allowed as triangle lists."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public generateProfilingTasks(I)[I
    .locals 2

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v1, p1, v0}, Lcom/jme3/renderer/opengl/GL;->glGenQueries(ILjava/nio/IntBuffer;)V

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->getIntArray(Ljava/nio/IntBuffer;)[I

    move-result-object p1

    return-object p1
.end method

.method public getAlphaToCoverage()Z
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->Multisample:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v1, 0x809e

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glIsEnabled(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCaps()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/jme3/renderer/Caps;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getCurrentFrameBuffer()Lcom/jme3/texture/FrameBuffer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->mainFbOverride:Lcom/jme3/texture/FrameBuffer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->boundFB:Lcom/jme3/texture/FrameBuffer;

    return-object v0
.end method

.method public getDefaultAnisotropicFilter()I
    .locals 1

    iget v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->defaultAnisotropicFilter:I

    return v0
.end method

.method public getFrameBufferSamplePositions(Lcom/jme3/texture/FrameBuffer;)[Lcom/jme3/math/Vector2f;
    .locals 9

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getSamples()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->TextureMultisample:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getSamples()I

    move-result p1

    new-array v0, p1, [Lcom/jme3/math/Vector2f;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p1, :cond_0

    iget-object v5, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    const v6, 0x8e50

    invoke-interface {v5, v6, v4, v2}, Lcom/jme3/renderer/opengl/GLExt;->glGetMultisample(IILjava/nio/FloatBuffer;)V

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    new-instance v5, Lcom/jme3/math/Vector2f;

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v6, v7

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    sub-float/2addr v8, v7

    invoke-direct {v5, v6, v8}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    aput-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p1, Lcom/jme3/renderer/RendererException;

    const-string v0, "Multisampled textures are not supported"

    invoke-direct {p1, v0}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Framebuffer must be multisampled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGl4()Lcom/jme3/renderer/opengl/GL4;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl4:Lcom/jme3/renderer/opengl/GL4;

    return-object v0
.end method

.method public getLimits()Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lcom/jme3/renderer/Limits;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    return-object v0
.end method

.method public getMaxLineWidth()F
    .locals 3

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->CoreProfile:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->floatBuf16:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v1, 0x846e

    iget-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->floatBuf16:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v1, v2}, Lcom/jme3/renderer/opengl/GL;->glGetFloat(ILjava/nio/FloatBuffer;)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->floatBuf16:Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    return v0
.end method

.method public getProfilingTime(I)J
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v1, 0x8866

    invoke-interface {v0, p1, v1}, Lcom/jme3/renderer/opengl/GL;->glGetQueryObjectui64(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatistics()Lcom/jme3/renderer/Statistics;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    return-object v0
.end method

.method public initialize()V
    .locals 4

    invoke-direct {p0}, Lcom/jme3/renderer/opengl/GLRenderer;->loadCapabilities()V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const/16 v1, 0xcf5

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/jme3/renderer/opengl/GL;->glPixelStorei(II)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->SeamlessCubemap:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v1, 0x884f

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glEnable(I)V

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->CoreProfile:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl3:Lcom/jme3/renderer/opengl/GL3;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-interface {v0, v3}, Lcom/jme3/renderer/opengl/GL3;->glGenVertexArrays(Ljava/nio/IntBuffer;)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl3:Lcom/jme3/renderer/opengl/GL3;

    invoke-interface {v2, v0}, Lcom/jme3/renderer/opengl/GL3;->glBindVertexArray(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    instance-of v3, v0, Lcom/jme3/renderer/opengl/GLES_30;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/jme3/renderer/opengl/GLES_30;

    iget-object v3, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-interface {v0, v3}, Lcom/jme3/renderer/opengl/GLES_30;->glGenVertexArrays(Ljava/nio/IntBuffer;)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    check-cast v2, Lcom/jme3/renderer/opengl/GLES_30;

    invoke-interface {v2, v0}, Lcom/jme3/renderer/opengl/GLES_30;->glBindVertexArray(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Core profile not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl2:Lcom/jme3/renderer/opengl/GL2;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    instance-of v2, v2, Lcom/jme3/renderer/opengl/GLES_30;

    if-nez v2, :cond_4

    const v2, 0x8642

    invoke-interface {v0, v2}, Lcom/jme3/renderer/opengl/GL;->glEnable(I)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl2:Lcom/jme3/renderer/opengl/GL2;

    const v1, 0x8861

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glEnable(I)V

    :cond_4
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v2, 0x8ca6

    invoke-interface {v1, v2, v0}, Lcom/jme3/renderer/opengl/GL;->glGetInteger(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    if-lez v0, :cond_5

    iput v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->defaultFBO:I

    :cond_5
    return-void
.end method

.method public invalidateState()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {v0}, Lcom/jme3/renderer/RenderContext;->reset()V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl2:Lcom/jme3/renderer/opengl/GL2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    const/16 v1, 0xc01

    invoke-direct {p0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/jme3/renderer/RenderContext;->initialDrawBuf:I

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    const/16 v1, 0xc02

    invoke-direct {p0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/jme3/renderer/RenderContext;->initialReadBuf:I

    :cond_0
    return-void
.end method

.method public isLinearizeSrgbImages()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->linearizeSrgbImages:Z

    return v0
.end method

.method public isMainFrameBufferSrgb()Z
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->Srgb:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->SrgbWriteControl:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->mainFrameBufferSrgb:Z

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTaskResultAvailable(I)Z
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v1, 0x8867

    invoke-interface {v0, p1, v1}, Lcom/jme3/renderer/opengl/GL;->glGetQueryObjectiv(II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public modifyTexture(Lcom/jme3/texture/Texture2D;Lcom/jme3/texture/Image;IIIIII)V
    .locals 15

    move-object v0, p0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    .line 9
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/jme3/renderer/opengl/GLRenderer;->setTexture(ILcom/jme3/texture/Texture;)V
    :try_end_0
    .catch Lcom/jme3/renderer/TextureUnitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    iget-object v1, v0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v3, Lcom/jme3/renderer/Caps;->OpenGLES20:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v3

    if-eq v1, v3, :cond_0

    .line 11
    sget-object v1, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Incompatible texture subimage"

    invoke-virtual {v1, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 12
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Texture2D;->getType()Lcom/jme3/texture/Texture$Type;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/jme3/renderer/opengl/GLRenderer;->convertTextureType(Lcom/jme3/texture/Texture$Type;II)I

    move-result v5

    .line 13
    iget-object v4, v0, Lcom/jme3/renderer/opengl/GLRenderer;->texUtil:Lcom/jme3/renderer/opengl/TextureUtil;

    const/4 v7, 0x0

    iget-boolean v14, v0, Lcom/jme3/renderer/opengl/GLRenderer;->linearizeSrgbImages:Z

    move-object/from16 v6, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-virtual/range {v4 .. v14}, Lcom/jme3/renderer/opengl/TextureUtil;->uploadSubTexture(ILcom/jme3/texture/Image;IIIIIIIZ)V

    return-void

    .line 14
    :catch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Renderer lacks texture units?"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public modifyTexture(Lcom/jme3/texture/Texture;Lcom/jme3/texture/Image;II)V
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    .line 1
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/jme3/renderer/opengl/GLRenderer;->setTexture(ILcom/jme3/texture/Texture;)V
    :try_end_0
    .catch Lcom/jme3/renderer/TextureUnitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v1, v0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v3, Lcom/jme3/renderer/Caps;->OpenGLES20:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v3

    if-eq v1, v3, :cond_0

    .line 3
    sget-object v1, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Incompatible texture subimage"

    invoke-virtual {v1, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Texture;->getType()Lcom/jme3/texture/Texture$Type;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/jme3/renderer/opengl/GLRenderer;->convertTextureType(Lcom/jme3/texture/Texture$Type;II)I

    move-result v5

    .line 5
    iget-object v4, v0, Lcom/jme3/renderer/opengl/GLRenderer;->texUtil:Lcom/jme3/renderer/opengl/TextureUtil;

    .line 6
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v13

    iget-boolean v14, v0, Lcom/jme3/renderer/opengl/GLRenderer;->linearizeSrgbImages:Z

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p2

    move/from16 v8, p3

    move/from16 v9, p4

    .line 7
    invoke-virtual/range {v4 .. v14}, Lcom/jme3/renderer/opengl/TextureUtil;->uploadSubTexture(ILcom/jme3/texture/Image;IIIIIIIZ)V

    return-void

    .line 8
    :catch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Renderer lacks texture units?"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public popDebugGroup()V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->debug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->GLDebug:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    invoke-interface {v0}, Lcom/jme3/renderer/opengl/GLExt;->glPopDebugGroup()V

    iget v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->debugGroupId:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->debugGroupId:I

    :cond_0
    return-void
.end method

.method public postFrame()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {v0, p0}, Lcom/jme3/util/NativeObjectManager;->deleteUnused(Ljava/lang/Object;)V

    invoke-static {}, Lcom/jme3/opencl/OpenCLObjectManager;->getInstance()Lcom/jme3/opencl/OpenCLObjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/opencl/OpenCLObjectManager;->deleteUnusedObjects()V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0}, Lcom/jme3/renderer/opengl/GL;->resetStats()V

    return-void
.end method

.method public pushDebugGroup(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->debug:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->GLDebug:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Group "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->debugGroupId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    const v1, 0x824a

    iget v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->debugGroupId:I

    invoke-interface {v0, v1, v2, p1}, Lcom/jme3/renderer/opengl/GLExt;->glPushDebugGroup(IILjava/lang/String;)V

    iget p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->debugGroupId:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->debugGroupId:I

    :cond_1
    return-void
.end method

.method public readFrameBuffer(Lcom/jme3/texture/FrameBuffer;Ljava/nio/ByteBuffer;)V
    .locals 2

    const/16 v0, 0x1908

    const/16 v1, 0x1401

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->readFrameBufferWithGLFormat(Lcom/jme3/texture/FrameBuffer;Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method public readFrameBufferWithFormat(Lcom/jme3/texture/FrameBuffer;Ljava/nio/ByteBuffer;Lcom/jme3/texture/Image$Format;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->texUtil:Lcom/jme3/renderer/opengl/TextureUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/jme3/renderer/opengl/TextureUtil;->getImageFormatWithError(Lcom/jme3/texture/Image$Format;Z)Lcom/jme3/renderer/opengl/GLImageFormat;

    move-result-object p3

    iget v0, p3, Lcom/jme3/renderer/opengl/GLImageFormat;->format:I

    iget p3, p3, Lcom/jme3/renderer/opengl/GLImageFormat;->dataType:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/jme3/renderer/opengl/GLRenderer;->readFrameBufferWithGLFormat(Lcom/jme3/texture/FrameBuffer;Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method public registerNativeObject(Lcom/jme3/util/NativeObject;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {v0, p1}, Lcom/jme3/util/NativeObjectManager;->registerObject(Lcom/jme3/util/NativeObject;)V

    return-void
.end method

.method public renderMesh(Lcom/jme3/scene/Mesh;II[Lcom/jme3/scene/VertexBuffer;)V
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getTriangleCount()I

    move-result v0

    if-eqz v0, :cond_5

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-le p3, v0, :cond_2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->MeshInstancing:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/jme3/renderer/RendererException;

    const-string p2, "Mesh instancing is not supported by the video hardware"

    invoke-direct {p1, p2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getLineWidth()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v0, v0, Lcom/jme3/renderer/RenderContext;->lineWidth:F

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getLineWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getLineWidth()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glLineWidth(F)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getLineWidth()F

    move-result v1

    iput v1, v0, Lcom/jme3/renderer/RenderContext;->lineWidth:F

    :cond_3
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl4:Lcom/jme3/renderer/opengl/GL4;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Patch:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl4:Lcom/jme3/renderer/opengl/GL4;

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getPatchVertexCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL4;->glPatchParameter(I)V

    :cond_4
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/renderer/Statistics;->onMeshDrawn(Lcom/jme3/scene/Mesh;II)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/renderer/opengl/GLRenderer;->renderMeshDefault(Lcom/jme3/scene/Mesh;II[Lcom/jme3/scene/VertexBuffer;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public resetGLObjects()V
    .locals 3

    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Resetting objects and invalidating state"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {v0}, Lcom/jme3/util/NativeObjectManager;->resetObjects()V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {v0}, Lcom/jme3/renderer/Statistics;->clearMemory()V

    invoke-virtual {p0}, Lcom/jme3/renderer/opengl/GLRenderer;->invalidateState()V

    return-void
.end method

.method public resetUniformLocations(Lcom/jme3/shader/Shader;)V
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getUniformMap()Lcom/jme3/util/ListMap;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/util/ListMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/jme3/util/ListMap;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/Uniform;

    invoke-virtual {v1}, Lcom/jme3/shader/Uniform;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAlphaToCoverage(Z)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->Multisample:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x809e

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p1, v0}, Lcom/jme3/renderer/opengl/GL;->glEnable(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p1, v0}, Lcom/jme3/renderer/opengl/GL;->glDisable(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBackgroundColor(Lcom/jme3/math/ColorRGBA;)V
    .locals 5

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->clearColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/jme3/math/ColorRGBA;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    iget v1, p1, Lcom/jme3/math/ColorRGBA;->r:F

    iget v2, p1, Lcom/jme3/math/ColorRGBA;->g:F

    iget v3, p1, Lcom/jme3/math/ColorRGBA;->b:F

    iget v4, p1, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/jme3/renderer/opengl/GL;->glClearColor(FFFF)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->clearColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    :cond_0
    return-void
.end method

.method public setClipRect(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->clipRectEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const/16 v1, 0xc11

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glEnable(I)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jme3/renderer/RenderContext;->clipRectEnabled:Z

    :cond_0
    iget v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->clipX:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->clipY:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->clipW:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->clipH:I

    if-eq v0, p4, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/jme3/renderer/opengl/GL;->glScissor(IIII)V

    iput p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->clipX:I

    iput p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->clipY:I

    iput p3, p0, Lcom/jme3/renderer/opengl/GLRenderer;->clipW:I

    iput p4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->clipH:I

    :cond_2
    return-void
.end method

.method public setDebugEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->debug:Z

    return-void
.end method

.method public setDefaultAnisotropicFilter(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->defaultAnisotropicFilter:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "level cannot be less than 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDepthRange(FF)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    float-to-double v1, p1

    float-to-double p1, p2

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/jme3/renderer/opengl/GL;->glDepthRange(DD)V

    return-void
.end method

.method public setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V
    .locals 7

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->mainFbOverride:Lcom/jme3/texture/FrameBuffer;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->boundFB:Lcom/jme3/texture/FrameBuffer;

    if-ne v0, p1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->toggleFramebufferSrgb(Lcom/jme3/texture/FrameBuffer;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->FrameBuffer:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->boundFB:Lcom/jme3/texture/FrameBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/jme3/texture/FrameBuffer;->getMipMapsGenerationHint()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/jme3/texture/FrameBuffer;->getMipMapsGenerationHint()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->generateMipmapsForFramebuffers:Z

    if-eqz v2, :cond_8

    :goto_0
    move v2, v1

    :goto_1
    invoke-virtual {v0}, Lcom/jme3/texture/FrameBuffer;->getNumColorBuffers()I

    move-result v3

    if-ge v2, v3, :cond_8

    invoke-virtual {v0, v2}, Lcom/jme3/texture/FrameBuffer;->getColorBuffer(I)Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getTexture()Lcom/jme3/texture/Texture;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/jme3/texture/Texture;->getMinFilter()Lcom/jme3/texture/Texture$MinFilter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/texture/Texture$MinFilter;->usesMipMapLevels()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v5

    iget-boolean v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->linearizeSrgbImages:Z

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/jme3/texture/FrameBuffer;->isSrgb()Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lcom/jme3/texture/image/ColorSpace;->sRGB:Lcom/jme3/texture/image/ColorSpace;

    goto :goto_2

    :cond_4
    sget-object v6, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    :goto_2
    invoke-direct {p0, v5, v6}, Lcom/jme3/renderer/opengl/GLRenderer;->isMipmapGenerationSupported(Lcom/jme3/texture/Image$Format;Lcom/jme3/texture/image/ColorSpace;)Z

    move-result v5

    if-eqz v5, :cond_6

    :try_start_0
    invoke-virtual {v3}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getTexture()Lcom/jme3/texture/Texture;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/jme3/renderer/opengl/GLRenderer;->setTexture(ILcom/jme3/texture/Texture;)V
    :try_end_0
    .catch Lcom/jme3/renderer/TextureUnitException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v4}, Lcom/jme3/texture/Texture;->getType()Lcom/jme3/texture/Texture$Type;

    move-result-object v5

    sget-object v6, Lcom/jme3/texture/Texture$Type;->CubeMap:Lcom/jme3/texture/Texture$Type;

    if-ne v5, v6, :cond_5

    iget-object v3, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    const v4, 0x8513

    invoke-interface {v3, v4}, Lcom/jme3/renderer/opengl/GLFbo;->glGenerateMipmapEXT(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Lcom/jme3/texture/Texture;->getType()Lcom/jme3/texture/Texture$Type;

    move-result-object v5

    invoke-virtual {v4}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result v4

    invoke-virtual {v3}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getFace()I

    move-result v3

    invoke-direct {p0, v5, v4, v3}, Lcom/jme3/renderer/opengl/GLRenderer;->convertTextureType(Lcom/jme3/texture/Texture$Type;II)I

    move-result v3

    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    invoke-interface {v4, v3}, Lcom/jme3/renderer/opengl/GLFbo;->glGenerateMipmapEXT(I)V

    goto :goto_3

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Renderer lacks texture units?"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/jme3/texture/Texture;->getMinFilter()Lcom/jme3/texture/Texture$MinFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/texture/Texture$MinFilter;->usesMipMapLevels()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot generate mipmaps for framebuffer texture: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " with image format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_8
    if-nez p1, :cond_9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->bindFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->updateFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    goto :goto_4

    :cond_a
    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->bindFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    :goto_4
    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v1, v0, v2}, Lcom/jme3/renderer/opengl/GLRenderer;->setViewPort(IIII)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-object p1, v0, Lcom/jme3/renderer/RenderContext;->boundFB:Lcom/jme3/texture/FrameBuffer;

    iget-boolean v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->debug:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->GLDebug:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x8d40

    invoke-interface {v0, v3, v1, v2}, Lcom/jme3/renderer/opengl/GLExt;->glObjectLabel(IILjava/lang/String;)V

    :cond_b
    :goto_5
    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->toggleFramebufferSrgb(Lcom/jme3/texture/FrameBuffer;)V

    return-void

    :cond_c
    new-instance p1, Lcom/jme3/renderer/RendererException;

    const-string v0, "Framebuffer objects are not supported by the video hardware"

    invoke-direct {p1, v0}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGenerateMipmapsForFrameBuffer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->generateMipmapsForFramebuffers:Z

    return-void
.end method

.method public setLinearizeSrgbImages(Z)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->Srgb:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->linearizeSrgbImages:Z

    :cond_0
    return-void
.end method

.method public setMainFrameBufferOverride(Lcom/jme3/texture/FrameBuffer;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->mainFbOverride:Lcom/jme3/texture/FrameBuffer;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v0, v0, Lcom/jme3/renderer/RenderContext;->boundFBO:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    :cond_0
    iput-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->mainFbOverride:Lcom/jme3/texture/FrameBuffer;

    return-void
.end method

.method public setMainFrameBufferSrgb(Z)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->SrgbWriteControl:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->Srgb:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    const-string v0, "sRGB framebuffer is not supported by video hardware, but was requested."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->mainFrameBufferSrgb:Z

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->mainFrameBufferSrgb:Z

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object p1, p1, Lcom/jme3/renderer/RenderContext;->boundFB:Lcom/jme3/texture/FrameBuffer;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->toggleFramebufferSrgb(Lcom/jme3/texture/FrameBuffer;)V

    :cond_2
    return-void
.end method

.method public setReadDrawBuffers(Lcom/jme3/texture/FrameBuffer;)V
    .locals 5

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl2:Lcom/jme3/renderer/opengl/GL2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getNumColorBuffers()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl2:Lcom/jme3/renderer/opengl/GL2;

    invoke-interface {p1, v1}, Lcom/jme3/renderer/opengl/GL2;->glDrawBuffer(I)V

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl2:Lcom/jme3/renderer/opengl/GL2;

    invoke-interface {p1, v1}, Lcom/jme3/renderer/opengl/GL2;->glReadBuffer(I)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getNumColorBuffers()I

    move-result v0

    iget-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v3, Lcom/jme3/renderer/Limits;->FrameBufferAttachments:Lcom/jme3/renderer/Limits;

    invoke-virtual {v2, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v0, v2, :cond_6

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->isMultiTarget()Z

    move-result v0

    const v2, 0x8ce0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v3, Lcom/jme3/renderer/Caps;->FrameBufferMRT:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getNumColorBuffers()I

    move-result v0

    iget-object v3, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v4, Lcom/jme3/renderer/Limits;->FrameBufferMrtAttachments:Lcom/jme3/renderer/Limits;

    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v0, v3, :cond_3

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getNumColorBuffers()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf16:Ljava/nio/IntBuffer;

    add-int v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0}, Lcom/jme3/renderer/opengl/GLExt;->glDrawBuffers(Ljava/nio/IntBuffer;)V

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/jme3/renderer/RendererException;

    const-string v0, "Framebuffer has more multi targets than are supported by the video hardware!"

    invoke-direct {p1, v0}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/jme3/renderer/RendererException;

    const-string v0, "Multiple render targets  are not supported by the video hardware"

    invoke-direct {p1, v0}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getTargetIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jme3/texture/FrameBuffer;->getColorBuffer(I)Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl2:Lcom/jme3/renderer/opengl/GL2;

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getSlot()I

    move-result v1

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL2;->glDrawBuffer(I)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl2:Lcom/jme3/renderer/opengl/GL2;

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getSlot()I

    move-result p1

    add-int/2addr p1, v2

    invoke-interface {v0, p1}, Lcom/jme3/renderer/opengl/GL2;->glReadBuffer(I)V

    goto :goto_1

    :cond_6
    new-instance p1, Lcom/jme3/renderer/RendererException;

    const-string v0, "Framebuffer has more color attachments than are supported by the video hardware!"

    invoke-direct {p1, v0}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    return-void
.end method

.method public setShader(Lcom/jme3/shader/Shader;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->updateShaderData(Lcom/jme3/shader/Shader;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->updateShaderUniforms(Lcom/jme3/shader/Shader;)V

    invoke-virtual {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->updateShaderBufferBlocks(Lcom/jme3/shader/Shader;)V

    invoke-virtual {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->bindProgram(Lcom/jme3/shader/Shader;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Shader cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShaderStorageBufferObject(ILcom/jme3/shader/bufferobject/BufferObject;)V
    .locals 2

    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/jme3/renderer/opengl/GLRenderer;->updateShaderStorageBufferObjectData(Lcom/jme3/shader/bufferobject/BufferObject;)V

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->boundBO:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_2

    :cond_1
    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->bindShaderStorageBufferBase(II)V

    invoke-virtual {p2, p1}, Lcom/jme3/shader/bufferobject/BufferObject;->setBinding(I)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->boundBO:[Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v1

    aput-object v1, v0, p1

    :cond_2
    invoke-virtual {p2, p1}, Lcom/jme3/shader/bufferobject/BufferObject;->setBinding(I)V

    iget-boolean p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->debug:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v0, Lcom/jme3/renderer/Caps;->GLDebug:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/jme3/shader/bufferobject/BufferObject;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    invoke-virtual {p2}, Lcom/jme3/shader/bufferobject/BufferObject;->getName()Ljava/lang/String;

    move-result-object p2

    const v1, 0x82e0

    invoke-interface {p1, v1, v0, p2}, Lcom/jme3/renderer/opengl/GLExt;->glObjectLabel(IILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setTexture(ILcom/jme3/texture/Texture;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jme3/renderer/TextureUnitException;
        }
    .end annotation

    if-ltz p1, :cond_4

    const/16 v0, 0x10

    if-ge p1, v0, :cond_4

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->needsGeneratedMipmaps(Lcom/jme3/texture/Image;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Lcom/jme3/renderer/opengl/GLRenderer;->checkNonPowerOfTwo(Lcom/jme3/texture/Texture;)V
    :try_end_0
    .catch Lcom/jme3/renderer/RendererException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    sget-object v1, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v1

    invoke-static {v1}, Lcom/jme3/math/FastMath;->nearestPowerOfTwo(I)I

    move-result v1

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v2

    invoke-static {v2}, Lcom/jme3/math/FastMath;->nearestPowerOfTwo(I)I

    move-result v2

    sget-object v3, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non-power-of-2 textures are not supported! Scaling texture \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' of size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getType()Lcom/jme3/texture/Texture$Type;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->updateTexImageData(Lcom/jme3/texture/Image;Lcom/jme3/texture/Texture$Type;IZ)V

    :cond_2
    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->getId()I

    invoke-direct {p0, p1, p2}, Lcom/jme3/renderer/opengl/GLRenderer;->setupTextureParams(ILcom/jme3/texture/Texture;)V

    iget-boolean p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->debug:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v0, Lcom/jme3/renderer/Caps;->GLDebug:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getName()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x1702

    invoke-interface {p1, v1, v0, p2}, Lcom/jme3/renderer/opengl/GLExt;->glObjectLabel(IILjava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    new-instance p1, Lcom/jme3/renderer/TextureUnitException;

    invoke-direct {p1}, Lcom/jme3/renderer/TextureUnitException;-><init>()V

    throw p1
.end method

.method public setTextureImage(ILcom/jme3/texture/TextureImage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jme3/renderer/TextureUnitException;
        }
    .end annotation

    if-ltz p1, :cond_3

    const/16 v0, 0x10

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->boundTextures:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, p1

    invoke-virtual {p2}, Lcom/jme3/texture/TextureImage;->clearUpdateNeeded()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jme3/texture/TextureImage;->getImage()Lcom/jme3/texture/Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/util/NativeObject;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p2}, Lcom/jme3/texture/TextureImage;->getTexture()Lcom/jme3/texture/Texture;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->setTexture(ILcom/jme3/texture/Texture;)V

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl4:Lcom/jme3/renderer/opengl/GL4;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->texUtil:Lcom/jme3/renderer/opengl/TextureUtil;

    invoke-virtual {p2, v1, v0, p1}, Lcom/jme3/texture/TextureImage;->bindImage(Lcom/jme3/renderer/opengl/GL4;Lcom/jme3/renderer/opengl/TextureUtil;I)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Lcom/jme3/renderer/TextureUnitException;

    invoke-direct {p1}, Lcom/jme3/renderer/TextureUnitException;-><init>()V

    throw p1
.end method

.method public setUniformBufferObject(ILcom/jme3/shader/bufferobject/BufferObject;)V
    .locals 2

    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/jme3/renderer/opengl/GLRenderer;->updateUniformBufferObjectData(Lcom/jme3/shader/bufferobject/BufferObject;)V

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->boundBO:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_2

    :cond_1
    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->bindUniformBufferBase(II)V

    invoke-virtual {p2, p1}, Lcom/jme3/shader/bufferobject/BufferObject;->setBinding(I)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->boundBO:[Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v1

    aput-object v1, v0, p1

    :cond_2
    invoke-virtual {p2, p1}, Lcom/jme3/shader/bufferobject/BufferObject;->setBinding(I)V

    iget-boolean p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->debug:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v0, Lcom/jme3/renderer/Caps;->GLDebug:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/jme3/shader/bufferobject/BufferObject;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    invoke-virtual {p2}, Lcom/jme3/shader/bufferobject/BufferObject;->getName()Ljava/lang/String;

    move-result-object p2

    const v1, 0x82e0

    invoke-interface {p1, v1, v0, p2}, Lcom/jme3/renderer/opengl/GLExt;->glObjectLabel(IILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setVertexAttrib(Lcom/jme3/scene/VertexBuffer;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->setVertexAttrib(Lcom/jme3/scene/VertexBuffer;Lcom/jme3/scene/VertexBuffer;)V

    return-void
.end method

.method public setVertexAttrib(Lcom/jme3/scene/VertexBuffer;Lcom/jme3/scene/VertexBuffer;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    if-eq v0, v1, :cond_15

    .line 2
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v1, v0, Lcom/jme3/renderer/RenderContext;->boundShaderProgram:I

    if-lez v1, :cond_14

    .line 3
    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->boundShader:Lcom/jme3/shader/Shader;

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/shader/Shader;->getAttribute(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/shader/Attribute;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/jme3/shader/ShaderVariable;->getLocation()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, -0x2

    if-ne v1, v3, :cond_2

    .line 5
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    iget-object v3, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v3, v3, Lcom/jme3/renderer/RenderContext;->boundShaderProgram:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/jme3/renderer/opengl/GL;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Lcom/jme3/shader/ShaderVariable;->setLocation(I)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {v0, v1}, Lcom/jme3/shader/ShaderVariable;->setLocation(I)V

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->isInstanced()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->MeshInstancing:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    new-instance p1, Lcom/jme3/renderer/RendererException;

    const-string p2, "Instancing is required, but not supported by the graphics hardware"

    invoke-direct {p1, p2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-le v0, v2, :cond_6

    .line 12
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v0

    rem-int/2addr v0, v2

    if-nez v0, :cond_5

    .line 13
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v0

    div-int/2addr v0, v2

    goto :goto_1

    .line 14
    :cond_5
    new-instance p1, Lcom/jme3/renderer/RendererException;

    const-string p2, "Number of components in multi-slot buffers must be divisible by 4"

    invoke-direct {p1, p2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    move v0, v3

    .line 15
    :goto_1
    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez p2, :cond_7

    .line 16
    invoke-virtual {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->updateBufferData(Lcom/jme3/scene/VertexBuffer;)V

    .line 17
    :cond_7
    iget-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v2, v2, Lcom/jme3/renderer/RenderContext;->boundAttribs:[Ljava/lang/ref/WeakReference;

    const/4 v11, 0x0

    move v4, v11

    :goto_2
    if-ge v4, v0, :cond_9

    .line 18
    iget-object v5, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v5, v5, Lcom/jme3/renderer/RenderContext;->attribIndexList:Lcom/jme3/renderer/IDList;

    add-int v6, v1, v4

    invoke-virtual {v5, v6}, Lcom/jme3/renderer/IDList;->moveToNew(I)Z

    move-result v5

    if-nez v5, :cond_8

    .line 19
    iget-object v5, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v5, v6}, Lcom/jme3/renderer/opengl/GL;->glEnableVertexAttribArray(I)V

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 20
    :cond_9
    aget-object v4, v2, v1

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p1, :cond_12

    :cond_a
    if-eqz p2, :cond_b

    .line 21
    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->getId()I

    move-result p2

    goto :goto_3

    :cond_b
    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result p2

    .line 22
    :goto_3
    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v4, v4, Lcom/jme3/renderer/RenderContext;->boundArrayVBO:I

    if-eq v4, p2, :cond_c

    .line 23
    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v5, 0x8892

    invoke-interface {v4, v5, p2}, Lcom/jme3/renderer/opengl/GL;->glBindBuffer(II)V

    .line 24
    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput p2, v4, Lcom/jme3/renderer/RenderContext;->boundArrayVBO:I

    :cond_c
    if-ne v0, v3, :cond_d

    .line 25
    iget-object v3, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    .line 26
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v5

    .line 27
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/jme3/renderer/opengl/GLRenderer;->convertFormat(Lcom/jme3/scene/VertexBuffer$Format;)I

    move-result v6

    .line 28
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->isNormalized()Z

    move-result v7

    .line 29
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getStride()I

    move-result v8

    .line 30
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getOffset()I

    move-result p2

    int-to-long v9, p2

    move v4, v1

    .line 31
    invoke-interface/range {v3 .. v10}, Lcom/jme3/renderer/opengl/GL;->glVertexAttribPointer(IIIZIJ)V

    goto :goto_5

    :cond_d
    move p2, v11

    :goto_4
    if-ge p2, v0, :cond_e

    .line 32
    iget-object v3, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    add-int v4, v1, p2

    .line 33
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/jme3/renderer/opengl/GLRenderer;->convertFormat(Lcom/jme3/scene/VertexBuffer$Format;)I

    move-result v6

    .line 34
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->isNormalized()Z

    move-result v7

    mul-int/lit8 v8, v0, 0x10

    mul-int/lit8 v5, p2, 0x10

    int-to-long v9, v5

    const/4 v5, 0x4

    .line 35
    invoke-interface/range {v3 .. v10}, Lcom/jme3/renderer/opengl/GL;->glVertexAttribPointer(IIIZIJ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_e
    :goto_5
    move p2, v11

    :goto_6
    if-ge p2, v0, :cond_12

    add-int v3, v1, p2

    .line 36
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->isInstanced()Z

    move-result v4

    if-eqz v4, :cond_10

    aget-object v4, v2, v3

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_f

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->isInstanced()Z

    move-result v4

    if-nez v4, :cond_10

    .line 37
    :cond_f
    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getInstanceSpan()I

    move-result v5

    invoke-interface {v4, v3, v5}, Lcom/jme3/renderer/opengl/GLExt;->glVertexAttribDivisorARB(II)V

    goto :goto_7

    .line 38
    :cond_10
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->isInstanced()Z

    move-result v4

    if-nez v4, :cond_11

    aget-object v4, v2, v3

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_11

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->isInstanced()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 39
    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    invoke-interface {v4, v3, v11}, Lcom/jme3/renderer/opengl/GLExt;->glVertexAttribDivisorARB(II)V

    .line 40
    :cond_11
    :goto_7
    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 41
    :cond_12
    iget-boolean p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->debug:Z

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v0, Lcom/jme3/renderer/Caps;->GLDebug:Lcom/jme3/renderer/Caps;

    invoke-virtual {p2, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 42
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getName()Ljava/lang/String;

    move-result-object p1

    const v1, 0x82e0

    invoke-interface {p2, v1, v0, p1}, Lcom/jme3/renderer/opengl/GLExt;->glObjectLabel(IILjava/lang/String;)V

    :cond_13
    return-void

    .line 43
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot render mesh without shader bound"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Index buffers not allowed to be set to vertex attrib"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPort(IIII)V
    .locals 1

    iget v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->vpX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->vpY:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->vpW:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->vpH:I

    if-eq v0, p4, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/jme3/renderer/opengl/GL;->glViewport(IIII)V

    iput p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->vpX:I

    iput p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->vpY:I

    iput p3, p0, Lcom/jme3/renderer/opengl/GLRenderer;->vpW:I

    iput p4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->vpH:I

    :cond_1
    return-void
.end method

.method public startProfiling(I)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v1, 0x88bf

    invoke-interface {v0, v1, p1}, Lcom/jme3/renderer/opengl/GL;->glBeginQuery(II)V

    return-void
.end method

.method public stopProfiling()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v1, 0x88bf

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glEndQuery(I)V

    return-void
.end method

.method public updateBufferData(Lcom/jme3/scene/VertexBuffer;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glGenBuffers(Ljava/nio/IntBuffer;)V

    .line 3
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/jme3/util/NativeObject;->setId(I)V

    .line 5
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {v1, p1}, Lcom/jme3/util/NativeObjectManager;->registerObject(Lcom/jme3/util/NativeObject;)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    if-ne v1, v2, :cond_1

    .line 7
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v1, v1, Lcom/jme3/renderer/RenderContext;->boundElementArrayVBO:I

    const v2, 0x8893

    if-eq v1, v0, :cond_2

    .line 8
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v1, v2, v0}, Lcom/jme3/renderer/opengl/GL;->glBindBuffer(II)V

    .line 9
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput v0, v1, Lcom/jme3/renderer/RenderContext;->boundElementArrayVBO:I

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v1, v1, Lcom/jme3/renderer/RenderContext;->boundArrayVBO:I

    const v2, 0x8892

    if-eq v1, v0, :cond_2

    .line 11
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v1, v2, v0}, Lcom/jme3/renderer/opengl/GL;->glBindBuffer(II)V

    .line 12
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput v0, v1, Lcom/jme3/renderer/RenderContext;->boundArrayVBO:I

    .line 13
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getUsage()Lcom/jme3/scene/VertexBuffer$Usage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->convertUsage(Lcom/jme3/scene/VertexBuffer$Usage;)I

    move-result v0

    .line 14
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 15
    sget-object v1, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unknown buffer format."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :pswitch_0
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/FloatBuffer;

    invoke-interface {v1, v2, v3, v0}, Lcom/jme3/renderer/opengl/GL;->glBufferData(ILjava/nio/FloatBuffer;I)V

    goto :goto_1

    .line 18
    :pswitch_1
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/IntBuffer;

    invoke-interface {v1, v2, v3, v0}, Lcom/jme3/renderer/opengl/GLExt;->glBufferData(ILjava/nio/IntBuffer;I)V

    goto :goto_1

    .line 19
    :pswitch_2
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ShortBuffer;

    invoke-interface {v1, v2, v3, v0}, Lcom/jme3/renderer/opengl/GL;->glBufferData(ILjava/nio/ShortBuffer;I)V

    goto :goto_1

    .line 20
    :pswitch_3
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2, v3, v0}, Lcom/jme3/renderer/opengl/GL;->glBufferData(ILjava/nio/ByteBuffer;I)V

    .line 21
    :goto_1
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->clearUpdateNeeded()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getNumColorBuffers()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getDepthBuffer()Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The framebuffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nDoesn\'t have any color/depth buffers"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GLFbo;->glGenFramebuffersEXT(Ljava/nio/IntBuffer;)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jme3/util/NativeObject;->setId(I)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {v0, p1}, Lcom/jme3/util/NativeObjectManager;->registerObject(Lcom/jme3/util/NativeObject;)V

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {v0}, Lcom/jme3/renderer/Statistics;->onNewFrameBuffer()V

    :cond_2
    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->bindFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getDepthBuffer()Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->updateFrameBufferAttachment(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer$RenderBuffer;)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getNumColorBuffers()I

    move-result v0

    if-ge v2, v0, :cond_4

    invoke-virtual {p1, v2}, Lcom/jme3/texture/FrameBuffer;->getColorBuffer(I)Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->updateFrameBufferAttachment(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer$RenderBuffer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->setReadDrawBuffers(Lcom/jme3/texture/FrameBuffer;)V

    invoke-direct {p0}, Lcom/jme3/renderer/opengl/GLRenderer;->checkFrameBufferError()V

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->clearUpdateNeeded()V

    return-void
.end method

.method public updateFrameBufferAttachment(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer$RenderBuffer;)V
    .locals 7

    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getSlot()I

    move-result v1

    const/16 v2, -0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getSlot()I

    move-result v1

    const/16 v2, -0x65

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->isSrgb()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    iget-object v5, p0, Lcom/jme3/renderer/opengl/GLRenderer;->texUtil:Lcom/jme3/renderer/opengl/TextureUtil;

    invoke-virtual {v5, v0, v2}, Lcom/jme3/renderer/opengl/TextureUtil;->getImageFormatWithError(Lcom/jme3/texture/Image$Format;Z)Lcom/jme3/renderer/opengl/GLImageFormat;

    move-result-object v2

    const-string v5, "Framebuffer format "

    if-nez v1, :cond_4

    iget-boolean v6, v2, Lcom/jme3/renderer/opengl/GLImageFormat;->colorRenderable:Z

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    new-instance p1, Lcom/jme3/renderer/RendererException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not color-renderable and cannot be used as a color attachment."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_3
    if-eqz v1, :cond_6

    iget-boolean v1, v2, Lcom/jme3/renderer/opengl/GLImageFormat;->depthRenderable:Z

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    new-instance p1, Lcom/jme3/renderer/RendererException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not depth-renderable and cannot be used as a depth attachment."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_4
    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getTexture()Lcom/jme3/texture/Texture;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    goto :goto_5

    :cond_7
    move v3, v4

    :goto_5
    invoke-direct {p0, p1, p2}, Lcom/jme3/renderer/opengl/GLRenderer;->updateRenderBuffer(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer$RenderBuffer;)V

    move v4, v3

    goto :goto_6

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/jme3/renderer/opengl/GLRenderer;->updateRenderTexture(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer$RenderBuffer;)V

    :goto_6
    if-eqz v4, :cond_9

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getSlot()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->convertAttachmentSlot(I)I

    move-result v0

    const v1, 0x8d41

    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getId()I

    move-result p2

    const v2, 0x8d40

    invoke-interface {p1, v2, v0, v1, p2}, Lcom/jme3/renderer/opengl/GLFbo;->glFramebufferRenderbufferEXT(IIII)V

    :cond_9
    return-void
.end method

.method public updateRenderTexture(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer$RenderBuffer;)V
    .locals 13

    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getTexture()Lcom/jme3/texture/Texture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->checkNonPowerOfTwo(Lcom/jme3/texture/Texture;)V

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getType()Lcom/jme3/texture/Texture$Type;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/jme3/renderer/opengl/GLRenderer;->updateTexImageData(Lcom/jme3/texture/Image;Lcom/jme3/texture/Texture$Type;IZZ)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->setupTextureParams(ILcom/jme3/texture/Texture;)V

    :cond_0
    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getLayer()I

    move-result v0

    if-gez v0, :cond_1

    iget-object v7, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getSlot()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->convertAttachmentSlot(I)I

    move-result v9

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getType()Lcom/jme3/texture/Texture$Type;

    move-result-object p1

    invoke-virtual {v6}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result v0

    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getFace()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->convertTextureType(Lcom/jme3/texture/Texture$Type;II)I

    move-result v10

    invoke-virtual {v6}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v11

    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getLevel()I

    move-result v12

    const v8, 0x8d40

    invoke-interface/range {v7 .. v12}, Lcom/jme3/renderer/opengl/GLFbo;->glFramebufferTexture2DEXT(IIIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glfbo:Lcom/jme3/renderer/opengl/GLFbo;

    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getSlot()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->convertAttachmentSlot(I)I

    move-result v2

    invoke-virtual {v6}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v3

    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getLevel()I

    move-result v4

    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getLayer()I

    move-result v5

    const v1, 0x8d40

    invoke-interface/range {v0 .. v5}, Lcom/jme3/renderer/opengl/GLFbo;->glFramebufferTextureLayerEXT(IIIII)V

    :goto_0
    return-void
.end method

.method public updateShaderBufferBlock(Lcom/jme3/shader/Shader;Lcom/jme3/shader/ShaderBufferBlock;)V
    .locals 6

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderBufferBlock;->getBufferObject()Lcom/jme3/shader/bufferobject/BufferObject;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderBufferBlock;->getType()Lcom/jme3/shader/ShaderBufferBlock$BufferType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/jme3/shader/ShaderBufferBlock$BufferType;->ShaderStorageBufferObject:Lcom/jme3/shader/ShaderBufferBlock$BufferType;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->updateShaderStorageBufferObjectData(Lcom/jme3/shader/bufferobject/BufferObject;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->updateUniformBufferObjectData(Lcom/jme3/shader/bufferobject/BufferObject;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/jme3/shader/bufferobject/BufferObject;->getAccessHint()Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jme3/shader/bufferobject/BufferObject;->getNatureHint()Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/jme3/renderer/opengl/GLRenderer;->resolveUsageHint(Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->bindProgram(Lcom/jme3/shader/Shader;)V

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result p1

    invoke-virtual {v0}, Lcom/jme3/shader/bufferobject/BufferObject;->getBinding()I

    move-result v2

    sget-object v4, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$ShaderBufferBlock$BufferType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    invoke-virtual {p0, v2, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->setShaderStorageBufferObject(ILcom/jme3/shader/bufferobject/BufferObject;)V

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderBufferBlock;->isUpdateNeeded()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderVariable;->getLocation()I

    move-result v0

    if-gez v0, :cond_3

    const v0, 0x92e6

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->getProgramResourceIndex(IILjava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jme3/shader/ShaderVariable;->setLocation(I)V

    :cond_3
    invoke-virtual {p2}, Lcom/jme3/shader/ShaderVariable;->getLocation()I

    move-result v0

    if-eq v0, v3, :cond_7

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderVariable;->getLocation()I

    move-result v0

    invoke-direct {p0, p1, v0, v2}, Lcom/jme3/renderer/opengl/GLRenderer;->bindShaderStorageBlock(III)V

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Doesn\'t support binding of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {p0, v2, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->setUniformBufferObject(ILcom/jme3/shader/bufferobject/BufferObject;)V

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderBufferBlock;->isUpdateNeeded()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderVariable;->getLocation()I

    move-result v0

    if-gez v0, :cond_6

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->getUniformBlockIndex(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/jme3/shader/ShaderVariable;->setLocation(I)V

    :cond_6
    invoke-virtual {p2}, Lcom/jme3/shader/ShaderVariable;->getLocation()I

    move-result v0

    if-eq v0, v3, :cond_7

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderVariable;->getLocation()I

    move-result v0

    invoke-direct {p0, p1, v0, v2}, Lcom/jme3/renderer/opengl/GLRenderer;->bindUniformBlock(III)V

    :cond_7
    :goto_1
    invoke-virtual {p2}, Lcom/jme3/shader/ShaderBufferBlock;->clearUpdateNeeded()V

    return-void
.end method

.method public updateShaderBufferBlocks(Lcom/jme3/shader/Shader;)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getBufferBlockMap()Lcom/jme3/util/ListMap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/jme3/util/ListMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/jme3/util/ListMap;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/shader/ShaderBufferBlock;

    invoke-virtual {p0, p1, v2}, Lcom/jme3/renderer/opengl/GLRenderer;->updateShaderBufferBlock(Lcom/jme3/shader/Shader;Lcom/jme3/shader/ShaderBufferBlock;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateShaderData(Lcom/jme3/shader/Shader;)V
    .locals 9

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0}, Lcom/jme3/renderer/opengl/GL;->glCreateProgram()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/jme3/util/NativeObject;->setId(I)V

    move v1, v2

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/jme3/renderer/RendererException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") received when trying to create shader program."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getSources()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/shader/Shader$ShaderSource;

    invoke-virtual {v6}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, v6}, Lcom/jme3/renderer/opengl/GLRenderer;->updateShaderSourceData(Lcom/jme3/shader/Shader$ShaderSource;)V

    :cond_2
    invoke-virtual {v6}, Lcom/jme3/shader/Shader$ShaderSource;->getType()Lcom/jme3/shader/Shader$ShaderType;

    move-result-object v7

    sget-object v8, Lcom/jme3/shader/Shader$ShaderType;->Fragment:Lcom/jme3/shader/Shader$ShaderType;

    if-ne v7, v8, :cond_3

    invoke-virtual {v6}, Lcom/jme3/shader/Shader$ShaderSource;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "GLSL150"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v2

    :cond_3
    iget-object v7, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {v6}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v6

    invoke-interface {v7, v0, v6}, Lcom/jme3/renderer/opengl/GL;->glAttachShader(II)V

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl3:Lcom/jme3/renderer/opengl/GL3;

    const-string v5, "outFragColor"

    invoke-interface {v4, v0, v3, v5}, Lcom/jme3/renderer/opengl/GL3;->glBindFragDataLocation(IILjava/lang/String;)V

    move v4, v3

    :goto_2
    iget-object v5, p0, Lcom/jme3/renderer/opengl/GLRenderer;->limits:Ljava/util/EnumMap;

    sget-object v6, Lcom/jme3/renderer/Limits;->FrameBufferMrtAttachments:Lcom/jme3/renderer/Limits;

    invoke-virtual {v5, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_5

    iget-object v5, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl3:Lcom/jme3/renderer/opengl/GL3;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "outFragData["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v4, v6}, Lcom/jme3/renderer/opengl/GL3;->glBindFragDataLocation(IILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v4, v0}, Lcom/jme3/renderer/opengl/GL;->glLinkProgram(I)V

    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v5, 0x8b82

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-interface {v4, v0, v5, v6}, Lcom/jme3/renderer/opengl/GL;->glGetProgram(IILjava/nio/IntBuffer;)V

    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    if-ne v4, v2, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    if-nez v2, :cond_7

    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v5, 0x8b84

    iget-object v6, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-interface {v4, v0, v5, v6}, Lcom/jme3/renderer/opengl/GL;->glGetProgram(IILjava/nio/IntBuffer;)V

    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_7

    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v4, v0, v3}, Lcom/jme3/renderer/opengl/GL;->glGetProgramInfoLog(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    if-eqz v2, :cond_a

    if-eqz v0, :cond_8

    sget-object v2, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Shader linked successfully. Linker warnings: \n{0}"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    const-string v2, "Shader linked successfully."

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->clearUpdateNeeded()V

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {v0, p1}, Lcom/jme3/util/NativeObjectManager;->registerObject(Lcom/jme3/util/NativeObject;)V

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {p1}, Lcom/jme3/renderer/Statistics;->onNewShader()V

    goto :goto_6

    :cond_9
    invoke-virtual {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->resetUniformLocations(Lcom/jme3/shader/Shader;)V

    :goto_6
    return-void

    :cond_a
    const-string v1, "Shader failed to link, shader:"

    if-eqz v0, :cond_b

    new-instance v2, Lcom/jme3/renderer/RendererException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    new-instance v0, Lcom/jme3/renderer/RendererException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\ninfo: <not provided>"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateShaderSourceData(Lcom/jme3/shader/Shader$ShaderSource;)V
    .locals 9

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getType()Lcom/jme3/shader/Shader$ShaderType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->convertShaderType(Lcom/jme3/shader/Shader$ShaderType;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/jme3/renderer/opengl/GL;->glCreateShader(I)I

    move-result v0

    if-lez v0, :cond_10

    invoke-virtual {p1, v0}, Lcom/jme3/util/NativeObject;->setId(I)V

    iget-boolean v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->debug:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->GLDebug:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->glext:Lcom/jme3/renderer/opengl/GLExt;

    const v2, 0x82e1

    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/jme3/renderer/opengl/GLExt;->glObjectLabel(IILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v3, Lcom/jme3/renderer/Caps;->OpenGLES20:Lcom/jme3/renderer/Caps;

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getLanguage()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    const-string v4, "GLSL100"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/jme3/renderer/RendererException;

    const-string v0, "This shader cannot run in OpenGL ES 2. Only GLSL 1.00 shaders are supported."

    invoke-direct {p1, v0}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->stringBuf:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "GLSL"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "\n"

    if-eqz v7, :cond_8

    const/16 v7, 0x64

    if-le v6, v7, :cond_5

    iget-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->stringBuf:Ljava/lang/StringBuilder;

    const-string v7, "#version "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->stringBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x96

    if-lt v6, v2, :cond_4

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->stringBuf:Ljava/lang/StringBuilder;

    const-string v2, " es"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->stringBuf:Ljava/lang/StringBuilder;

    const-string v2, " core"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->stringBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    if-nez v2, :cond_7

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->stringBuf:Ljava/lang/StringBuilder;

    const-string v2, "#version 110\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->stringBuf:Ljava/lang/StringBuilder;

    const-string v2, "#version 100\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_3
    iget-boolean v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->linearizeSrgbImages:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->stringBuf:Ljava/lang/StringBuilder;

    const-string v2, "#define SRGB 1\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->stringBuf:Ljava/lang/StringBuilder;

    const-string v2, "#define "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getType()Lcom/jme3/shader/Shader$ShaderType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_SHADER 1\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->stringBuf:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getDefines()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->stringBuf:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    iget-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->stringBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    iget-object v2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->stringBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/renderer/opengl/GL;->glShaderSource(I[Ljava/lang/String;Ljava/nio/IntBuffer;)V

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v1, v0}, Lcom/jme3/renderer/opengl/GL;->glCompileShader(I)V

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v2, 0x8b81

    iget-object v3, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/renderer/opengl/GL;->glGetShader(IILjava/nio/IntBuffer;)V

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    goto :goto_4

    :cond_a
    move v2, v5

    :goto_4
    if-nez v2, :cond_b

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    const v3, 0x8b84

    iget-object v4, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-interface {v1, v0, v3, v4}, Lcom/jme3/renderer/opengl/GL;->glGetShader(IILjava/nio/IntBuffer;)V

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    const/4 v3, 0x3

    if-le v1, v3, :cond_b

    iget-object v3, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v3, v0, v1}, Lcom/jme3/renderer/opengl/GL;->glGetShaderInfoLog(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    :goto_5
    if-eqz v2, :cond_e

    if-eqz v0, :cond_c

    sget-object v1, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "{0} compiled successfully, compiler warnings: \n{1}"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_c
    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "{0} compiled successfully."

    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    :goto_6
    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->clearUpdateNeeded()V

    return-void

    :cond_e
    sget-object v1, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iget-object v3, p0, Lcom/jme3/renderer/opengl/GLRenderer;->stringBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgf/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Bad compile of:\n{0}"

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "compile error in: "

    if-eqz v0, :cond_f

    new-instance v2, Lcom/jme3/renderer/RendererException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    new-instance v0, Lcom/jme3/renderer/RendererException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nerror: <not provided>"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance p1, Lcom/jme3/renderer/RendererException;

    const-string v0, "Invalid ID received when trying to create shader."

    invoke-direct {p1, v0}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    new-instance p1, Lcom/jme3/renderer/RendererException;

    const-string v0, "Cannot recompile shader source"

    invoke-direct {p1, v0}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateShaderStorageBufferObjectData(Lcom/jme3/shader/bufferobject/BufferObject;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->ShaderStorageBufferObject:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x90d2

    invoke-direct {p0, v0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->updateBufferData(ILcom/jme3/shader/bufferobject/BufferObject;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The current video hardware doesn\'t support shader storage buffer objects "

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateShaderUniforms(Lcom/jme3/shader/Shader;)V
    .locals 4

    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getUniformMap()Lcom/jme3/util/ListMap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/jme3/util/ListMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/jme3/util/ListMap;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/shader/Uniform;

    invoke-virtual {v2}, Lcom/jme3/shader/Uniform;->isUpdateNeeded()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, v2}, Lcom/jme3/renderer/opengl/GLRenderer;->updateUniform(Lcom/jme3/shader/Shader;Lcom/jme3/shader/Uniform;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateTexImageData(Lcom/jme3/texture/Image;Lcom/jme3/texture/Texture$Type;IZ)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/jme3/renderer/opengl/GLRenderer;->updateTexImageData(Lcom/jme3/texture/Image;Lcom/jme3/texture/Texture$Type;IZZ)V

    return-void
.end method

.method public updateUniform(Lcom/jme3/shader/Shader;Lcom/jme3/shader/Uniform;)V
    .locals 7

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    invoke-virtual {p0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->bindProgram(Lcom/jme3/shader/Shader;)V

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderVariable;->getLocation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/jme3/renderer/opengl/GLRenderer;->updateUniformLocation(Lcom/jme3/shader/Shader;Lcom/jme3/shader/Uniform;)V

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderVariable;->getLocation()I

    move-result p1

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->clearUpdateNeeded()V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/jme3/shader/ShaderVariable;->getLocation()I

    move-result v0

    :cond_2
    move v2, v0

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {p1}, Lcom/jme3/renderer/Statistics;->onUniformSet()V

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->clearUpdateNeeded()V

    sget-object p1, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported uniform type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getBinding()Lcom/jme3/shader/UniformBinding;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, v2, p1}, Lcom/jme3/renderer/opengl/GL;->glUniform1i(II)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getMultiData()Ljava/nio/FloatBuffer;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p2, v2, v0, p1}, Lcom/jme3/renderer/opengl/GL;->glUniformMatrix4(IZLjava/nio/FloatBuffer;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getMultiData()Ljava/nio/FloatBuffer;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p2, v2, p1}, Lcom/jme3/renderer/opengl/GL;->glUniform4(ILjava/nio/FloatBuffer;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getMultiData()Ljava/nio/FloatBuffer;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p2, v2, p1}, Lcom/jme3/renderer/opengl/GL;->glUniform3(ILjava/nio/FloatBuffer;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getMultiData()Ljava/nio/FloatBuffer;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p2, v2, p1}, Lcom/jme3/renderer/opengl/GL;->glUniform2(ILjava/nio/FloatBuffer;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getMultiData()Ljava/nio/FloatBuffer;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p2, v2, p1}, Lcom/jme3/renderer/opengl/GL;->glUniform1(ILjava/nio/FloatBuffer;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/IntBuffer;

    iget-object p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p2, v2, p1}, Lcom/jme3/renderer/opengl/GL;->glUniform1(ILjava/nio/IntBuffer;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getMultiData()Ljava/nio/FloatBuffer;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p2, v2, v0, p1}, Lcom/jme3/renderer/opengl/GL;->glUniformMatrix4(IZLjava/nio/FloatBuffer;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getMultiData()Ljava/nio/FloatBuffer;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {p2, v2, v0, p1}, Lcom/jme3/renderer/opengl/GL;->glUniformMatrix3(IZLjava/nio/FloatBuffer;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iget-object p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p2, v2, p1}, Lcom/jme3/renderer/opengl/GL;->glUniform1i(II)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/jme3/math/ColorRGBA;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/jme3/math/ColorRGBA;

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    iget v3, p1, Lcom/jme3/math/ColorRGBA;->r:F

    iget v4, p1, Lcom/jme3/math/ColorRGBA;->g:F

    iget v5, p1, Lcom/jme3/math/ColorRGBA;->b:F

    iget v6, p1, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-interface/range {v1 .. v6}, Lcom/jme3/renderer/opengl/GL;->glUniform4f(IFFFF)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/jme3/math/Vector4f;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/jme3/math/Vector4f;

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    iget v3, p1, Lcom/jme3/math/Vector4f;->x:F

    iget v4, p1, Lcom/jme3/math/Vector4f;->y:F

    iget v5, p1, Lcom/jme3/math/Vector4f;->z:F

    iget v6, p1, Lcom/jme3/math/Vector4f;->w:F

    invoke-interface/range {v1 .. v6}, Lcom/jme3/renderer/opengl/GL;->glUniform4f(IFFFF)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v5

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v6

    invoke-interface/range {v1 .. v6}, Lcom/jme3/renderer/opengl/GL;->glUniform4f(IFFFF)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result p1

    invoke-interface {p2, v2, v0, v1, p1}, Lcom/jme3/renderer/opengl/GL;->glUniform3f(IFFF)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector2f;

    iget-object p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Lcom/jme3/math/Vector2f;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/math/Vector2f;->getY()F

    move-result p1

    invoke-interface {p2, v2, v0, p1}, Lcom/jme3/renderer/opengl/GL;->glUniform2f(IFF)V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    iget-object p2, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p2, v2, p1}, Lcom/jme3/renderer/opengl/GL;->glUniform1f(IF)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateUniformBufferObjectData(Lcom/jme3/shader/bufferobject/BufferObject;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->caps:Ljava/util/EnumSet;

    sget-object v1, Lcom/jme3/renderer/Caps;->UniformBufferObject:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8a11

    invoke-direct {p0, v0, p1}, Lcom/jme3/renderer/opengl/GLRenderer;->updateBufferData(ILcom/jme3/shader/bufferobject/BufferObject;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The current video hardware doesn\'t support uniform buffer objects"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateUniformLocation(Lcom/jme3/shader/Shader;Lcom/jme3/shader/Uniform;)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v1

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jme3/renderer/opengl/GL;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcom/jme3/shader/ShaderVariable;->setLocation(I)V

    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderVariable;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getSources()Ljava/util/Collection;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Uniform {0} is not declared in shader {1}."

    invoke-virtual {v0, v1, p2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lcom/jme3/shader/ShaderVariable;->setLocation(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateVertexArray(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer;)V
    .locals 5

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLRenderer;->intBuf1:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl3:Lcom/jme3/renderer/opengl/GL3;

    invoke-interface {v1, v0}, Lcom/jme3/renderer/opengl/GL3;->glGenVertexArrays(Ljava/nio/IntBuffer;)V

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Mesh;->setId(I)V

    :cond_0
    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v1, v1, Lcom/jme3/renderer/RenderContext;->boundVertexArray:I

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->gl3:Lcom/jme3/renderer/opengl/GL3;

    invoke-interface {v1, v0}, Lcom/jme3/renderer/opengl/GL3;->glBindVertexArray(I)V

    iget-object v1, p0, Lcom/jme3/renderer/opengl/GLRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput v0, v1, Lcom/jme3/renderer/RenderContext;->boundVertexArray:I

    :cond_1
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->InterleavedData:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->isUpdateNeeded()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->updateBufferData(Lcom/jme3/scene/VertexBuffer;)V

    :cond_2
    if-eqz p2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->setVertexAttrib(Lcom/jme3/scene/VertexBuffer;Lcom/jme3/scene/VertexBuffer;)V

    :cond_3
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/jme3/scene/VertexBuffer;

    array-length p2, p1

    :goto_0
    if-ge v2, p2, :cond_7

    aget-object v1, p1, v2

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v3

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->InterleavedData:Lcom/jme3/scene/VertexBuffer$Type;

    if-eq v3, v4, :cond_6

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getUsage()Lcom/jme3/scene/VertexBuffer$Usage;

    move-result-object v3

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Usage;->CpuOnly:Lcom/jme3/scene/VertexBuffer$Usage;

    if-eq v3, v4, :cond_6

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v3

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    if-ne v3, v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getStride()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0, v1}, Lcom/jme3/renderer/opengl/GLRenderer;->setVertexAttrib(Lcom/jme3/scene/VertexBuffer;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1, v0}, Lcom/jme3/renderer/opengl/GLRenderer;->setVertexAttrib(Lcom/jme3/scene/VertexBuffer;Lcom/jme3/scene/VertexBuffer;)V

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method
