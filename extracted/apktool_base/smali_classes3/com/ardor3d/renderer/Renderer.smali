.class public interface abstract Lcom/ardor3d/renderer/Renderer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BUFFER_ACCUMULATION:I = 0x4

.field public static final BUFFER_COLOR:I = 0x1

.field public static final BUFFER_COLOR_AND_DEPTH:I = 0x3

.field public static final BUFFER_DEPTH:I = 0x2

.field public static final BUFFER_NONE:I = 0x0

.field public static final BUFFER_STENCIL:I = 0x8


# virtual methods
.method public abstract applyDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
.end method

.method public abstract applyNormalsMode(Lcom/ardor3d/scenegraph/hint/NormalsMode;Lcom/ardor3d/math/type/ReadOnlyTransform;)V
.end method

.method public abstract applyState(Lcom/ardor3d/renderer/state/RenderState$StateType;Lcom/ardor3d/renderer/state/RenderState;)V
.end method

.method public abstract checkAndAdd(Lcom/ardor3d/scenegraph/Spatial;)Z
.end method

.method public abstract checkCardError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ardor3d/util/Ardor3dException;
        }
    .end annotation
.end method

.method public abstract clearBuffers(I)V
.end method

.method public abstract clearBuffers(IZ)V
.end method

.method public abstract clearClips()V
.end method

.method public abstract clearQueue()V
.end method

.method public abstract deleteDisplayLists(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteTexture(Lcom/ardor3d/image/Texture;)V
.end method

.method public abstract deleteTextureIds(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteVBOs(Lcom/ardor3d/scenegraph/AbstractBufferData;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/scenegraph/AbstractBufferData<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract deleteVBOs(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract doTransforms(Lcom/ardor3d/math/type/ReadOnlyTransform;)Z
.end method

.method public abstract draw(Lcom/ardor3d/scenegraph/Renderable;)V
.end method

.method public abstract draw(Lcom/ardor3d/scenegraph/Spatial;)V
.end method

.method public abstract drawArrays(Lcom/ardor3d/scenegraph/FloatBufferData;[I[Lcom/ardor3d/renderer/IndexMode;)V
.end method

.method public abstract drawElements(Lcom/ardor3d/scenegraph/IndexBufferData;[I[Lcom/ardor3d/renderer/IndexMode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/scenegraph/IndexBufferData<",
            "*>;[I[",
            "Lcom/ardor3d/renderer/IndexMode;",
            ")V"
        }
    .end annotation
.end method

.method public abstract drawElementsVBO(Lcom/ardor3d/scenegraph/IndexBufferData;[I[Lcom/ardor3d/renderer/IndexMode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/scenegraph/IndexBufferData<",
            "*>;[I[",
            "Lcom/ardor3d/renderer/IndexMode;",
            ")V"
        }
    .end annotation
.end method

.method public abstract endDisplayList()V
.end method

.method public abstract finishGraphics()V
.end method

.method public abstract flushFrame(Z)V
.end method

.method public abstract flushGraphics()V
.end method

.method public abstract getBackgroundColor()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
.end method

.method public abstract getModelViewMatrix(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
.end method

.method public abstract getProjectionMatrix(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
.end method

.method public abstract getProperRenderState(Lcom/ardor3d/renderer/state/RenderState$StateType;Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;
.end method

.method public abstract getQueue()Lcom/ardor3d/renderer/queue/RenderQueue;
.end method

.method public abstract grabScreenContents(Ljava/nio/ByteBuffer;Lcom/ardor3d/image/ImageDataFormat;IIII)V
.end method

.method public abstract isClipTestEnabled()Z
.end method

.method public abstract isInOrthoMode()Z
.end method

.method public abstract isProcessingQueue()Z
.end method

.method public abstract loadTexture(Lcom/ardor3d/image/Texture;I)V
.end method

.method public abstract popClip()V
.end method

.method public abstract pushClip(IIII)V
.end method

.method public abstract pushEmptyClip()V
.end method

.method public abstract renderBuckets()V
.end method

.method public abstract renderBuckets(ZZ)V
.end method

.method public abstract renderDisplayList(I)V
.end method

.method public abstract setBackgroundColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
.end method

.method public abstract setClipTestEnabled(Z)V
.end method

.method public abstract setDepthRange(DD)V
.end method

.method public abstract setDrawBuffer(Lcom/ardor3d/renderer/DrawBufferTarget;)V
.end method

.method public abstract setModelViewMatrix(Ljava/nio/FloatBuffer;)V
.end method

.method public abstract setOrtho()V
.end method

.method public abstract setProjectionMatrix(Ljava/nio/FloatBuffer;)V
.end method

.method public abstract setRenderLogic(Lcom/ardor3d/renderer/RenderLogic;)V
.end method

.method public abstract setViewport(IIII)V
.end method

.method public abstract setupColorData(Lcom/ardor3d/scenegraph/FloatBufferData;)V
.end method

.method public abstract setupColorDataVBO(Lcom/ardor3d/scenegraph/FloatBufferData;)V
.end method

.method public abstract setupFogData(Lcom/ardor3d/scenegraph/FloatBufferData;)V
.end method

.method public abstract setupFogDataVBO(Lcom/ardor3d/scenegraph/FloatBufferData;)V
.end method

.method public abstract setupInterleavedDataVBO(Lcom/ardor3d/scenegraph/FloatBufferData;Lcom/ardor3d/scenegraph/FloatBufferData;Lcom/ardor3d/scenegraph/FloatBufferData;Lcom/ardor3d/scenegraph/FloatBufferData;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/scenegraph/FloatBufferData;",
            "Lcom/ardor3d/scenegraph/FloatBufferData;",
            "Lcom/ardor3d/scenegraph/FloatBufferData;",
            "Lcom/ardor3d/scenegraph/FloatBufferData;",
            "Ljava/util/List<",
            "Lcom/ardor3d/scenegraph/FloatBufferData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setupLineParameters(FISZ)V
.end method

.method public abstract setupNormalData(Lcom/ardor3d/scenegraph/FloatBufferData;)V
.end method

.method public abstract setupNormalDataVBO(Lcom/ardor3d/scenegraph/FloatBufferData;)V
.end method

.method public abstract setupPointParameters(FZZZLjava/nio/FloatBuffer;FF)V
.end method

.method public abstract setupTextureData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ardor3d/scenegraph/FloatBufferData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setupTextureDataVBO(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ardor3d/scenegraph/FloatBufferData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setupVertexData(Lcom/ardor3d/scenegraph/FloatBufferData;)V
.end method

.method public abstract setupVertexDataVBO(Lcom/ardor3d/scenegraph/FloatBufferData;)V
.end method

.method public abstract startDisplayList()I
.end method

.method public abstract unbindVBO()V
.end method

.method public abstract undoTransforms(Lcom/ardor3d/math/type/ReadOnlyTransform;)V
.end method

.method public abstract unsetOrtho()V
.end method

.method public abstract updateTexture1DSubImage(Lcom/ardor3d/image/Texture1D;IILjava/nio/ByteBuffer;I)V
.end method

.method public abstract updateTexture2DSubImage(Lcom/ardor3d/image/Texture2D;IIIILjava/nio/ByteBuffer;III)V
.end method

.method public abstract updateTexture3DSubImage(Lcom/ardor3d/image/Texture3D;IIIIIILjava/nio/ByteBuffer;IIIII)V
.end method

.method public abstract updateTextureCubeMapSubImage(Lcom/ardor3d/image/TextureCubeMap;Lcom/ardor3d/image/TextureCubeMap$Face;IIIILjava/nio/ByteBuffer;III)V
.end method
