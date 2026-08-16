.class public interface abstract Lcom/jme3/renderer/Renderer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract applyRenderState(Lcom/jme3/material/RenderState;)V
.end method

.method public abstract cleanup()V
.end method

.method public abstract clearBuffers(ZZZ)V
.end method

.method public abstract clearClipRect()V
.end method

.method public abstract copyFrameBuffer(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer;Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract copyFrameBuffer(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer;ZZ)V
.end method

.method public abstract deleteBuffer(Lcom/jme3/scene/VertexBuffer;)V
.end method

.method public abstract deleteBuffer(Lcom/jme3/shader/bufferobject/BufferObject;)V
.end method

.method public abstract deleteFence(Lcom/jme3/renderer/opengl/GLFence;)V
.end method

.method public abstract deleteFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V
.end method

.method public abstract deleteImage(Lcom/jme3/texture/Image;)V
.end method

.method public abstract deleteShader(Lcom/jme3/shader/Shader;)V
.end method

.method public abstract deleteShaderSource(Lcom/jme3/shader/Shader$ShaderSource;)V
.end method

.method public abstract generateProfilingTasks(I)[I
.end method

.method public abstract getAlphaToCoverage()Z
.end method

.method public getBestColorTargetFormat(Z)Lcom/jme3/texture/Image$Format;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-interface {p0, p1, v0, v1}, Lcom/jme3/renderer/Renderer;->getBestColorTargetFormat(ZZZ)Lcom/jme3/texture/Image$Format;

    move-result-object p1

    return-object p1
.end method

.method public getBestColorTargetFormat(ZZZ)Lcom/jme3/texture/Image$Format;
    .locals 0

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 3
    invoke-interface {p0}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object p1

    sget-object p2, Lcom/jme3/renderer/Caps;->PackedFloatTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p0}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object p1

    sget-object p2, Lcom/jme3/renderer/Caps;->PackedFloatColorBuffer:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lcom/jme3/texture/Image$Format;->RGB111110F:Lcom/jme3/texture/Image$Format;

    return-object p1

    :cond_1
    if-eqz p3, :cond_2

    .line 6
    invoke-interface {p0}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object p1

    sget-object p2, Lcom/jme3/renderer/Caps;->HalfFloatTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 7
    invoke-interface {p0}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object p1

    sget-object p2, Lcom/jme3/renderer/Caps;->HalfFloatColorBufferRGBA:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 8
    sget-object p1, Lcom/jme3/texture/Image$Format;->RGBA16F:Lcom/jme3/texture/Image$Format;

    return-object p1

    .line 9
    :cond_2
    invoke-interface {p0}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object p1

    sget-object p2, Lcom/jme3/renderer/Caps;->PackedFloatTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p0}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object p1

    sget-object p2, Lcom/jme3/renderer/Caps;->PackedFloatColorBuffer:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    sget-object p1, Lcom/jme3/texture/Image$Format;->RGB111110F:Lcom/jme3/texture/Image$Format;

    return-object p1

    .line 12
    :cond_3
    invoke-interface {p0}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object p1

    sget-object p2, Lcom/jme3/renderer/Caps;->HalfFloatTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    invoke-interface {p0}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object p1

    sget-object p3, Lcom/jme3/renderer/Caps;->HalfFloatColorBufferRGB:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, p3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    sget-object p1, Lcom/jme3/texture/Image$Format;->RGB16F:Lcom/jme3/texture/Image$Format;

    return-object p1

    .line 15
    :cond_4
    invoke-interface {p0}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    invoke-interface {p0}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object p1

    sget-object p2, Lcom/jme3/renderer/Caps;->HalfFloatColorBufferRGBA:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    sget-object p1, Lcom/jme3/texture/Image$Format;->RGBA16F:Lcom/jme3/texture/Image$Format;

    return-object p1

    .line 18
    :cond_5
    sget-object p1, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    return-object p1
.end method

.method public getBestDepthTargetFormat()Lcom/jme3/texture/Image$Format;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0, v0, v0}, Lcom/jme3/renderer/Renderer;->getBestDepthTargetFormat(ZZZ)Lcom/jme3/texture/Image$Format;

    move-result-object v0

    return-object v0
.end method

