.class public Lcom/jme3/post/FilterPostProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/post/SceneProcessor;
.implements Lcom/jme3/export/Savable;


# static fields
.field public static final FPP:Ljava/lang/String; = "FilterPostProcessor"


# instance fields
.field private assetManager:Lcom/jme3/asset/AssetManager;

.field private bottom:F

.field private cameraInit:Z

.field private computeDepth:Z

.field private depthFormat:Lcom/jme3/texture/Image$Format;

.field private depthTexture:Lcom/jme3/texture/Texture2D;

.field private fbFormat:Lcom/jme3/texture/Image$Format;

.field private filterTexture:Lcom/jme3/texture/Texture2D;

.field private filters:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/post/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private fsQuad:Lcom/jme3/scene/Geometry;

.field private height:I

.field private lastFilterIndex:I

.field private left:F

.field private multiView:Z

.field private numSamples:I

.field private originalHeight:I

.field private originalWidth:I

.field private outputBuffer:Lcom/jme3/texture/FrameBuffer;

.field private prof:Lcom/jme3/profile/AppProfiler;

.field private renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

.field private renderFrameBufferMS:Lcom/jme3/texture/FrameBuffer;

.field private renderManager:Lcom/jme3/renderer/RenderManager;

.field private renderer:Lcom/jme3/renderer/Renderer;

.field private right:F

.field private top:F

.field private useFullscreenTriangle:Z

.field private viewPort:Lcom/jme3/renderer/ViewPort;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/jme3/post/FilterPostProcessor;->numSamples:I

    .line 16
    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/post/Filter;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->filters:Lcom/jme3/util/SafeArrayList;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/jme3/post/FilterPostProcessor;->useFullscreenTriangle:Z

    .line 18
    iput-boolean v0, p0, Lcom/jme3/post/FilterPostProcessor;->computeDepth:Z

    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/jme3/post/FilterPostProcessor;->lastFilterIndex:I

    .line 20
    iput-boolean v0, p0, Lcom/jme3/post/FilterPostProcessor;->cameraInit:Z

    .line 21
    iput-boolean v0, p0, Lcom/jme3/post/FilterPostProcessor;->multiView:Z

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->fbFormat:Lcom/jme3/texture/Image$Format;

    .line 23
    sget-object v0, Lcom/jme3/texture/Image$Format;->Depth:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->depthFormat:Lcom/jme3/texture/Image$Format;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/jme3/post/FilterPostProcessor;->numSamples:I

    .line 3
    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/post/Filter;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->filters:Lcom/jme3/util/SafeArrayList;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/jme3/post/FilterPostProcessor;->useFullscreenTriangle:Z

    .line 5
    iput-boolean v0, p0, Lcom/jme3/post/FilterPostProcessor;->computeDepth:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/jme3/post/FilterPostProcessor;->lastFilterIndex:I

    .line 7
    iput-boolean v0, p0, Lcom/jme3/post/FilterPostProcessor;->cameraInit:Z

    .line 8
    iput-boolean v0, p0, Lcom/jme3/post/FilterPostProcessor;->multiView:Z

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->fbFormat:Lcom/jme3/texture/Image$Format;

    .line 10
    sget-object v0, Lcom/jme3/texture/Image$Format;->Depth:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->depthFormat:Lcom/jme3/texture/Image$Format;

    .line 11
    iput-object p1, p0, Lcom/jme3/post/FilterPostProcessor;->assetManager:Lcom/jme3/asset/AssetManager;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;Z)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/jme3/post/FilterPostProcessor;-><init>(Lcom/jme3/asset/AssetManager;)V

    .line 13
    iput-boolean p2, p0, Lcom/jme3/post/FilterPostProcessor;->useFullscreenTriangle:Z

    return-void
.end method

