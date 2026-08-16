.class public abstract Lcom/ardor3d/util/stat/graph/GraphFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeLineGraph(IILcom/ardor3d/scenegraph/shape/Quad;Lcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)Lcom/ardor3d/util/stat/graph/LineGrapher;
    .locals 1

    new-instance v0, Lcom/ardor3d/util/stat/graph/LineGrapher;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/ardor3d/util/stat/graph/LineGrapher;-><init>(IILcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)V

    const/4 p3, 0x1

    invoke-virtual {v0, p3}, Lcom/ardor3d/util/stat/graph/LineGrapher;->setThreshold(I)V

    invoke-static {v0}, Lcom/ardor3d/util/stat/StatCollector;->addStatListener(Lcom/ardor3d/util/stat/StatListener;)V

    invoke-static {v0}, Lcom/ardor3d/util/stat/graph/GraphFactory;->setupGraphTexture(Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;)Lcom/ardor3d/image/Texture2D;

    move-result-object p3

    int-to-float p0, p0

    iget-object p4, v0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {p4}, Lcom/ardor3d/renderer/TextureRenderer;->getWidth()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p0, p4

    int-to-float p1, p1

    iget-object p4, v0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {p4}, Lcom/ardor3d/renderer/TextureRenderer;->getHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p1, p4

    invoke-static {p2, p3, p0, p1}, Lcom/ardor3d/util/stat/graph/GraphFactory;->setupGraphQuad(Lcom/ardor3d/scenegraph/shape/Quad;Lcom/ardor3d/image/Texture2D;FF)V

    return-object v0
.end method

.method public static makeTabledLabelGraph(IILcom/ardor3d/scenegraph/shape/Quad;Lcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;
    .locals 1

    new-instance v0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;-><init>(IILcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)V

    const/4 p3, 0x1

    invoke-virtual {v0, p3}, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;->setThreshold(I)V

    invoke-static {v0}, Lcom/ardor3d/util/stat/StatCollector;->addStatListener(Lcom/ardor3d/util/stat/StatListener;)V

    invoke-static {v0}, Lcom/ardor3d/util/stat/graph/GraphFactory;->setupGraphTexture(Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;)Lcom/ardor3d/image/Texture2D;

    move-result-object p3

    int-to-float p0, p0

    iget-object p4, v0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {p4}, Lcom/ardor3d/renderer/TextureRenderer;->getWidth()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p0, p4

    int-to-float p1, p1

    iget-object p4, v0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {p4}, Lcom/ardor3d/renderer/TextureRenderer;->getHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p1, p4

    invoke-static {p2, p3, p0, p1}, Lcom/ardor3d/util/stat/graph/GraphFactory;->setupGraphQuad(Lcom/ardor3d/scenegraph/shape/Quad;Lcom/ardor3d/image/Texture2D;FF)V

    return-object v0
.end method

.method public static makeTimedGraph(IILcom/ardor3d/scenegraph/shape/Quad;Lcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;
    .locals 1

    new-instance v0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;-><init>(IILcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)V

    const/4 p3, 0x1

    invoke-virtual {v0, p3}, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;->setThreshold(I)V

    invoke-static {v0}, Lcom/ardor3d/util/stat/StatCollector;->addStatListener(Lcom/ardor3d/util/stat/StatListener;)V

    invoke-static {v0}, Lcom/ardor3d/util/stat/graph/GraphFactory;->setupGraphTexture(Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;)Lcom/ardor3d/image/Texture2D;

    move-result-object p3

    int-to-float p0, p0

    iget-object p4, v0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {p4}, Lcom/ardor3d/renderer/TextureRenderer;->getWidth()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p0, p4

    int-to-float p1, p1

    iget-object p4, v0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {p4}, Lcom/ardor3d/renderer/TextureRenderer;->getHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p1, p4

    invoke-static {p2, p3, p0, p1}, Lcom/ardor3d/util/stat/graph/GraphFactory;->setupGraphQuad(Lcom/ardor3d/scenegraph/shape/Quad;Lcom/ardor3d/image/Texture2D;FF)V

    return-object v0
.end method

.method private static setupGraphQuad(Lcom/ardor3d/scenegraph/shape/Quad;Lcom/ardor3d/image/Texture2D;FF)V
    .locals 3

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/scenegraph/hint/TextureCombineMode;->Replace:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setTextureCombineMode(Lcom/ardor3d/scenegraph/hint/TextureCombineMode;)V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/scenegraph/hint/LightCombineMode;->Off:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setLightCombineMode(Lcom/ardor3d/scenegraph/hint/LightCombineMode;)V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/renderer/queue/RenderBucketType;->Ortho:Lcom/ardor3d/renderer/queue/RenderBucketType;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setOrthoOrder(I)V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    new-instance p2, Lcom/ardor3d/renderer/state/TextureState;

    invoke-direct {p2}, Lcom/ardor3d/renderer/state/TextureState;-><init>()V

    invoke-virtual {p2, p1}, Lcom/ardor3d/renderer/state/TextureState;->setTexture(Lcom/ardor3d/image/Texture;)V

    invoke-virtual {p0, p2}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    new-instance p1, Lcom/ardor3d/renderer/state/BlendState;

    invoke-direct {p1}, Lcom/ardor3d/renderer/state/BlendState;-><init>()V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/state/BlendState;->setBlendEnabled(Z)V

    sget-object p2, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->SourceAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/state/BlendState;->setSourceFunction(Lcom/ardor3d/renderer/state/BlendState$SourceFunction;)V

    sget-object p2, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->OneMinusSourceAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/state/BlendState;->setDestinationFunction(Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;)V

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    return-void
.end method

.method private static setupGraphTexture(Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;)Lcom/ardor3d/image/Texture2D;
    .locals 2

    new-instance v0, Lcom/ardor3d/image/Texture2D;

    invoke-direct {v0}, Lcom/ardor3d/image/Texture2D;-><init>()V

    sget-object v1, Lcom/ardor3d/image/Texture$MinificationFilter;->NearestNeighborNoMipMaps:Lcom/ardor3d/image/Texture$MinificationFilter;

    invoke-virtual {v0, v1}, Lcom/ardor3d/image/Texture;->setMinificationFilter(Lcom/ardor3d/image/Texture$MinificationFilter;)V

    sget-object v1, Lcom/ardor3d/image/Texture$MagnificationFilter;->Bilinear:Lcom/ardor3d/image/Texture$MagnificationFilter;

    invoke-virtual {v0, v1}, Lcom/ardor3d/image/Texture;->setMagnificationFilter(Lcom/ardor3d/image/Texture$MagnificationFilter;)V

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->setTexture(Lcom/ardor3d/image/Texture2D;)V

    return-object v0
.end method
