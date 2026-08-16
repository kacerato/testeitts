.class public Lcom/jme3/system/NullRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/renderer/Renderer;


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

.field private final stats:Lcom/jme3/renderer/Statistics;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/jme3/renderer/Caps;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/system/NullRenderer;->caps:Ljava/util/EnumSet;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/jme3/renderer/Limits;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/system/NullRenderer;->limits:Ljava/util/EnumMap;

    new-instance v0, Lcom/jme3/renderer/Statistics;

    invoke-direct {v0}, Lcom/jme3/renderer/Statistics;-><init>()V

    iput-object v0, p0, Lcom/jme3/system/NullRenderer;->stats:Lcom/jme3/renderer/Statistics;

    return-void
.end method


# virtual methods
.method public applyRenderState(Lcom/jme3/material/RenderState;)V
    .locals 0

    return-void
.end method

.method public cleanup()V
    .locals 0

    return-void
.end method

.method public clearBuffers(ZZZ)V
    .locals 0

    return-void
.end method

.method public clearClipRect()V
    .locals 0

    return-void
.end method

.method public copyFrameBuffer(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public copyFrameBuffer(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer;Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public copyFrameBuffer(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer;ZZ)V
    .locals 0

    .line 3
    return-void
.end method

.method public deleteBuffer(Lcom/jme3/scene/VertexBuffer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public deleteBuffer(Lcom/jme3/shader/bufferobject/BufferObject;)V
    .locals 0

    .line 2
    return-void
.end method

.method public deleteFence(Lcom/jme3/renderer/opengl/GLFence;)V
    .locals 0

    return-void
.end method

.method public deleteFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V
    .locals 0

    return-void
.end method

.method public deleteImage(Lcom/jme3/texture/Image;)V
    .locals 0

    return-void
.end method

.method public deleteShader(Lcom/jme3/shader/Shader;)V
    .locals 0

    return-void
.end method

.method public deleteShaderSource(Lcom/jme3/shader/Shader$ShaderSource;)V
    .locals 0

    return-void
.end method

.method public generateProfilingTasks(I)[I
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [I

    return-object p1
.end method

.method public getAlphaToCoverage()Z
    .locals 1

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

    iget-object v0, p0, Lcom/jme3/system/NullRenderer;->caps:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getCurrentFrameBuffer()Lcom/jme3/texture/FrameBuffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultAnisotropicFilter()I
    .locals 1

    const/4 v0, 0x0

    return v0
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

    iget-object v0, p0, Lcom/jme3/system/NullRenderer;->limits:Ljava/util/EnumMap;

    return-object v0
.end method

.method public getMaxLineWidth()F
    .locals 1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0
.end method

.method public getProfilingTime(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStatistics()Lcom/jme3/renderer/Statistics;
    .locals 1

    iget-object v0, p0, Lcom/jme3/system/NullRenderer;->stats:Lcom/jme3/renderer/Statistics;

    return-object v0
.end method

.method public initialize()V
    .locals 6

    invoke-static {}, Lcom/jme3/renderer/Limits;->values()[Lcom/jme3/renderer/Limits;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/jme3/system/NullRenderer;->limits:Ljava/util/EnumMap;

    const v5, 0x7fffffff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public invalidateState()V
    .locals 0

    return-void
.end method

.method public isLinearizeSrgbImages()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMainFrameBufferSrgb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTaskResultAvailable(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public modifyTexture(Lcom/jme3/texture/Texture;Lcom/jme3/texture/Image;II)V
    .locals 0

    return-void
.end method

.method public postFrame()V
    .locals 0

    return-void
.end method

.method public readFrameBuffer(Lcom/jme3/texture/FrameBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method public readFrameBufferWithFormat(Lcom/jme3/texture/FrameBuffer;Ljava/nio/ByteBuffer;Lcom/jme3/texture/Image$Format;)V
    .locals 0

    return-void
.end method

.method public registerNativeObject(Lcom/jme3/util/NativeObject;)V
    .locals 0

    return-void
.end method

.method public renderMesh(Lcom/jme3/scene/Mesh;II[Lcom/jme3/scene/VertexBuffer;)V
    .locals 0

    return-void
.end method

.method public resetGLObjects()V
    .locals 0

    return-void
.end method

.method public setAlphaToCoverage(Z)V
    .locals 0

    return-void
.end method

.method public setBackgroundColor(Lcom/jme3/math/ColorRGBA;)V
    .locals 0

    return-void
.end method

.method public setClipRect(IIII)V
    .locals 0

    return-void
.end method

.method public setDefaultAnisotropicFilter(I)V
    .locals 0

    return-void
.end method

.method public setDepthRange(FF)V
    .locals 0

    return-void
.end method

.method public setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V
    .locals 0

    return-void
.end method

.method public setLighting(Lcom/jme3/light/LightList;)V
    .locals 0

    return-void
.end method

.method public setLinearizeSrgbImages(Z)V
    .locals 0

    return-void
.end method

.method public setMainFrameBufferOverride(Lcom/jme3/texture/FrameBuffer;)V
    .locals 0

    return-void
.end method

.method public setMainFrameBufferSrgb(Z)V
    .locals 0

    return-void
.end method

.method public setShader(Lcom/jme3/shader/Shader;)V
    .locals 0

    return-void
.end method

.method public setShaderStorageBufferObject(ILcom/jme3/shader/bufferobject/BufferObject;)V
    .locals 0

    return-void
.end method

.method public setTexture(ILcom/jme3/texture/Texture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jme3/renderer/TextureUnitException;
        }
    .end annotation

    return-void
.end method

.method public setTextureImage(ILcom/jme3/texture/TextureImage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jme3/renderer/TextureUnitException;
        }
    .end annotation

    return-void
.end method

.method public setUniformBufferObject(ILcom/jme3/shader/bufferobject/BufferObject;)V
    .locals 0

    return-void
.end method

.method public setViewPort(IIII)V
    .locals 0

    return-void
.end method

.method public setViewProjectionMatrices(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)V
    .locals 0

    return-void
.end method

.method public setWorldMatrix(Lcom/jme3/math/Matrix4f;)V
    .locals 0

    return-void
.end method

.method public startProfiling(I)V
    .locals 0

    return-void
.end method

.method public stopProfiling()V
    .locals 0

    return-void
.end method

.method public updateBufferData(Lcom/jme3/scene/VertexBuffer;)V
    .locals 0

    return-void
.end method

.method public updateShaderStorageBufferObjectData(Lcom/jme3/shader/bufferobject/BufferObject;)V
    .locals 0

    return-void
.end method

.method public updateUniformBufferObjectData(Lcom/jme3/shader/bufferobject/BufferObject;)V
    .locals 0

    return-void
.end method