.method private initFilter(Lcom/jme3/post/Filter;Lcom/jme3/renderer/ViewPort;)V
    .locals 7

    invoke-virtual {p1, p0}, Lcom/jme3/post/Filter;->setProcessor(Lcom/jme3/post/FilterPostProcessor;)V

    invoke-virtual {p1}, Lcom/jme3/post/Filter;->isRequiresDepthTexture()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jme3/post/FilterPostProcessor;->computeDepth:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jme3/texture/Texture2D;

    iget v1, p0, Lcom/jme3/post/FilterPostProcessor;->width:I

    iget v2, p0, Lcom/jme3/post/FilterPostProcessor;->height:I

    iget-object v3, p0, Lcom/jme3/post/FilterPostProcessor;->depthFormat:Lcom/jme3/texture/Image$Format;

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Texture2D;-><init>(IILcom/jme3/texture/Image$Format;)V

    iput-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->depthTexture:Lcom/jme3/texture/Texture2D;

    iget-object v1, p0, Lcom/jme3/post/FilterPostProcessor;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    invoke-static {v0}, Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;->newTarget(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jme3/texture/FrameBuffer;->setDepthTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/post/FilterPostProcessor;->computeDepth:Z

    iget-object v2, p0, Lcom/jme3/post/FilterPostProcessor;->assetManager:Lcom/jme3/asset/AssetManager;

    iget-object v3, p0, Lcom/jme3/post/FilterPostProcessor;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget v5, p0, Lcom/jme3/post/FilterPostProcessor;->width:I

    iget v6, p0, Lcom/jme3/post/FilterPostProcessor;->height:I

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/jme3/post/Filter;->init(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;II)V

    iget-object p2, p0, Lcom/jme3/post/FilterPostProcessor;->depthTexture:Lcom/jme3/texture/Texture2D;

    invoke-virtual {p1, p2}, Lcom/jme3/post/Filter;->setDepthTexture(Lcom/jme3/texture/Texture;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/jme3/post/FilterPostProcessor;->assetManager:Lcom/jme3/asset/AssetManager;

    iget-object v2, p0, Lcom/jme3/post/FilterPostProcessor;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget v4, p0, Lcom/jme3/post/FilterPostProcessor;->width:I

    iget v5, p0, Lcom/jme3/post/FilterPostProcessor;->height:I

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/post/Filter;->init(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;II)V

    :goto_0
    return-void
.end method

.method private renderFilterChain(Lcom/jme3/renderer/Renderer;Lcom/jme3/texture/FrameBuffer;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/jme3/post/FilterPostProcessor;->filterTexture:Lcom/jme3/texture/Texture2D;

    iget-object v3, v0, Lcom/jme3/post/FilterPostProcessor;->depthTexture:Lcom/jme3/texture/Texture2D;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result v3

    if-le v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    move-object/from16 v6, p2

    :goto_1
    iget-object v7, v0, Lcom/jme3/post/FilterPostProcessor;->filters:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v7}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_12

    iget-object v7, v0, Lcom/jme3/post/FilterPostProcessor;->filters:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v7, v4}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/post/Filter;

    iget-object v8, v0, Lcom/jme3/post/FilterPostProcessor;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v8, :cond_1

    sget-object v9, Lcom/jme3/profile/SpStep;->ProcPostFrame:Lcom/jme3/profile/SpStep;

    sget-object v10, Lcom/jme3/post/FilterPostProcessor;->FPP:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/jme3/post/Filter;->getName()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/jme3/profile/AppProfiler;->spStep(Lcom/jme3/profile/SpStep;[Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v7}, Lcom/jme3/post/Filter;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {v7}, Lcom/jme3/post/Filter;->getPostRenderPasses()Ljava/util/List;

    move-result-object v8

    const-string v9, "Texture"

    const-string v10, "NumSamplesDepth"

    const-string v11, "NumSamples"

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Lcom/jme3/post/Filter;->getPostRenderPasses()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jme3/post/Filter$Pass;

    iget-object v13, v0, Lcom/jme3/post/FilterPostProcessor;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v13, :cond_2

    sget-object v14, Lcom/jme3/profile/SpStep;->ProcPostFrame:Lcom/jme3/profile/SpStep;

    sget-object v15, Lcom/jme3/post/FilterPostProcessor;->FPP:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/jme3/post/Filter;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v8

    invoke-virtual {v12}, Lcom/jme3/post/Filter$Pass;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v15, v5, v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13, v14, v5}, Lcom/jme3/profile/AppProfiler;->spStep(Lcom/jme3/profile/SpStep;[Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    move-object/from16 v16, v8

    :goto_3
    invoke-virtual {v12}, Lcom/jme3/post/Filter$Pass;->beforeRender()V

    invoke-virtual {v12}, Lcom/jme3/post/Filter$Pass;->requiresSceneAsTexture()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v12}, Lcom/jme3/post/Filter$Pass;->getPassMaterial()Lcom/jme3/material/Material;

    move-result-object v5

    invoke-virtual {v5, v9, v2}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    invoke-virtual {v2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result v5

    const/4 v8, 0x1

    if-le v5, v8, :cond_3

    invoke-virtual {v12}, Lcom/jme3/post/Filter$Pass;->getPassMaterial()Lcom/jme3/material/Material;

    move-result-object v5

    invoke-virtual {v2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result v8

    invoke-virtual {v5, v11, v8}, Lcom/jme3/material/Material;->setInt(Ljava/lang/String;I)V

    goto :goto_4

    :cond_3
    invoke-virtual {v12}, Lcom/jme3/post/Filter$Pass;->getPassMaterial()Lcom/jme3/material/Material;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/jme3/material/Material;->clearParam(Ljava/lang/String;)V

    :cond_4
    :goto_4
    invoke-virtual {v12}, Lcom/jme3/post/Filter$Pass;->requiresDepthAsTexture()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v12}, Lcom/jme3/post/Filter$Pass;->getPassMaterial()Lcom/jme3/material/Material;

    move-result-object v5

    const-string v8, "DepthTexture"

    iget-object v13, v0, Lcom/jme3/post/FilterPostProcessor;->depthTexture:Lcom/jme3/texture/Texture2D;

    invoke-virtual {v5, v8, v13}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    if-eqz v3, :cond_5

    invoke-virtual {v12}, Lcom/jme3/post/Filter$Pass;->getPassMaterial()Lcom/jme3/material/Material;

    move-result-object v5

    iget-object v8, v0, Lcom/jme3/post/FilterPostProcessor;->depthTexture:Lcom/jme3/texture/Texture2D;

    invoke-virtual {v8}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result v8

    invoke-virtual {v5, v10, v8}, Lcom/jme3/material/Material;->setInt(Ljava/lang/String;I)V

    goto :goto_5

    :cond_5
    invoke-virtual {v12}, Lcom/jme3/post/Filter$Pass;->getPassMaterial()Lcom/jme3/material/Material;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/jme3/material/Material;->clearParam(Ljava/lang/String;)V

    :cond_6
    :goto_5
    invoke-virtual {v12}, Lcom/jme3/post/Filter$Pass;->getRenderFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v5

    invoke-virtual {v12}, Lcom/jme3/post/Filter$Pass;->getPassMaterial()Lcom/jme3/material/Material;

    move-result-object v8

    invoke-direct {v0, v1, v5, v8}, Lcom/jme3/post/FilterPostProcessor;->renderProcessing(Lcom/jme3/renderer/Renderer;Lcom/jme3/texture/FrameBuffer;Lcom/jme3/material/Material;)V

    move-object/from16 v8, v16

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_7
    iget-object v5, v0, Lcom/jme3/post/FilterPostProcessor;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v5, :cond_8

    sget-object v8, Lcom/jme3/profile/SpStep;->ProcPostFrame:Lcom/jme3/profile/SpStep;

    sget-object v12, Lcom/jme3/post/FilterPostProcessor;->FPP:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/jme3/post/Filter;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "postFrame"

    filled-new-array {v12, v13, v14}, [Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v8, v12}, Lcom/jme3/profile/AppProfiler;->spStep(Lcom/jme3/profile/SpStep;[Ljava/lang/String;)V

    :cond_8
    iget-object v5, v0, Lcom/jme3/post/FilterPostProcessor;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v8, v0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    move-object/from16 v12, p2

    invoke-virtual {v7, v5, v8, v6, v12}, Lcom/jme3/post/Filter;->postFrame(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer;)V

    invoke-virtual {v7}, Lcom/jme3/post/Filter;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v5

    if-eqz v3, :cond_9

    invoke-virtual {v7}, Lcom/jme3/post/Filter;->isRequiresDepthTexture()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v0, Lcom/jme3/post/FilterPostProcessor;->depthTexture:Lcom/jme3/texture/Texture2D;

    invoke-virtual {v6}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Lcom/jme3/material/Material;->setInt(Ljava/lang/String;I)V

    :cond_9
    invoke-virtual {v7}, Lcom/jme3/post/Filter;->isRequiresSceneTexture()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v5, v9, v2}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    invoke-virtual {v2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result v6

    const/4 v8, 0x1

    if-le v6, v8, :cond_a

    invoke-virtual {v2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result v6

    invoke-virtual {v5, v11, v6}, Lcom/jme3/material/Material;->setInt(Ljava/lang/String;I)V

    goto :goto_6

    :cond_a
    invoke-virtual {v5, v11}, Lcom/jme3/material/Material;->clearParam(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    const/4 v8, 0x1

    :goto_6
    invoke-virtual {v7}, Lcom/jme3/post/Filter;->isRequiresBilinear()Z

    move-result v6

    if-eqz v6, :cond_c

    sget-object v9, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v2, v9}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    sget-object v9, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v2, v9}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    :cond_c
    iget-object v9, v0, Lcom/jme3/post/FilterPostProcessor;->outputBuffer:Lcom/jme3/texture/FrameBuffer;

    iget v10, v0, Lcom/jme3/post/FilterPostProcessor;->lastFilterIndex:I

    if-eq v4, v10, :cond_d

    invoke-virtual {v7}, Lcom/jme3/post/Filter;->getRenderFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v2

    invoke-virtual {v7}, Lcom/jme3/post/Filter;->getRenderedTexture()Lcom/jme3/texture/Texture2D;

    move-result-object v9

    move-object/from16 v17, v9

    move-object v9, v2

    move-object/from16 v2, v17

    :cond_d
    iget-object v10, v0, Lcom/jme3/post/FilterPostProcessor;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v10, :cond_e

    sget-object v11, Lcom/jme3/profile/SpStep;->ProcPostFrame:Lcom/jme3/profile/SpStep;

    sget-object v13, Lcom/jme3/post/FilterPostProcessor;->FPP:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/jme3/post/Filter;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "render"

    filled-new-array {v13, v14, v15}, [Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v13}, Lcom/jme3/profile/AppProfiler;->spStep(Lcom/jme3/profile/SpStep;[Ljava/lang/String;)V

    :cond_e
    invoke-direct {v0, v1, v9, v5}, Lcom/jme3/post/FilterPostProcessor;->renderProcessing(Lcom/jme3/renderer/Renderer;Lcom/jme3/texture/FrameBuffer;Lcom/jme3/material/Material;)V

    iget-object v5, v0, Lcom/jme3/post/FilterPostProcessor;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v5, :cond_f

    sget-object v10, Lcom/jme3/profile/SpStep;->ProcPostFrame:Lcom/jme3/profile/SpStep;

    sget-object v11, Lcom/jme3/post/FilterPostProcessor;->FPP:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/jme3/post/Filter;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "postFilter"

    filled-new-array {v11, v13, v14}, [Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Lcom/jme3/profile/AppProfiler;->spStep(Lcom/jme3/profile/SpStep;[Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v7, v1, v9}, Lcom/jme3/post/Filter;->postFilter(Lcom/jme3/renderer/Renderer;Lcom/jme3/texture/FrameBuffer;)V

    if-eqz v6, :cond_10

    sget-object v5, Lcom/jme3/texture/Texture$MagFilter;->Nearest:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v2, v5}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    sget-object v5, Lcom/jme3/texture/Texture$MinFilter;->NearestNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v2, v5}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    :cond_10
    move-object v6, v9

    goto :goto_7

    :cond_11
    move-object/from16 v12, p2

    move v8, v5

    :goto_7
    add-int/lit8 v4, v4, 0x1

    move v5, v8

    goto/16 :goto_1

    :cond_12
    return-void
.end method

.method private renderProcessing(Lcom/jme3/renderer/Renderer;Lcom/jme3/texture/FrameBuffer;Lcom/jme3/material/Material;)V
    .locals 7

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->outputBuffer:Lcom/jme3/texture/FrameBuffer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    iget v3, p0, Lcom/jme3/post/FilterPostProcessor;->originalWidth:I

    iget v4, p0, Lcom/jme3/post/FilterPostProcessor;->originalHeight:I

    invoke-virtual {v0, v3, v4, v2}, Lcom/jme3/renderer/Camera;->resize(IIZ)V

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    iget v3, p0, Lcom/jme3/post/FilterPostProcessor;->left:F

    iget v4, p0, Lcom/jme3/post/FilterPostProcessor;->right:F

    iget v5, p0, Lcom/jme3/post/FilterPostProcessor;->bottom:F

    iget v6, p0, Lcom/jme3/post/FilterPostProcessor;->top:F

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/jme3/renderer/Camera;->setViewPort(FFFF)V

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v3, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v3}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    invoke-virtual {p3}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/material/RenderState;->isDepthWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    invoke-virtual {p3}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jme3/material/RenderState;->setDepthWrite(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer;->getHeight()I

    move-result v4

    invoke-virtual {v0, v3, v4, v2}, Lcom/jme3/renderer/Camera;->resize(IIZ)V

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v4, v3, v4}, Lcom/jme3/renderer/Camera;->setViewPort(FFFF)V

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v3, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v3}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    invoke-virtual {p3}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    invoke-virtual {p3}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setDepthWrite(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->fsQuad:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, p3}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    iget-object p3, p0, Lcom/jme3/post/FilterPostProcessor;->fsQuad:Lcom/jme3/scene/Geometry;

    invoke-virtual {p3}, Lcom/jme3/scene/Spatial;->updateGeometricState()V

    invoke-interface {p1, p2}, Lcom/jme3/renderer/Renderer;->setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    invoke-interface {p1, v1, v1, v1}, Lcom/jme3/renderer/Renderer;->clearBuffers(ZZZ)V

    iget-object p1, p0, Lcom/jme3/post/FilterPostProcessor;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object p2, p0, Lcom/jme3/post/FilterPostProcessor;->fsQuad:Lcom/jme3/scene/Geometry;

    invoke-virtual {p1, p2}, Lcom/jme3/renderer/RenderManager;->renderGeometry(Lcom/jme3/scene/Geometry;)V

    return-void
.end method

.method private setupViewPortFrameBuffer()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->renderFrameBufferMS:Lcom/jme3/texture/FrameBuffer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v1, v0}, Lcom/jme3/renderer/ViewPort;->setOutputFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    iget-object v1, p0, Lcom/jme3/post/FilterPostProcessor;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/ViewPort;->setOutputFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    :goto_0
    return-void
.end method

.method private updateLastFilterIndex()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/post/FilterPostProcessor;->lastFilterIndex:I

    iget-object v1, p0, Lcom/jme3/post/FilterPostProcessor;->filters:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget v2, p0, Lcom/jme3/post/FilterPostProcessor;->lastFilterIndex:I

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lcom/jme3/post/FilterPostProcessor;->filters:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2, v1}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/post/Filter;

    invoke-virtual {v2}, Lcom/jme3/post/Filter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/jme3/post/FilterPostProcessor;->lastFilterIndex:I

    invoke-virtual {p0}, Lcom/jme3/post/FilterPostProcessor;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/post/FilterPostProcessor;->outputBuffer:Lcom/jme3/texture/FrameBuffer;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/jme3/post/FilterPostProcessor;->setupViewPortFrameBuffer()V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/jme3/post/FilterPostProcessor;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/jme3/post/FilterPostProcessor;->lastFilterIndex:I

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    iget-object v1, p0, Lcom/jme3/post/FilterPostProcessor;->outputBuffer:Lcom/jme3/texture/FrameBuffer;

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/ViewPort;->setOutputFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public addFilter(Lcom/jme3/post/Filter;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->filters:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jme3/post/FilterPostProcessor;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-direct {p0, p1, v0}, Lcom/jme3/post/FilterPostProcessor;->initFilter(Lcom/jme3/post/Filter;Lcom/jme3/renderer/ViewPort;)V

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/post/Filter;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/jme3/post/FilterPostProcessor;->setFilterState(Lcom/jme3/post/Filter;Z)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Filter cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cleanup()V
    .locals 5

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    iget v1, p0, Lcom/jme3/post/FilterPostProcessor;->originalWidth:I

    iget v2, p0, Lcom/jme3/post/FilterPostProcessor;->originalHeight:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/renderer/Camera;->resize(IIZ)V

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    iget v1, p0, Lcom/jme3/post/FilterPostProcessor;->left:F

    iget v2, p0, Lcom/jme3/post/FilterPostProcessor;->right:F

    iget v3, p0, Lcom/jme3/post/FilterPostProcessor;->bottom:F

    iget v4, p0, Lcom/jme3/post/FilterPostProcessor;->top:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jme3/renderer/Camera;->setViewPort(FFFF)V

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    iget-object v1, p0, Lcom/jme3/post/FilterPostProcessor;->outputBuffer:Lcom/jme3/texture/FrameBuffer;

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/ViewPort;->setOutputFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->depthTexture:Lcom/jme3/texture/Texture2D;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->dispose()V

    :cond_1
    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->filterTexture:Lcom/jme3/texture/Texture2D;

    invoke-virtual {v0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->dispose()V

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->renderFrameBufferMS:Lcom/jme3/texture/FrameBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->dispose()V

    :cond_2
    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->filters:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/post/Filter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/jme3/post/FilterPostProcessor;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-virtual {v3, v4}, Lcom/jme3/post/Filter;->cleanup(Lcom/jme3/renderer/Renderer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getDefaultPassTextureFormat()Lcom/jme3/texture/Image$Format;
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->fbFormat:Lcom/jme3/texture/Image$Format;

    return-object v0
.end method

.method public getDepthTexture()Lcom/jme3/texture/Texture2D;
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->depthTexture:Lcom/jme3/texture/Texture2D;

    return-object v0
.end method

.method public getFilter(Ljava/lang/Class;)Lcom/jme3/post/Filter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/jme3/post/Filter;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->filters:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/post/Filter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFilterIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/jme3/post/Filter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->filters:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getFilterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/post/Filter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->filters:Lcom/jme3/util/SafeArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFilterTexture()Lcom/jme3/texture/Texture2D;
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->filterTexture:Lcom/jme3/texture/Texture2D;

    return-object v0
.end method

.method public getFrameBufferDepthFormat()Lcom/jme3/texture/Image$Format;
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->depthFormat:Lcom/jme3/texture/Image$Format;

    return-object v0
.end method

.method public getNumSamples()I
    .locals 1

    iget v0, p0, Lcom/jme3/post/FilterPostProcessor;->numSamples:I

    return v0
.end method

.method public initialize(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 2

    iput-object p1, p0, Lcom/jme3/post/FilterPostProcessor;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/post/FilterPostProcessor;->renderer:Lcom/jme3/renderer/Renderer;

    iput-object p2, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    iget-boolean p1, p0, Lcom/jme3/post/FilterPostProcessor;->useFullscreenTriangle:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/jme3/scene/Geometry;

    new-instance v0, Lcom/jme3/scene/shape/FullscreenTriangle;

    invoke-direct {v0}, Lcom/jme3/scene/shape/FullscreenTriangle;-><init>()V

    const-string v1, "FsQuad"

    invoke-direct {p1, v1, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object p1, p0, Lcom/jme3/post/FilterPostProcessor;->fsQuad:Lcom/jme3/scene/Geometry;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/jme3/ui/Picture;

    const-string v0, "filter full screen quad"

    invoke-direct {p1, v0}, Lcom/jme3/ui/Picture;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/jme3/ui/Picture;->setWidth(F)V

    invoke-virtual {p1, v0}, Lcom/jme3/ui/Picture;->setHeight(F)V

    iput-object p1, p0, Lcom/jme3/post/FilterPostProcessor;->fsQuad:Lcom/jme3/scene/Geometry;

    :goto_0
    iget-object p1, p0, Lcom/jme3/post/FilterPostProcessor;->fbFormat:Lcom/jme3/texture/Image$Format;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/jme3/post/FilterPostProcessor;->renderer:Lcom/jme3/renderer/Renderer;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v1}, Lcom/jme3/renderer/Renderer;->getBestColorTargetFormat(ZZZ)Lcom/jme3/texture/Image$Format;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/post/FilterPostProcessor;->fbFormat:Lcom/jme3/texture/Image$Format;

    :cond_1
    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortLeft()F

    move-result v0

    iput v0, p0, Lcom/jme3/post/FilterPostProcessor;->left:F

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortRight()F

    move-result v0

    iput v0, p0, Lcom/jme3/post/FilterPostProcessor;->right:F

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortTop()F

    move-result v0

    iput v0, p0, Lcom/jme3/post/FilterPostProcessor;->top:F

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortBottom()F

    move-result v0

    iput v0, p0, Lcom/jme3/post/FilterPostProcessor;->bottom:F

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/jme3/post/FilterPostProcessor;->originalWidth:I

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/jme3/post/FilterPostProcessor;->originalHeight:I

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result p1

    invoke-virtual {p0, p2, v0, p1}, Lcom/jme3/post/FilterPostProcessor;->reshape(Lcom/jme3/renderer/ViewPort;II)V

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public postFrame(Lcom/jme3/texture/FrameBuffer;)V
    .locals 4

    iget-object p1, p0, Lcom/jme3/post/FilterPostProcessor;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->renderFrameBufferMS:Lcom/jme3/texture/FrameBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v0}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/jme3/renderer/Caps;->OpenGL32:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->renderer:Lcom/jme3/renderer/Renderer;

    iget-object v1, p0, Lcom/jme3/post/FilterPostProcessor;->renderFrameBufferMS:Lcom/jme3/texture/FrameBuffer;

    iget-object v2, p0, Lcom/jme3/post/FilterPostProcessor;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/jme3/renderer/Renderer;->copyFrameBuffer(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer;ZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->renderFrameBufferMS:Lcom/jme3/texture/FrameBuffer;

    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-direct {p0, v0, p1}, Lcom/jme3/post/FilterPostProcessor;->renderFilterChain(Lcom/jme3/renderer/Renderer;Lcom/jme3/texture/FrameBuffer;)V

    iget-object p1, p0, Lcom/jme3/post/FilterPostProcessor;->renderer:Lcom/jme3/renderer/Renderer;

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->outputBuffer:Lcom/jme3/texture/FrameBuffer;

    invoke-interface {p1, v0}, Lcom/jme3/renderer/Renderer;->setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    iget-object p1, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    :cond_2
    return-void
.end method

.method public postQueue(Lcom/jme3/renderer/queue/RenderQueue;)V
    .locals 8

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->filters:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/post/Filter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/jme3/post/Filter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jme3/post/FilterPostProcessor;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v4, :cond_0

    sget-object v5, Lcom/jme3/profile/SpStep;->ProcPostQueue:Lcom/jme3/profile/SpStep;

    sget-object v6, Lcom/jme3/post/FilterPostProcessor;->FPP:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/jme3/post/Filter;->getName()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/jme3/profile/AppProfiler;->spStep(Lcom/jme3/profile/SpStep;[Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3, p1}, Lcom/jme3/post/Filter;->postQueue(Lcom/jme3/renderer/queue/RenderQueue;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public preFrame(F)V
    .locals 8

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->filters:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/jme3/post/FilterPostProcessor;->lastFilterIndex:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/jme3/post/FilterPostProcessor;->setupViewPortFrameBuffer()V

    iget-boolean v0, p0, Lcom/jme3/post/FilterPostProcessor;->multiView:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    iget v2, p0, Lcom/jme3/post/FilterPostProcessor;->width:I

    iget v3, p0, Lcom/jme3/post/FilterPostProcessor;->height:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/jme3/renderer/Camera;->resize(IIZ)V

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3, v2, v3}, Lcom/jme3/renderer/Camera;->setViewPort(FFFF)V

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->update()V

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v2, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/jme3/post/FilterPostProcessor;->cameraInit:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    iget v2, p0, Lcom/jme3/post/FilterPostProcessor;->originalWidth:I

    iget v3, p0, Lcom/jme3/post/FilterPostProcessor;->originalHeight:I

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/jme3/renderer/Camera;->resize(IIZ)V

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    iget v2, p0, Lcom/jme3/post/FilterPostProcessor;->left:F

    iget v3, p0, Lcom/jme3/post/FilterPostProcessor;->right:F

    iget v4, p0, Lcom/jme3/post/FilterPostProcessor;->bottom:F

    iget v5, p0, Lcom/jme3/post/FilterPostProcessor;->top:F

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/jme3/renderer/Camera;->setViewPort(FFFF)V

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    iget-object v2, p0, Lcom/jme3/post/FilterPostProcessor;->outputBuffer:Lcom/jme3/texture/FrameBuffer;

    invoke-virtual {v0, v2}, Lcom/jme3/renderer/ViewPort;->setOutputFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    iput-boolean v1, p0, Lcom/jme3/post/FilterPostProcessor;->cameraInit:Z

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->filters:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/post/Filter;

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/jme3/post/Filter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/jme3/post/FilterPostProcessor;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v4, :cond_3

    sget-object v5, Lcom/jme3/profile/SpStep;->ProcPreFrame:Lcom/jme3/profile/SpStep;

    sget-object v6, Lcom/jme3/post/FilterPostProcessor;->FPP:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/jme3/post/Filter;->getName()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/jme3/profile/AppProfiler;->spStep(Lcom/jme3/profile/SpStep;[Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3, p1}, Lcom/jme3/post/Filter;->preFrame(F)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    const-string v1, "numSamples"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jme3/post/FilterPostProcessor;->numSamples:I

    const-string v1, "useFullscreenTriangle"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jme3/post/FilterPostProcessor;->useFullscreenTriangle:Z

    new-instance v1, Lcom/jme3/util/SafeArrayList;

    const-string v3, "filters"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    const-class v3, Lcom/jme3/post/Filter;

    invoke-direct {v1, v3, v0}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/jme3/post/FilterPostProcessor;->filters:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/post/Filter;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Lcom/jme3/post/Filter;->setProcessor(Lcom/jme3/post/FilterPostProcessor;)V

    invoke-virtual {v3}, Lcom/jme3/post/Filter;->isEnabled()Z

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/jme3/post/FilterPostProcessor;->setFilterState(Lcom/jme3/post/Filter;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/post/FilterPostProcessor;->assetManager:Lcom/jme3/asset/AssetManager;

    return-void
.end method

.method public removeAllFilters()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->filters:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->clear()V

    invoke-direct {p0}, Lcom/jme3/post/FilterPostProcessor;->updateLastFilterIndex()V

    return-void
.end method

.method public removeFilter(Lcom/jme3/post/Filter;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->filters:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-virtual {p1, v0}, Lcom/jme3/post/Filter;->cleanup(Lcom/jme3/renderer/Renderer;)V

    invoke-direct {p0}, Lcom/jme3/post/FilterPostProcessor;->updateLastFilterIndex()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Filter cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reshape(Lcom/jme3/renderer/ViewPort;II)V
    .locals 7

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    iget v1, p0, Lcom/jme3/post/FilterPostProcessor;->left:F

    iget v2, p0, Lcom/jme3/post/FilterPostProcessor;->right:F

    iget v3, p0, Lcom/jme3/post/FilterPostProcessor;->bottom:F

    iget v4, p0, Lcom/jme3/post/FilterPostProcessor;->top:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jme3/renderer/Camera;->setViewPort(FFFF)V

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Lcom/jme3/renderer/Camera;->resize(IIZ)V

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getViewPortLeft()F

    move-result v2

    iput v2, p0, Lcom/jme3/post/FilterPostProcessor;->left:F

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getViewPortRight()F

    move-result v2

    iput v2, p0, Lcom/jme3/post/FilterPostProcessor;->right:F

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getViewPortTop()F

    move-result v2

    iput v2, p0, Lcom/jme3/post/FilterPostProcessor;->top:F

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getViewPortBottom()F

    move-result v0

    iput v0, p0, Lcom/jme3/post/FilterPostProcessor;->bottom:F

    iput p2, p0, Lcom/jme3/post/FilterPostProcessor;->originalWidth:I

    iput p3, p0, Lcom/jme3/post/FilterPostProcessor;->originalHeight:I

    int-to-float p2, p2

    iget v0, p0, Lcom/jme3/post/FilterPostProcessor;->right:F

    iget v2, p0, Lcom/jme3/post/FilterPostProcessor;->left:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/jme3/post/FilterPostProcessor;->width:I

    int-to-float p2, p3

    iget p3, p0, Lcom/jme3/post/FilterPostProcessor;->bottom:F

    iget v0, p0, Lcom/jme3/post/FilterPostProcessor;->top:F

    sub-float/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/jme3/post/FilterPostProcessor;->height:I

    iget p2, p0, Lcom/jme3/post/FilterPostProcessor;->width:I

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/jme3/post/FilterPostProcessor;->width:I

    iget p2, p0, Lcom/jme3/post/FilterPostProcessor;->height:I

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/jme3/post/FilterPostProcessor;->height:I

    iget p3, p0, Lcom/jme3/post/FilterPostProcessor;->originalWidth:I

    iget v0, p0, Lcom/jme3/post/FilterPostProcessor;->width:I

    if-ne p3, v0, :cond_0

    iget p3, p0, Lcom/jme3/post/FilterPostProcessor;->originalHeight:I

    if-eq p3, p2, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/jme3/post/FilterPostProcessor;->multiView:Z

    :cond_1
    iput-boolean v1, p0, Lcom/jme3/post/FilterPostProcessor;->cameraInit:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/jme3/post/FilterPostProcessor;->computeDepth:Z

    iget-object p3, p0, Lcom/jme3/post/FilterPostProcessor;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/jme3/post/FilterPostProcessor;->renderFrameBufferMS:Lcom/jme3/texture/FrameBuffer;

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/jme3/post/FilterPostProcessor;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {p3}, Lcom/jme3/renderer/ViewPort;->getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object p3

    iput-object p3, p0, Lcom/jme3/post/FilterPostProcessor;->outputBuffer:Lcom/jme3/texture/FrameBuffer;

    :cond_2
    iget-object p3, p0, Lcom/jme3/post/FilterPostProcessor;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {p3}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object p3

    iget v0, p0, Lcom/jme3/post/FilterPostProcessor;->numSamples:I

    if-le v0, v1, :cond_4

    sget-object v0, Lcom/jme3/renderer/Caps;->FrameBufferMultisample:Lcom/jme3/renderer/Caps;

    invoke-interface {p3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/jme3/texture/FrameBuffer;

    iget v2, p0, Lcom/jme3/post/FilterPostProcessor;->width:I

    iget v3, p0, Lcom/jme3/post/FilterPostProcessor;->height:I

    iget v4, p0, Lcom/jme3/post/FilterPostProcessor;->numSamples:I

    invoke-direct {v0, v2, v3, v4}, Lcom/jme3/texture/FrameBuffer;-><init>(III)V

    iput-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->renderFrameBufferMS:Lcom/jme3/texture/FrameBuffer;

    sget-object v0, Lcom/jme3/renderer/Caps;->OpenGL32:Lcom/jme3/renderer/Caps;

    invoke-interface {p3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/jme3/texture/Texture2D;

    iget v2, p0, Lcom/jme3/post/FilterPostProcessor;->width:I

    iget v3, p0, Lcom/jme3/post/FilterPostProcessor;->height:I

    iget v4, p0, Lcom/jme3/post/FilterPostProcessor;->numSamples:I

    iget-object v5, p0, Lcom/jme3/post/FilterPostProcessor;->fbFormat:Lcom/jme3/texture/Image$Format;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/jme3/texture/Texture2D;-><init>(IIILcom/jme3/texture/Image$Format;)V

    new-instance v2, Lcom/jme3/texture/Texture2D;

    iget v3, p0, Lcom/jme3/post/FilterPostProcessor;->width:I

    iget v4, p0, Lcom/jme3/post/FilterPostProcessor;->height:I

    iget v5, p0, Lcom/jme3/post/FilterPostProcessor;->numSamples:I

    iget-object v6, p0, Lcom/jme3/post/FilterPostProcessor;->depthFormat:Lcom/jme3/texture/Image$Format;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/jme3/texture/Texture2D;-><init>(IIILcom/jme3/texture/Image$Format;)V

    iget-object v3, p0, Lcom/jme3/post/FilterPostProcessor;->renderFrameBufferMS:Lcom/jme3/texture/FrameBuffer;

    invoke-static {v2}, Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;->newTarget(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jme3/texture/FrameBuffer;->setDepthTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;)V

    iget-object v3, p0, Lcom/jme3/post/FilterPostProcessor;->renderFrameBufferMS:Lcom/jme3/texture/FrameBuffer;

    invoke-static {v0}, Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;->newTarget(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jme3/texture/FrameBuffer;->addColorTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;)V

    iput-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->filterTexture:Lcom/jme3/texture/Texture2D;

    iput-object v2, p0, Lcom/jme3/post/FilterPostProcessor;->depthTexture:Lcom/jme3/texture/Texture2D;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->renderFrameBufferMS:Lcom/jme3/texture/FrameBuffer;

    iget-object v2, p0, Lcom/jme3/post/FilterPostProcessor;->depthFormat:Lcom/jme3/texture/Image$Format;

    invoke-static {v2}, Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;->newTarget(Lcom/jme3/texture/Image$Format;)Lcom/jme3/texture/FrameBuffer$FrameBufferBufferTarget;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/texture/FrameBuffer;->setDepthTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferBufferTarget;)V

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->renderFrameBufferMS:Lcom/jme3/texture/FrameBuffer;

    iget-object v2, p0, Lcom/jme3/post/FilterPostProcessor;->fbFormat:Lcom/jme3/texture/Image$Format;

    invoke-static {v2}, Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;->newTarget(Lcom/jme3/texture/Image$Format;)Lcom/jme3/texture/FrameBuffer$FrameBufferBufferTarget;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/texture/FrameBuffer;->addColorTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferBufferTarget;)V

    :cond_4
    :goto_0
    iget v0, p0, Lcom/jme3/post/FilterPostProcessor;->numSamples:I

    if-le v0, v1, :cond_5

    sget-object v0, Lcom/jme3/renderer/Caps;->OpenGL32:Lcom/jme3/renderer/Caps;

    invoke-interface {p3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/jme3/renderer/Caps;->FrameBufferMultisample:Lcom/jme3/renderer/Caps;

    invoke-interface {p3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    :cond_5
    new-instance p3, Lcom/jme3/texture/FrameBuffer;

    iget v0, p0, Lcom/jme3/post/FilterPostProcessor;->width:I

    iget v2, p0, Lcom/jme3/post/FilterPostProcessor;->height:I

    invoke-direct {p3, v0, v2, v1}, Lcom/jme3/texture/FrameBuffer;-><init>(III)V

    iput-object p3, p0, Lcom/jme3/post/FilterPostProcessor;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->depthFormat:Lcom/jme3/texture/Image$Format;

    invoke-static {v0}, Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;->newTarget(Lcom/jme3/texture/Image$Format;)Lcom/jme3/texture/FrameBuffer$FrameBufferBufferTarget;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/jme3/texture/FrameBuffer;->setDepthTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferBufferTarget;)V

    new-instance p3, Lcom/jme3/texture/Texture2D;

    iget v0, p0, Lcom/jme3/post/FilterPostProcessor;->width:I

    iget v1, p0, Lcom/jme3/post/FilterPostProcessor;->height:I

    iget-object v2, p0, Lcom/jme3/post/FilterPostProcessor;->fbFormat:Lcom/jme3/texture/Image$Format;

    invoke-direct {p3, v0, v1, v2}, Lcom/jme3/texture/Texture2D;-><init>(IILcom/jme3/texture/Image$Format;)V

    iput-object p3, p0, Lcom/jme3/post/FilterPostProcessor;->filterTexture:Lcom/jme3/texture/Texture2D;

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    invoke-static {p3}, Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;->newTarget(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/jme3/texture/FrameBuffer;->addColorTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;)V

    :cond_6
    iget-object p3, p0, Lcom/jme3/post/FilterPostProcessor;->renderFrameBufferMS:Lcom/jme3/texture/FrameBuffer;

    if-eqz p3, :cond_7

    const-string v0, "FilterPostProcessor MS"

    invoke-virtual {p3, v0}, Lcom/jme3/texture/FrameBuffer;->setName(Ljava/lang/String;)V

    :cond_7
    iget-object p3, p0, Lcom/jme3/post/FilterPostProcessor;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    if-eqz p3, :cond_8

    const-string v0, "FilterPostProcessor"

    invoke-virtual {p3, v0}, Lcom/jme3/texture/FrameBuffer;->setName(Ljava/lang/String;)V

    :cond_8
    iget-object p3, p0, Lcom/jme3/post/FilterPostProcessor;->filters:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p3}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/jme3/post/Filter;

    array-length v0, p3

    :goto_1
    if-ge p2, v0, :cond_9

    aget-object v1, p3, p2

    invoke-direct {p0, v1, p1}, Lcom/jme3/post/FilterPostProcessor;->initFilter(Lcom/jme3/post/Filter;Lcom/jme3/renderer/ViewPort;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/jme3/post/FilterPostProcessor;->setupViewPortFrameBuffer()V

    return-void
.end method

.method public setAssetManager(Lcom/jme3/asset/AssetManager;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/post/FilterPostProcessor;->assetManager:Lcom/jme3/asset/AssetManager;

    return-void
.end method

.method public setFilterState(Lcom/jme3/post/Filter;Z)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/FilterPostProcessor;->filters:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p2, p1, Lcom/jme3/post/Filter;->enabled:Z

    invoke-direct {p0}, Lcom/jme3/post/FilterPostProcessor;->updateLastFilterIndex()V

    :cond_0
    return-void
.end method

.method public setFrameBufferDepthFormat(Lcom/jme3/texture/Image$Format;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/post/FilterPostProcessor;->depthFormat:Lcom/jme3/texture/Image$Format;

    return-void
.end method

.method public setFrameBufferFormat(Lcom/jme3/texture/Image$Format;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/post/FilterPostProcessor;->fbFormat:Lcom/jme3/texture/Image$Format;

    return-void
.end method

.method public setNumSamples(I)V
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Lcom/jme3/post/FilterPostProcessor;->numSamples:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "numSamples must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProfiler(Lcom/jme3/profile/AppProfiler;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/post/FilterPostProcessor;->prof:Lcom/jme3/profile/AppProfiler;

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/post/FilterPostProcessor;->numSamples:I

    const-string v1, "numSamples"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-boolean v0, p0, Lcom/jme3/post/FilterPostProcessor;->useFullscreenTriangle:Z

    const-string v1, "useFullscreenTriangle"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jme3/post/FilterPostProcessor;->filters:Lcom/jme3/util/SafeArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "filters"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