.method public getBestDepthTargetFormat(ZZZ)Lcom/jme3/texture/Image$Format;
    .locals 0

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object p1

    sget-object p2, Lcom/jme3/renderer/Caps;->PackedDepthStencilBuffer:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3
    sget-object p1, Lcom/jme3/texture/Image$Format;->Depth24Stencil8:Lcom/jme3/texture/Image$Format;

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p0}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object p1

    sget-object p3, Lcom/jme3/renderer/Caps;->FloatDepthBuffer:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, p3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lcom/jme3/texture/Image$Format;->Depth32F:Lcom/jme3/texture/Image$Format;

    return-object p1

    :cond_1
    if-eqz p2, :cond_3

    .line 6
    invoke-interface {p0}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object p1

    sget-object p2, Lcom/jme3/renderer/Caps;->Depth32:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    sget-object p1, Lcom/jme3/texture/Image$Format;->Depth32:Lcom/jme3/texture/Image$Format;

    return-object p1

    .line 8
    :cond_2
    invoke-interface {p0}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object p1

    sget-object p2, Lcom/jme3/renderer/Caps;->FloatDepthBuffer:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    sget-object p1, Lcom/jme3/texture/Image$Format;->Depth32F:Lcom/jme3/texture/Image$Format;

    return-object p1

    .line 10
    :cond_3
    invoke-interface {p0}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object p1

    sget-object p2, Lcom/jme3/renderer/Caps;->Depth24:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    sget-object p1, Lcom/jme3/texture/Image$Format;->Depth24:Lcom/jme3/texture/Image$Format;

    return-object p1

    .line 12
    :cond_4
    sget-object p1, Lcom/jme3/texture/Image$Format;->Depth:Lcom/jme3/texture/Image$Format;

    return-object p1
.end method

.method public abstract getCaps()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/jme3/renderer/Caps;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentFrameBuffer()Lcom/jme3/texture/FrameBuffer;
.end method

.method public abstract getDefaultAnisotropicFilter()I
.end method

.method public abstract getLimits()Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lcom/jme3/renderer/Limits;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxLineWidth()F
.end method

.method public abstract getProfilingTime(I)J
.end method

.method public abstract getStatistics()Lcom/jme3/renderer/Statistics;
.end method

.method public abstract initialize()V
.end method

.method public abstract invalidateState()V
.end method

.method public abstract isLinearizeSrgbImages()Z
.end method

.method public abstract isMainFrameBufferSrgb()Z
.end method

.method public abstract isTaskResultAvailable(I)Z
.end method

.method public abstract modifyTexture(Lcom/jme3/texture/Texture;Lcom/jme3/texture/Image;II)V
.end method

.method public popDebugGroup()V
    .locals 0

    return-void
.end method

.method public abstract postFrame()V
.end method

.method public pushDebugGroup(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract readFrameBuffer(Lcom/jme3/texture/FrameBuffer;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract readFrameBufferWithFormat(Lcom/jme3/texture/FrameBuffer;Ljava/nio/ByteBuffer;Lcom/jme3/texture/Image$Format;)V
.end method

.method public abstract registerNativeObject(Lcom/jme3/util/NativeObject;)V
.end method

.method public abstract renderMesh(Lcom/jme3/scene/Mesh;II[Lcom/jme3/scene/VertexBuffer;)V
.end method

.method public abstract resetGLObjects()V
.end method

.method public abstract setAlphaToCoverage(Z)V
.end method

.method public abstract setBackgroundColor(Lcom/jme3/math/ColorRGBA;)V
.end method

.method public abstract setClipRect(IIII)V
.end method

.method public abstract setDefaultAnisotropicFilter(I)V
.end method

.method public abstract setDepthRange(FF)V
.end method

.method public abstract setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V
.end method

.method public abstract setLinearizeSrgbImages(Z)V
.end method

.method public abstract setMainFrameBufferOverride(Lcom/jme3/texture/FrameBuffer;)V
.end method

.method public abstract setMainFrameBufferSrgb(Z)V
.end method

.method public abstract setShader(Lcom/jme3/shader/Shader;)V
.end method

.method public abstract setShaderStorageBufferObject(ILcom/jme3/shader/bufferobject/BufferObject;)V
.end method

.method public abstract setTexture(ILcom/jme3/texture/Texture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jme3/renderer/TextureUnitException;
        }
    .end annotation
.end method

.method public abstract setTextureImage(ILcom/jme3/texture/TextureImage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jme3/renderer/TextureUnitException;
        }
    .end annotation
.end method

.method public abstract setUniformBufferObject(ILcom/jme3/shader/bufferobject/BufferObject;)V
.end method

.method public abstract setViewPort(IIII)V
.end method

.method public abstract startProfiling(I)V
.end method

.method public abstract stopProfiling()V
.end method

.method public abstract updateBufferData(Lcom/jme3/scene/VertexBuffer;)V
.end method

.method public abstract updateShaderStorageBufferObjectData(Lcom/jme3/shader/bufferobject/BufferObject;)V
.end method

.method public abstract updateUniformBufferObjectData(Lcom/jme3/shader/bufferobject/BufferObject;)V
.end method
